@extends('layouts.session')

@section('content')
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/prettify/r298/prettify.min.css">
	<link rel="stylesheet" href="{{asset('wa/dashboard/css/styleforpdf.css')}}">
	<link rel="stylesheet" href="{{asset('wa/dashboard/css/pdfannotate.css')}}">
<div class="container-fluid">
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
      <h1 class="h3 mb-0 text-gray-800 session_heading">My Session</h1>
    </div>
    <!-- image block -->
    <div class="row">
      <div class="col-xl-12 col-lg-12">
        <div class=" mt-5">
          <a class="direction_nav" href="#">
            <sapn class="arrow-right"><i class="fa fa-angle-left" aria-hidden="true"></i></sapn><span>{{$submittedHomework->homework->session->batch->classSettings->name}}</span>
          </a>
          <section>
            <div class="">
              <div class="row">
                <div class="col-lg-12">
                  <div class="card mt-5 yellow_border">
                      <div class="row">
                          <div class="col-8">
                            <div class="session_homework">
                              <p>{{$submittedHomework->homework->session->name}}</p>
                              <span>{{$submittedHomework->homework->session->batch->teacher->name}}</span>
                            </div>
                              
                          </div>
                          <div class="col-4">
                              @if(Session::has('msg'))
                              <div class="alert alert-success mt-2" role="alert">
                                {{ Session::get('msg') }}
                            </div>
                                @endif
                            <div class="session_homework">
                                <form enctype="multipart/form-data" action="{{route('upload-answer-pdf')}}" method="POST">
                                        <div class="custom-file my-2">
                                          <input type="file" class="custom-file-input" id="customFile" name="checked_homework" required>
                                          <label class="custom-file-label" for="customFile">Upload 
                                          <input type="hidden" value="{{$homeworkContent->id}}" name="map_id">
                                        </div>
                                         <button type="submit" class="btn btn-primary my-2">Submit</button>
                                </form>
                            </div>
                          </div>
                      </div>
                    <div class="card-body">
                      <div class="row">
                        <div class="col-lg-6 block" id="given-homework">
                          <div class="border-section">
                            <!-- slider -->
                            <div style="
                                --swiper-navigation-color: #fff;
                                --swiper-pagination-color: #fff;
                              " class="swiper-container mySwiper2 swiper-container-initialized swiper-container-horizontal swiper-container-pointer-events">
                              <div class="swiper-wrapper wide" id="swiper-wrapper-3a6d7925d786a9ae" aria-live="polite" style="transform: translate3d(0px, 0px, 0px);">
                                <div class="swiper-slide swiper-slide-active" role="group" aria-label="1 / 4" style="width: 844px; margin-right: 30px;">
                                  {{-- <img src="{{asset('wa/teacherdashboard/img/math-aa.png')}}" class=""> --}}
                                    <embed src="{{ url("uploads/".$assignedHomework->assigned_content) }}#toolbar=0"  width="600" height="400" />
                                    {{-- alt : <a href="pdf_file_name.pdf">PDF TITLE</a> --}}
                                 </object>
                                </div>
                                {{-- <div class="swiper-slide swiper-slide-next" role="group" aria-label="2 / 4" style="width: 844px; margin-right: 30px;">
                                  <img src="{{asset('wa/teacherdashboard/img/math-aa.png')}}" class="">
                                </div>
                                <div class="swiper-slide" role="group" aria-label="3 / 4" style="width: 844px; margin-right: 30px;">
                                  <img src="{{asset('wa/teacherdashboard/img/math-aa.png')}}" class="">
                                </div>
                                <div class="swiper-slide" role="group" aria-label="4 / 4" style="width: 844px; margin-right: 30px;">
                                  <img src="{{asset('wa/teacherdashboard/img/math-aa.png')}}" class="">
                                </div> --}}
                              </div>
                            <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
                          </div>
                          <div thumbsslider="" class="swiper-container mySwiper swiper-container-initialized swiper-container-horizontal swiper-container-pointer-events swiper-container-free-mode swiper-container-thumbs">
                            <div class="swiper-wrapper" id="swiper-wrapper-92d9f35765923b45" aria-live="polite" style="transform: translate3d(0px, 0px, 0px);">
                              
                              @if($multiple)
                              
                              @foreach($homeworkContent as $hwcontent)
                              <div class="swiper-slide swiper-slide-visible swiper-slide-next" role="group" aria-label="{{ $loop->iteration }} / {{ $loop->count }}" style="width: 204.5px; margin-right: 10px;">
                                <img src="{{ url("storage/homeworks".$assignedHomework->id."/".$hwcontent->image_path) }}#toolbar=0" class="">
                                </div>
                              
                              @endforeach
                              @else
                              <div class="swiper-slide swiper-slide-visible swiper-slide-active swiper-slide-thumb-active" role="group" aria-label="1 / 4" style="width: 204.5px; margin-right: 10px;">
                                <img src="{{asset('wa/teacherdashboard/img/math-aa.png')}}" class="">
                              </div>
                              
                              @endif
                              {{-- <div class="swiper-slide swiper-slide-visible swiper-slide-next" role="group" aria-label="2 / 4" style="width: 204.5px; margin-right: 10px;">
                                <img src="{{asset('wa/teacherdashboard/img/math-aa.png')}}" class="">
                              </div>
                              <div class="swiper-slide swiper-slide-visible" role="group" aria-label="3 / 4" style="width: 204.5px; margin-right: 10px;">
                                <img src="{{asset('wa/teacherdashboard/img/math-aa.png')}}" class="">
                              </div>
                              <div class="swiper-slide swiper-slide-visible" role="group" aria-label="4 / 4" style="width: 204.5px; margin-right: 10px;">
                                <img src="{{asset('wa/teacherdashboard/img/math-aa.png')}}" class="">
                              </div>
                              <div class="swiper-button-next" tabindex="0" role="button" aria-label="Next slide" aria-controls="swiper-wrapper-3a6d7925d786a9ae" aria-disabled="false"></div>
                              <div class="swiper-button-prev swiper-button-disabled" tabindex="-1" role="button" aria-label="Previous slide" aria-controls="swiper-wrapper-3a6d7925d786a9ae" aria-disabled="true"></div> --}}

                            </div>
                          <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
                        </div>

                        <div class="col-lg-6" id="submitted-homework">
                          <div class="border-section second-border-section">
                              <div class="toolbar">
                                    <div class="tool">
                                        <label for="">Brush</label>
                                        <input type="number" class="form-control text-right" value="1" id="brush-size" max="50">
                                    </div>
                                    <div class="tool">
                                        <label for="">Size</label>
                                        <select id="font-size" class="form-control">
                                            <option value="10">10</option>
                                            <option value="12">12</option>
                                            <option value="16" selected>16</option>
                                            <option value="18">18</option>
                                            <option value="24">24</option>
                                            <option value="32">32</option>
                                            <option value="48">48</option>
                                            <option value="64">64</option>
                                            <option value="72">72</option>
                                            <option value="108">108</option>
                                        </select>
                                    </div>
                                    <div class="tool">
                                        <button class="color-tool active" style="background-color: #212121;"></button>
                                        <button class="color-tool" style="background-color: red;"></button>
                                        <button class="color-tool" style="background-color: blue;"></button>
                                        <button class="color-tool" style="background-color: green;"></button>
                                        <button class="color-tool" style="background-color: yellow;"></button>
                                    </div>
                                    <div class="tool">
                                        <button class="tool-button active"><i class="fa fa-hand-paper-o" title="Free Hand" onclick="enableSelector(event)"></i></button>
                                    </div>
                                    <div class="tool">
                                        <button class="tool-button"><i class="fa fa-pencil" title="Pencil" onclick="enablePencil(event)"></i></button>
                                    </div>
                                    <div class="tool">
                                        <button class="tool-button"><i class="fa fa-font" title="Add Text" onclick="enableAddText(event)"></i></button>
                                    </div>
                                    <div class="tool">
                                        <button class="tool-button"><i class="fa fa-long-arrow-right" title="Add Arrow" onclick="enableAddArrow(event)"></i></button>
                                    </div>
                                    <div class="tool">
                                        <button class="tool-button"><i class="fa fa-square-o" title="Add rectangle" onclick="enableRectangle(event)"></i></button>
                                    </div>
                                    <div class="tool">
                                        <button class="tool-button"><i class="fa fa-picture-o" title="Add an Image" onclick="addImage(event)"></i></button>
                                    </div>
                                    <div class="tool">
                                        <button class="btn btn-danger btn-sm" onclick="deleteSelectedObject(event)"><i class="fa fa-trash"></i></button>
                                    </div>
                                    <div class="tool">
                                        <button class="btn btn-danger btn-sm" onclick="clearPage()">Clear</button>
                                    </div>
                                    <div class="tool">
                                        <button class="btn btn-danger btn-sm" onclick="enlarge()" id="enlarge">Enlarge</button>
                                    </div>
                                    <div class="tool">
                                        <button class="btn btn-danger btn-sm" onclick="collapse()" id="collapse">Collapse</button>
                                    </div>
                                    <div class="tool">
                                        <button class="btn btn-light btn-sm" onclick="savePDF()"><i class="fa fa-save"></i> Save</button>
                                    </div>
                                </div>
                            <div> 
                             <div id="pdf-container">
                            {{--@if($multiple)
                                 <embed src="{{ url("storage/homeworks".$assignedHomework->id."/".$homeworkContent->first()->image_path) }}#toolbar=0" type="application/pdf" width="600" height="400" />--}}
                             {{--@else
                                <embed src="{{ url("storage/homeworks".$assignedHomework->id."/".$homeworkContent->image_path) }}#toolbar=0" type="application/pdf" width="600" height="400" />
                            
                            @endif--}}
                             </div>
                                {{-- alt : <a href="pdf_file_name.pdf">PDF TITLE</a> --}}
                                {{-- <img src="{{asset('wa/teacherdashboard/img/math-aa.png')}}" class="img-subject"> --}}
                            </div>
                          </div>
                        </div>
                      </div>
                      <div id="success_message_div" class="alert alert-success">
                        Points has been assigned successfully.
                      </div>
                    </div>
                    <div class="card-header yellow_background">
                      {{-- <div class="cta_block_box">
                        <button class="btn disapprove_cta">
                          Disapprove
                        </button>
                        <button class="btn approve_cta">Approve</button>
                      </div> --}}
                      <div class="rating_block">
                        <span>Rate the Answer</span>
                        <div class="Stars" style="--rating: 2.5" aria-label="Rating of this product is 2.3 out of 5."></div>
                      </div>
                      <div class="add_mark">
                        <button class="btn add_mark_cta">Add Remark</button>
                      </div>
                      <div class="point_block">
                        <span>Points</span>
                        <p class="pointer_no">
                        <span><input id="savePoint" type="number" step="1"/></span>
                        <span><input type="button" onclick="savePoint()" value="Update" /></span>
                        </p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </section>
        </div>
      </div>
    </div>
    <!-- Content Row -->
  </div>
  
  @endsection
  {{-- js for homework details --}}
  @section('scripts')

  <script>
   $( document ).ready(function() {
    $("#success_message_div").hide();
    });
    function savePoint() {
        console.log("here");
      $.ajax({
         "_token": "{{ csrf_token() }}",
         type:'POST',
         url: "{{ url('assign-points') }}",
         data: JSON.stringify({
           points: $('#savePoint').val(),
           id: {{ $student->id }}
         }),
         contentType: false,
         processData: false,
         success: (xhr, response) => {
           //  alert("Homework Assigned Successfully");
           $("#success_message_div").show();
           setTimeout(() => {
            $("#success_message_div").hide();
           }, 3000);
         },
         error: (xhr, status, error)=>{
            // console.log(xhr);
         }
     });
    }
  </script>
  <link
  rel="stylesheet"
  href="https://unpkg.com/swiper/swiper-bundle.min.css"
