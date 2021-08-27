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
         

<!--  -->
<div class="card shadow mt-3">
  <div class="card-body add_class_block">
    <div class="row">  
      
      <!-- class type -->
    @if($message=Session::get('msg'))
      <div class="col-md-12 class_type">
        {{$message}}
      </div>
    @endif

    <div class="color" id="class_success_msg" style="color: green;"></div>
      <div class="col-md-12 class_type">Class Type</div>
      </div>
        <div class="row">
            <div class="col-4 col-sm-4 col-xs-12 form-group">
                <div class="form-check-inline">
                    <label class="radio_container">Online
                    <input id="name" class="info" type="radio" @if($editclass->status == 1) checked="checked" @endif value="1" name="status">
                    <span class="checkmark"></span>
            </label>
                </div>
            </div>
            <div class="col-4 col-sm-4 col-xs-12 form-group">
                <div class="form-check-inline">
                   <label class="radio_container">Offline
                    <input id="name1" class="info" type="radio" @if($editclass->status == 0) checked="checked" @endif  value="0"  name="status">
                    <span class="checkmark"></span>
                    </label>
                </div>
            </div>
            <div class="col-4 col-sm-4 col-xs-12 form-group">
              @if($editclass->status == 0)
                <div class="form-group" id="location_address" style="display: block;">
                
                <input type="text" class="form-control" value="{{ $class->location }}" id="location" name="location"  placeholder="Enter Your Location">
                
                </div>
              @endif  
            </div>
        </div>
        <div class="row">
        <div class=col-md-4>
         <div class="form-group">
          <label class="checkbox_container">Do you want to sell your each Session?
            <input type="checkbox"  name="sell_each_session" class="" id="sell_each_session" value="1" checked="checked">
            <span class="checkmark"></span>
          </label>
        </div>
        </div>
       </div>
  
   <div class="">
     <div>
       <div>
         <form class="form_block" method="post" id="ajexForm" >
           <input type="hidden" id="update_vals" value="{{ $editclass->id }}" />
          @csrf
          <!-- Select Class -->
        <div class="row">
            <div class="col-md-3">
                <div class="form-group">
            <label class=" control-label" for="class">Select Class</label>  
            <div class="" id="select_class_master">
              <select  class="form-control middel_width js-example-basic-multiple" id="class_settings_id" required="true" name="class_settings_id">
                @foreach($classsettings as $classsetting)
                <option value="{{ $classsetting->id }}">{{ $classsetting->name }}</option>
                @endforeach
              </select>
              <span id="select_class_validation" class="text-danger"></span>
            </div> 
      
          </select>
           <!--  -->
            <div class="" style="width: 200px;
              margin-right: 200px;">
              <input type="text" id="class_settings" class="form-control class_settings_id" value="{{ old('location') }}" id="location" name="location"  placeholder="Enter Class Name">
              <span id="select_other_class_validation" class="text-danger"></span>
            </div>
            </div>
        </div>
          
          <div class="col-md-3">
              
            <!-- {{-- Class Price Per Session  --}} -->
            <div class="form-group">
            <label class="control-label" for="name">&pound; Class Price Per Session</label>  
            <div class="">
            <input id="batch_price_per_session" name="batch_price_per_session"value="{{ $class->batch_price_per_session }}" type="number" min="1" placeholder="&pound; Enter Class Price Per Session" class="form-control input-md middel_width">
            <span id="batch_price_per_session_validation" class="text-danger"></span>
            </div>
            </div>
          </div>
          
        <div class="col-md-3">
            
          <!-- Class Start Date  and Time -->
          <div class="form-group">
            <label class="control-label" for="class_date_time"> Class Start Date  and Time</label>  
            <div class="">
            <input id="class_date_time" name="batch_start_date" value="{{ $class->batch_start_date }}"  placeholder="Enter Start Date & Time" class="form-control input-md  hasDatepicker">
            <span id="class_date_time_validation" class="text-danger"></span>
             @if(auth()->user()->role == 'teacher')
              <span id="not_available"></span>
              @endif
            </div>
          </div> 
        </div>

         <div class="col-md-3">
         <!-- Class End Date  and Time -->
         <div class="form-group">
            <label class="control-label" for="end_date_time"> Class End Date  and Time</label>  
            <div class="">
            <input id="end_date_time" name="batch_start_date" value="{{ $class->batch_end_date }}" placeholder="Enter End Date & Time" class="form-control input-md hasDatepicker" disabled>
            <span id="end_date_time_validation" class="text-danger"></span>
            </div>
            <p style="color: gray; font-size:10px;"><i>End date will be filled automatically,based on session's date</i></p>
         </div> 
         
         </div>
       </div>
       </form>
       </div>
       <!-- Class Price Per Session -->
       <div class="row ">
           <div class="col-md-3">
               <div class="form-group">
                <label class="control-label" for="name">No. of seats</label>  
                <div class="">
                <input id="no_of_seats" name="no_of_seats" value="{{ $class->no_of_seats }}" type="number"  min="1"  placeholder="No. of Seats" class="form-control input-md middel_width">
                <span id="no_of_seats_validation" class="text-danger"></span>
                </div>
              </div> 
           </div>
           <div class="col-md-3">
                <form class="form_block">
                  
                 <!-- Duration Per Session -->
          <div class="form-group">
            <label class="control-label" for="duration_per_sessions_id">Duration Per Session</label>  
            <div class="">
              <select  class="form-control small_width" name="duration_per_sessions_id"  id="duration_per_sessions_id" value="{{ old('duration_per_sessions_id')}}">
                <option selected>... Select Duration Per Session ...</option>
                <option @if($editclass->duration_per_session == 30) selected  @endif value="30">30m</option>
                <option @if($editclass->duration_per_session == 60) selected  @endif value="60">60m</option>
                <option @if($editclass->duration_per_session == 90) selected  @endif value="90">90m</option> 
              </select> 
              <span id="duration_per_sessions_validation" class="text-danger"></span>
            </div>
          </div>

           </div>
           <div class="col-md-3">
                <!-- Assign Teacher -->
                
                    @if(auth()->user()->role == 'admin'|| auth()->user()->role == 'operation' )
                  <div class="form-group">
                    <label class="control-label" for="class">Assign Teacher</label>  
                    <div class="">
                      <select class="js-example-basic-single" name="name" id="class_name" value="{{ old('name')}}"> 
                         
                        @foreach($assignteachers as $assignteacher)
                        <option value="{{ $assignteacher->id }}">{{ $assignteacher->name }}</option>
                         @endforeach 
                      </select>
                     <span id="class_name_validation" class="text-danger"></span>
                    </div>
                </div>
                @else
                <input name="name" type="hidden" id="class_name" value="{{ auth()->user()->id }}" />
                @endif
           </div>
  
           <div class="col-md-3">
               <!-- Teacher Available Status -->
                  @if(auth()->user()->role == 'admin' || auth()->user()->role == 'operation')
                  <div class="col">
                    <div class="form-group">
                      <label for="simpleinput">Teacher Available Status</label>
              <input type="text" id="teacher_available_status" name="teacher_available_status" value="YES" class="form-control" readonly>
                <span id="not_available"></span>
            </div>
          </div>
          @endif
           </div>
       </div>
        
       <div class="row">
          <!-- Select Year -->
          <div class="form-group">
            <label class="col-md-12 control-label" for="class">Select Year</label>  
            <div class="col-md-12">
              <select name="class_master_id" class="form-control small_width" id="class_master_id">
                <option selected value="">... Select Year ...</option>
                @foreach($classes as $class)
                  <option @if($editclass->class_master_id == $class->id) selected @endif value="{{ $class->id }}">{{ $class->name }}</option>
                @endforeach
              </select>
              <span id="class_master_id_validation" class="text-danger"></span>
            </div>
          </div>
          <!-- Select Subject -->
         <div class="form-group">           
          <label class="col-md-12 control-label" for="name">Select Subject</label>  
          <div class="col-md-12">
            <select name="subject_id" value="{{ old('subject_id')}}" class="form-control small_width" id="subject_id" required>
              <option selected value="">... Select Subject ...</option>
              @foreach($subjects as $subject)
               <option @if($editclass->subject_id == $subject->id) selected @endif  value="{{ $subject->id }}">{{ $subject->name }}</option>
              @endforeach
            </select>
            <span id="subject_id_validation" class="text-danger"></span>

          </div>
        </div>
        </form>
      </div>
     </div>
   </div>
  </div>
