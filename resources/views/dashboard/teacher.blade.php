@extends('layouts.app')

@section('content')
<div class="content">
    <!-- start page title -->
    <div class="row">
        <div class="col-12">
            <div class="page-title-box">
                <div class="page-title-right">
                    <ol class="breadcrumb m-0">
                    </ol>
                </div>
                <h4 class="page-title">Welcome {{ auth()->user()->name }} :  Happy {{ \Carbon\Carbon::now()->format('l') }}</h4>
                {{-- <h4>{{ $user->name}}</h4> --}}
            </div>
        </div>
    </div>     
    <!-- end page title --> 

    <div class="row">

        <div class="col-lg-6 col-xl-3">
            <div class="card">
                <div class="card-body" style="border: 2px solid LightBlue
                ; border-radius: 10px; height: 100px;">
                    <div class="row align-items-center">
                        <div class="col-12">
                            <h5 class="text-muted font-weight-normal mt-0 " title="Campaign Sent">Batch</h5>
                            <h3 class="my-2 py-1">99</h3>
                            <p class="mb-0 text-muted">
                            </p>
                        </div>
                        <div class="col-6">
                            <div class="text-right">
                                <div id="campaign-sent-chart" data-colors="#536de6"></div>
                            </div>
                        </div>
                    </div> <!-- end row-->
                </div> <!-- end card-body -->
            </div> <!-- end card -->
        </div> <!-- end col -->

        <div class="col-lg-6 col-xl-3">
            <div class="card">

                <div class="card-body" style="border: 2px solid Gainsboro; border-radius: 10px; height: 100px;">
                    <div class="row align-items-center">
                        <div class="col-6">
                            <i class="fa fa-user-circle"></i>
                                <a href="{{ url('profile')}}" class="badge badge-dark">Teacher</a>

                            <h3 class="my-2 py-1">87</h3>
                            <p class="mb-0 text-muted">
                            </p>
                        </div>
                        <div class="col-6">
                            <div class="text-right">
                                <div id="new-leads-chart" data-colors="#10c469"></div>
                            </div>
                        </div>
                    </div> <!-- end row-->
                </div> <!-- end card-body -->
            </div> <!-- end card -->
        </div> <!-- end col -->
 

        <div class="col-lg-6 col-xl-3">
            <div class="card">
                <div class="card-body" style="border: 2px solid MistyRose;border-radius: 10px; height: 100px;">
                    <div class="row align-items-center">
                        <div class="col-12">
                            <h5 class="text-muted font-weight-normal mt-0 text-truncate" title="Deals">Total Student In Your Batch</h5>
                            <h3 class="my-2 py-1">86</h3>
                            <p class="mb-0 text-muted">
                            </p>
                        </div>
                        <div class="col-6">
                            <div class="text-right">
                                <div id="deals-chart" data-colors="#536de6"></div>
                            </div>
                        </div>
                    </div> <!-- end row-->
                </div> <!-- end card-body -->
            </div> <!-- end card -->
        </div> <!-- end col -->

        <div class="col-lg-6 col-xl-3">
            <div class="card">
                {{-- <div class="card-body"> --}}
                <div class="card-body" style="border: 2px solid Thistle;border-radius: 10px; height: 100px;">
                    <div class="row align-items-center">
                        <div class="col-12">
                            <h5 class="text-muted font-weight-normal mt-0" title="Booked Revenue">Upcoming Batch</h5>
                            <h3 class="my-2 py-1">53</h3>
                            <p class="mb-0 text-muted">
                            </p>
                        </div>
                        <div class="col-6">
                            <div class="text-right">
                                <div id="booked-revenue-chart" data-colors="#10c469"></div>
                            </div>
                        </div>
                    </div> <!-- end row-->
                </div> <!-- end card-body -->
            </div> <!-- end card -->
        </div> <!-- end col -->
    </div>
</div> <!-- End Content -->
@endsection
