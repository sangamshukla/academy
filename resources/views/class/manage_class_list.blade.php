  
            @if (session()->has('message'))
            <div class="alert alert-success">
                {{ session('message') }}
            </div>
            @endif
            
        <div class="color" id="class_success_msg" style="color: green;"></div>
        <div class="calander d-flex mt-5">
                  
            <div class="calander_div">
                <p class="sellect_pera">Select entry From </p>
              <p class="sellect_pera"> <input type="text" id="datepicker" /></p>
              <div><p class="sellect_pera">To</p></div>
              <p><input type="text" id="datepicker" /></p>
            </div>
            
          
            <div class="filter_div">
                <p class="sellect_pera filter">Filter By</p>
                <div class="filter_select select">
                  <select name="slct" id="slct">
                    <option selected disabled>Choose an option</option>
                    <option value="1">Date</option>
                    <option value="2">Year</option>
                    <option value="3">Teacher</option>
                  </select>
                </div>
            </div>
          </div>
    <!-- datepicker end -->
   {{-- Start card manage classes --}}
    @include('_form.success')
    <div class="row">
      @php $i = 1 @endphp 
      @foreach($batches as $batch)
      
      <div class="col-md-3">
                
        <div class="card shadow border_block card_bg{{$i}} mt-3">
          <div class="card-body">
            <div class="subject_edit subject_flex" style="min-height: 70px !important">
              <div class="test_title_div">
                <p class="test_title">
                  {{-- {{str_limit($batch->classSettings->name)}} --}}
                  {{ \Illuminate\Support\Str::limit($batch->classSettings->name ,'18') }}
                </p>
              </div>
               
              <div class="live-info">
                <span class="online">
                  {{ $batch->status == 1 ? 'Online' : 'Offline' }}
                </span>
                <span class="dot {{ $batch->status == 1 ? 'prime' : '' }}"></span>
              </div> 
             
              
            </div>
            <div class="border_bottom1"></div>
            <div class="subject_edit subject_flex">
              <div><p class="sub_pera">Subject</p></div>
              <div><p class="sub_title">{{$batch->subject->name}}</p></div>
            </div>
            <div class="subject_edit subject_flex">
              @if(auth()->user()->role )
              <div><p class="sub_pera">Teacher </p></div>
              
              <div><p class="sub_title">{{  $batch->assignteacher->name }}</p></div>
              @endif
            </div>
            <div class="subject_edit subject_flex">
              <div class="border_line">
                  <p class="sub_pera">Price Per Session</p>
                  <p class="price_no">{{ $batch->batch_price_per_session  }}</p>
              </div>
              <!-- <div class="border-right"></div> -->
              <div>
                  <p class="sub_pera">Total Price</p>
                  <p class="price_no">{{ $batch->batchSession->count() * $batch->batch_price_per_session}}</p>
              </div>
            </div>
            <div class="subject_edit subject_flex">
              <div >
                  <p class="sub_pera">Total seats</p>
                  <p class="price_no">{{ $batch->no_of_seats }}</p>
              </div>
              <!-- <div class="border-right"></div> -->
              <div>
                  <p class="sub_pera">Location</p>
                  <p class="book_sheet font-color1"> {{ $batch->location }}</p>
              </div>
          </div>
          </div>
          <div class="subject_edit subject_flex view_block view_block_bg{{$i}}">
              <div>
                 <a class="view_details" href="{{ url('show-classes', $batch->id) }}">View Details</a>
              </div>
              <div class="subject_edit subject_flex">
                  <div class="delite_icon space_img">
                    <a href="{{ url('destroy-classes', $batch->id) }}" onclick = "return confirm('Are You Sure For Delete ?')">
                      <img
                        src="{{asset('wa/admindashboard/img/delete.svg')}}"
                        width="20"
                        height="20"
                      /></a>
                    </div>
                    <div class="edit_icon space_img">
                      <a href="{{ url('edit-classes', $batch->id) }}"><img src="{{asset('wa/admindashboard/img/edit.svg')}}" width="20" height="20" /></a>
                    </div>
              </div>
            </div>
        </div>
      
      </div>
      @php $i++ @endphp
    @endforeach
    
                       <div style="margin-top: 2rem; float:right;  border-color: coral;">{{ $batches->links() }}</div>
    <!--<p style="margin-left: 2000px;">{{ $batches->links() }}</p>-->
     <!--<div class="row">-->
     <!--               <div class="col-md-12">-->
     <!--                   <div style="margin-top: 8rem; float:right;  border-color: coral;">{{ $batches->links() }}</div>-->
     <!--               </div>-->
     <!--</div>-->
    </div>