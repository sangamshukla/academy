<div class="tab-pane active" role="tabpanel" id="menu1">
    <div class="card">
      <div class="session_data_block">
        <div class="d-flex justify-content-between">
          <div>
            <p class="session_title">Session Date</p>
            <p class="session_date">{{ $session->start_date_time->format('d/m/Y') }}</p>
          </div>
          <div>
            <p class="session_title">Session Time</p>
            <p class="session_date">{{ $session->start_date_time->format('h:i A') }} - {{ $session->start_date_time->addMinutes($session->batch->duration_per_session)->format('h:i A') }}</p>
          </div>
          <div>
            <p class="session_title">Teachers Name</p>
            <p class="session_date">{{ $session->batch->assignteacher->name }}</p>
          </div>
          <div>
            <p class="session_title">Class</p>
            <p class="session_date">{{ $session->batch->classmaster->name }}</p>
          </div>
        </div>
      </div>
      <div class="card-body">
        <div class="d-flex justify-content-between">
          <div><p class="session_no">{{ $session->name }}</p></div>
          <div class="d-flex justify-content-between">
            <div class="pr-5">
              <p class="seat_pera">Total Seats</p>
              <p class="seat_no">{{ $session->batch->no_of_seats }}</p>
            </div>
            <div>
              <p class="start_date">Starts in</p>
              <a id="{{ $session->batch->id }}">Start Now</a>
            <script>
                window.onload = (event) => {
            
                    // alert("here");
                    function timer() {
                        setInterval(function() {
                            let difference = new Date("{{ $session->start_date_time->format('Y-m-d H:i:s') }}") - new Date();
                            let remaining = "Join Now";
                            let starttime = new Date("{{ $session->start_date_time->format('Y-m-d H:i:s') }}");
                            let endTime = new Date("{{ $session->start_date_time->addMinutes($session->batch->duration_per_session)->format('Y-m-d H:i:s') }}");
                            let currentTime = new Date();
                            if (difference > 0) {
                                const parts = {
                                    d: Math.floor(difference / (1000 * 60 * 60 * 24)),
                                    h: Math.floor((difference / (1000 * 60 * 60)) % 24),
                                    m: Math.floor((difference / 1000 / 60) % 60),
                                    s: Math.floor((difference / 1000) % 60),
                                };
                                remaining = Object.keys(parts).map(part => {
                                      return `${parts[part]} ${part}`;
                                }).join(" ");
                               document.getElementById("{{ $session->batch->id }}").innerHTML = remaining;
                            } else if (endTime > currentTime) {
                              document.getElementById("{{ $session->batch->id }}").href = "{{ $session->batch->zoom->meeting_join_url ?? ''  }}";
                            }else {
                                document.getElementById("{{ $session->batch->id }}").innerHTML = "Session Time Over";
                            }
                            
                            
                            
                        }, 1000);
                    }
                    timer();
                };
            </script>
              {{-- <p class="start_timer">00:08:55</p> --}}
            </div>
          </div>
        </div>
        <div><p class="batch_name">{{ $session->batch->classSettings->name }}</p></div>
        <hr />
        <div class="title_session">Students</div>
        @php $i=1; @endphp
        @foreach ($students as $student)
        <div
        class="
          border
          card_tab
          d-flex
          justify-content-between
          pt-2
          mb-3
        "
      >
        <div><p class="sr_no">{{ $i }}.</p></div>
        <div>
          <p class="card_pera">{{ $student->name }}</p>
        </div>
        <div><p class="card_pera">{{  $session->batch->classmaster->name }}</p></div>
        {{-- <div>
          <p class="dot_block">
            <span class="dot"></span>
          </p>
        </div> --}}
      </div>

       @php $i++; @endphp
        @endforeach

        <hr />
        {{-- <div class="card">
          <p class="tile_card_comment">Comment</p>
          <div class="card-body">
            <div class="form-group">
              <label class="sr-only" for="message"
                >post</label
              >
              <textarea
                class="form-control"
                id="message"
                rows="3"
                placeholder="Add your comment"
                name="comment"
              ></textarea>
            </div>
          </div>
        </div>
        <div class="d-flex mt-4">
          <div class="slt_point">Select Points</div>
          <div class="slt_dropdown">
            <select class="form-control">
              <optgroup label="Swedish Cars">
                <option value="volvo">Volvo</option>
                <option value="saab">Saab</option>
              </optgroup>
              <optgroup label="German Cars">
                <option value="mercedes">Mercedes</option>
                <option value="audi">Audi</option>
              </optgroup>
            </select> 
            <input class="form-control" type="number" name="points">
          </div>
        </div>
        <hr /> --}}
        <div>
          {{-- <div class="share_block">
            <label class="container">
              <input type="checkbox" checked="checked" />
              <span class="checkmark"></span>
              <span class="add_text">Select to All</span>
            </label>
            <label class="container">
              <input type="checkbox" checked="checked" />
              <span class="checkmark"></span>
              <span class="add_text"
                >Selected Students</span
              >
            </label>
          </div> --}}
          {{-- <div>
            <button class="btn share_cta">Share</button>
          </div> --}}
        </div>
      </div>
    </div>
  </div>