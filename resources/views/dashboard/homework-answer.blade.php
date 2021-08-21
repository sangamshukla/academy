@extends('layouts.student_dashboard')
@section('css_file')
    <link rel="stylesheet" href="{{asset('wa/dashboard/css/homeworkstudent.css')}}">
    @endsection
    @section('student-content')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdf.js/2.2.228/pdf.min.js"></script>
    <script src="//cdn.ckeditor.com/4.16.1/basic/ckeditor.js"></script>
    <style type="text/css">

#show-pdf-button {
	width: 150px;
	display: block;
	margin: 20px auto;
}

#file-to-upload {
	display: none;
}

#pdf-main-container {
	width: 400px;
	margin: 0px auto;
}

#pdf-loader {
	display: none;
	text-align: center;
	color: #999999;
	font-size: 13px;
	line-height: 100px;
	height: 100px;
}

#pdf-contents {
	display: none;
}

#pdf-meta {
	overflow: hidden;
	margin-left: 0px;
    margin-right: 10px;
}

#pdf-buttons {
	float: left;
}

#page-count-container {
	float: right;
}

#pdf-current-page {
	display: inline;
}

#pdf-total-pages {
	display: inline;
}

#pdf-canvas {
	border: 1px solid rgba(0,0,0,0.2);
	box-sizing: border-box;
    /* min-width: 600px; */
    width: 400px;
}

#page-loader {
	height: 100px;
	line-height: 100px;
	text-align: center;
	display: none;
	color: #999999;
	font-size: 13px;
}

