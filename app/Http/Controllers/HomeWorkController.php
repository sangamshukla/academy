<?php

namespace App\Http\Controllers;

use App\Models\AssignedHomeWork;
use App\Models\AssignedHomeWorkAnswer;
use App\Models\AssignedHomeWorkAnswerMap;
use App\Models\AssignedHomeWorkStudent;
use App\Models\BatchSession;
use App\Models\Batch;
use Carbon\Carbon;
use App\Models\Order;
use App\Models\OrderItems;
use App\Models\OrderPayment;
use App\Models\OrderSessionMap;
use App\Models\ResourceMaster;
use App\Models\TeacherProfile;
use App\Models\User;
use Illuminate\Http\Request;

class HomeWorkController extends Controller
{
    public function startSession($id)
    {
        $session = BatchSession::where('id', $id)->first();
      
        $allSessions = BatchSession::where('batch_id', $session->batch_id)->get();
        // dd($allSessions);
        $listOfSessions = collect([]);
        $allSessions->transform(function ($singleSession) use ($listOfSessions) {
            $batches = OrderItems::with('orderPayment')->where('batch_id', $singleSession->batch_id)->get();
            $studenList = collect([]);
            $batches->transform(function ($batch) use ($studenList) {
                $studenList->push($batch->orderPayment->student_id);
            });
            $singleSession->students =  User::whereIn('id', $studenList->unique())->get();
            $assignedHW = AssignedHomeWork::where('session_id', $singleSession->id)->first();
            $singleSession->hw = $assignedHW;
            $singleSession->submission_count = AssignedHomeWorkAnswer::
            where('assigned_home_work_id', $assignedHW->id ?? null)->where('is_submitted', '1')->count();
            $singleSession->students->transform(function ($student) use ($assignedHW) {
                $student->is_homework_assigned = AssignedHomeWorkAnswer::
                where('assigned_home_work_id', $assignedHW->id ?? null)
                ->where('student_id', $student->id)->where('is_submitted', '1')->exists();
                $submitted = AssignedHomeWorkAnswer::
                where('assigned_home_work_id', $assignedHW->id ?? null)
                ->where('student_id', $student->id)->where('is_submitted', '1')->exists();
                $student->is_submitted = $submitted;
                $student->homeworks = AssignedHomeWorkStudent::
                where('assigned_home_work_id', $assignedHW->id ?? null)
                ->where('student_id', $student->id)->first();
                $student->homeworkId = false;
                if ($submitted) {
                    $student->homeworkId = AssignedHomeWorkAnswer::
                    where('assigned_home_work_id', $assignedHW->id ?? null)
                    ->where('student_id', $student->id)->where('is_submitted', '1')->first()->id;
                }

                return $student;
            });
            
            
            return $singleSession;
        });
        
        // dd($allSessions);
        $studentsList = collect([]);
        $batches = OrderItems::with('orderPayment')->where('batch_id', $session->batch_id)->get();

        $batches->transform(function ($batch) use ($studentsList) {
            $studentsList->push($batch->orderPayment->student_id);
        });
        
        $students = User::whereIn('id', $studentsList->unique())->get();

        $pdfFilesAll = ResourceMaster::where('sub_topic_id', $session->singleTopic->topic_id)
            ->where('is_active', 1)->get();
        $images = TeacherProfile::where('user_id', $id)->select('teacher_profile_photo')->get();
        // dd($pdfFilesAll);
        $homework_ids=AssignedHomeWork::where('session_id', $id)->get();
        if ($homework_ids->isNotEmpty()) {
            foreach ($homework_ids as $homework_id) {
                $homework_id=$homework_id->id;
            }
            $assigned_homeworks=$this->getHomeWork($homework_id);
        } else {
            $homework_id=null;
            $assigned_homeworks=null;
        }
        return view('homework.start-session', compact('allSessions', 'assigned_homeworks', 'session', 'students', 'pdfFilesAll', 'images'));
    }
    public function saveStartSession(Request $request)
    {
        $session = AssignedHomeWork::Create([
        'comment' => $request->comment,
        'points' => $request->points,
        'subtopic_name' => $request->subtopic_name,
        'pdf_path' => $request->pdf_path,
        ]);
        if ($request->hasFile('pdf_path')) {
            $request->file('pdf_path')->store('uploadimg');
        }
        return view('homework.start-session', compact('session'));
    }

    public function uploadPDF(Request $request, $id)
    {
        $request->validate([
            'pdf' => 'mimes:pdf',
        ]);
        if ($request->hasFile('pdf')) {
            $filename = $request->pdf->getClientOriginalName();
            $path = $request->file('pdf')->store('public/pdfs', ['disk'=>'public_uploads']);
           
            return response()->json(['filename'=>$filename, 'fileId'=>$path]);
        } else {
            return 'please choose file';
        }
    }

