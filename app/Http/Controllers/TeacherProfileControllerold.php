<?php

namespace App\Http\Controllers;

use App\Models\TeacherProfile;
use Illuminate\Http\Request;
use Validator;

use Illuminate\Support\Facades\Auth;
use PharIo\Manifest\Author;

class TeacherProfileController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('teacher.profile');
    }

    /**
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
    public function store(Request $request)
    {
        // dd($request->profile_photo->extension());
        // $request->validate([
        //     'teacher_profile_photo' => 'required | mimes:jpg,bmp,png',
        //     'gender' => 'required'
        // ]);
        $image_path_for_teacher = auth()->user()->name . auth()->user()->id . "." . $request->profile_photo->extension();
        $image_path_for_idproof = auth()->user()->name . auth()->user()->id . "." . $request->id_photo->extension();
        // dd($image_path_for_teacher);
        // dd($request->all());
        $user_id = auth()->user()->id;
        TeacherProfile::create([
            'teacher_profile_photo' => $image_path_for_teacher,
            'user_id' => $user_id,
            'gender' => $request->gender,
            'about' => $request->about,
            'address' => $request->address,
            'city' => $request->city,
            'zip_code' => $request->zipcode,
            'country' => $request->country,
            'timezone' => $request->timezone,
            'teacher_id_proof_image' => $image_path_for_idproof

        ]);
        dd($request->file('profile_photo')->store(public_path('user_images')));
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
        //
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
}
