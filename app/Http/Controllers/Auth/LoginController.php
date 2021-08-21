<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\Batch;
use App\Models\ClassMaster;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    public function adminLogin()
    {
        return view('auth.admin_login');
    }
    public function teacherLogin()
    {
        return view('auth.teacher_login');
    }
    public function operationLogin()
    {
        return view('auth.operation_login');
    }

    public function studentRegister()
    {
        $classMasters = ClassMaster::all();
        return view('auth.student_register', compact('classMasters'));
    }
    
    public function studentLogin()
    {
        return view('auth.student_login');
    }
}