    public function assignHomeWork(Request $request)
    {
        $content = json_decode($request->getContent());
        $session = BatchSession::find($content->session_id);

        $checkHomeWorkIsAlreadyAssigned = AssignedHomeWork::where('session_id', $content->session_id)->exists();
        
        // if ($checkHomeWorkIsAlreadyAssigned) {
        //     return response()->json(['data'=> 'Homework is already assigned for this session'], 400);
        // }

        $studentsList = collect([]);
        $batches = OrderItems::with('orderPayment')->where('batch_id', $session->batch_id)->get();

        $batches->transform(function ($batch) use ($studentsList) {
            $studentsList->push($batch->orderPayment->student_id);
        });
        // // if(isset($cont))
        // foreach()
        $students = User::whereIn('id', $content->choosePdfSelectStudent)->get();
        $homeworkContent = $content->assigned_content;

        if ($content->type_of_homework == 'UPLOAD_PDF') {
            $homeworkContent = implode(",", $content->assigned_content);
        }
        if ($content->type_of_homework == 'CHOOSE_PDF') {
            $homeworkContent = $content->assigned_content;
        }
        if ($content->type_of_homework == 'ADD_QUESTION') {
            $homeworkContent = $content->assigned_content;
        }

        $assignedHomework =  AssignedHomeWork::updateOrCreate([
            'session_id' => $content->session_id], [
            'comment' => $content->comment,
            'points' => $content->points,
            'due_date' => $content->due_date ?? '',
            'type_of_homework'=>$content->type_of_homework,
            'assigned_content' => $homeworkContent, // resource_master id
        ]);

        foreach ($students as $student) {
            AssignedHomeWorkStudent::create([
                'assigned_home_work_id' => $assignedHomework->id,
                'student_id' => $student->id,
                'type_of_homework'=>$content->type_of_homework,
                'assigned_content' => $homeworkContent,
            ]);
        }
        return response()->json("Success");
    }

    public function viewhomeworkdetails($id)
    {
        $submittedHomework = AssignedHomeWorkAnswer::find($id);
        $student = AssignedHomeWorkStudent::where('student_id', $submittedHomework->student_id)
            ->where('assigned_home_work_id', $submittedHomework->assigned_home_work_id)->first();
        $homeworkContent = AssignedHomeWorkAnswerMap::where(
            'assigned_home_work_id',
            $submittedHomework->assigned_home_work_id
        )->where('assigned_home_work_student_id', $student->id)->get();
        $multiple  = true;
        // $assignedHomework = AssignedHomeWork::find($submittedHomework->assigned_homework_id);
        // dd($homeworkContent);
        if (count($homeworkContent) <= 1) {
            $homeworkContent = AssignedHomeWorkAnswerMap::where(
                'assigned_home_work_id',
                $submittedHomework->assigned_home_work_id
            )->where('assigned_home_work_student_id', $student->id)->first();


            $multiple = false;
        }

        $assignedHomework = AssignedHomeWork::find($submittedHomework->assigned_home_work_id);
        return view('homework._homework_details', compact('submittedHomework', 'homeworkContent', 'assignedHomework', 'student', 'multiple'));
    }

    public function assignPoints(Request $request)
    {
        $content = json_decode($request->getContent());
        AssignedHomeWorkStudent::find($content->id)->update([
            'given_marks' => $content->points
        ]);
        return response()->json("Success");
    }
    
    public function makeMarkSheet(Request $request)
    {
        $getYear1Students = User::with('student');
        if ($request->batchId) {
            $batches = OrderItems::where('batch_id', $request->batchId)->pluck('order_payment_id')->toArray();
            $allStudents = OrderPayment::whereIN('id', $batches)->pluck('student_id')->toArray();
            $getYear1Students->whereIn('id', $allStudents);
        }

        if ($request->sessionId) {
            $batches = OrderSessionMap::where('session_id', $request->sessionId)->pluck('order_id')->toArray();
            $allStudents = OrderPayment::whereIN('id', $batches)->pluck('student_id')->toArray();
            $getYear1Students->whereIn('id', $allStudents);
        }

        if ($request->studentId) {
            $getYear1Students->whereIn('id', [$request->studentId]);
        }

        $getYear1Students = $getYear1Students->get();
        $getYear1Students->transform(function ($student) use ($request) {
            $student->maths_marks = $this->getMathsMarks($student->id, $request->sessionId, $request->batchId);
            $student->english_marks = $this->getEnglishMarks($student->id, $request->sessionId, $request->batchId);
            $student->essay_marks = $this->getEssayMarks($student->id, $request->sessionId, $request->batchId);

            $student->obtd_marks = $student->maths_marks[1] + $student->english_marks[1] +  $student->essay_marks[1];
            $student->maths_marks_total = $student->maths_marks[0];
            $student->english_marks_total = $student->english_marks[0];
            $student->essay_marks_total = $student->essay_marks[0];
            $student->total_marks = $student->maths_marks[0] + $student->english_marks[0] +  $student->essay_marks[0];
            $student->percentage =  ($student->obtd_marks / ($student->total_marks == 0 ? 1 : $student->total_marks)) * 100;
            return $student;
        });
        $assignedhomeworks = $getYear1Students->sortByDesc('percentage');

        $batches = Batch::all();
        return view('ajax.mark_sheet', compact('assignedhomeworks', 'batches'));
    }

