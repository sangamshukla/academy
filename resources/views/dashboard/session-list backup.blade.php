<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800 session_heading">My Session</h1>
    </div>
    <!-- image block -->

    <div class="row">
        <!-- Content Column -->
        <div class=" col-xl-4 col-lg-4 mb-4 ">
            <div class="mt-3 mb-3 tab-card">
                <div class="tab-card-header">
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link tab_cta active" id="one-tab" data-toggle="tab" href="#one" role="tab" aria-controls="One" aria-selected="true">Today’s</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link tab_cta" id="two-tab" data-toggle="tab" href="#two" role="tab" aria-controls="Two" aria-selected="false">Tomorrow</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link tab_cta" id="three-tab" data-toggle="tab" href="#three" role="tab" aria-controls="Three" aria-selected="false">All sessions</a>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- Project Card Example -->
            <div class="card shadow mb-4">
                <div class="card-body p-0">
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active p-3" id="one" role="tabpanel" aria-labelledby="one-tab">
                            <div id="accordion">
                                <div class="card mb-3">
                                    <div class="card-header" id="heading">
                                    @if(count($today)== 0)
                                        <h6 style = "text-align:center; color:green;">No sessions for today <h6>
                                    @endif
                                        </div>
                                    @foreach($today as $batch)

                                    <div class="card-header" id="headingOne">
                                        <h5 class="mb-0">
                                            <div class="d-flex justify-content-around">
                                                <div class="card_img" style="width:38%;">
                                                    {{-- <img src="{{ asset('wa/dashboard/sessionlist/img/image 31.png') }}"> --}}
                                                    @if($batch->subject->name == 'English')
                                                    <img style="width:100%;" src="{{ asset('frontend/assets/English/English.jpg') }}" alt="">
                                                    @endif
                                                    @if($batch->subject->name == 'Maths')
                                                    <img style="width:100%;" src="{{ asset('frontend/assets/Maths/Math.jpg') }}" alt="">
                                                    @endif
                                                    @if($batch->subject->name == 'Physics')
                                                    <img style="width:100%;" src="{{ asset('frontend/assets/Physics/Physics.jpg') }}" alt="">
                                                    @endif
                                                    @if($batch->subject->name == 'Chemistry')
                                                    <img style="width:100%;" src="{{ asset('frontend/assets/card-cover.png') }}" alt="">
                                                    @endif
                                                </div>
                                                <div>
                                                    <p class="subject_card">Subject</p>
                                                    <p class="card_subject_title1">{{$batch->subject->name}}</p>
                                                </div>
                                                <div class="border-left first_left_border"></div>
                                                <div>
                                                    <p class="subject_card">Join Now</p>
                                                    {{-- <div id="app"></div> --}}

                                                    <p class="card_subject_title2">
                                                        <a style="text-decoration:none; font-size:15px; color: #0EA47E;" href="{{ url('zoom', $batch->id)  }}">join now</a></p>
                                                        <script>
                                                            window.onload = (event) => {

                                                                // alert("here");
                                                                function timer() {
                                                                    setInterval(function() {
                                                                        let difference = new Date("{{ $batch->batch_start_date->format('Y-m-d H:i:s') }}") - new Date();
                                                                        let remaining = "Join Now";

                                                                        // alert(difference);
                                                                        // alert('{{ $batch->batch_start_date->format("Y-m-d h:i:s") }}'+'---'+difference);
                                                                        if (difference > 0) {
                                                                            const parts = {
                                                                                // days: Math.floor(difference / (1000 * 60 * 60 * 24)),
                                                                                // hours: Math.floor((difference / (1000 * 60 * 60)) % 24),
                                                                                m: Math.floor((difference / 1000 / 60) % 60),
                                                                                s: Math.floor((difference / 1000) % 60),
                                                                            };
                                                                            remaining = Object.keys(parts).map(part => {
                                                                                return `${parts[part]} ${part}`;
                                                                            }).join(" ");
                                                                        }
                                                                        document.getElementById("{{ $batch->id }}").innerHTML = remaining;
                                                                    }, 1000);

                                                                }
                                                                timer();
                                                            };
                                                        </script>
                                                    </p>

                                                </div>
                                                <div class="border-left second_left_border"></div>

                                                <button class="btn btn-link card_cta" data-toggle="collapse" data-target="#collapse{{$batch->id}}" aria-expanded="true" aria-controls="collapseOne">
                                                    <img src="{{ asset('wa/dashboard/sessionlist/img/chevron.svg') }}" alt="arrow" title="arrow">
                                                </button>
                                            </div>
                                            {{-- <p class="date_text">{{ $batch->batch_start_date->format('d M, Y') }}</p> --}}

                                            <p class="date_text" style="margin-top: -9px;
                                                margin-left: 81px;">
                                                @foreach ($batch->batchSession as $session)
                                                @if (\Carbon\Carbon::parse($session->start_date_time)->format('d')==\Carbon\Carbon::now()->format('d'))

                                                {{ $session->start_date_time->format('d M, Y H:i A') }}
                                                @endif
                                                @endforeach
                                            </p>

                                        </h5>
                                    </div>
                                    <div id="collapse{{$batch->id}}" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
                                        <div class="card-body">
                                            <table class="table">
                                                @foreach($batch->batchSession as $session)
                                                @if (\Carbon\Carbon::parse($session->start_date_time)->format('d')===\Carbon\Carbon::now()->format('d'))
                                                <tr>
                                                    <td>Class Name</td>
                                                    <td>{{ $batch->classSettings->name }}</td>
                                                </tr>
                                                <tr>
                                                    <td>Teacher</td>
                                                    <td>{{ $batch->teacher->name }}</td>
                                                </tr>
                                                <tr>

                                                    <td>Topics</td>
                                                    <td>
                                                        @foreach($session->topics as $t)
                                                        {{ $session->name }} - {{ $t->topic->name }}
                                                    </td>
                                                @endforeach
                                                </tr>
                                                <tr>
                                                    <td colspan=2><a href="{{route('home-work', ['id'=>$session->id])}}">View Homework</a></td>
                                                </tr>
                                                @endif
                                                @endforeach
                                            </table>
                                        </div>
                                    </div>
                                    @endforeach
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade p-3" id="two" role="tabpanel" aria-labelledby="two-tab">
                            <div id="accordion">
                                <div class="card mb-3">
                                    <div class="card-header" id="headingTwo">
                                        @if(count($tomorrow)== 0)
                                        <h6 style = "text-align:center; color:green;">No sessions for tomorrow <h6>
                                    @endif
                                        @foreach($tomorrow as $batch)
                                        <div class="card-header" id="headingOne">
                                            <h5 class="mb-0">
                                                <div class="d-flex justify-content-around">
                                                    <div class="card_img" style="width:38%">
                                                        @if($batch->subject->name == 'English')
                                                        <img style="width:100%;" src="{{ asset('frontend/assets/English/English.jpg') }}" alt="">
                                                        @endif
                                                        @if($batch->subject->name == 'Maths')
                                                        <img style="width:100%;" src="{{ asset('frontend/assets/Maths/Math.jpg') }}" alt="">
                                                        @endif
                                                        @if($batch->subject->name == 'Physics')
                                                        <img style="width:100%;" src="{{ asset('frontend/assets/Physics/Physics.jpg') }}" alt="">
                                                        @endif
                                                        @if($batch->subject->name == 'Chemistry')
                                                        <img style="width:100%;" src="{{ asset('frontend/assets/card-cover.png') }}" alt="">
                                                        @endif

                                                    </div>
                                                    <div>
                                                        <p class="subject_card">Subject</p>
                                                        <p class="card_subject_title1">{{$batch->subject->name}}</p>
                                                    </div>
                                                    <div class="border-left first_left_border"></div>
                                                    <div>
                                                        <p class="subject_card">Join Now</p>

                                                        <a style="text-decoration:none; font-size:15px; color: #0EA47E;" href="{{ url('zoom', $batch->id)  }}">join now</a></p>

                                                    </div>
                                                    <div class="border-left second_left_border"></div>

                                                    <button class="btn btn-link card_cta" data-toggle="collapse" data-target="#collapse{{$batch->id}}" aria-expanded="true" aria-controls="collapseOne">
                                                        <img src="{{ asset('wa/dashboard/sessionlist/img/chevron.svg') }}" alt="arrow" title="arrow">
                                                    </button>
                                                </div>
                                                <p class="date_text" style="margin-top: -9px;
                                                      margin-left: 81px;">{{ $batch->batch_start_date->format('d M, Y H:i A') }}</p>

                                            </h5>

                                        </div>
                                        <div id="collapse{{$batch->id}}" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
                                            <div class="card-body">
                                                <table class="table">
                                                    @foreach($batch->batchSession as $session)
                                                    @if (\Carbon\Carbon::parse($session->start_date_time)->format('d')===\Carbon\Carbon::tomorrow()->format('d'))
                                                    <tr>
                                                        <td>Class Name</td>
                                                        <td>{{ $batch->classSettings->name }}</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Teacher</td>
                                                        <td>{{ $batch->teacher->name }}</td>
                                                    </tr>

                                                    <tr>
                                                        <td>Topics</td>
                                                        <td> @foreach($session->topics as $t)
                                                            {{ $session->name }} - {{ $t->topic->name }}
                                                        </td>
                                                        @endforeach
                                                    </tr>

                                                    @endif
                                                    @endforeach
                                                </table>

                                            </div>
                                        </div>
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade p-3" id="three" role="tabpanel" aria-labelledby="three-tab">
                            <div id="accordion" >
                                <div class="card mb-3">
                                    <div class="card-header" id="headingThree">
                                        @foreach($batches as $batch)
                                        @foreach($batch->batchSession as $session)
                                        <div class="card-header" id="headingOne">
                                            <h5 class="mb-0">
                                                <div class="d-flex justify-content-around">
                                                    <div class="card_img" style="width:38%">
                                                        @if($batch->subject->name == 'English')
                                                        <img style="width:100%;" src="{{ asset('frontend/assets/English/English.jpg') }}" alt="">
                                                        @endif
                                                        @if($batch->subject->name == 'Maths')
                                                        <img style="width:100%;" src="{{ asset('frontend/assets/Maths/Math.jpg') }}" alt="">
                                                        @endif
                                                        @if($batch->subject->name == 'Physics')
                                                        <img style="width:100%;" src="{{ asset('frontend/assets/Physics/Physics.jpg') }}" alt="">
                                                        @endif
                                                        @if($batch->subject->name == 'Chemistry')
                                                        <img style="width:100%;" src="{{ asset('frontend/assets/card-cover.png') }}" alt="">
                                                        @endif

                                                    </div>
                                                    <div>
                                                        <p style="font-size:15px;" class="card_subject_title1">{{$batch->subject->name}}</p>
                                                    </div>
                                                    <div class="border-left first_left_border"></div>
                                                    <div>
                                                            <a style="text-decoration:none; font-size:15px; color: #0EA47E;" href="{{ url('zoom', $batch->id)  }}">join now</a></p>
                                                    </div>
                                                    <div class="border-left second_left_border"></div>

                                                    <button class="btn btn-link card_cta" data-toggle="collapse" data-target="#collapse{{$session->id}}" aria-expanded="true" aria-controls="collapseThree">
                                                        <img src="{{ asset('wa/dashboard/sessionlist/img/chevron.svg') }}" alt="arrow" title="arrow">
                                                    </button>
                                                </div>
                                                <p class="date_text" style="margin-top: -9px;
                                                        margin-left: 81px;">{{ $batch->batch_start_date->format('d M, Y H:i A') }}</p>
                                            </h5>
                                        </div>

                                        <div id="collapse{{$session->id}}" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
                                            <div class="card-body">

                                                <table class="table">
                                                    <tr>
                                                        <td>Class</td>
                                                        <td>{{ $batch->classSettings->name }}</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Teacher</td>
                                                        <td>{{ $batch->teacher->name }}</td>
                                                    </tr>

                                                    <tr>
                                                        <td>Topics</td>
                                                        <td> @foreach($session->topics as $t)
                                                            {{ $session->name }} - {{ $t->topic->name }}
                                                        </td>
                                                        @endforeach
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                        @endforeach
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        {{-- <td colspan="3">{{ $batch->links() }}</td> --}}
        <div class="col-xl-4 col-lg-4 mb-4 mt-4">
            <div class="card shadow mb-4 mt-5">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                    <h6 class="m-0 font-weight-bold announce">Announcements</h6>
                    <a href="#" class=" close close_card"><span>X</span></a>

                </div>
                <div class="card-body">

                    <div class="mt-4">
                        @foreach($twos as $batch)
                        <p class="mr-2 list_announce">
                            <span>{{ $batch->classSettings->name }}</span>
                            <span><a style="text-decoration:none;color:#fff;" href="{{ url('/packages-details')}}">go</span></a>
                        </p>
                        @endforeach
                    </div>
                </div>
            </div>

            <!-- Illustrations -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold announce">Reports</h6>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-6">
                            <div class="card text-center mb-2 subject1">
                                <div class="card-body p-0 cource_done_card">
                                    <p class="mb-0 mt-2">Purchased Classes</p>
                                    <p><strong>0</strong></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="card text-center mb-2 subject2">
                                <div class="card-body p-0 cource_done_card">
                                    <p class="mb-0 mt-2">1-2-1 Classes</p>
                                    <p><strong>0</strong></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="card text-center mb-2 subject3">
                                <div class="card-body p-0 cource_done_card">
                                    <p class="mb-0 mt-2">Assigned Homework</p>
                                    <p><strong>0</strong></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="card text-center mb-2 subject4">
                                <div class="card-body p-0 cource_done_card">
                                    <p class="mb-0 mt-2">Assigned Quiz</p>
                                    <p><strong>0</strong></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-6">
                            <div class="card text-center mb-2">
                                <div class="card-body">
                                    <div class="pt-4 pb-2">
                                        <canvas id="myPieChart" width="560" height="150" class="chartjs-render-monitor" style="display: block;"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="card text-center mb-2">
                                <div class="card-body">
                                    <div class=" pt-4 pb-2">
                                        <canvas id="myPieChart2" width="560" height="150" class="chartjs-render-monitor" style="display: block;"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <p class="mt-3 circle_heading_section">Lorem ipsum</p>
                            <p class="circle_pera_setion">
                                Lorem ipsum dolor sit amet, consectetur adipiscing
                                elit, sed do eiusmod tempor...
                            </p>
                            <a href="#" class="circle_link">Lorem Ipsum</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-4 col-lg-4 mb-4 ">
            <div class="profile_details card py-4 px-4 text-center thirdbox">
                <div class="profile">
                    <div class="profile_icon"><img src="{{asset('wa/dashboard/img/user.png')}}"></div>
                    <p class="name mb-1">{{ auth()->user()->name }}</p>
                    <p class="class_section"><span>Year:</span><span>{{ $batch->name }}</span></p>
                    <a href="#" class="profile"><span>view Profile</span></a>
                </div>
            </div>
            <!-- Announcements -->
            <div class="card shadow mb-4">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                    <h6 class="m-0 font-weight-bold announce">History</h6>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-12">
                             @foreach ($three as $batch )
                            {{-- for generate random no --}}
                            <div class="card p-1 chat_card chat_card_background{{ mt_rand(1,2) }}">
                                <div class="card-body p-2 d-flex">
                                    <div class="profile_icon_card col-3 pr-3">

                                    {{-- subject wise img --}}
                                    <div class="card_img">
                                        {{-- <img src="{{ asset('wa/dashboard/sessionlist/img/image 31.png') }}"> --}}
                                        @if($batch->subject->name == 'English')
                                        <img src="{{ asset('frontend/assets/English/English.jpg') }}" alt="">
                                        @endif
                                        @if($batch->subject->name == 'Maths')
                                        <img src="{{ asset('frontend/assets/Maths/Math.jpg') }}" alt="">
                                        @endif
                                        @if($batch->subject->name == 'Physics')
                                        <img  src="{{ asset('frontend/assets/Physics/Physics.jpg') }}" alt="">
                                        @endif
                                        @if($batch->subject->name == 'Chemistry')
                                        <img src="{{ asset('frontend/assets/card-cover.png') }}" alt="">
                                        @endif

                                    </div>
                                    </div>
                                    {{-- end here --}}
                                    <div class="chat_block col-3">
                                        <p><strong>Subject</strong></p>
                                        <p>{{$batch->subject->name}}</p>
                                    </div>

                                <div class="chat_block col-6">
                                    <p><strong>Class</strong></p>
                                    <p>{{ucwords($batch->classSettings->name)}}</p>
                                </div>
                                </div>
                                <!--<table class="table">-->
                                <!--<tr>-->
                                <!--  <td>-->
                                <!--<p> Date & Time: </p>   -->
                                <!--  </td> -->
                                <!--  <td>-->
                                <!--     {{ $batch->batch_start_date->format('d M, Y H:i A') }} -->
                                <!--  </td>-->
                                <!--</tr>-->
                                <!--<tr>-->
                                <!--    <td>Topics</td>-->
                                <!--    <td> @foreach($session->topics as $t)-->
                                <!--        {{ $session->name }} - {{ $t->topic->name }}-->
                                <!--    </td>-->
                                <!--    @endforeach-->
                                <!--</tr>-->
                                <!--</table>-->
                                <table class="table">
                            <tr>
                                <th>
                                Date & Time:
                                </th>
                                <th>
                                    Topics
                                </th>
                            </tr>
                            <tr>
                                <td>
                                    {{ $batch->batch_start_date->format('d M, Y H:i A') }}
                                </td>
                                <td>
                                     @foreach($session->topics as $t)
                                        {{ $session->name }} - {{ $t->topic->name }}
                                    </td>
                                 @endforeach

                            </tr>
                                <!--  <td>-->
                                <!--<p> </p>   -->
                                <!--  </td> -->
                                <!--  <td>-->
                                <!--     {{ $batch->batch_start_date->format('d M, Y H:i A') }} -->
                                <!--  </td>-->
                                <!--</tr>-->
                                <!--<tr>-->
                                <!--    <td>Topics</td>-->
                                <!--    <td> @foreach($session->topics as $t)-->
                                <!--        {{ $session->name }} - {{ $t->topic->name }}-->
                                <!--    </td>-->
                                <!--    @endforeach-->
                                <!--</tr>-->
                                </table>
                            </div>
                            @endforeach
                    </div>
                    </div>



                            {{-- for retest --}}
                     {{-- <div class="card p-1 chat_card chat_card_background2">
                                            <div class="card-body p-2 d-flex">
                                                <div class="profile_icon_card pr-3"><img src="{{ asset('wa/dashboard/sessionlist/img/user.png') }}">
                        </div>
                        <div class="chat_block">
                            <p><strong>Subject</strong></p>
                            <p>Lorem ipsum dolor sit amet, consectetu...hhfhfhfhfhhfhfhhfhfhhnnnnnnnnnnnnn</p>
                        </div>
                    </div>
                    <div class="text-right"><a class="send_msg" href="">Send Message</a></div>
                </div>
                <div class="card p-1 chat_card chat_card_background3">
                    <div class="card-body p-2 d-flex">
                        <div class="profile_icon_card pr-3"><img src="{{ asset('wa/dashboard/sessionlist/img/user.png') }}"></div>
                        <div class="chat_block">
                            <p><strong>Subject</strong></p>
                            <p>Lorem ipsum dolor sit amet, consectetu...hhfhfhfhfhhfhfhhfhfhhnnnnnnnnnnnnn</p>
                        </div>
                    </div>
                    <div class="text-right"><a class="send_msg" href="">Send Message</a></div>
                </div>
                <div class="card p-1 chat_card chat_card_background4">
                    <div class="card-body p-2 d-flex">
                        <div class="profile_icon_card pr-3"><img src="{{ asset('wa/dashboard/sessionlist/img/user.png') }}"></div>
                        <div class="chat_block">
                            <p><strong>Subject</strong></p>
                            <p>Lorem ipsum dolor sit amet, consectetu...hhfhfhfhfhhfhfhhfhfhhnnnnnnnnnnnnn</p>
                        </div>
                    </div>
                    <div class="text-right"><a class="send_msg" href="">Send Message</a></div>
                </div> --}}

                {{-- forretest --}}


            <div class="card shadow mb-4">
        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
        <h6 class="m-0 font-weight-bold buy_card_section">You would like to buy</h6>
    </div>

    <div class="card-body d-flex p-2">
        @foreach ($twos as $batch )
        <div class="card">
            <div class="card-header display_card_header display_card_{{ $loop->last ? 'bg' : 'bg2' }}">
                <span>11+ Sample Papers</span>
                <br>
                <span>ENGLISH- Exam </span>
            </div>
            <div class="card_body display_card_body">
                <p><span></span><span>{{$batch->classSettings->name}}</span></p>
                <p><span>£ </span><span>{{ $batch->batch_price_per_session}}</span></p>

                <p><span>Start date</span> <span>:{{ $batch->batch_start_date->format('d M, Y H:i A') }}</span></p>
                <p><a href="">View </a></p>
            </div>
        </div>
        @endforeach

    </div>
