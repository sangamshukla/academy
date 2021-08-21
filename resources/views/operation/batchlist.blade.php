@extends('layouts.operation_dashboard')
@section('content')
<link href="{{asset('wa/operationdashboard/css/manage_classsession.css')}}" rel="stylesheet" />
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

  <!-- Page Heading -->
  <div
  class="d-sm-flex align-items-center justify-content-between mb-4"
>
  <h1 class="h3 mb-0 text-gray-800 session_heading">My Session</h1>
</div>
<!-- image block -->
<div class="row">
  <div class="col-xl-12 col-lg-12">
    <div class="mt-5 bg_img">

      <div class="tab-content">
        <div class="tab-pane" role="tabpanel" id="menu1">
          <div class="card shadow mt-3">
            <div
              class="card-body card_left_border border_left_color1"
            >
              <div class="subject_edit subject_flex">
                <div class="subject_practis">
                  <p class="subject">Math Practice</p>
                  <p class="time_pera">
                    <span>23 Jan,</span
                    ><span>04:00pm - 05:00pm</span>
                  </p>
                </div>
                <div class="starttime_block">
                  <p class="sub_subject">Starts in</p>
                  <p class="green_text">00:08:55</p>
                </div>
                <div class="class_block">
                  <p class="sub_subject">Class</p>
                  <p class="blue_text">10th</p>
                </div>
                <div class="class_block">
                  <p class="sub_subject">Subject</p>
                  <p class="blue_text">Maths</p>
                </div>
                <div class="class_block">
                  <p class="sub_subject">Time</p>
                  <p class="blue_text">30 Min</p>
                </div>
                <div class="class_mb">
                  <p class="sub_subject">Students</p>
                  <p class="blue_text">30</p>
                </div>
                <div class="delite_icon">
                  <img
                    src="img/delete.svg"
                    width="20"
                    height="20"
                  />
                </div>
                <div class="edit_icon">
                  <img src="img/edit.svg" width="20" height="20" />
                </div>
              </div>
            </div>
          </div>
          <div class="card shadow mt-3">
            <div
              class="card-body card_left_border border_left_color2"
            >
              <div class="subject_edit">
                <div class="subject_practis">
                  <p class="subject">Math Practice</p>
                  <p class="time_pera">
                    <span>23 Jan,</span
                    ><span>04:00pm - 05:00pm</span>
                  </p>
                </div>
                <div class="starttime_block">
                  <p class="sub_subject">Starts in</p>
                  <p class="green_text">00:08:55</p>
                </div>
                <div class="class_block">
                  <p class="sub_subject">Class</p>
                  <p class="blue_text">10th</p>
                </div>
                <div class="class_block">
                  <p class="sub_subject">Subject</p>
                  <p class="blue_text">Maths</p>
                </div>
                <div class="class_block">
                  <p class="sub_subject">Time</p>
                  <p class="blue_text">30 Min</p>
                </div>
                <div class="class_mb">
                  <p class="sub_subject">Students</p>
                  <p class="blue_text">30</p>
                </div>
                <div class="delite_icon">
                  <img
                    src="img/delete.svg"
                    width="20"
                    height="20"
                  />
                </div>
                <div class="edit_icon">
                  <img src="img/edit.svg" width="20" height="20" />
                </div>
              </div>
            </div>
          </div>
          <div class="card shadow mt-3">
            <div
              class="card-body card_left_border border_left_color3"
            >
              <div class="subject_edit">
                <div class="subject_practis">
                  <p class="subject">Math Practice</p>
                  <p class="time_pera">
                    <span>23 Jan,</span
                    ><span>04:00pm - 05:00pm</span>
                  </p>
                </div>
                <div class="starttime_block">
                  <p class="sub_subject">Starts in</p>
                  <p class="green_text">00:08:55</p>
                </div>
                <div class="class_block">
                  <p class="sub_subject">Class</p>
                  <p class="blue_text">10th</p>
                </div>
                <div class="class_block">
                  <p class="sub_subject">Subject</p>
                  <p class="blue_text">Maths</p>
                </div>
                <div class="class_block">
                  <p class="sub_subject">Time</p>
                  <p class="blue_text">30 Min</p>
                </div>
                <div class="class_mb">
                  <p class="sub_subject">Students</p>
                  <p class="blue_text">30</p>
                </div>
                <div class="delite_icon">
                  <img
                    src="img/delete.svg"
                    width="20"
                    height="20"
                  />
                </div>
                <div class="edit_icon">
                  <img src="img/edit.svg" width="20" height="20" />
                </div>
              </div>
            </div>
          </div>
          <div class="card shadow mt-3">
            <div
              class="card-body card_left_border border_left_color4"
            >
              <div class="subject_edit">
                <div class="subject_practis">
                  <p class="subject">Math Practice</p>
                  <p class="time_pera">
                    <span>23 Jan,</span
                    ><span>04:00pm - 05:00pm</span>
                  </p>
                </div>
                <div class="starttime_block">
                  <p class="sub_subject">Starts in</p>
                  <p class="green_text">00:08:55</p>
                </div>
                <div class="class_block">
                  <p class="sub_subject">Class</p>
                  <p class="blue_text">10th</p>
                </div>
                <div class="class_block">
                  <p class="sub_subject">Subject</p>
                  <p class="blue_text">Maths</p>
                </div>
                <div class="class_block">
                  <p class="sub_subject">Time</p>
                  <p class="blue_text">30 Min</p>
                </div>
                <div class="class_mb">
                  <p class="sub_subject">Students</p>
                  <p class="blue_text">30</p>
                </div>
                <div class="delite_icon">
                  <img
                    src="img/delete.svg"
                    width="20"
                    height="20"
                  />
                </div>
                <div class="edit_icon">
                  <img src="img/edit.svg" width="20" height="20" />
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="tab-pane active" role="tabpanel" id="menu2">
         
          <!-- datepicker end -->
          <div class="row">
              @php
                $i=1;
              @endphp
            @forelse ($session as $session)
            @forelse ($session as $session)
            <div class="col-md-3">
                <div class="card shadow border_block card_bg{{$i}} mt-3">
                  <div class="card-body">
                    <div class="subject_edit subject_flex" style="min-height: 70px !important">
                      <div class="test_title_div">
                        <p class="test_title">
                          {{ $session->batch->classSettings->name }}
                        </p>
                      </div>
                      {{-- <div class="live-info">
                        <span class="dot"></span>
                      </div> --}}

                      <div class="class_section">
                        {{-- <div class="class_type">class type</div> --}}
                        <div>
                            <span class="online">
                            {{ $session->status == 1 ? 'Online' : 'Offline' }}
                            </span>
                            {{-- for color  --}}
                            <span class="dot{{ $session->status == 1 ? '' : '-prime' }}"></span></div>
                        </div>
                    </div>
                    <div class="border_bottom1"></div>
                    <div class="subject_edit subject_flex">
                      <div><p class="sub_pera">Subject</p></div>
                      <div><p class="sub_title">{{ $session->batch->subject->name }}</p></div>
                    </div>
                    <div class="subject_edit subject_flex">
                      <div><p class="sub_pera">Assigned to</p></div>
                      <div><p class="sub_title">{{ $session->batch->teacher->name }}</p></div>
                    </div>
                    <div class="subject_edit subject_flex">
                      <div class="border_line">
                          <p class="sub_pera">Price Per Session</p>
                          <p class="price_no">{{ $session->batch->batch_price_per_session }}</p>
                      </div>
                      <!-- <div class="border-right"></div> -->
                      <div>
                          <p class="sub_pera">Total</p>
                          <p class="price_no">{{ $session->batch->batch_price_per_session * count($session->batch->batchSession) }}</p>
                      </div>
                    </div>
                    <div class="subject_edit subject_flex">
                      <div >
                          <p class="sub_pera">Total seats</p>
                          <p class="price_no">{{ $session->batch->no_of_seats }}</p>
                      </div>
                      <!-- <div class="border-right"></div> -->
                      <div>
                          <p class="sub_pera">Location</p>
                          {{$session->batch->location}}
                          
                      </div>
                  </div>
                  </div>
                  <div class="subject_edit subject_flex view_block view_block_bg{{$i}}">
                      <div>
                         <a class="view_details" href="{{ route('purchase-session', ['id'=>$session->batch->id ]) }}">View Details</a>
                      </div>
                      <div>
                         {{-- <a class="view_details" href="#" data-toggle="modal" data-target="#modal{{ $session->id }}">Enrolled Students</a> --}}

                        <a class="view_details" href="{{ route('enrolled-student', ['id'=>$session->id ]) }}">Enrolled Students</a>
                     </div>
                    </div>
                </div>
            </div>
            <!-- Modal -->
            <div class="modal fade" id="modal{{ $session->id }}" tabindex="-1" role="dialog" aria-labelledby="modal{{ $session->id }}" aria-hidden="true">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">{{ $session->batch->classSettings->name }}</h5>
                  
                  </div>
                  <div class="modal-body">
                    <table class="table table-bordered table-responsive">
                      <thead>
                        <tr>
                          <th>Name</th>
                          <th>Email</th>
                          <th>Purchased On</th>
                        </tr>
                      </thead>
                      <tbody>
                        @foreach ($session->enrolled()->pluck('order_id') as $ord )
                          @php
                            $singleOrder = App\Models\OrderPayment::find($ord);
                          @endphp
                          <tr>
                              <td>{{ $singleOrder->student->name ?? '' }}</td>
                              <td style="overflow: scroll;">{{ $singleOrder->student->email ?? '' }}</td>
                              <td>{{ $singleOrder ? $singleOrder->created_at->format("Y-m-d h:i:s a") : ""  }}</td>
                          </tr>
                        @endforeach
                      </tbody>
                    </table>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                  </div>
                </div>
              </div>
            </div>

            {{-- /view students modal --}}
            @empty

            @endforelse

            @empty
              {{ "No session for the day" }}
              @php
                $i++;
              @endphp
            @endforelse
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Content Row -->
</div>
</div>
@endsection
