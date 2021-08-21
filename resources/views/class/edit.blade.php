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
       
<!-- add class form -->


<div class="card shadow mt-3">
  <div class="card-body add_class_block">
  
      <!-- class type -->
      @include('_form.success')
      
      
      <div class="row">
          <div class="col-md-6">
              <label class="class_type">Class Type</label><br>
              <div class="form-check-inline">
            <label class="radio_container">Online
              <input id="name" class="info" type="radio" checked="checked" value="1" name="status">
              <span class="checkmark"></span>
            </label>&nbsp; &nbsp; &nbsp; &nbsp;
           <label class="radio_container">Offline
            <input id="name1" class="info" type="radio" value="0" checked="checked" name="status">
            <span class="checkmark"></span>
          </label>
         </div>
          </div>
          <div class="col-md-6">
               <!-- Location -->
         <div class="form-group" id="location_address">
          <label for="simpleinput">Location</label>
          <input type="text" class="form-control" value="{{ $class->location }}" id="location" name="location"  placeholder="Enter Your Location">
        </div>
          </div>
      </div>
       <div class="row">
            <div class="col-md-12 col-sm-4 col-xs-12 form-group">
          
        

         <div class="form-group">
          <label class="checkbox_container">Do you want to sell your each Session.
            <input type="checkbox"  name="sell_each_session" id="sell_each_session" value="1" checked="checked">
            <span class="checkmark"></span>
          </label>
        </div>
       </div>
   </div>
   <div class="row">
       <div class="col-md-3">
             <form class="form_block" method="post" id="ajexForm"  action="{{route('update-class', $class->id)}}" >
          @csrf
           <div class="form-group">
            <label class="col-md-12 control-label" for="class">Select Class</label>  
            <div class="col-md-12" id="select_class_master">
              <select  class="form-control middel_width js-example-basic-multiple" id="class_settings_id" required="true" name="class_settings_id">
                @foreach($classsettings as $classsetting)
                <option value="{{ $classsetting->id }}">{{ $classsetting->name }}</option>
                @endforeach
              </select>
            </div> 
            <div class="col-md-12">
              <input type="text" id="class_settings" class="form-control class_settings_id" value="{{ old('location') }}" id="location" name="location"  placeholder="Enter Class Name">
            </div>  
          </div>
       </div>
       <div class="col-md-3">
           <!-- Select Class -->
          <div class="form-group">
            <label class="col-md-12 control-label" for="class">Select Class</label>  
            <div class="col-md-12" id="select_class_master">
              <select  class="form-control middel_width js-example-basic-multiple" id="class_settings_id" required="true" name="class_settings_id">
                @foreach($classsettings as $classsetting)
                <option value="{{ $classsetting->id }}">{{ $classsetting->name }}</option>
                @endforeach
              </select>
            </div> 
            <div class="col-md-12">
              <input type="text" id="class_settings" class="form-control class_settings_id" value="{{ old('location') }}" id="location" name="location"  placeholder="Enter Class Name">
            </div>  
          </div>
       </div>
       <div class="col-md-3">
              <!-- {{-- Class Price Per Session  --}} -->
          <div class="form-group">
            <label class="col-md-12 control-label" for="name">&pound; Class Price Per Session</label>  
            <div class="col-md-12">
            <input id="batch_price_per_session" value="{{ $class->batch_price_per_session }}" name="batch_price_per_session" type="text" placeholder="&pound; Enter Class Price Per Session" class="form-control input-md middel_width">
            </div>
          </div>
       </div>
       <div class="col-md-3">
            <!-- Class Start Date  and Time -->
          <div class="form-group">
            <label class="col-md-12 control-label" for="class_date_time"> Class Start Date  and Time</label>  
            <div class="col-md-12">
            <input id="class_date_time" name="batch_start_date" value="{{ $class->batch_start_date }}"  placeholder="Enter Start Date & Time" class="form-control input-md hasDatepicker">
            </div>
          </div> 
       </div>
    </div>
     </form>
    <div class="row">
     
    
     <div class="col-md-4">
         <!-- Class End Date  and Time -->
         <div class="form-group">
            <label class="col-md-12 control-label" for="end_date_time"> Class End Date  and Time</label>  
            <div class="col-md-12">
            <input id="end_date_time" name="batch_start_date" value="{{ $class->batch_end_date }}" placeholder="Enter Start Date & Time" class="form-control input-md hasDatepicker">
            </div>
          </div> 
     </div>  
     <div class="col-md-4">
          <!-- Class Price Per Session -->
       <div class="form-group">
        <label class="col-md-12 control-label" for="name">No. of seats</label>  
        <div class="col-md-12">
        <input id="no_of_seats" name="no_of_seats"value="{{ $class->no_of_seats }}" type="text" placeholder="No. of Seats" class="form-control input-md middel_width">
        </div>
      </div> 
     </div>  
     <div class="col-md-4">
         <form class="form_block">
              <!-- No of sheats -->
          <div class="form-group">
            <label class="col-md-12 control-label" for="class">Duration Per Session</label>  
            <div class="col-md-12">
              <select  class="form-control small_width" name="duration_per_sessions_id"  id="duration_per_sessions_id" value="{{ old('duration_per_sessions_id')}}">
                <option selected>... Select Duration Per Session ...</option>
                <option value="30">30m</option>
                <option value="60">60m</option>
                <option value="90">90m</option> 
              </select> 
            </div>
          </div>
     </div>  

          
    </div>
      
       <div>
        <div class="row">
            <div class="col-md-6">
                
          <!-- Assign Teacher -->

          @if(auth()->user()->role == 'admin' || auth()->user()->role == 'operation' )
          <div class="form-group">
            <label class="col-md-12 control-label" for="class">Assign Teacher</label>  
            <div class="col-md-12">
              <select name="name" required id="class_name" value="{{ old('name')}}" class="form-control small_width">
                <option selected>... Select Teacher ...</option>
                @foreach($assignteachers as $assignteacher)
               <option value="{{ $assignteacher->id }}">{{ $assignteacher->name }}</option>
                @endforeach 
             </select>
            </div>
          </div>
          @endif
            </div>
            <div class="col-md-6">
                  <!-- Teacher Available Status -->
          @if(auth()->user()->role == 'admin' || auth()->user()->role == 'operation')
          <div class="col">
            <div class="form-group">
              <label for="simpleinput">Teacher Available Status</label>
              <input type="text" id="teacher_available_status" name="teacher_available_status" value="{{ old('teacher_available_status')}} "class="form-control" readonly>
                <span id="not_available"></span>
            </div>
          </div>
          @endif
            </div>
        </div>
        <div class="row">
            <div class="col-md-4"> 
            <!-- Select Year -->
          <div class="form-group">
            <label class="col-md-12 control-label" for="class">Select Year</label>  
            <div class="col-md-12">
              <select name="class_master_id" class="form-control small_width" required id="class_master_id" >
                <option selected>... Select Year ...</option>
                @foreach($classes as $class)
                  <option value="{{ $class->id }}">{{ $class->name }}</option>
                @endforeach
              </select>
            </div>
          </div></div>
            <div class="col-md-4">
                 <!-- Select Subject -->
         <div class="form-group">           
          <label class="col-md-12 control-label" for="name">Select Subject</label>  
          <div class="col-md-12">
            <select name="subject_id" value="{{ old('subject_id')}}" class="form-control small_width" id="subject_id" >
              <option selected>... Select Subject ...</option>
              @foreach($subjects as $subject)
              <option value="{{ $subject->id }}">{{ $subject->name }}</option>
            @endforeach
            </select>
          </div>
        </div>
            </div>
            <div class="col-md-4"></div>
        </div>
            <div class="col-md-4">
          
            </div>
        </div>
         

        
          
         
        </form>
      </div>
     </div>
   </div>
  </div>
</div>
<!-- Add Class + -->
<div class="row">
  <div class="col-md-12 col-lg-12">
   <button id="generate-session" class="add_class_plus">Add Class +</button>
  </div>
</div>

<div id="row-list">
  
</div>
<!-- submit -->
<div class="row">
<div class="col-md-12 text-center">
  <input type="submit" id="saveForm" class="add_class_plus" style="margin:0px; !important" value="update">
</div>
</div>



<!-- /add class form -->
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


