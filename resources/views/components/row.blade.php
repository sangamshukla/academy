

                          <div class="subject_edit">
                            {{-- <div class="class_block">
                              <p class="sub_subject">Teacher</p>
                              <p class="blue_text">{{ $batch->assignteacher->name }}</p>
                            </div> --}}
                            <div class="subject_practis">
                              <p class="sub_subject">Class Name</p>
                              <p class="subject">{{ $batch->classSettings->name }}</p>
                            </div>
                          
                            <div class="class_block">
                              <p class="sub_subject">Session & topic</p>

                            @foreach($batch->batchSession as $session)
                            @foreach($session->topics as $t)

                              {{ $session->name.'-'.$t->topic->name.',' }}   
                            @endforeach                                    
                                @endforeach 
                            </div>
                            <div class="starttime_block">
                              <p class="sub_subject">Start</p>
                              <p class="green_text">
                                <a target="_blank" href="{{ $batch->zoom->meeting_start_url ?? '' }}" class="green_text">Start Sessions</a>
                              </p>
                            </div>
                            <div class="class_block">
                              <p class="sub_subject">Teacher</p>
                              <p class="blue_text">{{ $batch->assignteacher->name }}</p>
                            </div>
                            <div class="class_block">
                              <p class="sub_subject">Date</p>
                              <div class="session_date"><?php echo $Session = date('Y-m-d', strtotime( $session->start_date_time )); ?></div>
                            </div>
                            <div class="class_block">
                              <p class="sub_subject">Time</p>
                              <div class="session_time"><?php echo $Session = date('H:i A', strtotime( $session->start_date_time )); ?></div>
                            </div>
                            {{-- <div class="class_mb">
                              <p class="sub_subject">Students</p>
                              <p class="blue_text">30</p>
                            </div> --}}
                            {{-- <div class="delite_icon">
                              <img
                                src="{{asset('wa/teacherdashboard/img/delete.svg')}}"
                                width="20"
                                height="20"
                              />
                            </div> --}}
                            {{-- <div class="edit_icon">
                              <img src="{{asset('wa/teacherdashboard/img/edit.svg')}}" width="20" height="20" />
                            </div> --}}
                          </div>
