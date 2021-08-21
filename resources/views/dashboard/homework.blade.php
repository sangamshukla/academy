@extends('layouts.student_dashboard')
@section('css_file')
    <link href="{{asset('wa/dashboard/css/homework.css')}}" rel="stylesheet" />
@endsection
@section('student-content')
              <!-- Begin Page Content -->
        <div class="container-fluid" style="margin-top:80px;">
            <!-- Page Heading -->
            @forelse ($sessionDetails as $session)

            <div class="d-flex justify-content-start p-3">
                <div class="img pr-2"><a href="{{route('student-dashboard')}}"><img src="{{asset('wa/dashboard/img/chevron (2).svg')}}" /></a></div>
                <h1 class="h3 mb-0 text-gray-800 session_heading_subject">
                    {{$session->batch->classSettings->name}}
                </h1>
            </div>
            <!-- image block -->
            <div class="row">
              <!-- Content Column -->
              <div class="col-xl-6 col-lg-6">
                <!-- Project Card Example -->
                <div class="card shadow">
                  <div class="card-body">
                    <div class="row">
                      <div class="col-12">
                        <p class="Session_text">{{$session->name}}</p>
                      </div>
                    </div>
                    <div class="row pt-3">
                      <div class="col-xl-6 col-sm-6">
                        <p class="Session_pera">Session Date</p>
                        <p class="Session_date">{{\Carbon\Carbon::parse($session->start_date_time)->format('d-M-Y')}}</p>
                      </div>
                      <div class="col-xl-6 col-sm-6">
                        <p class="Session_pera">Session Time</p>
                        <p class="Session_date">{{\Carbon\Carbon::parse($session->start_date_time)->format('h:m A')}}</p>
                      </div>
                    </div>
                    <div class="row pt-3">
                      <div class="col-xl-6 col-sm-6">
                        <p class="Session_pera">Teacher Name</p>
                        <p class="teacher_name">{{$session->batch->assignteacher->name}}</p>
                      </div>
                      <div class="col-xl-6 col-sm-6">
                        <p class="Session_pera">Class</p>
                        <p class="Session_date">{{$session->batch->classmaster->name}}</p>
                      </div>
                    </div>
                    <div class="row pt-3">
                      <div class="col-xl-6 col-sm-6">
                        <p class="Session_pera">Subject</p>
                        <p class="Session_date">{{$session->batch->subject->name}}</p>
                      </div>
                      <div class="col-xl-6 col-sm-6">
                        <p class="Session_pera">Topic</p>
                        <p class="Session_date">{{$session->singleTopic->topic->name}}</p>
                      </div>
                    </div>
                    <div class="row pt-3">
                      <div class="col-12">
                        <p class="msg_title">Teachers Message</p>
                        @forelse ($homeworks as $homework)
                        <p class="msg_block">
                          {{$homework->comment}}
                        </p>
                        @empty
                        <p class="msg_block">
                          There are no comments given by your teacher.
                        </p>
                        @endforelse
                      </div>
                    </div>
                        <!-- <div class="row pt-3">
                        <div class="col-12">
                            <div class="pt-3">
                            <button class="btn session_cta">Start Session</button>
                            <span class="session_timer">10:08:55</span>
                            </div>
                        </div>
                        </div> -->
                    <div class="row">
                      <div class="col-12">
                        {{-- <p class="query_title">Any Query</p> --}}
                        {{-- <form>
                          <div class="query_input">
                            <input
                              type="text"
                              placeholder="Add your query here"
                            />
                          </div> --}}
                          <div class="pt-3">
                            <button class="btn submit_text">Join Now</button>
                          </div>
                        {{-- </form> --}}
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            @empty

            @endforelse
              <div class="col-xl-6 col-lg-6 mb-4">
                <div class="card shadow mb-4">
                  <div class="card-body">
                    <p class="home_title">Home Work</p>
                    @if(!$have_submitted)
                     <div class="row">
                  <div class="col-9">
                    <span
                      ><img src="{{asset('wa/dashboard/img/notice.svg')}}" width="20" height="20"
                    /></span>
                    <span class="submit-msg"
                      >You have Pending Home Work, Kindly submit your homework
                      before due date.</span
                    >
                  </div>
                  <div class="col-3">
                      <div class=" mt-3 mb-3 d-flex justify-content-end"><a href="#"><p>View All</p></a></div>
                  </div>
                </div>
                @else
                <div class="row">
                    <div class="col-9">
                    <span class="text-success">This homework has been submitted</span>
                    </div>
                </div>
                  @endif
                    <div class="row">
                      <div class="col-xl-6 col-sm-12">
                        <div class="card p-3 mb-3">
                          <div clas="card_body card_border">
                            <p class="assien_title">Assigned</p>
                            @forelse ($homeworks as $homework)

                            <div class="row">
                              <div class="col-xl-12 col-sm-12 p-1">
                                <a href="{{route('submit-home-work', ['id'=>$homework->assigned_home_work_id])}}">
                                    {{-- {{$homework->session->name}}-{{$homework->session->topics->topic->name}} --}}
                                   {{-- <p>{{$homework}}</p> --}}
                                   {{$homework->name}}
                                </a>
                              </div>
                            </div>
                            @empty

                            <div class="row">
                              <div class="col-xl-12 col-sm-6 p-1">
                                No Homework assigned to you
                              </div>
                            </div>
                            @endforelse
                          </div>
                        </div>
                      </div>
                      <div class="col-xl-6 col-sm-12">
                        <div class="card p-3 mb-3">
                          <div clas="card_body card_border p-5">
                            <p class="assien_title">Due Date</p>
                            <div class="row">
                                @forelse ($homeworks as $homework)

                                <div class="col-xl-6 col-sm-6 p-1">
                                  {{$homework->due_date}}
                                </div>
                                {{-- <div class="col-xl-6 col-sm-6 p-1 text-right">
                                    <i
                                    class="fa fa-download"
                                    aria-hidden="true"
                                    ></i>
                                </div> --}}
                                @empty

                                <div class="col-xl-6 col-sm-6 p-1">
                                    No due date
                                </div>
                                @endforelse
                            </div>
                            {{-- <div class="row">
                              <div class="col-xl-6 col-sm-6 p-1">
                                Home Work1
                              </div>
                              <div class="col-xl-6 col-sm-6 p-1 text-right">
                                <i
                                  class="fa fa-download"
                                  aria-hidden="true"
                                ></i>
                              </div>
                            </div> --}}
                          </div>
                        </div>
                      </div>
                      <div class="col-xl-6 col-sm-12">
                        <div class="card p-3 mb-3">
                          <div clas="card_body card_border p-5">
                            <p class="assien_title">Points</p>
                            <div class="row">
                                @forelse ($homeworks as $homework)
                                    <div class="col-xl-12 col-sm-12 px-1 mx-2">
                                      @if(isset($homework->given_marks))
                                      {{$homework->given_marks}}
                                      @else
                                      <span>Not checked<span>
                                      @endif
                                      /{{$homework->points}}
                                    </div>
                                    @empty
                                    <div class="col-xl-12 col-sm-12 px-1 mx-2">
                                      No homework assigned.
                                    </div>
                                  @endforelse
                              {{-- <div class="col-xl-6 col-sm-6 p-1 text-right">
                                <i
                                  class="fa fa-download"
                                  aria-hidden="true"
                                ></i>
                              </div> --}}
                            </div>
                            {{-- <div class="row"> --}}
                              {{-- <div class="col-xl-6 col-sm-6 p-1">
                                Home Work1
                              </div> --}}
                              {{-- <div class="col-xl-6 col-sm-6 p-1 text-right">
                                <i
                                  class="fa fa-download"
                                  aria-hidden="true"
                                ></i>
                              </div> --}}
                            {{-- </div> --}}
                          </div>
                        </div>
                      </div>
                      {{-- <div class="col-xl-6 col-sm-12">
                        <div class="card p-3 mb-3">
                          <div clas="card_body card_border p-5">
                             <p class="assien_title">Submission Status</p>
                            <div class="row">
                                @forelse ($homeworks as $homework)
                                <div class="col-xl-6 col-sm-6 p-1">
                                    @foreach ($homework->homeworkstatus as $homeworkstatus)
                                        @if ($homeworkstatus->is_submitted==1 && $homeworkstatus->student_id==auth()->user()->id)
                                            <p>submitted</p>
                                            @else
                                            {{-- <p>not submitted</p>
                                        @endif
                                        {{-- {{$homeworkstatus->is_submitted}}
                                        {{$homeworkstatus->student_id}}
                                    @endforeach
                                </div>

                                @empty
                                <div class="col-xl-6 col-sm-6 p-1">
                                    Sumission Status Not Found
                                </div>

                                @endforelse
                              {{-- <div class="col-xl-6 col-sm-6 p-1 text-right">
                                <i
                                  class="fa fa-download"
                                  aria-hidden="true"
                                ></i>
                              </div>
                            </div>
                            {{-- <div class="row">
                              <div class="col-xl-6 col-sm-6 p-1">
                                Home Work1
                              </div>
                              <div class="col-xl-6 col-sm-6 p-1 text-right">
                                <i
                                  class="fa fa-download"
                                  aria-hidden="true"
                                ></i>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div> --}}
                    </div>
                    <!-- upload file section -->
                    <div class="row">
                      <div class="col-12">
                        <form id="fileUploadForm">
                          <fieldset class="pt-3">
                            <div class="form-horizontal">
                              <div class="form-group">
                                <div class="row">
                                  <div class="col-12">
                                    <div class="input-group">
                                      <input
                                        type="hidden"
                                        id="filename"
                                        name="filename"
                                        value=""
                                      />
                                      {{-- <input
                                        type="file"
                                        id="uploadedFile"
                                        name="uploadedFile"
                                        class="form-control form-control-sm"
                                      />
                                      <div class="input-group-btn">
                                        <input
                                          type="submit"
                                          value="Browse File"
                                          class="rounded-0 btn upload"
                                        />
                                      </div> --}}
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </fieldset>
                        </form>
                      </div>
                    </div>
                    <!-- <div class="card shadow mb-4">
                      <div class="card-body">
                        <div class="d-flex justify-content-between pt-2 pb-3">
                          <div class="m-0 font-weight-bold feedback">
                            Feedback
                          </div>
                          <div class="">
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>
                          </div>
                        </div>
                        <div clas="row">
                          <div class="col-12">
                            <input
                              class="text_section"
                              type="text"
                              placeholder="Add your query here"
                            />
                          </div>
                          <div class="col-12 pt-3">
                            <button
                              type="button"
                              class="btn feedback_submit"
                              data-toggle="modal"
                              data-target="#myModal"
                            >
                              Submit
                            </button>
                          </div>
                        </div>
                      </div>
                    </div> -->
                  </div>
                </div>
                <!-- feedback section start -->
                <!-- Illustrations -->
              </div>
            </div>
            <!-- Content Row -->
            <!-- /.container-fluid -->
            <!-- subject card section start -->
            <div class="row">
              <div class="col-12">
                <div class="card shadow mb-4">
                  <div class="card-body">
                    <p class="buy_card_pera">You would like to buy</p>
                    <div class="row">
                      <div class="col-xl-3 col-sm-12">
                        <div class="card mb-3">
                          <div
                            class="card-header display_card_header display_card_bg1"
                          >
                            <span>11+ Sample Papers</span>
                            <br />
                            <span>ENGLISH- Exam </span>
                          </div>
                          <div class="card_body display_card_body">
                            <p><span>£ </span><span>12944</span></p>
                            <p>
                              <span>Start date</span>
                              <span>:12 March 2021</span>
                            </p>
                            <p><a href="">View </a></p>
                          </div>
                        </div>
                      </div>
                      <div class="col-xl-3 col-sm-12">
                        <div class="card mb-3">
                          <div
                            class="card-header display_card_header display_card_bg2"
                          >
                            <span>11+ Sample Papers</span>
                            <br />
                            <span>ENGLISH- Exam </span>
                          </div>
                          <div class="card_body display_card_body">
                            <p><span>£ </span><span>12944</span></p>
                            <p>
                              <span>Start date</span>
                              <span>:12 March 2021</span>
                            </p>
                            <p><a href="">View </a></p>
                          </div>
                        </div>
                      </div>
                      <div class="col-xl-3 col-sm-12">
                        <div class="card mb-3">
                          <div
                            class="card-header display_card_header display_card_bg3"
                          >
                            <span>11+ Sample Papers</span>
                            <br />
                            <span>ENGLISH- Exam </span>
                          </div>
                          <div class="card_body display_card_body">
                            <p><span>£ </span><span>12944</span></p>
                            <p>
                              <span>Start date</span>
                              <span>:12 March 2021</span>
                            </p>
                            <p><a href="">View </a></p>
                          </div>
                        </div>
                      </div>
                      <div class="col-xl-3 col-sm-12">
                        <div class="card mb-3">
                          <div
                            class="card-header display_card_header display_card_bg4"
                          >
                            <span>11+ Sample Papers</span>
                            <br />
                            <span>ENGLISH- Exam </span>
                          </div>
                          <div class="card_body display_card_body">
                            <p><span>£ </span><span>12944</span></p>
                            <p>
                              <span>Start date</span>
                              <span>:12 March 2021</span>
                            </p>
                            <p><a href="">View </a></p>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- subject card section end -->
          </div>

          <!-- End of Main Content -->
          <!-- Modal pop-up start -->
          <!-- The Modal -->
          <div class="modal" id="myModal">
            <div class="modal-dialog">
              <div class="modal-content">
                <!-- Modal Header -->
                <!-- <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal">
                    &times;
                  </button>
                </div> -->

                <!-- Modal body -->
                <div class="modal-body p-5">
                  <div class="text-center">
                    <div class="p-4">
                      <img src="{{asset('wa/dashboard/img/Ok Icon.svg')}}" />
                      <p class="modal_heading mt-3 mb-3">
                        Query Submitted Successfully
                      </p>
                      <p class="modal_pera">
                        Your Query was Submitted to the Alice Morgan.
                      </p>
                      <button class="ok_button mt-3 mb-3">ok, Got it!</button>
                    </div>
                  </div>
                </div>
                <!-- Modal footer -->
              </div>
            </div>
          </div>
        </div>
        <!-- Modal Pop-up-end -->
@endsection
