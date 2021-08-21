<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class LiveSessionController extends Controller
{
    public function livesessiondetail()
    {
        return view('livesession.livesessiondetail');
    }
    public function livesession()
    {
        return view('livesession.livesession');
    }
}