</div>
        </div>
        </div>
        </div>
<!-- Add Class + -->
<div class="row">
  <div class="col-md-12 col-lg-12">
   <button id="generate-session" style="display:none;"  class="add_class_plus">Add Class +</button>
  </div>
</div>

<div id="row-list">
  <!-- add more divs -->
@foreach($editclass->batchSession as $sess)
@if ($loop->first)
<div style="margin-top:80px;">
  <span class="cross_img" style="float:right;"><img onclick="$(this).closest('div').remove(); deletePlusButton();" src="/wa/admindashboard/img/cross-img.svg"></span>
  <div class="card-body add_class_block add_sectionbox">
    <form class="form_block">
        <div class="form-group">
            <label class="col-md-12 control-label" for="class">Select Date</label>  
            <div class="col-md-12">
                <input type="text" onchange="getAvailability(event, 'Session-1')" name="session_start_date[]" class="showdatepicker form-control" value="{{ $sess->start_date_time->format('Y/m/d h:i') }}" id="first_date_time" placeholder="Select Start Date &amp; Time">
                <span id="Session-1"></span>
                <span id="class_start_date_valid" class="text-danger"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-12 control-label" for="class">Session name</label>  
            <div class="col-md-12">
                <input class="form-control" name="session_name[]" value="{{ $sess->name }}" placeholder="Session Name">
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-12 control-label" for="class">Select Class</label>  
            <div class="col-md-12">
                <select style="min-width:300px;" name="topic_id[]" class="form-control js-example-basic-multiple" id="topic_id" placeholder="Select  Topic">
                  @foreach($topics as $topic)
                  <option @if($topic->id ==  $sess->singleTopic->topic_id) selected @endif value="{{ $topic->id }}">{{ $topic->name }}</option>
                  @endforeach
                </select>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-12 control-label" for="name">Comment</label>  
            <div class="col-md-12">
                <input type="text" value="{{ $sess->comment }}" name="comment[]" class="form-control" placeholder="comment">
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-12">
              @if($loop->count == 1)
                <button id="first_button" class="btn btn-success generate-session" style="margin-top: 28px; display: block;" onclick="addRow()" type="button">+</button>
              @endif  
            </div>
        </div>
    </form>
  </div>