    public function marksSheet()
    {
        $getYear1Students = User::with('student')->orWhere('role', 'student')->latest()->paginate(20);
        
        $getYear1Students->transform(function ($student) {
            $student->maths_marks = $this->getMathsMarks($student->id);
            $student->english_marks = $this->getEnglishMarks($student->id);
            $student->essay_marks = $this->getEssayMarks($student->id);

            $student->obtd_marks = $student->maths_marks[1] + $student->english_marks[1] +  $student->essay_marks[1];
            $student->maths_marks_total = $student->maths_marks[0];
            $student->english_marks_total = $student->english_marks[0];
            $student->essay_marks_total = $student->essay_marks[0];
            $student->total_marks = $student->maths_marks[0] + $student->english_marks[0] +  $student->essay_marks[0];
            $student->percentage = ($student->obtd_marks / ($student->total_marks == 0 ? 1 : $student->total_marks)) * 100;
            return $student;
        });
        $assignedhomeworks = $getYear1Students->sortByDesc('percentage');

        $batches = Batch::all();
        return view('homework.marks-sheet', compact('assignedhomeworks', 'batches', 'getYear1Students'));
    }
    public function getMathsMarks($studentId, $sessionId = null, $batchId = null)
    {
        // maths id = 2
        // dd($sessionId);
        $mathsBatches = Batch::where('subject_id', 2);
        if ($batchId) {
            $mathsBatches = $mathsBatches->where('id', $batchId);
        }
        $mathsBatches = $mathsBatches->latest()->get();
        // dd($mathsBatches);
        // ->latest()->get()
        $m = $mathsBatches->filter(function ($batch) use ($studentId, $sessionId) {
            $a = false;
            foreach ($batch->batchSession as $session) {
                $assignedHomeworks =  AssignedHomeWork::query();
                if ($sessionId) {
                    $assignedHomeworks = $assignedHomeworks->where('session_id', $sessionId);
                } else {
                    $assignedHomeworks = $assignedHomeworks->where('session_id', $session->id);
                }
                
                $assignedHomeworks = $assignedHomeworks->get();
              
                foreach ($assignedHomeworks as $ah) {
                    if ($ah->studentlist()->where('student_id', $studentId)->exists()) {
                        $a = true;
                    }
                }
            }
            return $a;
        });
        foreach ($m->all() as $maths) {
            foreach ($maths->batchSession as $session) {
                $assignedHomeworks =  AssignedHomeWork::where('session_id', $session->id)->get();
                foreach ($assignedHomeworks as $ah) {
                    if ($ah->studentlist()->where('student_id', $studentId)->exists()) {
                        $assignedHw = $ah->studentlist()->where('student_id', $studentId)->first();
                        return [$ah->points,$assignedHw->given_marks];
                    }
                }
            }
        }
        return [0,0];
    }
    public function getEnglishMarks($studentId, $sessionId = null, $batchId = null)
    {
        // english subject_id =2
        $englishBatches = Batch::where('subject_id', 1);
        if ($batchId) {
            $englishBatches = $englishBatches->where('id', $batchId);
        }
        $englishBatches = $englishBatches->latest()->get();
        // dd($englishBatches);
        $m = $englishBatches->filter(function ($batch) use ($studentId, $sessionId) {
            $a = false;
            foreach ($batch->batchSession as $session) {
                $assignedHomeworks =  AssignedHomeWork::query();
                if ($sessionId) {
                    $assignedHomeworks = $assignedHomeworks->where('session_id', $sessionId);
                } else {
                    $assignedHomeworks = $assignedHomeworks->where('session_id', $session->id);
                }
                $assignedHomeworks = $assignedHomeworks->get();
                foreach ($assignedHomeworks as $ah) {
                    if ($ah->studentlist()->where('student_id', $studentId)->exists()) {
                        $a = true;
                    }
                }
            }
            return $a;
        });
        foreach ($m->all() as $english) {
            foreach ($english->batchSession as $session) {
                $assignedHomeworks =  AssignedHomeWork::where('session_id', $session->id)->get();
                foreach ($assignedHomeworks as $ah) {
                    if ($ah->studentlist()->where('student_id', $studentId)->exists()) {
                        $assignedHw = $ah->studentlist()->where('student_id', $studentId)->first();
                        return [$ah->points,$assignedHw->given_marks];
                    }
                }
            }
        }
        return [0,0];
    }
    public function getEssayMarks($studentId, $sessionId = null, $batchId = null)
    {
        // essay subject _id = 3
        $essayBatches = Batch::where('subject_id', 3);
        if ($batchId) {
            $essayBatches = $essayBatches->where('id', $batchId);
        }
        $essayBatches = $essayBatches->latest()->get();
        $m = $essayBatches->filter(function ($batch) use ($studentId, $sessionId) {
            $a = false;
            foreach ($batch->batchSession as $session) {
                $assignedHomeworks =  AssignedHomeWork::query();
                if ($sessionId) {
                    $assignedHomeworks = $assignedHomeworks->where('session_id', $sessionId);
                } else {
                    $assignedHomeworks = $assignedHomeworks->where('session_id', $session->id);
                }
                
                $assignedHomeworks = $assignedHomeworks->get();
                foreach ($assignedHomeworks as $ah) {
                    if ($ah->studentlist()->where('student_id', $studentId)->exists()) {
                        $a = true;
                    }
                }
            }
            return $a;
        });
        foreach ($m->all() as $essay) {
            foreach ($essay->batchSession as $session) {
                $assignedHomeworks =  AssignedHomeWork::where('session_id', $session->id)->get();
                foreach ($assignedHomeworks as $ah) {
                    if ($ah->studentlist()->where('student_id', $studentId)->exists()) {
                        $assignedHw = $ah->studentlist()->where('student_id', $studentId)->first();
                        return [$ah->points,$assignedHw->given_marks];
                    }
                }
            }
        }
        return [0,0];
    }
    
