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
                  <div class="add_class"><a href="{{route('class.create')}}" style="background: #FFFFFF;
                                                                                    box-shadow: 0px 0px 10px rgb(0 0 0 / 12%);
                                                                                    border-radius: 4px;
                                                                                    width: 125px;
                                                                                    align-items: center;
                                                                                    text-align: center;
                                                                                    text-transform: capitalize;
                                                                                    text-decoration:none;
                                                                                    color: #1D6771;
                                                                                    margin: 40px 4px;
                                                                                    border: 1px solid #1d6771;
                                                                                    padding: 10px 10px;"
                                                                                    >
                                                                                    +Add Class
                                                                                    </a>
                                                                                    </div>
                  <div class="tab-content">
                    <div class="tab-pane active" role="tabpanel" id="menu1">
                         {{--dynamic data  --}}
                         @foreach ($batches as $batch)
                         @foreach ($batch->batchSession as $session)
                         @if ($session->start_date_time->format('d-m')==\Carbon\Carbon::today()->format('d-m'))
                         <div class="card shadow mt-3">
                             <div
                             class="card-body card_left_border border_left_color1"
                             >
                          <div class="subject_edit">
                            <div class="subject_practis">
                              <p class="sub_subject">Class Name</p>
                              <p class="subject">{{ \Illuminate\Support\Str::limit($batch->classSettings->name ,'30') }}</p>
                              <p class="sub_subject">{{$session->name}}--{{$session->singleTopic->topic->name}}</p>
                              <p class="time_pera">
                              </p>
                            </div>
                            <div class="starttime_block">
                              <p class="sub_subject">Start</p>
                              <p class="green_text">
                                <a href="{{ url('start-session', $session->id) }}"  class="green_text">Sessions Details</a>
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
                         @if ($session->start_date_time->format('d-m')==\Carbon\Carbon::tomorrow()->format('d-m'))
                      <div class="card shadow mt-3">
                        <div
                          class="card-body card_left_border border_left_color1"
                        >
                            <div class="subject_edit">
                            <div class="subject_practis">
                              <p class="sub_subject">Class Name</p>
                              <p class="subject">{{ \Illuminate\Support\Str::limit($batch->classSettings->name ,'30') }}</p>
                              <p class="sub_subject">{{$session->name}}</p>
                              <p class="time_pera">
                              </p>
                            </div>
                            <div class="starttime_block">
                              <p class="sub_subject">Start</p>
                              <p class="green_text">
                                <a href="{{ url('start-session', $session->id) }}" class="green_text">Sessions Details</a>
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
                              <p class="subject">{{ \Illuminate\Support\Str::limit($batch->classSettings->name ,'30') }}</p>
                              <p class="sub_subject">{{$session->name}}</p>
                              <p class="time_pera">
                              </p>
                            </div>
                            <div class="starttime_block">
                              <p class="sub_subject">Start</p>
                              <p class="green_text">
                                <a href="{{ url('start-session', $session->id) }}" class="green_text">Sessions Details</a>
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
                              <p class="subject">{{ \Illuminate\Support\Str::limit($batch->classSettings->name ,'30') }}</p>
                              <p class="sub_subject">{{$session->name}}</p>
                              <p class="time_pera">
                              </p>
                            </div>
                            <div class="starttime_block">
                              <p class="sub_subject">Start</p>
                              <p class="green_text">
                                <a href="{{ url('start-session', $session->id) }}"  class="green_text">Sessions Details</a>
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
                            <table class="table_detail">
                                <tbody class="class-calender-block">
                            <div class="col-9">
                              <div class="day_block date_p">
                               <?php
                                $today=\Carbon\Carbon::today()->format('d');
                                $dates=[];

                                for ($i=0; $i <7 ; $i++) {
                                    array_push($dates, $today);
                                    if($today==\Carbon\Carbon::now()->daysInMonth)
                                    {
                                        $today=1;
                                    }
                                    else
                                    {
                                        $today=$today+1;
                                    }

                                    echo '<p id="currentDate">'. $dates[$i].'</p>';
                                }?>
                                <?php
                                $times=[];
                                $start_time=\Carbon\Carbon::parse("08:00")->format('h:i');
                                for ($i=0; $i < 25; $i++) {
                                    array_push($times, $start_time);
                                    $start_time=\Carbon\Carbon::parse($start_time)->addMinutes(30)->format("h:i");
                                }?>
                                </div>
                            </div>
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="">
                                <?php
                                    echo "<tr class='day_block date_p'>";
                                        echo "<th></th>";
                                        echo "<th></th>";
                                    foreach ($dates as $date) {
                                            echo "<th style='margin-left:-30px;'>";
                                                ?>

                                                <?php
                                            echo "</th>";
                                            }
                                        echo "</tr>";?>
                                        <div class="row">
                                            {{-- <tbody class=""> --}}
                            {{-- <div class="col-12"> --}}
                              {{-- <div class="table_detail"> --}}
                                  <?php
                                foreach ($times as $time){
                                    echo "<tr>";
                                        echo "<td colspan='2' class='time_td'>$time</td>";
                                        foreach ($dates as $date) {
                                            echo "<td>";
                                            // echo "<strong>checking for $date....</strong><br>";
                                            foreach ($session_data as $sessions) {
                                                $sessions=(array)$sessions;
                                                $session_date=\Carbon\Carbon::parse($sessions['start_date_time'])->format('d');
                                                $session_time=\Carbon\Carbon::parse($sessions['start_date_time'])->format('h:i');
                                                $time_plus_30=\Carbon\Carbon::parse($time)->addMinutes(30)->format('h:i');
                                                if($date==$session_date)
                                                {
                                                    if($time==$session_time)
                                                    {
                                                        ?>
                                                        <span class="active_time tooltip">
                                                            <span class="time-block tooltiptext">{{ $sessions['name'] }}</span>
                                                        </span>
                                                        <?php
                                                    }
                                                        elseif ($session_time>$time && $time_plus_30>$session_time) {?>
                                                        <span class="active_time tooltip">
                                                            <span class="time-block tooltiptext">{{ $sessions['name'] }}</span>
                                                        </span>
                                                        <?php
                                                        }

                                                }
                                            }
                                        }

                                }
                                ?>
                                </td>
                                </tr>
                                {{-- </tbody> --}}
                              {{-- </div> --}}
                            {{-- </div> --}}
                                        {{-- </div> --}}
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
