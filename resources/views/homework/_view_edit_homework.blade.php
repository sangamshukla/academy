<div class="tab-pane" role="tabpanel" id="menu5">
  <div class="card shadow">
<div class="card">
<div class="session_data_block archive">
  <div class=" archiv_block">
    <div>
      <p class="session_title">Session Date</p>
      <p class="session_date">{{ $session->start_date_time->format('d/m/y')}}</p>
    </div>
    <div>
      <p class="session_title">Session Time</p>
      <p class="session_date">
        {{ $session->start_date_time->format('h:i:A')}}
      </p>
    </div>
    <div>
      <p class="session_title">Teachers Name</p>
      <p class="session_date">{{$session->batch->assignteacher->name}}</p>
    </div>
    <div>
      <p class="session_title">Class</p>
      <p class="session_date">{{$session->batch->classmaster->name}}</p>
    </div>
  </div>
</div>
<div class="card-body">
  <div class="d-flex justify-content-between">
    <div>
      <p class="session_no">Archive</p>
    </div>

  </div>
  <ul class="nav nav-tabs" role="tablist">
    <li class="nav-item">
      <a class="nav-link home_work_tab active" data-toggle="tab" href="#homework">Assigned
        homework</a>
    </li>
    <li class="nav-item">
      <a class="nav-link home_work_tab" data-toggle="tab" href="#quiz">Assigned Quiz</a>
    </li>
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">

    <div id="homework" class="tab-pane active">
      <br>
      <section class="">
        <div class="">
          <div class="row">
            @if ($assigned_homeworks!=NULL)
            @foreach ($assigned_homeworks as $homework)
            <div class="col-sm-6 my-4">
              <div class="card" style="width: 18rem;">
                <iframe
                    src="{{ asset('uploads/'.$homework->assigned_content) }}"
                    frameBorder="0"
                    scrolling="auto"
                    height="100%"
                    width="100%"
                ></iframe>
                <div class="card-body">
                  <h5 class="card-title">{{ $homework->student->name }}</h5>
                  <p class="card-text">
                  </p>
                  <form class="form mb-2" action="{{ route('upload-edit-homework') }}" enctype="multipart/form-data" id="upload_edit_form" method="POST">
                    @csrf
                    <div class="input-group">
                      <div class="custom-file">
                        <input type="file" class="" id="inputGroupFile04" aria-describedby="inputGroupFileAddon04" name="homework_file">
                        <input type="hidden" name="homework_id" value="{{ $homework->assigned_home_work_id }}">
                        <input type="hidden" name="student_id" value="{{ $homework->student_id}}">
                        
                      </div>
                      <div class-="input-group-append">
                        <button class="btn btn-outline-secondary uploadbutn" type="submit" id="inputGroupFileAddon04">Upload</button>
                      </div>
                    </div>
                  </form>

                  <a href="{{ route('delete-homework', [$homework->assigned_home_work_id, $homework->student_id]) }}" class="btn btn-outline-danger">Delete</a>
                  <a class="btn btn-outline-primary uploadbutn" target="_blank" href="{{ asset('uploads/'.$homework->assigned_content) }}" id="inputGroupFileAddon05">View</a>
                </div>
              </div>
            </div>
            @endforeach
            @endif
          </div>
        </div>
      </section>
    </div>
    <div id="quiz" class="container tab-pane fade">
      <br>
      <h3>Menu 1</h3>
      <p>
        Ut enim ad minim veniam, quis nostrud
        exercitation ullamco laboris nisi ut
        aliquip ex ea commodo consequat.
      </p>
    </div>
  </div>

</div>
</div>
    </div>
  </div>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
