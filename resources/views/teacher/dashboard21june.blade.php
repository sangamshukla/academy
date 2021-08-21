@extends('layouts.teacher_dashboard')

@section('content')
<link href="{{asset('wa/teacherdashboard/css/session.css')}}" rel="stylesheet" />
          <!-- Begin Page Content -->
            <!-- Page Heading -->

            <div class="d-sm-flex align-items-center justify-content-between mb-4">
              <h1 class="h3 mb-0 text-gray-800 session_heading">My Session</h1>
            </div>
            <!-- image block -->
            <div class="row">
              <div class="col-xl-8 col-lg-8">
                <div class="container mt-5">
                  <ul class="nav nav-pills nav-fill navtop">
                    <li class="nav-item">
                      <a
                        class="nav-link tab_title active"
                        href="#menu1"
                        data-toggle="tab"
                        >today</a
                      >
                    </li>
                    <li class="nav-item">
                      <a
                        class="nav-link tab_title"
                        href="#menu2"
                        data-toggle="tab"
                        >Tomorrow</a
                      >
                    </li>
                    <li class="nav-item">
                      <a
                        class="nav-link tab_title"
                        href="#menu3"
                        data-toggle="tab"
                        >This Week</a
                      >
                    </li>
                    <li class="nav-item">
                      <a
                        class="nav-link tab_title"
                        href="#menu4"
                        data-toggle="tab"
                        >This Month</a
                      >
                    </li>
                  </ul>
                  <div class="add_class"><a href="{{route('class.create')}}">+Add Class</a></div>
                  <div class="tab-content">
                    <div class="tab-pane active" role="tabpanel" id="menu1">
                         {{--dynamic data  --}}
                         @foreach ($batches as $batch)
                         @foreach ($batch->batchSession as $session)
                         @if ($session->start_date_time->format('d')===\Carbon\Carbon::today()->format('d'))
                         <div class="card shadow mt-3">
                             <div
                             class="card-body card_left_border border_left_color1"
                             >
                          <div class="subject_edit">
                            <div class="subject_practis">
                              <p class="sub_subject">Class Name</p>
                              <p class="subject">{{ $batch->classSettings->name }}</p>
                              <p clascalas="sub_subject">Session & topics</p>
                                @foreach($session->topics as $t)
                                  {{ $session->name.'-'.$t->topic->name.',' }}
                                @endforeach
                              <p class="time_pera">
                              </p>
                            </div>
                            <div class="starttime_block">
                              <p class="sub_subject">Start</p>
                              <p class="green_text">
                                <a target="_blank" href="{{ url('start-session', $session->id) }}"  class="green_text">Start Sessions</a>
                              </p>
                            </div>
                            <div class="class_block">
                              <p class="sub_subject">Teacher</p>
                              <p class="blue_text">{{ $batch->assignteacher->name }}</p>
                            </div>
                            <div class="class_block">
                              <p class="sub_subject">Time</p>
                              <p class="blue_text">{{ $session->start_date_time->format('Y-m-d')}}</p>
                              <p class="blue_text">{{ $session->start_date_time->format('h:i A')}}</p>
                            </div>
                          </div>
                            </div>
                        </div>
                        @endif
                        @endforeach
                         @endforeach


                         {{-- /dynamic data --}}
                    </div>
                    <div class="tab-pane" role="tabpanel" id="menu2">

                         @foreach ($batches as $batch)
                         @foreach ($batch->batchSession as $session)
                         @php
                            //  dd($batches);
                         @endphp
                         @if ($session->start_date_time->format('d')==\Carbon\Carbon::tomorrow()->format('d'))
                      <div class="card shadow mt-3">
                        <div
                          class="card-body card_left_border border_left_color1"
                        >
                            <div class="subject_edit">
                            <div class="subject_practis">
                              <p class="sub_subject">Class Name</p>
                              <p class="subject">{{ $batch->classSettings->name }}</p>
                              <p class="sub_subject">Session & topic</p>
                                @foreach($session->topics as $t)
                                  {{ $session->name.'-'.$t->topic->name.',' }}
                                @endforeach
                              <p class="time_pera">
                              </p>
                            </div>
                            <div class="starttime_block">
                              <p class="sub_subject">Start</p>
                              <p class="green_text">
                                <a target="_blank" href="{{ url('start-session', $session->id) }}" class="green_text">Start Sessions</a>
                              </p>
                            </div>
                            <div class="class_block">
                              <p class="sub_subject">Teacher</p>
                              <p class="blue_text">{{ $batch->assignteacher->name }}</p>
                            </div>
                            <div class="class_block">
                              <p class="sub_subject">Time</p>
                              <p class="blue_text">{{ $session->start_date_time->format('Y-m-d')}}</p>
                              <p class="blue_text">{{ $session->start_date_time->format('h:i A')}}</p>
                            </div>
                          </div>
                        </div>
                      </div>
                      @endif
                        @endforeach
                         @endforeach
                    </div>
                    <div class="tab-pane" role="tabpanel" id="menu3">
                         @foreach ($batches as $batch)
                         @foreach ($batch->batchSession as $session)
                         @if ($session->start_date_time->format('W')==\Carbon\Carbon::now()->format('W'))
                      <div class="card shadow mt-3">
                        <div
                          class="card-body card_left_border border_left_color1"
                        >
                            <div class="subject_edit">
                            <div class="subject_practis">
                              <p class="sub_subject">Class Name</p>
                              <p class="subject">{{ $batch->classSettings->name }}</p>
                              <p class="sub_subject">Session & topic</p>
                                @foreach($session->topics as $t)
                                  {{ $session->name.'-'.$t->topic->name.',' }}
                                @endforeach
                              <p class="time_pera">
                              </p>
                            </div>
                            <div class="starttime_block">
                              <p class="sub_subject">Start</p>
                              <p class="green_text">
                                <a target="_blank" href="{{ url('start-session', $session->id) }}" class="green_text">Start Sessions</a>
                              </p>
                            </div>
                            <div class="class_block">
                              <p class="sub_subject">Teacher</p>
                              <p class="blue_text">{{ $batch->assignteacher->name }}</p>
                            </div>
                            <div class="class_block">
                              <p class="sub_subject">Time</p>
                              <p class="blue_text">{{ $session->start_date_time->format('Y-m-d')}}</p>
                              <p class="blue_text">{{ $session->start_date_time->format('h:i A')}}</p>
                            </div>
                          </div>
                        </div>
                      </div>
                      @endif
                        @endforeach
                         @endforeach

                  </div>
                  <div class="tab-pane" role="tabpanel" id="menu4">
                         @foreach ($batches as $batch)
                         @foreach ($batch->batchSession as $session)
                         @if ($session->start_date_time->format('M')==\Carbon\Carbon::today()->format('M'))
                      <div class="card shadow mt-3">
                        <div
                          class="card-body card_left_border border_left_color1"
                        >
                            <div class="subject_edit">
                            <div class="subject_practis">
                              <p class="sub_subject">Class Name</p>
                              <p class="subject">{{ $batch->classSettings->name }}</p>
                              <p class="sub_subject">Session & topic</p>
                                @foreach($session->topics as $t)
                                  {{ $session->name.'-'.$t->topic->name.',' }}
                                @endforeach
                              <p class="time_pera">
                              </p>
                            </div>
                            <div class="starttime_block">
                              <p class="sub_subject">Start</p>
                              <p class="green_text">
                                <a target="_blank" href="{{ url('start-session', $session->id) }}"  class="green_text">Start Sessions</a>
                              </p>
                            </div>
                            <div class="class_block">
                              <p class="sub_subject">Teacher</p>
                              <p class="blue_text">{{ $batch->assignteacher->name }}</p>
                            </div>
                            <div class="class_block">
                              <p class="sub_subject">Time</p>
                              <p class="blue_text">{{ $session->start_date_time->format('Y-m-d')}}</p>
                              <p class="blue_text">{{ $session->start_date_time->format('h:i A')}}</p>
                            </div>
                          </div>
                        </div>
                      </div>

                      @endif
                        @endforeach
                         @endforeach

                  </div>
                  </div>

                </div>

              </div>
              <div class="col-xl-4 col-lg-4">
                  <div class="mt-5">
                      <div class="calander_block">
                        <p>
                          <img src="{{asset('wa/teacherdashboard/img/newcalander.svg')}}"/><span class="pl-3">Scheduled Classes</span>
                        </p>
                        <div id="datepickerCelander" class="dt_calander">
                          <div class="row" style="margin-left: -7px">
                            <div class="col-3"></div>
                            <div class="col-9">
                              <div class="day_block">
                                <p>{{\Carbon\Carbon::today()->format('D')}}</p>
                                @for ($i = 1; $i <= 6; $i++)
                                <p>{{\Carbon\Carbon::today()->addDays($i)->format('D')}}</p>
                                @endfor
                              </div>
                            </div>
                          </div>
                          <div class="row pr-3 pl-3">
                            <div class="col-3"  style="margin-left: -7px"><p class="month_text">{{\Carbon\Carbon::now()->format('M Y')}}</p></div>
                            <div class="col-9">
                              <div class="day_block date_p">
                                {{-- <p><img src="{{asset('wa/teacherdashboard/img/arrow-left.svg')}}"></p> --}}
                                {{-- <p class="active" id="today">{{\Carbon\Carbon::today()->format('d')}}</p> --}}
                                @php
                                    $date_info=array();
                                @endphp
                                @for ($i = 0; $i <= 6; $i++)
                                <p id="currentDate">
                                    @php
                                        $date=Carbon\Carbon::today()->addDays($i)->format('d');
                                        $date_info[]=$date;
                                    @endphp
                                    {{$date}}
                                    </p>
                                @endfor
                                {{-- @php --}}
                                    {{-- // print_r($date_info) --}}
                                {{-- // @endphp --}}
                                {{-- <p><img src="{{asset('wa/teacherdashboard/img/arrow-right.svg')}}"></p> --}}
                              </div>
                            </div>
                          </div>
                          <div class="row">
                            <div class="col-12">
                              <div class="table_detail">
                                <table>
                                  <tbody class="class-calender-block">
                                      @php
                                          $addHour=0;
                                          $start_time="08:00";
                                      @endphp
                                      @for ($i = 0; $i < 25; $i++)
                                      <tr>

                                          <td colspan="2" style="font-weight: bold; font-size: 11px;" class="time_td">

                                             @php
                                            $new_start_time=Carbon\Carbon::parse($start_time)->addMinutes($addHour)->format('h:i');
                                            $addHour=$addHour+30;
                                            @endphp
                                            {{$new_start_time}}
                                        </td>
                                          @for ($j = 0; $j < 7; $j++)
                                        <td>
                                            @if ($j<count($session_data))
                                              @php
                                                  $active_date=$session_data[$j];
                                                  $s_date=\Carbon\Carbon::parse($active_date->start_date_time)->format('d');
                                                  $s_time=strtotime(\Carbon\Carbon::parse($active_date->start_date_time)->format('h:i'));
                                                    echo $s_date;
                                                //echo '<br>';
                                                // dd($active_date->start_date_time);
                                                $added_30_minutes= strtotime($new_start_time)+1799;
                                                //echo $date_info[$j];
                                                //echo $added_30_minutes;
                                              @endphp

                                              <?php

                                                  if($s_date==$date_info[$j])
                                                  {
                                                      //echo ($s_time).'<br>';
                                                    //  echo (strtotime($new_start_time)).'<br>';
                                                    //   echo (strtotime($added_30_minutes)).'<br>';
                                                    // echo true;
                                                       if($s_time>=strtotime($new_start_time) && $s_time<=$added_30_minutes)
                                                    {
                                                        //echo true;
                                                        ?>
                                                        <span class="active_time tooltip">
                                                         <span class="time-block tooltiptext">{{$active_date->name}} at {{\Carbon\Carbon::parse($active_date->start_date_time)->format('h:i A')}}</span>
                                                         </span>
                                                    <?php

                                                  }}
                                              ?>

                                              @else
                                              <span></span>
                                              @endif

                                            </td>
                                              @endfor
                                      </tr>
                                      @endfor
                                  </tbody>
                                </table>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                  </div>
              </div>
            </div>
@endsection
