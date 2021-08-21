<?php

namespace App\Http\Controllers;

use App\Models\ClassMaster;
use App\Models\LanguageMaser;
use App\Models\Subject;
use App\Models\TeacherExperience;
use App\Models\TeacherExpertise;
use App\Models\TeacherPricing;
use App\Models\TeacherProfile;
use App\Models\TeacherSubject;
use App\Models\User;
use Illuminate\Http\Request;
use Validator;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use PharIo\Manifest\Author;
use Illuminate\Support\Facades\Artisan;

class TeacherProfileController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $id = auth()->user()->id;
        $users = User::where('id', $id)->get();
        $images = TeacherProfile::where('user_id', $id)->get();
        $teacher_experiences = TeacherExperience::where('user_id', $id)->get();
        $classes = ClassMaster::select('id', 'name')->get();
        $languages = LanguageMaser::all();
        $expertiseData = TeacherExpertise::where('user_id', $id)->get();
        $check= $this->is_id_submitted(2);
        // dd($expertiseData);
        // dd($images);
        // return redirect('teacher-profile', compact('teacher_experiences'));
        return view('teacher.profile', compact('users', 'images', "teacher_experiences", "classes", "languages", 'expertiseData', 'check'));
    }

    /**"
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        // return view('teacher.profile');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function storeImage1(Request $request)
    {
        // dd($request->profile_photo->extension());
        $request->validate([
            'profile_photo_input' => 'mimes:jpg, jpeg, png, bmp, gif, svg,webp',
        ]);
        $user_id = auth()->user()->id;

        $image_path_for_teacher = auth()->user()->name . auth()->user()->id . "." . $request->profile_photo_input->extension();

        // $image_path_for_teacher = "noprofilephoto.jpg";
        // dd($image_path_for_teacher);

        // dd($image_path_for_teacher);
        // dd($request->all());
        // $allids = TeacherProfile::all()->where('user_id', $user_id);
        // dd($allids);
        TeacherProfile::updateOrCreate(
            [

                'user_id' => $user_id,
            ],
            [
                'teacher_profile_photo' => $image_path_for_teacher
            ],
            // 'teacher_id_proof_image' => $image_path_for_idproof
        );
        $request->file('profile_photo_input')->store('public/user_images');
        // $request->file('profile_photo')->store('public/user_images');
        return redirect('teacher-profile');
    }
    public function storeInformation(Request $request)
    {
        $user_id = auth()->user()->id;
        $id = $request->id;
        TeacherProfile::updateOrCreate(
            [
                // 'id' => $id,
                'user_id' => $user_id,
            ],
            [
                'gender' => $request->gender,
                'about' => $request->about,
                'address' => $request->address,
                'city' => $request->city,
                'zip_code' => $request->zipcode,
                'country' => $request->country,
                'timezone' => $request->timezone
            ]
        );
        User::updateOrCreate(
            [
                'id' => $user_id,
            ],
            [
                'name' => $request->teacher_name,
                'contact_number' => $request->teacher_phone
            ]
        );
        return redirect('teacher-profile');
    }
    public function storeIdproof(Request $request)
    {
        $request->validate([
            'id_photo' => 'mimes:jpg, jpeg, png, bmp, gif, svg,webp',
        ]);
        if ($request->hasFile('id_photo')) {
            $user_id = auth()->user()->id;
            $filename = $request->id_photo->getClientOriginalName();
            $user_id = auth()->user()->id;
            $request->id_photo->storeAs('id', $filename, 'public');
            Artisan::call('storage:link');
            TeacherProfile::updateOrCreate(
                [
                    'user_id' => $user_id,
                ],
                [
                    'teacher_id_proof_image' => $filename
                ],
            );
            return redirect()->back();
        }
        //parameters are (path, filename, disk)
        else {
            return 'please choose file';
        }
        // dd($request->hasFile('profile_photo_input'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        dd($id);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
    public function storeImage(Request $request)
    {
        $request->validate([
            'profile_photo_input' => 'mimes:jpg, jpeg, png, bmp, gif, svg,webp',
        ]);
        if ($request->hasFile('profile_photo_input')) {
            $user_id = auth()->user()->id;
            $filename = $request->profile_photo_input->getClientOriginalName();
            $user_id = auth()->user()->id;
            $request->profile_photo_input->storeAs('images', $filename, 'public');
            TeacherProfile::updateOrCreate(
                [
                    'user_id' => $user_id,
                ],
                [
                    'teacher_profile_photo' => $filename
                ],
            );
            return redirect('teacher-profile');
        }


        //parameters are (path, filename, disk)
        else {
            return 'please choose file';
        }
        // dd($request->hasFile('profile_photo_input'));
    }
    public function storeExperience(Request $request)
    {
        $user_id = auth()->user()->id;
        // dd($request->id);
        TeacherExperience::create(
            [
                'user_id' => $user_id,
                'experience_type' => $request->experience_type,
                'experience_title' => $request->experience_title,
                'experience_org' => $request->experience_org,
                'experience_location' => $request->experience_location,
                'experience_startendyear' => $request->experience_startendyear,
                'experience_certification' => $request->experience_certification
            ],
        );
        return redirect()->back();
    }
    public function showExperience($id)
    {
        $teacher_experiences = TeacherExperience::all();
        // dd($teacher_experiences);
        return redirect('teacher-profile', compact('teacher_experiences'));
    }
    public function getSubject(Request $request)
    {
        $user_id = auth()->user()->id;
        $id = $request->id;
        // $classes = ClassMaster::select('id', 'name')->get();
        // dd($id);
        $subjects = DB::table('subjects')
            ->join('class_masters', 'subjects.class_master_id', 'class_masters.id')
            ->select('subjects.name', 'subjects.id')
            ->where('class_masters.id', $id)
            ->get();
        // return $subjects;
        return view('teacher.subject', compact('subjects'));
    }
    public function storeExpertise(Request $request)
    {
        $teacherID = auth()->user()->id;
        $ageGroup = $request->ageGroup;
        $classId = $request->classId;
        $subjectsArr = $request->subjectsArr;
        // $subjectsArr[1];
        for ($i = 1; $i <= (count($subjectsArr)); $i++) {
            TeacherSubject::create([
                'user_id' => $teacherID,
                'teacher_age_group' => $ageGroup,
                'teacher_class_id' => $classId,
                'teacher_subject_id' => $subjectsArr[$i - 1],
            ]);
        }
        // return redirect('teacher-profile')->with('msg', 'Data has been saved');
    }
    public function storeExpertiseData(Request $request)
    {
        $video_code = $request->video_code;
        $language_name = $request->language_name;
        $teacherID = auth()->user()->id;
        $language_proficiency = $request->language_proficiency;
        TeacherExpertise::updateOrCreate(
            [
                'user_id' => $teacherID
            ],
            [
                'video_src' => $video_code,
                'language_name' => $language_name,
                'language_proficiency' => $language_proficiency
            ]
        );
    }
    public function modalData(Request $request)
    {
        $id = $request->id;
        $modal_data = TeacherExperience::where('id', '=', $id)->get();
        return view('teacher.modal', compact('modal_data'));
    }
    public function storeEditedExperience(Request $request)
    {
        $id = $request->id;
        if (
            TeacherExperience::where('id', $id)->update(
                [
                    'experience_type' => $request->experience_type,
                    'experience_title' => $request->experience_title,
                    'experience_org' => $request->experience_org,
                    'experience_location' => $request->experience_location,
                    'experience_startendyear' => $request->experience_startendyear,
                    'experience_certification' => $request->experience_certification
                ]
            )
        ) {
            return response(['msg' => 'sucess']);
        }
    }
    public function storePrice(Request $request)
    {
        $user_id = auth()->user()->id;
        // dd($user_id);
        TeacherPricing::updateOrCreate(
            [
                'user_id' => $user_id,
            ],
            [
                'teacher_currency' => $request->teacher_currency,
                'price_for_one_student' => $request->price_for_one_student,
                'price_for_two_student' => $request->price_for_two_student,
                'price_for_class' => $request->price_for_class
            ],
        );
    }
    public function is_id_submitted($teacherId)
    {
        $status=TeacherProfile::firstWhere('user_id', $teacherId)->get();
        foreach($status as $photo)
        {
           if($photo->teacher_id_proof_image!=null)
           {
               return $photo->teacher_id_proof_image;
           }
           else
           {
               return false;
           }
        }
        if($teacherId==1)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    public function id_submission_status()
    {
        return $this->is_id_submitted(2);
    }
    
}
