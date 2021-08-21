<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"xx
    />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Operation dashboard</title>

    <!-- Custom fonts for this template-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/selectize.js/0.13.3/css/selectize.default.min.css" integrity="sha512-H955AcCOE/fUjX4XWkN0FwjCYVV/zioSF6VpUKCcrGdR1Wa8paFWYixWYp85npbnx3i1kZCH4Rm4TRxut2+d5A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,400;1,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="{{ asset('wa/operationdashboard/css/style.css') }}">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/selectize.js/0.13.3/js/standalone/selectize.js" integrity="sha512-pF+DNRwavWMukUv/LyzDyDMn8U2uvqYQdJN0Zvilr6DDo/56xPDZdDoyPDYZRSL4aOKO/FGKXTpzDyQJ8je8Qw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link
      href="https://cdn.datatables.net/1.10.25/css/dataTables.bootstrap4.min.css">

    <link
      href="{{asset('wa/operationdashboard/vendor/fontawesome-free/css/all.min.css')}}"
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
    <link href="{{asset('wa/operationdashboard/css/student-admin.css')}}" rel="stylesheet" />
    <link href="{{asset('wa/operationdashboard/css/topSidebar.css')}}" rel="stylesheet" />
    <style>
.datatables_filter {
    float: right !important;
}
.dataTables_paginate {
    float: right !important;
}

</style>
  </head>
<body id="page-top">
        <!-- Page Wrapper -->
            <div id="wrapper">
                <!-- Content Wrapper -->
                @include('operation.sidebar')
                <div id="content-wrapper" class="d-flex flex-column">
                    <!-- Main Content -->
                    <div id="content">
                        @include('operation.topnav')
                        <div class="container-fluid">
                            @yield('content')
                        </div>
                    </div>

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
            </div>
        <!-- End of Page Wrapper -->

    <!-- End of Content Wrapper -->

<!-- End of Page Wrapper -->
<!-- Bootstrap core JavaScript-->
<script src="{{asset('wa/operationdashboard/vendor/jquery/jquery.min.js')}}"></script>
<script src="{{asset('wa/operationdashboard/vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
<!-- Core plugin JavaScript-->
<script src="{{asset('wa/operationdashboard/vendor/jquery-easing/jquery.easing.min.js')}}"></script>
<!-- Custom scripts for all pages-->
{{-- <script src="{{ asset('wa/operationdashboard/js/coustom.js') }}"></script> --}}
{{-- <script src="{{asset('wa/operationdashboard/js/student.js')}}"></script> --}}
@yield('scripts')
<!-- End of Page Wrapper -->
<!-- Bootstrap core JavaScript-->
{{-- <script src="{{asset('wa/teacherdashboard/vendor/jquery/jquery.min.js')}}"></script> --}}
<script src="{{asset('wa/teacherdashboard/vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
<!-- Core plugin JavaScript-->
<script src="{{asset('wa/teacherdashboard/vendor/jquery-easing/jquery.easing.min.js')}}"></script>
<!-- Custom scripts for all pages-->
<script src="{{asset('wa/teacherdashboard/js/student.js')}}"></script>

<script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.25/js/dataTables.bootstrap4.min.js"></script>

<script>
  $(document).ready(function() {
    $('#example').DataTable();
        });
    </script>
</body>
</html>
