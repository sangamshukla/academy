<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Auth\RegisterController;
use Illuminate\Http\Request;

class AddStudentController extends Controller
{
    public function createAddStudent(Request $request)
    {
        return view('admindashboardnew.addstudent.add-student');
    }

    public function storeAddStudent(Request $request)
    {
        $register = new RegisterController();
        return $register->register($request);
    }
}
