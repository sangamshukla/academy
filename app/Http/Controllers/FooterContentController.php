<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class FooterContentController extends Controller
{
    public function termsofuse()
    {
        // for without use blade
        // return response()->file(public_path('wa/assets/img/tearms-and-Condition.pdf'));
        return view('footercontent.terms-of-use');
    }
    public function privacyPolicy()
    {
        return view('footercontent.privacy-policy');
    }
}
