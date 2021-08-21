@extends('layouts.main')
    @section('css')
    <link rel="stylesheet" href="{{ asset('wa/livesession/css/liveclassdetail.css') }}">
    <link rel="stylesheet" href="{{ asset('wa/welcome.css') }}">
    @endsection
@section('content')

    <div class="mt-5 live_class_section">
      <!-- Content Row -->
      <div class="row mt-5">
        <!-- Area Chart -->
        <div class="col-xl-8 col-lg-8">
          <div class="row">
            <div clas="col-12">
              <p class="live_class">Live Classes</p>
            </div>
          </div>
            <x-teacher-section/>
        </div>
        <!-- Pie Chart -->
        <div class="col-xl-4 col-lg-4">
          <div class="row">
            <div class="col-12">
              <div class="custom-search-input">
                <div class="input-group col-12 p-0 mb-3">
                  <input
                    type="text"
                    class="search-query form-control"
                    placeholder="Type your search here"
                  />

                  <span class="search_icon"
                    ><img src="{{asset('wa/livesession/assets/img/search1.svg')}}"
                  /></span>
                </div>
              </div>
            </div>
          </div>
            <x-calander-block/>
        </div>
      </div>
      <hr />

      <!-- Content Row -->
    </div>
    <div class="mt-5 live_class_section">
      <!-- Content Row -->
      <div class="row mt-5">
        <!-- Area Chart -->
        <div class="col-xl-8 col-lg-8">

            <x-teacher-section/>
        </div>
        <!-- Pie Chart -->
        <div class="col-xl-4 col-lg-4">

            <x-calander-block/>
        </div>
      </div>
      <hr />

      <!-- Content Row -->
    </div>
    <div class="mt-5 live_class_section">
      <!-- Content Row -->
      <div class="row mt-5">
        <!-- Area Chart -->
        <div class="col-xl-8 col-lg-8">

            <x-teacher-section/>
        </div>
        <!-- Pie Chart -->
        <div class="col-xl-4 col-lg-4">

            <x-calander-block/>
        </div>
      </div>
      <hr />

      <!-- Content Row -->
    </div>
    <div class="mt-5 live_class_section">
      <!-- Content Row -->
      <div class="row mt-5">
        <!-- Area Chart -->
        <div class="col-xl-8 col-lg-8">

            <x-teacher-section/>
        </div>
        <!-- Pie Chart -->
        <div class="col-xl-4 col-lg-4">

            <x-calander-block/>
        </div>
      </div>
      <hr />

      <!-- Content Row -->
    </div>
    <div class="mt-5 live_class_section">
      <!-- Content Row -->
      <div class="row mt-5">
        <!-- Area Chart -->
        <div class="col-xl-8 col-lg-8">

            <x-teacher-section/>
        </div>
        <!-- Pie Chart -->
        <div class="col-xl-4 col-lg-4">

            <x-calander-block/>
        </div>
      </div>
      <hr />

      <!-- Content Row -->
    </div>
    <div class="mt-5 live_class_section">
      <!-- Content Row -->
      <div class="row mt-5">
        <!-- Area Chart -->
        <div class="col-xl-8 col-lg-8">

        <x-teacher-section/>
        </div>
        <!-- Pie Chart -->
        <div class="col-xl-4 col-lg-4">

            <x-calander-block/>
        </div>
      </div>
      <hr />

      <!-- Content Row -->
    </div>
@endsection