</div>
</div>
</div>
<!-- Content Row -->
<!-- /.container-fluid -->


<!-- End of Main Content -->
<link rel="stylesheet" href="{{ asset('wa/dashboard/sessionlist/css/student-admin.css') }}">

<link rel="stylesheet" href="{{ asset('wa/dashboard/sessionlist/css/session.css') }}">
<script src="//code.jquery.com/jquery-3.5.1.js"></script>
<script src="//cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>

<script src="{{ asset('wa/dashboard/sessionlist/vendor/jquery/jquery.min.js')}}"></script>
<!--<script src="/wa/dashboard/sessionlist/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>-->
<!-- Core plugin JavaScript-->
<!--<script src="/wa/dashboard/sessionlist/vendor/jquery-easing/jquery.easing.min.js"></script>-->
<!-- Custom scripts for all pages-->
<script src="{{ asset('wa/dashboard/sessionlist/js/student.js') }}"></script>
<!-- Page level plugins -->
<script src="{{ asset('wa/dashboard/sessionlist/vendor/chart.js/Chart.min.js') }}"></script>

<!-- Page level custom scripts -->
<script src="{{ asset('wa/dashboard/sessionlist/js/demo/chart-area-demo.js')}}"></script>
<script src="{{ asset('wa/dashboard/sessionlist/js/demo/chart-pie-demo.js')}}"></script>
<script>
    $(document).ready(function() {
    $('#example').DataTable( {
        "pagingType": "full_numbers"
    } );
} );
</script>
