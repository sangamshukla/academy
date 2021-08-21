<?php $i=1;
// $sessionTime_array = array("9:00"=>"0", "9:30"=>"50", "10:00"=>"100");

?>
@if ($batches)
@foreach ($batches as $batch)
{{-- <li>{{$batch->duration_per_session}}</li> --}}
{{-- <li>{{Carbon\Carbon::parse($batch->start_date_time)->format('Hi')}}</li> --}}
<?php
    if($i==1)
    {
        $j=1;
        $color="#33bd9a";
    }
    elseif ($i%2==0) {
        $j=2;
        $color="#0033ae";
    }
    else {

        $j=3;
        $color="FFFFFF";
    }
?>
<?php
if($batch->duration_per_session=="60")
{
    $height=100;
    $minutes=60;

}
elseif ($batch->duration_per_session=="30") {
    $height=50;
    $minutes=30;

}
else {
    $height=150;
    $minutes=90;

}
?>
<li
                            class="single-event"
                            data-start="{{Carbon\Carbon::parse($batch->start_date_time)->format('g:i A', 'H:i')}}"
                            data-end="{{Carbon\Carbon::parse($batch->start_date_time)->addMinutes($minutes)->format('g:i A', 'H:i')}}"
                            data-content="event-abs-circuit"
                            data-event="event-{{$j}}"
                            @if (Carbon\Carbon::parse($batch->start_date_time)->format('Hi')=="0900")
                            style="top:0px; height: {{$batch->duration_per_session}}px position:absolute"

                            @elseif (Carbon\Carbon::parse($batch->start_date_time)->format('Hi')=="0930")
                            style="top:50px; height: {{$height}}px position:absolute"
                            @elseif (Carbon\Carbon::parse($batch->start_date_time)->format('Hi')=="1000")
                            style="top:100px; height: {{$height}}px position:absolute"
                            @elseif (Carbon\Carbon::parse($batch->start_date_time)->format('Hi')=="1030")
                            style="top:150px; height: {{$height}}px position:absolute"
                            @elseif (Carbon\Carbon::parse($batch->start_date_time)->format('Hi')=="1100")
                            style="top:200px; height: {{$height}}px position:absolute"
                            @elseif (Carbon\Carbon::parse($batch->start_date_time)->format('Hi')=="1130")
                            style="top:250px; height: {{$height}}px position:absolute"
                            @elseif (Carbon\Carbon::parse($batch->start_date_time)->format('Hi')=="1200")
                            style="top:300px; height: {{$height}}px position:absolute"
                            @elseif (Carbon\Carbon::parse($batch->start_date_time)->format('Hi')=="1230")
                            style="top:350px; height: {{$height}}px position:absolute"
                            @elseif (Carbon\Carbon::parse($batch->start_date_time)->format('Hi')=="1300")
                            style="top:400px; height: {{$height}}px position:absolute"
                            @elseif (Carbon\Carbon::parse($batch->start_date_time)->format('Hi')=="1330")
                            style="top:450px; height: {{$height}}px position:absolute"
                            @elseif (Carbon\Carbon::parse($batch->start_date_time)->format('Hi')=="1400")
                            style="top:500px; height: {{$height}}px position:absolute"
                            @elseif (Carbon\Carbon::parse($batch->start_date_time)->format('Hi')=="1430")
                            style="top:550px; height: {{$height}}px position:absolute"
                            @elseif (Carbon\Carbon::parse($batch->start_date_time)->format('Hi')=="1500")
                            style="top:600px; height: {{$height}}px position:absolute"
                            @elseif (Carbon\Carbon::parse($batch->start_date_time)->format('Hi')=="1530")
                            style="top:650px; height: {{$height}}px position:absolute"
                            @elseif (Carbon\Carbon::parse($batch->start_date_time)->format('Hi')=="1600")
                            style="top:700px; height: {{$height}}px position:absolute"
                            @elseif (Carbon\Carbon::parse($batch->start_date_time)->format('Hi')=="1630")
                            style="top:750px; height: {{$height}}px"
                            @elseif (Carbon\Carbon::parse($batch->start_date_time)->format('Hi')=="1700")
                            style="top:800px; height: {{$height}}px"
                            @elseif (Carbon\Carbon::parse($batch->start_date_time)->format('Hi')=="1730")
                            style="top:850px; height: {{$height}}px"
                            @else
                            style="top:750px; display: none; height: {{$height}}px"
                            @endif

                            >
                            <a href="#0"
                                ><span class="event-date" style="color:{{$color}} !important"></span>
                                <em class="event-name">{{$batch->name}}</em>

                            </a>
                            </li>
                            <?php $i++; ?>
                            @endforeach

                            {{-- <li
                            class="single-event"
                            data-start="11:00"
                            data-end="12:30"
                            data-content="event-rowing-workout"
                            data-event="event-2"
                            style="top: 199px; height: 151px"
                            >
                            <a href="#0"
                                ><span class="event-date"></span>
                                <em class="event-name">Rowing Workout</em>
                            </a>
                            </li>

                            <li
                            class="single-event"
                            data-start="14:00"
                            data-end="15:15"
                            data-content="event-yoga-1"
                            data-event="event-3"
                            style="top: 499px; height: 126px"
                            >
                            <a href="#0"
                                ><span class="event-date"></span>
                                <em class="event-name">Yoga Level 1</em>
                            </a>
                            </li> --}}

    @else
    {
        {!! "There are no classes for today" !!}
    }
    @endif

<script src="{{asset('cal/calander.js')}}">

</script>


