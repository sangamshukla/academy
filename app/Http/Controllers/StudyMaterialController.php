<?php

namespace App\Http\Controllers;

use App\Models\Batch;
use Carbon\Carbon;
use Illuminate\Http\Request;

class StudyMaterialController extends Controller
{
    public function studyMaterial()
    {
        $totals = Batch::whereHas('batchSession', function ($query) {
            $query->whereDate('start_date_time', '>=', Carbon::today());
        })->count();
        $totalprice = Batch::whereHas('batchSession', function ($query) {
            $query->whereDate('start_date_time', '>=', Carbon::today());
        })->count();
        $totnoofseats = Batch::whereHas('batchSession', function ($query) {
            $query->whereDate('start_date_time', '>=', Carbon::today());
        })->count();

        $batches = Batch::whereHas('batchSession', function ($query) {
            $query->whereDate('start_date_time', '>=', Carbon::today());
        })->latest()->paginate(8);
        return view('studymaterial.study-material', compact('totals', 'totalprice', 'totnoofseats', 'batches'));
    }
}