/>
  <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <!-- Initialize Swiper -->
    <script>
      var swiper = new Swiper(".mySwiper", {
        spaceBetween: 10,
        slidesPerView: 4,
        freeMode: true,
        watchSlidesVisibility: true,
        watchSlidesProgress: true,
     
      });
      var swiper2 = new Swiper(".mySwiper2", {
        spaceBetween: 10,
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
        thumbs: {
          swiper: swiper,
        },
        breakpoints: {
     
     320: { /* when window >= 767px - webflow tablet */
       slidesPerView: 1,
       spaceBetween: 30,
       slidesOffsetBefore: 0,
      
     },
     
   },
      });
      
    </script>
    {{-- end homework details --}}
    
       <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdf.js/2.6.347/pdf.min.js"></script>
<script>pdfjsLib.GlobalWorkerOptions.workerSrc = 'https://cdnjs.cloudflare.com/ajax/libs/pdf.js/2.6.347/pdf.worker.min.js';</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/fabric.js/4.3.0/fabric.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.2.0/jspdf.umd.min.js"></script>
<script src="https://cdn.rawgit.com/google/code-prettify/master/loader/run_prettify.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/prettify/r298/prettify.min.js"></script>
<script src="{{asset('wa/dashboard/js/arrow.fabric.js')}}"></script>
<script src="{{asset('wa/dashboard/js/pdfannotate.js')}}"></script>
<script src="{{asset('wa/dashboard/js/script.js')}}"></script>
    <script>
        var pdf = new PDFAnnotate("pdf-container", "{{ url('storage/homeworks'.$assignedHomework->id."/".$homeworkContent->image_path) }}", {
  onPageUpdated(page, oldData, newData) {
    console.log(page, oldData, newData);
  },
  ready() {
    console.log("Plugin initialized successfully");
  },
  scale: 1.5,
  pageImageCompression: "MEDIUM", // FAST, MEDIUM, SLOW(Helps to control the new PDF file size)
});
</script>
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-36251023-1']);
  _gaq.push(['_setDomainName', 'jqueryscript.net']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>

<script>
    $('#collapse').hide();
    function enlarge()
    {
        $('#given-homework').hide();
        $('#submitted-homework').toggleClass('col-lg-12');
        $('#enlarge').hide();
        $('#collapse').show();
    }
    function collapse()
    {
        $('#given-homework').show();
        $('#submitted-homework').toggleClass('col-lg-12');
        $('#enlarge').show();
        $('#collapse').hide();
    }
</script>
    @endsection
  