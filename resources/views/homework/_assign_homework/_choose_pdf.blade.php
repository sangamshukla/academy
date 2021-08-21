<div>
          <div class="row">
            <div class="col-md-12">
              <div id="accordion">
                <div class="">
                  <div class="">
                    <a class="card-link text-dark" data-toggle="collapse" href="#collapseOne"><span class="float-left tab_arrow"></span>
                      <img class="folder_icon" src="{{ asset('folder.png') }}" width="30" height="30">
                      <h6 class="folder_title">
                        {{ $session->singleTopic->topic->name }}
                      </h6>
                    </a>
                  </div>
                  <div id="collapseOne" class="collapse show" data-parent="#accordion">
                    <div class="card-body">
                      <ul class="list_pdf">
                        @foreach ($pdfFilesAll as $pdf)
                        <li>
                          <span class="pdf_list_no">
                            <input type="radio" id="pdf" name="choosePDFS" value="{{ $pdf->id }}" class="radio_cta">
                          </span>
                          <span>{{ $pdf->topic->subtopics->first()->sub_topic_name }}</span>
                            <span class="pdf_block">
                              <a target="_blank"  href="{{ url('uploads/'.$pdf->pdf_path) }}"><img src="{{ asset('wa/dashboard/homework/img/pdf.svg')}}"></a>
                            </span>
                        </li>
                        @endforeach
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          
          <p id="" class="text-danger"></p>
          <hr />
          <div class="card">
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
                ></textarea>
              </div>
                
            </div>
            
          </div>
          
         <div class="row mt-2">
          <div style="color:#1D6771;"class="form-group col-md-6">           
            <span>Points</span>
          <input type="number" style="width:78%;" class="form-control"  id="points" placeholder="Points"/>  
         </div>
       
           {{-- date --}}
          <div style="color:#1D6771;" style="float:right;" class="form-group col-md-6">           
            <span style="float: left; margin-left: 22%;">Due Date:</span>
            <input type="text" style="width:78%; float: right" class="form-control" name="due_date" id="dueDatePdf" placeholder="Due Date">
         </div>
         </div>
        
          {{-- date --}}
          <hr />
          <div>
            <div class="share_block">
              <label  data-toggle="modal" data-target="#exampleModal" class="container">
                <input
                  type="checkbox"
                  {{-- checked="checked" --}}
                />
                <span class="checkmark"></span>
                <span class="add_text"
                  >Assign To All Students</span
                >
              </label>
              <label  data-toggle="modal" data-target="#exampleModal" class="container">
                <input
                  type="checkbox"
                  {{-- checked="checked" --}}
                />
                <span class="checkmark"></span>
                <span class="add_text"
                  >Assign To Selected Students</span
                >
              </label>
            </div>
            <div>
              <button class="btn share_cta" id="saveAsssignHomework">
                Share
              </button>
            </div>
          </div>
        </div>