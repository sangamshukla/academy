<?php

namespace App\Http\Controllers;

use App\Models\Event;
use App\Models\OrderItems;
use App\Models\OrderPayment;
use Carbon\Carbon;
use Illuminate\Http\Request;

class FullCalenderController extends Controller
{
    /**
      * Write code on Method
      *
      * @return response()
      */
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $courses = OrderPayment::where('student_id', auth()->user()->id)->pluck('id');
            $couseBatches = OrderItems::whereIn('order_payment_id', $courses)->pluck('batch_id');
            $data = Event::whereDate('start', '>=', $request->start)
                    ->whereDate('end', '<=', $request->end)
                    ->whereIn('batch_id', $couseBatches)
                    ->get(['id', 'title', 'start', 'end']);
                       
            $data->transform(function ($d) {
                $d->allDay = true;
                if ($d->start == Carbon::today()->format('Y-m-d')) {
                    $d->backgroundColor = '#53BC9B';
                } elseif ((int) str_replace('-', '', $d->start) > (int) str_replace('-', '', date('Y-m-d'))) {
                    $d->backgroundColor = '#286871';
                } else {
                    // $d->backgroundColor = '#e83e8c';
                    $d->backgroundColor = '#F08080';
                }
                // if($d->start >)
                return $d;
            });
  
            return response()->json($data);
        }
  
        return view('calander.fullcalender');
    }
 
    /**
     * Write code on Method
     *
     * @return response()
     */
    public function ajax(Request $request)
    {
        switch ($request->type) {
           case 'add':
              $event = Event::create([
                  'title' => $request->title,
                  'start' => $request->start,
                  'end' => $request->end,
              ]);
              return response()->json($event);
             break;

           case 'update':
              $event = Event::find($request->id)->update([
                  'title' => $request->title,
                  'start' => $request->start,
                  'end' => $request->end,
              ]);
              return response()->json($event);
             break;
  
           case 'delete':
              $event = Event::find($request->id)->delete();
  
              return response()->json($event);
             break;
             
           default:
             # code...
             break;
        }
    }
}
