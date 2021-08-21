@extends('layouts.class_dashboard')
@section('content')
<div
class="d-sm-flex align-items-center justify-content-between mb-4"
>
<h1 class="h3 mb-0 text-gray-800 session_heading">My Session</h1>
</div>
<!-- image block -->

<div class="row">
<div class="col-xl-12 col-lg-12">
  <div class="mt-5 bg_img">
    <ul class="nav nav-pills nav-fill navtop add_class_tab">
      <li class="nav-item">
        <a
          class="nav-link tab_title add_new_class active"
          href="#menu1"
          data-toggle="tab"
          >ADD NEW CLASS</a
        >
      </li>
      <li class="nav-item">
        <a
          class="nav-link tab_title add_new_class"
          href="#menu2"
          data-toggle="tab"
          >MANAGE CLASSES</a
        >
      </li>
    </ul>
        {{-- add class --}}
    <div class="tab-content">
      <div class="tab-pane active" role="tabpanel" id="menu1">
        @include('class.create-add-class')
      </div> 
      {{-- end Add Class --}}
      <div class="tab-pane" role="tabpanel" id="menu2">
          <!-- datepicker start -->
          @include('class.manage_class_list')
      </div>
    </div>
  </div>
</div>
</div>
@endsection
@section('scripts')
<script src="{{ asset('javascript/create_class.js') }}"></script>

@endsection