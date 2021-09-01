<?php

namespace App\Http\Livewire;
use Illuminate\Http\Request;
use Livewire\Component;
use App\Models\SubjectFullMarks;

class Scoresheet extends Component
{
    public $marks=[];
    public $students, $subject_id;
    public $number;
    public function render()
    {
        return view('livewire.scoresheet');
    }
    public function save(Request $request)
    {
        dd($request->all());
    }}