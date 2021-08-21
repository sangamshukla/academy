@extends('layouts.main')
@section('css')
<link rel="stylesheet" href="{{ asset('wa/livesession/css/style1.css') }}">
<link rel="stylesheet" href="{{ asset('wa/welcome.css') }}">
@endsection
@section('content')
     <!-- card-tab section  -->
    <section class="card_package">
        <div class="container-fulid">
            <div class="cource_heading">Available Courses</div>
            <div class="">
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-12">
                            <button class="btn filter-button" data-filter="all">All</button>
                            <button class="btn filter-button" data-filter="class9">class 9</button>
                            <button class="btn filter-button" data-filter="class10">Class 10</button>
                            <button class="btn filter-button" data-filter="class11">11+</button>
                        </div>
                    </div>

                    <div class="row mt-4">
                        <div class="col-md-3 filter_box filter class9">
                            <div class="single-district card1">
                                <x-card-block/>
                            </div>
                        </div>
                        <div class="col-md-3 filter_box filter class9">
                            <div class="single-district card2">
                                <x-card-block/>
                            </div>
                        </div>
                        <div class="col-md-3 filter_box filter class10">
                            <div class="single-district card3">
                                <x-card-block/>
                            </div>
                        </div>
                        <div class="col-md-3 filter_box filter class10">
                            <div class="single-district card4">
                                <x-card-block/>
                            </div>
                        </div>
                    </div>
                    <div class="row mt-4">
                        <div class="col-md-3 filter_box filter class9">
                            <div class="single-district card1">
                                <x-card-block/>
                            </div>
                        </div>
                        <div class="col-md-3 filter_box filter class9">
                            <div class="single-district card2">
                                <x-card-block/>
                            </div>
                        </div>
                        <div class="col-md-3 filter_box filter class10">
                            <div class="single-district card3">
                                <x-card-block/>
                            </div>
                        </div>
                        <div class="col-md-3 filter_box filter class10">
                            <div class="single-district card4">
                                <x-card-block/>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        </div>
    </section>
@endsection

