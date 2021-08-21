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

    <title>Teacher dashboard</title>

    <!-- Custom fonts for this template-->
    <link
      href="{{ asset('wa/dashboard/homework/vendor/fontawesome-free/css/all.min.css') }}"
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
    <link href="{{ asset('wa/dashboard/homework/css/student-admin.css') }}" rel="stylesheet" />
    <link href="{{ asset('wa/dashboard/homework/css/session.css') }}" rel="stylesheet" />

 <!--date time picker[duedate] -->
<link rel="stylesheet" href="{{asset('assets/css/datepicker/jquery.datetimepicker.min.css')}}" />
  </head>

  <body id="page-top">
    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
      @csrf
  </form>
    <!-- Page Wrapper -->
    <div id="wrapper">
     
      <!-- Sidebar -->  

         @include('teacher.sidebar')
        {{-- @include('layouts._partials.session._sidebar') --}}
      <!-- End of Sidebar -->

      <!-- Content Wrapper -->
      <div id="content-wrapper" class="d-flex flex-column">
        <!-- Main Content -->
        <div id="content">
          <!-- Topbar -->

          @include('teacher.topnav')
            {{-- @include('layouts._partials.session._topbar') --}}
          <!-- End of Topbar -->
          <!-- Begin Page Content -->
          @yield('content')
          <!-- /.container-fluid -->
        </div>
        <!-- End of Main Content -->

        <!-- Footer -->
        <footer class="sticky-footer">
          <div class="container my-auto">
            <div class="copyright text-center my-auto">
              <span>©Copyright 2021-2022 WA Academy. All Rights Reserved </span>
            </div>
          </div>
        </footer>
        <!-- End of Footer -->
      </div>
      <!-- End of Content Wrapper -->
    </div>
    <!-- End of Page Wrapper -->
    <!-- Bootstrap core JavaScript-->
    <script src="{{ asset('wa/dashboard/homework/vendor/jquery/jquery.min.js') }}"></script>
    @yield('scripts')
    <script src="{{ asset('wa/dashboard/homework/vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
    <!-- Core plugin JavaScript-->
    <script src="{{ asset('wa/dashboard/homework/vendor/jquery-easing/jquery.easing.min.js')}}"></script>
    <!-- Custom scripts for all pages-->
    <script src="{{ asset('wa/dashboard/homework/js/student.js')}}"></script>
    
  </body>
</html>
