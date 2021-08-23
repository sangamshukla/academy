@extends('layouts.class_dashboard')
@section('content')
@section('admincss')
<link rel="stylesheet" href="{{ asset('wa/admindashboard/admincss/css/session.css') }}">
<link rel="stylesheet" href="{{ asset('wa/admindashboard/admincss/css/student-admin.css') }}">


<!-- <link rel="stylesheet" href="{{ asset('wa/welcome.css') }}"> -->
@endsection
  <body id="page-top">
    <!-- Page Wrapper -->
    <div id="wrapper">
    

      <!-- Content Wrapper -->
      <div id="content-wrapper" class="d-flex flex-column">
        <!-- Main Content -->
        <div id="content">
       

          <!-- Begin Page Content -->
          <div class="container-fluid">
            <!-- Page Heading -->
           
             <!-- subject card section start -->
             <div class="row">
              <div style="margin-top:100px" class="col-12">
                <div class="card shadow mb-4">
                  <div class="card-body">
                    <p class="buy_card_pera">You would like to buy</p>
                    <div class="row">
                      <div class="col-xl-3 col-sm-12">
                        <div class="card mb-3">
                          <div class="card_body display_card_body card-1">
                            <div class="d_teacher">
                              <div><span class="d_title">Teachers</span></div>
                              <div><img src="{{asset('wa/admindashboard/img/teacher1.svg')}}"></div>
                             </div>
                             <p class="d_title_val">1445</p>
                            <p>
                              <span>Increased by 10% this Month</span>
                            </p>
                          </div>
                        </div>
                      </div>
                      <div class="col-xl-3 col-sm-12">
                        <div class="card mb-3">
                          <div class="card_body display_card_body card-2">
                            <div class="d_teacher">
                              <div><span class="d_title">Students</span></div>
                              <div><img src="{{asset('wa/admindashboard/img/videoconference.svg')}}"></div>
                            </div>
                            <p class="d_title_val">1445</p>
                            <p>
                              <span>Increased by 15% this Month</span>
                            </p>
                           
                          </div>
                        </div>
                      </div>
                      <div class="col-xl-3 col-sm-12">
                        <div class="card mb-3">
                          <div class="card_body display_card_body card-3">
                            <div class="d_teacher">
                               <div><span class="d_title">Classes</span></div>
                               <div><img src="{{asset('wa/admindashboard/img/sales 1.svg')}}"></div>
                            </div>
                            <p class="d_title_val">1445</p>
                            <p>
                              <span>IIncreased by 2% this Month</span>
                            </p>
                           
                          </div>
                        </div>
                      </div>
                      <div class="col-xl-3 col-sm-12">
                        <div class="card mb-3">
                          <div class="card_body display_card_body card-4">
                            <div class="d_teacher">
                              <div><span class="d_title">Revenue</span></div>
                              <div><img src="{{asset('wa/admindashboard/img/Online course.svg')}}"></div>
                            </div>
                            <p class="d_title_val">1445</p>
                            <p>
                              <span>Increased by 3% this Month</span>
                            </p>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- subject card section end -->
            <!-- image block -->
            <div class="row">
              <!-- Content Column -->
              <div class="col-xl-4 col-lg-4 mb-4 mt-4">
                <div class="pop_val">
                  <p>Popular Courses</p>
                  <p><a href="#">View All</a></p>
                </div>
                <div class="row">
                  <div class="col-xl-12 col-lg-12">
                    <div class="card mb-3">
                      <div class="d_card_val">
                        <div class="math_p">
                          <p>Math Practice</p>
                          <p><span>23 Jan,</span><span>04:00pm - 05:00pm</span></p>
                        </div>
                        <div class="v_course">
                            <p><a href="#">View Course</a></p>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-xl-12 col-lg-12">
                    <div class="card mb-3">
                      <div class="d_card_val">
                        <div class="math_p">
                          <p>Math Practice</p>
                          <p><span>23 Jan,</span><span>04:00pm - 05:00pm</span></p>
                        </div>
                        <div class="v_course">
                            <p><a href="#">View Course</a></p>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-xl-12 col-lg-12">
                    <div class="card mb-3">
                      <div class="d_card_val">
                        <div class="math_p">
                          <p>Math Practice</p>
                          <p><span>23 Jan,</span><span>04:00pm - 05:00pm</span></p>
                        </div>
                        <div class="v_course">
                            <p><a href="#">View Course</a></p>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-xl-12 col-lg-12">
                    <div class="card mb-3">
                      <div class="d_card_val">
                        <div class="math_p">
                          <p>Math Practice</p>
                          <p><span>23 Jan,</span><span>04:00pm - 05:00pm</span></p>
                        </div>
                        <div class="v_course">
                            <p><a href="#">View Course</a></p>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-xl-12 col-lg-12">
                    <div class="card mb-3">
                      <div class="d_card_val">
                        <div class="math_p">
                          <p>Math Practice</p>
                          <p><span>23 Jan,</span><span>04:00pm - 05:00pm</span></p>
                        </div>
                        <div class="v_course">
                            <p><a href="#">View Course</a></p>
                        </div>
                      </div>
                    </div>
                  </div>
              </div>
              </div>
              <div class="col-xl-4 col-lg-4 mb-4 mt-4">
                <div class="crt_val">
                  <p>Current Activity</p>
                </div>
                <div class="row">
                  <div class="col-xl-12 col-lg-12">
                    <div class="card mostly_progress">
                      <div class="title">Monthly Progress</div>
                      <p> Four Months Improvement</p>
                    </div>
                  </div>
                </div>
                <div class="row mt-5">
                  <div class="col-xl-12 col-lg-12">
                    <div class="cource_flex">
                    <div class="card online_courses">
                      <div class="title_no">42</div>
                      <p> Online Courses</p>
                    </div>
                    <div class="card offline_courses">
                      <div class="title_no">32</div>
                      <p> Offline Courses</p>
                    </div>
                  </div>
                  </div>
                </div>
              </div>
              <div class="col-xl-4 col-lg-4 mb-4 mt-4">
                <div class="best_val">
                  <p> Best Teacher</p>
                  <p><a href="#">View All</a></p>
                </div>
                <div class="row">
                  <div class="col-xl-12 col-lg-12">
                    <div class="card mb-3">
                      <div class="d_card_val">
                        <div class="profile_icon_card"><img src="{{asset('wa/admindashboard/img/user.png')}}"></div>
                        <div class="profile_p">
                          <p>Math Practice</p>
                          <p><span>5 Cource</span></p>
                        </div>
                        <div class="v_course">
                            <p><a href="#">View Course</a></p>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-xl-12 col-lg-12">
                    <div class="card mb-3">
                      <div class="d_card_val">
                        <div class="profile_icon_card"><img src="{{asset('wa/admindashboard/img/user.png')}}"></div>
                        <div class="profile_p">
                          <p>Math Practice</p>
                          <p><span>5 Cource</span></p>
                        </div>
                        <div class="v_course">
                            <p><a href="#">View Course</a></p>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-xl-12 col-lg-12">
                    <div class="card mb-3">
                      <div class="d_card_val">
                        <div class="profile_icon_card"><img src="{{asset('wa/admindashboard/img/user.png')}}"></div>
                        <div class="profile_p">
                          <p>Math Practice</p>
                          <p><span>5 Cource</span></p>
                        </div>
                        <div class="v_course">
                            <p><a href="#">View Course</a></p>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-xl-12 col-lg-12">
                    <div class="card mb-3">
                      <div class="d_card_val">
                        <div class="profile_icon_card"><img src="{{asset('wa/admindashboard/img/user.png')}}"></div>
                        <div class="profile_p">
                          <p>Math Practice</p>
                          <p><span>5 Cource</span></p>
                        </div>
                        <div class="v_course">
                            <p><a href="#">View Course</a></p>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-xl-12 col-lg-12">
                    <div class="card mb-3">
                      <div class="d_card_val">
                        <div class="profile_icon_card"><img src="{{asset('wa/admindashboard/img/user.png')}}"></div>
                        <div class="profile_p">
                          <p>Math Practice</p>
                          <p><span>5 Cource</span></p>
                        </div>
                        <div class="v_course">
                            <p><a href="#">View Course</a></p>
                        </div>
                      </div>
                    </div>
                  </div>
              </div>
              </div>
            </div>
            <!-- Content Row -->
          </div>

          <!-- End of Main Content -->
          <!-- Modal pop-up start -->
          <!-- The Modal -->
          <div class="modal" id="myModal">
            <div class="modal-dialog">
              <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                  <h4 class="modal-title">Modal Heading</h4>
                  <button type="button" class="close" data-dismiss="modal">
                    &times;
                  </button>
                </div>

                <!-- Modal body -->
                <div class="modal-body">Modal body..</div>

                <!-- Modal footer -->
                <div class="modal-footer">
                  <button
                    type="button"
                    class="btn btn-danger"
                    data-dismiss="modal"
                  >
                    Close
                  </button>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- Modal Pop-up-end -->
      
      </div>
      <!-- End of Content Wrapper -->
    </div>
    <!-- End of Page Wrapper -->
    <!-- Bootstrap core JavaScript-->
    <script src="{{ asset('wa/admindashboard/vendor/jquery/jquery.min.js')}}"></script>
    <script src="{{ asset('wa/admindashboard/vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
    <!-- Core plugin JavaScript-->
    <script src="{{ asset('wa/admindashboard/vendor/jquery-easing/jquery.easing.min.js')}}"></script>
    <!-- Custom scripts for all pages-->
    <script src="{{ asset('wa/admindashboard/js/student.js')}}"></script>
    <!-- Page level plugins -->
    <!-- <script src="vendor/chart.js/Chart.min.js"></script> -->

    <!-- Page level custom scripts -->
    <!-- <script src="js/demo/chart-area-demo.js"></script>
    <script src="js/demo/chart-pie-demo.js"></script> -->
  </body>
</html>

@endsection