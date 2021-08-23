<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Student dashboard</title>

    <!-- Custom fonts for this template-->
    <link
      href="{{asset('wa/admin/vendor/fontawesome-free/css/all.min.css')}}"
      rel="stylesheet"
      type="text/css"
    />
    <link
      href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
      rel="stylesheet"
    />
    <link
      href="http://fonts.googleapis.com/css?family=Roboto"
      rel="stylesheet"
      type="text/css"
    />
    <!-- Custom styles for this template-->
    <link href="{{asset('wa/admin/css/student-admin.css')}}" rel="stylesheet" />
    <link href="{{asset('wa/admin/css/session.css')}}" rel="stylesheet" />
  </head>

  <body id="page-top">
    <!-- Page Wrapper -->
    <div id="wrapper">
      <!-- Sidebar -->
      @include('admindashboardnew.sidebar')
      <!-- End of Sidebar -->

      <!-- Content Wrapper -->
      <div id="content-wrapper" class="d-flex flex-column">
        <!-- Main Content -->
        <div id="content">
          <!-- Topbar -->
         @include('admindashboardnew.topnav')
          <!-- End of Topbar -->

          <!-- Begin Page Content -->
          <div class="container-fluid">
            <!-- Page Heading -->
            @yield('content')
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
                    <!-- <div class="card mostly_progress">
                      <div class="title">Monthly Progress</div>
                      <p> Four Months Improvement</p>
                    </div> -->
                    <div class="card mostly_progress">
                      <div class="title">Monthly Progress</div>
                      <p> Four Months Improvement</p>
                      <div><img class="chart_img" src="{{asset('wa/admin/img/Capture.PNG')}}" width="320" height="auto"></div>
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
                        <div class="profile_icon_card"><img src="{{asset('wa/admin/img/user.png')}}"></div>
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
                        <div class="profile_icon_card"><img src="{{asset('wa/admin/img/user.png')}}"></div>
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
                        <div class="profile_icon_card"><img src="{{asset('wa/admin/img/user.png')}}"></div>
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
                        <div class="profile_icon_card"><img src="{{asset('wa/admin/img/user.png')}}"></div>
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
                        <div class="profile_icon_card"><img src="{{asset('wa/admin/img/user.png')}}"></div>
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
        <!-- Footer -->
     @include('admindashboardnew.footer')
     
        <!-- End of Footer -->
      </div>
      <!-- End of Content Wrapper -->
    </div>
    <!-- End of Page Wrapper -->
     <!-- End of Page Wrapper -->
    <!-- Bootstrap core JavaScript-->
    <script src="{{asset('wa/admin/vendor/jquery/jquery.min.js')}}"></script>
    <script src="{{asset('wa/admin/vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
    <!-- Core plugin JavaScript-->
    <script src="{{asset('wa/admin/vendor/jquery-easing/jquery.easing.min.js')}}"></script>
    <!-- Custom scripts for all pages-->
    <script src="{{asset('wa/admin/js/student.js')}}"></script>
    <!-- Page level plugins -->
    <!-- <script src="vendor/chart.js/Chart.min.js"></script> -->

    <!-- Page level custom scripts -->
    <!-- <script src="js/demo/chart-area-demo.js"></script>
    <script src="js/demo/chart-pie-demo.js"></script> -->
    
  </body>
</html>
