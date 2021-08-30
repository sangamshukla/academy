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

    <title>Admin dashboard</title>

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
    <link rel="stylesheet" href="{{asset('wa/admin/css/scoresheet.css')}}">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
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
