<?php

namespace App\Http\Controllers;

use App\Mail\TeacherSuccessfullyRegistered;
use App\Models\ClassMaster;
use App\Models\Subject;
use App\Models\Teacher;
use App\Models\User;
use App\Models\WeeklyOff;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Str;

class TeacherController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // $teachers = Teacher::orderBy('id', 'ASC')->get();
        // $teachers = Teacher::letest()->get();
        $teachers = Teacher::latest()->get();
        return view('teacher.index', compact('teachers'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $teachers = Teacher::all();
        $classes = ClassMaster::all();
        return view('teacher.create', compact('teachers', 'classes'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // dd($request);
        $request->validate([
            'name' => 'required',
            'email' => 'required',
            'contact_number' => 'required | max:10',
            // 'year' => 'required',
            'user_type' => 'required',
        ]);

        $password = Str::random(8);
        $user = User::Create([
            'name' => $request->name,
            'email' => $request->email,
            'contact_number' => $request->contact_number,
            'password' => bcrypt('wa@123'),
            'role' => $request->user_type,
        ]);

        Teacher::Create([
            'user_id' => $user->id,
            'class_master_id' => $request->class_master_id,
            'user_type' => $request->user_type,
        ]);

        // Mail::to($user->email)->send(new TeacherSuccessfullyRegistered($user, $password));
        return redirect(route('manage-teacher'))->with('status', 'Teacher Added Successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Teacher  $teacher
     * @return \Illuminate\Http\Response
     */


    public function show($id)
    {
        $teacher = Teacher::find($id);
        return view('teacher.show', compact('teacher'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Teacher  $teacher
     * @return \Illuminate\Http\Response
     */

    public function edit(Request $request, $id)
    {
        $teacher = Teacher::find($id);
        return view('teacher.edit', compact('teacher'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Teacher  $teacher
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $teacher = Teacher::find($id);

        $user = User::updateOrCreate(
            [
                'id' => $teacher->user_id
            ],
            [
                'name' => $request->name,
                'email' => $request->email,
                'contact_number' => $request->contact_number,
                'class_master_id' => $request->class_master_id,
                'role' => $request->user_type,
            ]
        );
        $teacher->update([
            'user_id' => $user->id,
            'class_master_id' => $request->class_master_id,
            'user_type' => strtolower($request->user_type),
        ]);
        return redirect(route('manage-teacher'))->with('status', 'Teacher Updated Successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Teacher  $teacher
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $teacher = Teacher::find($id);
        $teacher->delete();
        return redirect(route('manage-teacher'))->with('status', 'Teacher Deleted Successfully');
    }
    // public function student(Request $request)
    // {
    //     return view('')
    // }

    public function login()
    {
        return view('admin.login');
    }
}