    public function payDueAmount(Request $request)
    {
        $payment_amount=$request->payment_amount;
        $order_id=$request->order_id;
        $update_due=OrderPayment::updateOrCreate(
            [
            'id'=>$order_id
        ],
            [
            'paid_amount'=>$payment_amount
        ]
        );
        if ($update_due) {
            return response($update_due);
            return response('payment updated successfully')->with('msg', 'Payment has been updated. ');
        } else {
            return response('there is some error');
        }
    }
    public function is_homework_assigned()
    {
        dd("I got to this method");
    }
    public function check()
    {
        $this->is_homework_assigned();
    }
    public static function getHomeWork($homework_id)
    {
        $assigned_homeworks=AssignedHomeWorkStudent::where('assigned_home_work_id', $homework_id)->get();
        return $assigned_homeworks;
    }
    public function upload_edit_homework(Request $request)
    {
        $homeworks_to_be_edited=AssignedHomeWorkStudent::where('assigned_home_work_id', $request->homework_id)->where('student_id', $request->student_id)->get();
        if ($request->hasFile('homework_file')) {
            foreach ($homeworks_to_be_edited as $homework_to_be_edited) {
                $success=$request->file('homework_file')->store('public/pdfs', ['disk'=>'public_uploads']);
                if ($success) {
                    $homework_to_be_edited->assigned_content=$success;
                    $updated_database=$homework_to_be_edited->save();
                    if ($updated_database) {
                        return back()->with('msg', 'homework has been uploaded');
                    }
                }
            }
        } else {
            return back()->with('msg', 'please choose file');
        }
    }
    public function delete_homework($homework_id, $student_id)
    {
        $homeworks_to_be_deleted=AssignedHomeWorkStudent::where('assigned_home_work_id', $homework_id)->where('student_id', $student_id)->get();
        foreach ($homeworks_to_be_deleted as $homework_to_be_deleted) {
            $deleted=$homework_to_be_deleted->delete();
            if ($deleted) {
                return back()->with('msg', 'Homework has been been deleted');
            }
        }
    }
    public function upload_pdf(Request $request)
    {
        // dd($request->all());
        $checked_homework_filename=$request->checked_homework->getClientOriginalName();
        $path=$request->file('checked_homework')->storeAs('checked_homeworks/'.$request->map_id, $checked_homework_filename, 'public');
        $save_checked_homework=AssignedHomeWorkAnswerMap::updateOrCreate(
            [
                'id'=>$request->map_id,
            
            ],
            [
                'checked_content'=>$path
                ]
        );
        if ($save_checked_homework) {
            return back()->with('msg', 'Your checked home has been submitted');
        } else {
            return back()->with('msg', 'There was some error');
        }
    }
}
