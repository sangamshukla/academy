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
                    <input id="name" class="info" type="radio" checked="checked" value="1" name="status">
                    <span class="checkmark"></span>
            </label>
                </div>
            </div>
            <div class="col-4 col-sm-4 col-xs-12 form-group">
                <div class="form-check-inline">
                   <label class="radio_container">Offline
                    <input id="name1" class="info" type="radio" value="0"  name="status">
                    <span class="checkmark"></span>
                    </label>
                </div>
            </div>
            <div class="col-4 col-sm-4 col-xs-12 form-group">
                
                <div class="form-group" id="location_address">
                
                <input type="text" class="form-control" value="{{ old('location') }}" id="location" name="location"  placeholder="Enter Your Location">
                
                </div>
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
          @csrf
          <!-- Select Class -->
        <div class="row">
            <div class="col-md-3">
                <div class="form-group">
            <label class=" control-label" for="class">Select Class</label>  
            <div class="" id="select_class_master">
              <select class="js-example-basic-single" name="state" id="class_settings_id" name="class_settings_id" id="class_settings_id" required="true">
                <option value="">  . . . Select Class  . . .</option>
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
            <input id="batch_price_per_session" name="batch_price_per_session" type="number" min="1" placeholder="&pound; Enter Class Price Per Session" class="form-control input-md middel_width">
            <span id="batch_price_per_session_validation" class="text-danger"></span>
            </div>
            </div>
          </div>
          
        <div class="col-md-3">
            
          <!-- Class Start Date  and Time -->
          <div class="form-group">
            <label class="control-label" for="class_date_time"> Class Start Date  and Time</label>  
            <div class="">
            <input id="class_date_time" name="batch_start_date" placeholder="Enter Start Date & Time" class="form-control input-md  hasDatepicker">
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
            <input id="end_date_time" name="batch_start_date" placeholder="Enter End Date & Time" class="form-control input-md hasDatepicker" disabled>
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
                <input id="no_of_seats" name="no_of_seats" type="number"  min="1"  placeholder="No. of Seats" class="form-control input-md middel_width">
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
              <select  class="form-control small_width" name="duration_per_sessions_id" id="duration_per_sessions_id" value="{{ old('duration_per_sessions_id')}}">
                <option value="" selected>... Select Duration Per Session ...</option>
                <option value="30">30m</option>
                <option value="60">60m</option>
                <option value="90">90m</option> 
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
                        <option value="" selected>... Assign Teacher ...</option>
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
              <input type="text" id="teacher_available_status" name="teacher_available_status" value="{{ old('teacher_available_status')}} "class="form-control" readonly>
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
                  <option value="{{ $class->id }}">{{ $class->name }}</option>
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
              <option value="{{ $subject->id }}">{{ $subject->name }}</option>
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
    <div class="col-md-12">
        <div class="text-center">
          <button type="submit" id="saveForm" value="submit" class="add_class_plus" style="margin:0px;">Submit</button>
          <button class="add_class_plus" id="showLoader">
            <i class="fa fa-spinner fa-spin" aria-hidden="true"></i> Processing... 
          </button>
        </div>
    </div>
</div>
