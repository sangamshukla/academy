<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>Log In | {{ config('app.name') }}</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Login" name="description" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">
        @include('layouts._partials._css')

    </head>

    <body class="loading authentication-bg" data-layout-config='{"darkMode":false}'>
        {{-- <div class="account-pages mt-5 mb-5" style="background-image: url('login.png');"> --}}
        <div class="account-pages mt-5 mb-5">

        {{-- <img src="{{ asset('login.pnj')}}" alt="Italian Trulli">x --}}
        {{-- <div style="background-image: url({{ asset('login.pnj')}});"> --}}
            


            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-5">
                        
                        <div class="card">

                            <!-- Logo -->
                            <div class="card-header text-center ">
                                <a href="#">
                                    <span><img src="{{ asset('logo.png') }}" alt="" height="80"></span>
                                </a>
                            </div>

                            <div class="card-body p-4">
                              @yield('content')
                            </div> <!-- end card-body -->
                            
                        </div>
                        

                    </div> <!-- end col -->
                </div>
                <!-- end row -->
            </div>
            <!-- end container -->
        </div>
        <!-- end page -->

        <footer class="footer footer-alt">
            {{-- {{ date('Y') }} © {{ config('app.name') }} --}}
            {{ date('Y') }} © {{ config('app.name') }}

        </footer>

        <!-- bundle -->
        @include('layouts._partials._js')
        
    </body>
</html>
