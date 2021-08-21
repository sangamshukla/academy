<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Student Dashboard</title>

    <!-- Custom fonts for this template-->

    <link href="/wa/dashboard/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
      <link
        href="http://fonts.googleapis.com/css?family=Roboto"
        rel="stylesheet"
        type="text/css"
      />
    <!-- Custom styles for this template-->

    @yield('session.css')
    @yield('style')

</head>


<body id="page-top">
  <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
    @csrf
</form>
    <!-- Page Wrapper -->
    {{-- <div id="wrapper"> --}}
      {{-- <div class="background_overlay"></div> --}}
    <div id="wrapper">
      <div class="background_overlay"></div>
        @include('layouts._partials.student._sidebar')

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

          <!-- Main Content -->
          <div id="content">

              <!-- Topbar -->
              @include('layouts._partials.student._nav')
              <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">
                  @yield('content')
                </div>

          </div>
          <!-- End of Main Content -->
          <!-- Footer -->
            @include('layouts._partials.student._footer')
          <!-- End of Footer -->
        </div>
        <!-- End of Content Wrapper -->
    </div>

 <!-- Bootstrap core JavaScript-->
    @yield('js')
 <script src="/wa/dashboard/vendor/jquery/jquery.min.js"></script>
 <script src="/wa/dashboard/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
 <!-- Core plugin JavaScript-->
 <script src="/wa/dashboard/vendor/jquery-easing/jquery.easing.min.js"></script>
 <!-- Custom scripts for all pages-->
 <script src="/wa/dashboard/js/student.js"></script>
</body>