</div>
@else
<div>
  <span class="cross_img" style="float:right;"><img onclick="$(this).closest('div').remove(); deletePlusButton();" src="/wa/admindashboard/img/cross-img.svg"></span>
  <div class="card-body add_class_block add_sectionbox">
    <form class="form_block">
        <div class="form-group">
            <label class="col-md-12 control-label" for="class">Select Date</label>  
            <div class="col-md-12">
                <input type="text" onchange="getAvailability(event, 'Session-{{ $loop->index+1 }}')" name="session_start_date[]" class="showdatepicker form-control" value="{{ $sess->start_date_time->format('Y/m/d h:i') }}" id="first_date_time_{{ $loop->index+1 }}" placeholder="Select Start Date &amp; Time">
                <span id="Session-{{ $loop->index+1 }}"></span>
                <span id="class_start_date_valid" class="text-danger"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-12 control-label" for="class">Session name</label>  
            <div class="col-md-12">
                <input class="form-control" name="session_name[]" value="{{ $sess->name }}" placeholder="Session Name">
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-12 control-label" for="class">Select Class</label>  
            <div class="col-md-12">
                <select style="min-width:300px;" name="topic_id[]" class="form-control js-example-basic-multiple" id="topic_id_{{ $loop->index+1 }}" placeholder="Select  Topic">
                  @foreach($topics as $topic)
                  <option @if($topic->id ==  $sess->singleTopic->topic_id) selected @endif value="{{ $topic->id }}">{{ $topic->name }}</option>
                  @endforeach
                </select>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-12 control-label" for="name">Comment</label>  
            <div class="col-md-12">
                <input type="text" value="{{ $sess->comment }}" name="comment[]" class="form-control" placeholder="comment">
            </div>
        </div>
        <div class="form-group">
         
            <div class="col-md-12">
              @if($loop->last)
                <button id="first_button{{ $loop->index+1 }}" class="btn btn-success generate-session" style="margin-top: 28px;" onclick="addRow()" type="button">+</button>
              @endif  
            </div>
        </div>
    </form>
  </div>
</div>

@endif
  
@endforeach  
  <!-- /add more divs -->
</div>
<!-- submit -->
<div class="row">
    <div class="col-md-12">
        <div class="text-center">
          <button type="submit" id="saveForm" value="submit" class="add_class_plus" style="margin:0px;">Update</button>
          <button class="add_class_plus" id="showLoader">
            <i class="fa fa-spinner fa-spin" aria-hidden="true"></i> Processing... 
          </button>
        </div>
    </div>
</div>
@endsection
@section('scripts')
<script src="{{ asset('javascript/update_class.js') }}"></script>

@if($editclass->status == 0)
<script>

  $("#location_address").show();
</script>

@endif
@endsection