</style>

    <!-- Begin Page Content -->
    @foreach ($homeworks as $homework)
        <div class="container-fluid" style="margin-top: 80px">
          <!-- Page Heading -->
          <div class="d-flex justify-content-start p-3 mb-2">
            <div class="img pr-2"><a href="{{route('student-dashboard')}}"><img src="{{asset('wa/dashboard/img/chevron (2).svg')}}" /></a></div>
            <h1 class="h3 mb-0 text-gray-800 session_heading_subject">
                {{$homework->homeWork->session->batch->classSettings->name}}
            </h1>
          </div>
          <!-- Tabs -->
          <section id="tabs">

            <div class="row">
              <div class="col-xs-12 col-12">
                <nav>
                  <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
                    <a class="nav-item nav-link homework_tab active" id="nav-homework-tab" data-toggle="tab"
                      href="#nav-homework" role="tab" aria-controls="nav-homework" aria-selected="true">Homework</a>
                    <a class="nav-item nav-link quiz-tab" id="nav-quiz-tab" data-toggle="tab" href="#nav-quiz"
                      role="tab" aria-controls="nav-quiz" aria-selected="false">Quiz</a>
                    <a class="nav-item nav-link remarks-tab" id="nav-remarks-tab" data-toggle="tab" href="#nav-remarks"
                      role="tab" aria-controls="nav-remarks" aria-selected="false">Remarks</a>
                    <a class="nav-item nav-link archive-tab" id="nav-archive-tab" data-toggle="tab" href="#nav-archive"
                      role="tab" aria-controls="nav-archive" aria-selected="false">Archive</a>
                    <a class="nav-item nav-link feedback-tab" id="nav-feedback-tab" data-toggle="tab"
                      href="#nav-feedback" role="tab" aria-controls="nav-feedback" aria-selected="false">Feedback</a>
                  </div>
                </nav>
                <div class="tab-content py-3 px-3 px-sm-0" id="nav-tabContent">
                  <div class="tab-pane fade show active" id="nav-homework" role="tabpanel"
                    aria-labelledby="nav-home-tab">
                    <div class="row">
                      <div class="col-12">
                        <div class="card home-work-card-border">
                          <div class="session_data_block">
                            <div class="d-flex justify-content-between px-4 py-1 mx-4">
                              <div>
                                <p class="session_title">Session Date</p>
                                <p class="session_date">
                                    {{\Carbon\Carbon::parse($homework->homeWork->session->start_date_time)->format('d-M-Y')}}</p>
                              </div>
                              <div>
                                <p class="session_title">Session Time</p>
                                {{-- {{$homework->homeWork->session->start_date_time}} --}}
                                <p class="session_date">{{\Carbon\Carbon::parse($homework->homeWork->session->start_date_time)->format('h:i')}} - {{\Carbon\Carbon::parse($homework->homeWork->session->start_date_time)->addMinutes($homework->homeWork->session->batch->duration_per_session)->format('h:i')}}</p>
                              </div>
                              <div>
                                <p class="session_title">Teachers Name</p>
                                <p class="session_date">{{$homework->homeWork->session->batch->assignteacher->name}}</p>
                              </div>
                              <div>
                                <p class="session_title">Class</p>
                                <p class="session_date">{{$homework->homeWork->session->batch->classmaster->name}}</p>
                              </div>
                            </div>
                          </div>
                          <div class="tab-section">
                            <div class="mt-5">
                              <div class="d-flex justify-content-between">
                                <p class="session_no">Homework</p>
                              </div>
                              <div class="d-flex justify-content-between">
                                <div>
                                  <ul class="nav nav-tabs" role="tablist">
                                    <li class="nav-item">
                                      <a class="nav-link tab_title side_nav inner_nav active" data-toggle="tab"
                                        href="#tabhome1">View</a>
                                    </li>
                                    <li class="nav-item">
                                      <a class="nav-link tab_title side_nav inner_nav " data-toggle="tab"
                                        href="#tabhome2" id="load-homework">Upload File</a>
                                    </li>
                                    <li class="nav-item">
                                      <a class="nav-link tab_title side_nav inner_nav" data-toggle="tab" href="#tabhome3">
                                        Add Answer
                                      </a>
                                    </li>
                                  </ul>
                                </div>

                              </div>
                              <hr class="space_border">
                              <!-- Tab panes -->
                                    @php
                                        switch($homework->type_of_homework){
                                            case "UPLOAD_PDF":
                                                $pdfpath=asset('uploads')."/".$homework->assigned_content;
                                                break;
                                                case "CHOOSE_PDF":
                                                $pdfpath=asset('uploads')."/".$homework->homework_Name->pdf_path;
                                                break;
                                                case "ADD_QUESTION":
                                                $pdfpath="www.tango.com";
                                                break;

                                        }
                                    @endphp
                              <div class="tab-content">
                                <div id="tabhome1" class="container tab-pane active show">
                                    <div class="card">
                                      <p class="tile_card_comment">Teachers Message</p>
                                      <div class="card-body">
                                        <div class="form-group">
                                          <label class="sr-only" for="message">post</label>
                                          <textarea class="form-control comment_block" id="message" rows="3"
                                            placeholder="" disabled>{{$homework->homeWork->comment}}
                                        </textarea>
                                        </div>
                                      </div>
                                    </div>
                                   
                                    <hr>
                                </div>
                                <div id="tabhome2" class="container tab-pane ">
                                  <div class="row">
                                    <div class="col-7">
                                      <div class="card">
                                        <object data="{{$pdfpath}}" type="application/pdf" width="100%" height="600px">
                                        </object>
                                      </div>
                                    </div>
                                    
                                      @if ($have_submitted=='true')
                                        <div class="col-5">
                                            <div class="card">
                                                <object data="{{url('storage/'.$homework_content)}}" type="application/pdf" width="100%" height="600px">
                                                </object>
                                            </div>
                                        </div>
                                    @else
                                    <div class="col-5">
                                        <div class="card">
                                          <p class="tile_card_comment">Upload Your File here</p>
                                          <div class="file_upload">
                                              <form id="homeworksubmit">
                                                  @csrf
                                                  @php
                                                 $map_id=$homework->id
                                                 @endphp
                                                  <label class="file">
                                                      <input type="file" id="file_upload_input"  style="opacity: 1 !important" name="homeworkfiles[]" multiple="multiple" required>
                                                   </label>
                                                   <input type="hidden" name="homework_id" value="{{$homework->homeWork->id}}">
                                                   <input type="hidden" name="map_id" value="{{$map_id}}">
                                                   {{-- <span class="file-custom"></span> --}}
                                                <button id="input-submit" class="nav-item nav-link homework_tab active">Submit</button>
                                                <div style="display: none;" id="homework_uploader">
                                                  <img src="{{asset('wa/assets/img/ajax-loader.gif')}}" alt="">
                                                  <p><b>Please wait...</b></p>
                                                </div>
                                              </form>
                                                  <div class="alert alert-primary" role="alert" hidden>
                                                      Your homework has been submitted
                                                  </div>
                                          </div>
                                        </div>
                                      </div>
                                    @endif

                                  </div>
                                </div>

                                <div id="tabhome3" class="container tab-pane fade">
                                  <div class="row">
                                    <div class="col-6">
                                      <div class="card">
                                        {{-- <p>{{$homework}}</p> --}}
                                        {{-- <img src="{{asset('wa/dashboard/img/ans-img.png')}}" class="ans_img"> --}}
                                        <object data="{{$pdfpath}}" type="application/pdf" width="100%" height="600px">
                                        </object>
                                      </div>
                                    </div>
                                    <div class="col-6">
                                      <div class="card">
                                        {{-- <p class="tile_card_comment">Teachers Message</p>
                                        <div class="file_upload">
                                          <label class="file">
                                            <input type="file" id="file" aria-label="example.pdf" name="uploadfile">
                                            <span class="file-custom"></span>
                                          </label>
                                        </div> --}}
                                        <form>
                                            <textarea name="student_answer" id="student_answer" width="100%" height="600px"></textarea>
                                            <script>
                                              CKEDITOR.replace( 'student_answer' );
                                      </script>
                                            <button id="submitcontent" class="nav-item nav-link homework_tab">Submit </button>
                                            <img src="{{asset('wa/assets/img/loader3.gif')}}" alt="" width="40", height="40" id="process-loader1" hidden>
                                        </form>
                                        <div class="alert alert-success my-2 alert-dismissible fade show" role="alert" hidden>
                                            Your answer has been submitted to your teacher.
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="tab-pane fade" id="nav-quiz" role="tabpanel" aria-labelledby="nav-profile-tab">
                    Et et consectetur ipsum labore excepteur est proident excepteur ad velit occaecat qui minim
                    occaecat veniam. Fugiat veniam incididunt anim aliqua enim pariatur veniam sunt est aute sit dolor
                    anim. Velit non irure adipisicing aliqua ullamco irure incididunt irure non esse consectetur
                    nostrud minim non minim occaecat. Amet duis do nisi duis veniam non est eiusmod tempor incididunt
                    tempor dolor ipsum in qui sit. Exercitation mollit sit culpa nisi culpa non adipisicing
                    reprehenderit do dolore. Duis reprehenderit occaecat anim ullamco ad duis occaecat ex.
                  </div>
                  <div class="tab-pane fade" id="nav-remarks" role="tabpanel" aria-labelledby="nav-contact-tab">
                    Et et consectetur ipsum labore excepteur est proident excepteur ad velit occaecat qui minim
                    occaecat veniam. Fugiat veniam incididunt anim aliqua enim pariatur veniam sunt est aute sit dolor
                    anim. Velit non irure adipisicing aliqua ullamco irure incididunt irure non esse consectetur
                    nostrud minim non minim occaecat. Amet duis do nisi duis veniam non est eiusmod tempor incididunt
                    tempor dolor ipsum in qui sit. Exercitation mollit sit culpa nisi culpa non adipisicing
                    reprehenderit do dolore. Duis reprehenderit occaecat anim ullamco ad duis occaecat ex.
                  </div>
                  <div class="tab-pane fade" id="nav-archive" role="tabpanel" aria-labelledby="nav-about-tab">
                                      <div class="tab-pane fade show active" id="nav-homework" role="tabpanel"
                    aria-labelledby="nav-home-tab">
                    <div class="row">
                      <div class="col-12">
                        <div class="card home-work-card-border">
                          <div class="session_data_block">
                            <div class="d-flex justify-content-between px-4 py-1 mx-4">
                              <div>
                                <p class="session_title">Session Date</p>
                                <p class="session_date">
                                    {{\Carbon\Carbon::parse($homework->homeWork->session->start_date_time)->format('d-M-Y')}}</p>
                              </div>
                              <div>
                                <p class="session_title">Session Time</p>
                                {{-- {{$homework->homeWork->session->start_date_time}} --}}
                                <p class="session_date">{{\Carbon\Carbon::parse($homework->homeWork->session->start_date_time)->format('h:i')}} - {{\Carbon\Carbon::parse($homework->homeWork->session->start_date_time)->addMinutes($homework->homeWork->session->batch->duration_per_session)->format('h:i')}}</p>
                              </div>
                              <div>
                                <p class="session_title">Teachers Name</p>
                                <p class="session_date">{{$homework->homeWork->session->batch->assignteacher->name}}</p>
                              </div>
                              <div>
                                <p class="session_title">Class</p>
                                <p class="session_date">{{$homework->homeWork->session->batch->classmaster->name}}</p>
                              </div>
                            </div>
                          </div>
                          <div class="tab-section">
                            <div class="mt-5">
                              <div class="d-flex justify-content-between">
                                <p class="session_no">Here's your checked homework</p>
                              </div>
                              <hr class="space_border">
                                <div class="m-1 border">
                                    @if(isset($checked_pdfpath))
                                <object data="{{url('storage/'.$checked_pdfpath)}}" type="application/pdf" width="100%" height="600px">
                                        </object>
                                    @else
                                    <p>Your homework has not been checked yet.</p>
                                    @endif
                                </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  </div>
                  <div class="tab-pane fade" id="nav-feedback" role="tabpanel" aria-labelledby="nav-about-tab">
                      {{$homework->homeWork->id}}
                    Et et consectetur ipsum labore excepteur est proident excepteur ad velit occaecat qui minim
                    occaecat veniam. Fugiat veniam incididunt anim aliqua enim pariatur veniam sunt est aute sit dolor
                    anim. Velit non irure adipisicing aliqua ullamco irure incididunt irure non esse consectetur
                    nostrud minim non minim occaecat. Amet duis do nisi duis veniam non est eiusmod tempor incididunt
                    tempor dolor ipsum in qui sit. Exercitation mollit sit culpa nisi culpa non adipisicing
                    reprehenderit do dolore. Duis reprehenderit occaecat anim ullamco ad duis occaecat ex.
                  </div>
                </div>
              </div>
            </div>
          </section>
          <!-- ./Tabs -->
        </div>
    @endforeach
        <!-- End of Main Content -->
        <!-- Modal pop-up start -->
        <!-- The Modal -->
        <div class="modal" id="myModal">
          <div class="modal-dialog">
            <div class="modal-content">
              <!-- Modal body -->
              <div class="modal-body p-5">
                <div class="text-center">
                  <div class="p-4">
                    <img src="{{asset('wa/dashboard/img/Ok Icon.svg')}}" />
                    <p class="modal_heading mt-3 mb-3">
                      Query Submitted Successfully
                    </p>
                    <p class="modal_pera">
                      Your answer was Submitted to the Alice Morgan.
                    </p>
                    <button class="ok_button mt-3 mb-3" data-dismiss="modal" id="close">ok, Got it!</button>
                  </div>
                </div>
              </div>
              <!-- Modal footer -->
            </div>
          </div>
        </div>

        <script>
            $(function () {
                $('#myModal').hide();
                });
        </script>

              <script>
                    var _PDF_DOC,
                    _CURRENT_PAGE,
                    _TOTAL_PAGES,
                    _PAGE_RENDERING_IN_PROGRESS = 0,
                    _CANVAS = document.querySelector('#pdf-canvas');

                // initialize and load the PDF
                async function showPDF(pdf_url) {
                    document.querySelector("#pdf-loader").style.display = 'block';

                    // get handle of pdf document
                    try {
                        _PDF_DOC = await pdfjsLib.getDocument({ url: pdf_url });
                    }
                    catch(error) {
                        alert(error.message);
                    }

                    // total pages in pdf
                    _TOTAL_PAGES = _PDF_DOC.numPages;

                    // Hide the pdf loader and show pdf container
                    document.querySelector("#pdf-loader").style.display = 'none';
                    document.querySelector("#pdf-contents").style.display = 'block';
                    document.querySelector("#pdf-total-pages").innerHTML = _TOTAL_PAGES;

                    // show the first page
                    showPage(1);
                }

                // load and render specific page of the PDF
                async function showPage(page_no) {
                    _PAGE_RENDERING_IN_PROGRESS = 1;
                    _CURRENT_PAGE = page_no;

                    // disable Previous & Next buttons while page is being loaded
                    document.querySelector("#pdf-next").disabled = true;
                    document.querySelector("#pdf-prev").disabled = true;

                    // while page is being rendered hide the canvas and show a loading message
                    document.querySelector("#pdf-canvas").style.display = 'none';
                    document.querySelector("#page-loader").style.display = 'block';

                    // update current page
                    document.querySelector("#pdf-current-page").innerHTML = page_no;

                    // get handle of page
                    try {
                        var page = await _PDF_DOC.getPage(page_no);
                    }
                    catch(error) {
                        alert(error.message);
                    }

                    // original width of the pdf page at scale 1
                    var pdf_original_width = page.getViewport(1).width;

                    // as the canvas is of a fixed width we need to adjust the scale of the viewport where page is rendered
                    var scale_required = _CANVAS.width / pdf_original_width;

                    // get viewport to render the page at required scale
                    var viewport = page.getViewport(scale_required);

                    // set canvas height same as viewport height
                    _CANVAS.height = viewport.height;

                    // setting page loader height for smooth experience
                    document.querySelector("#page-loader").style.height =  _CANVAS.height + 'px';
                    document.querySelector("#page-loader").style.lineHeight = _CANVAS.height + 'px';

                    var render_context = {
                        canvasContext: _CANVAS.getContext('2d'),
                        viewport: viewport
                    };

                    // render the page contents in the canvas
                    try {
                        await page.render(render_context);
                    }
                    catch(error) {
                        alert(error.message);
                    }

                    _PAGE_RENDERING_IN_PROGRESS = 0;

                    // re-enable Previous & Next buttons
                    document.querySelector("#pdf-next").disabled = false;
                    document.querySelector("#pdf-prev").disabled = false;

                    // show the canvas and hide the page loader
                    document.querySelector("#pdf-canvas").style.display = 'block';
                    document.querySelector("#page-loader").style.display = 'none';
                }

                // click on "Show PDF" buuton
                document.querySelector("#load-homework").addEventListener('click', function() {
                    // this.style.display = 'none';
                    // showPDF("{{asset('uploads')}}"+"/"+"{{$homework->pdf_path}}");
                    // showPDF("{{asset('uploads')}}"+"/"+"{{$homework->assigned_content}}");
                    showPDF("{{$pdfpath}}");

                });

                // click on the "Previous" page button
                document.querySelector("#pdf-prev").addEventListener('click', function() {
                    if(_CURRENT_PAGE != 1)
                        showPage(--_CURRENT_PAGE);
                });

                // click on the "Next" page button
                document.querySelector("#pdf-next").addEventListener('click', function() {
                    if(_CURRENT_PAGE != _TOTAL_PAGES)
                        showPage(++_CURRENT_PAGE);
                });
        </script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script>
                //   $('#file_upload_div').change(function(e){
                //       var files=[];

                //       var filename=$('input[type=file]')[0].files[0].name;
                //       const [file]=file_upload.files;
                //       if(file)
                //       {
                //       $('#divid').append('<img src="'+URL.createObjectURL(file)+'" '+'width="100" height="100" style="border-radius:20px; padding:5px;"/>');
                //       }
                //     //   $('#changed').append('<li>'+filename+'</li>');
                //    });
            $('#homeworksubmit').submit(function(e){
                 e.preventDefault();
                var homework_id="{{$homework->homeWork->id}}";
                var formData = new FormData($(this)[0]);
                $('#homework_uploader').show();
                    $.ajax({
                        type:"POST",
                        url:"{{route('upload-homework')}}",
                        '_token': '{{ csrf_token() }}',
                        data: formData,
                        // homework_id:homework_id,
                        async: false,
                        cache: false,
                        contentType: false,
                        enctype: 'multipart/form-data',
                        processData: false,
                        success:function(response){
                             $('#homework_uploader').hide();
                            $('.alert').removeAttr('hidden');
                            $('#input-submit').text('submitting...');
                            $('#input-submit').text('Submitted');
                            $(".alert").fadeOut(8000);
                        },
                        error:function(error){
                          $('#process-loader').attr('hidden', true);
                            alert(error.responseText.message);
                            console.log(error.responseText.message);
                        }
                    });
                    return false;
            });
        </script>
        <script>
            $('#submitcontent').click(function(e){
                e.preventDefault();
                $('#process-loader1').removeAttr('hidden');
                var data=CKEDITOR.instances.student_answer.getData();
                var homework_id='{{$homework->homeWork->id}}';
                var map_id="{{$homework->id}}";
                $.ajax({
                    type:"POST",
                    url:"{{route('upload-homework-text')}}",
                    '_token':'{{ csrf_token() }}',
                    data:{
                        my_data:data,
                        homework_id:homework_id,
                        map_id:map_id
                    },
                    success:function(response){
                    $('#process-loader1').attr('hidden', true);
                        $('.alert').removeAttr('hidden')
                        console.log(response);
                    },
                    error:function(error){
                        console.log('error');
                    }
                });
            });
        </script>
@endsection
