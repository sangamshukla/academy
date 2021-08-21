<div class="tab-pane" role="tabpanel" id="menu2">
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
  <div class="mt-5">
    <div class="d-flex justify-content-between">
      <div>
        <p class="session_no">Assign Homework</p>
      </div>
     {{-- model for all student join --}}
     <div>
      <!-- Button trigger modal -->
      <p class="joined" data-toggle="modal" data-target="#exampleModal">
        {{ $students->count() }} Joined
      </p>
      <!-- Modal -->
      <div
        class="modal fade"
        id="exampleModal"
        tabindex="-1"
        role="dialog"
        aria-labelledby="exampleModalLabel"
        aria-hidden="true"
      >
        <div
          class="modal-dialog"
          role="document"
        >
          <div class="modal-content">
            <div class="modal-header">
              <h5
                class="modal-title"
                id="exampleModalLabel"
              >
                Student List for the session
              </h5>
              <button
                type="button"
                class="close"
                data-dismiss="modal"
                aria-label="Close"
              >
                <span aria-hidden="true"
                  >&times;</span
                >
              </button>
            </div>
            <div
              class="
                modal-body
                table_modal_body
              "
            >
              <!-- DataTales Example -->
              <table
                class="table table-bordered"
              >
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Student Name</th>
                    <th scope="col">year</th>
                    <th scope="col">Session Name</th>
                  </tr>
                </thead>
                <tbody>
                  @php $i=1; @endphp
                  @foreach ($students as $student)
                  <tr>
                    <th scope="row">
                      <label class="container">
                        <input
                          type="checkbox"
                          checked="checked"
                          value="{{ $student->id }}"
                          class="choosePdfSelectStudent"
                        />
                        <span
                          class="checkmark"
                        ></span>
                      </label>
                    </th>
                    <td>{{ $student->name }}</td>
                    <td>{{  $session->batch->classmaster->name }}</td>
                    <td>{{ $session->name }}</td>
                  </tr>
                 @php $i++; @endphp
                  @endforeach
                </tbody>
              </table>
            </div>
            {{-- <div class="modal-footer">
              <button
                class="btn btn-secondary"
                data-dismiss="modal"
              >
                Close
              </button>
              <button
                type="button"
                class="btn share_cta" style="width:120px;"
              >
                Save
              </button>
            </div> --}}
          </div>
        </div>
      </div>
    </div>
     {{-- end model for all student join  --}}
    </div>
    <div class="d-flex justify-content-between">
      <div>
        <ul class="nav nav-tabs" role="tablist">
          @php $i=1; @endphp
          <li class="nav-item">
            <a
              class="
                nav-link
                tab_title
                side_nav
                inner_nav
                active
              "
              data-toggle="tab"
              href="#tabhome{{$i}}"
              >PDF</a
            >
          </li>
          @php $i++; @endphp
          <li class="nav-item">
            <a
              class="
                nav-link
                tab_title
                side_nav
                inner_nav
              "
              data-toggle="tab"
              href="#tabhome2"
              >Upload File</a
            >
          </li>
          
          <li class="nav-item">
            <a
              class="
                nav-link
                tab_title
                side_nav
                inner_nav
              "
              data-toggle="tab"
              href="#tabhome3"
              >Add Question</a
            >
          </li>
        </ul>
      </div>
      {{-- for filter --}}
      {{-- <div class="d-flex justify-content-between">
        <div class="filter_text"><p>Filter By</p></div>
        <div>
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
        </div>
      </div> --}}
    </div>
    <hr />
    <!-- Tab panes -->
    <div class="tab-content">
      <div
        id="tabhome1"
        class="container tab-pane active"
      >
        <br />
        {{-- choose pdf --}}
        @include('homework._assign_homework._choose_pdf')
        {{-- /choose pdf --}}
      </div>
      <div
        id="tabhome2"
        class="container tab-pane fade"
      >
        @include('homework._assign_homework._upload_file')
          </div>
        </div>
      </div>
      {{-- Add Question --}}
      <div
        id="tabhome3"
        class="container tab-pane fade"
      >
        <br />
        <h3></h3>
        <textarea name="editor_add_question" id="editor_add_question"></textarea>
        <div>
          <ul class="list_pdf">
            
            <div id="listOfFiles"></div>
            
          </ul>
          <hr>
          <div class="card" style="width: 100%;">
            <p class="tile_card_comment">Comment</p>
            <div class="card-body">
              <div class="form-group">
                <label class="sr-only" for="message">post</label>
                <textarea class="form-control" id="messageAddQuestion" rows="3" placeholder="Add your comment"></textarea>
              </div>
            </div>
          </div>
          <div class="row mt-2">
            <div style="color:#1D6771;"class="form-group col-md-6">           
              <span>Points</span>
          <input type="number" style="width:78%;" class="form-control" id="pointsAddQuestion" placeholder="Points">  
         </div> 
          <div style="color:#1D6771;" style="float:right;" class="form-group col-md-6">           
            <span style="float: left; margin-left: 22%;">Due Date:</span>
            <input type="text" style="width:78%; float: right" class="form-control" name="due_date" id="dueDateAddQuestion" placeholder="Due Date">
          </div>
        </div>
       
          <hr>
          <div>
            <div class="share_block">
              <label class="container" data-toggle="modal" data-target="#exampleModal">
                <input type="checkbox">
                <span class="checkmark"></span>
                <span class="add_text">Assign To All Students</span>
              </label>
              <label class="container" data-toggle="modal" data-target="#exampleModal">
                <input type="checkbox">
                <span class="checkmark"></span>
                <span class="add_text">Assign To Selected Students</span>
              </label>
            </div>
            <div>
            <button class="btn share_cta" id="saveAddQuestionHomeWork">
              Share
            </button>
            </div> 
           </div>
            </div>
        {{-- end add question --}}
      </div>
    </div>
  </div>
</div>