@extends('layouts.main')
@section('css')
<link rel="stylesheet" href="{{ asset('wa/studymaterial/css/studymaterial.css') }}">

<link rel="stylesheet" href="{{ asset('wa/welcome.css') }}">
@endsection
@section('content')
  <!-- first-block start -->
  <section class="first-block">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="background1">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <p class="page_title">Study Material</p>
                        </div>
                    </div>
                   
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-6">
                            <ul class="student _class_tab">
                                <button class="btn filter-button" data-filter="1">Key Stage 2</button>
                                <button class="btn filter-button" data-filter="2">Key Stage 3</button>
                                <button class="btn filter-button" data-filter="3">GCSE</button>
                                <button class="btn filter-button" data-filter="4">11+</button>
                            </ul>
                        </div>
                    </div>
                    <input type="hidden" id="selected_value_filter" value="1">
                    <div class="student-tab">
                        <ul class="nav nav-tabs" role="tablist">
                             <li class="nav-item">
                              <a class="filter-subject-button nav-link " data-filter="maths" href="#">Math</a>
                            </li>
                            <li class="nav-item">
                              <a class="filter-subject-button nav-link" data-filter="english" href="#">English</a>
                            </li>
                            <li class="nav-item">
                              <a class="filter-subject-button nav-link" data-filter="comprehension" href="#">Comprehension</a>
                            </li>
                            <li class="nav-item">
                                <a class="filter-subject-button nav-link" data-filter="creativewriting" href="#">Creative Writing</a>
                              </li> 
                              
                          </ul>
                    </div>
                   
                </div>
            </div>
            
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="background2 search_section">
                    <form class="search-here" action="">
                        <input type="text" autocomplete="off" id="search" name="search" placeholder="Search here" required="">
                        <div class="search-icon-box">
                        </div>
                    </form>
                </div>
            </div>           
        </div>
         <!-- for card class and subject wise -->
         <!-- <div class="container"> -->
            <table>
               <div  class="row mt-4">
                  @php $i=1 @endphp
                  @foreach($batches as $batch)
                   <div style="cursor:pointer;" onClick="(function(){
                      window.location.href = '/student-details/{{ $batch->id }}';
                      
                  })();return false;" class="col-md-3 filter_box filter {{ $batch->classmaster->id  }} filter-sub {{ $batch->classmaster->id  }}-sub-{{ strtolower(str_replace(' ', '', $batch->subject->name)) }}">
                          <div  class="single-district card{{$i}}">
                          <div class="card_img mb-3">
                              
                              @if($batch->subject->name == 'English')
                              
                                <img style="width:100%; border-radius:10px;" src="{{ asset('frontend/assets/English/English.jpg') }}" alt="">
                              
                              @elseif($batch->subject->name == 'Maths')
                              
                                  <img  style="width:100%; border-radius:10px;" src="{{ asset('frontend/assets/Maths/Math.jpg') }}" alt="">
                              
                              @elseif($batch->subject->name == 'Physics')
                              
                                  <img  style="width:100%; border-radius:10px;" src="{{ asset('frontend/assets/Physics/Physics.jpg') }}" alt="">
                              
                              @elseif($batch->subject->name == 'Chemistry')
                              
                                  <img style="width:100%;border-radius:10px;" src="{{ asset('frontend/assets/card-cover.png') }}" alt="">
                              
                              @elseif($batch->subject->name == 'Essay')
                              
                                  <img  style="width:100%;border-radius:10px;" src="{{ asset('frontend/assets/Essay/Essay.jpg') }}" alt="">
                              
                              @else
                              
                              <img style="width:100%;border-radius:10px;" src="{{ asset('frontend/assets/English/English.jpg')}}" alt="">
                              
                              @endif
                              {{-- <img src="{{ asset('wa/assets/img/card-cover.png') }}"> --}}
                          </div>
                          <div class="card_block_info pl-3 pr-3">
                              <div class="card_info">
                                  
                   <p> {{ \Illuminate\Support\Str::limit($batch->classSettings->name ,'18') }}</p>
                                  <!--<p>{{ $batch->classSettings->name }}</p>-->
                                  <p>{{ $batch->subject->name }}</p>
                              </div>
                              <div class="card_details">
                                  <div class="seat_block pr-3">
                                      <p>No Of Seats</p>
                                      <p>{{ $batch->no_of_seats }}</p>
                                  </div>
                                  {{-- <div class="border_div pl-3 "></div>
                                  <div class="date_block">
                                      <p>No Of Seats</p>
                                      <p>32</p>
                                  </div> --}}
                              </div>
                              <div class="class_section">
                                  <div class="class_type">class type</div>
                                  <div>
                                      <span class="online">
                                      {{ $batch->status == 1 ? 'Online' : 'Offline' }}
                                      </span>
                                      {{-- for color  --}}
                                      <span class="dot{{ $batch->status == 1 ? '' : '-prime' }}"></span></div>
                                  </div>
                              </div>
                          <div class="view_detail_block pb-3">
                              <a href="{{ url('/student-details', $batch->id)}}" class="view_detail">
                                  View details
                              </a>
                              {{-- @php $i = 1 @endphp --}}
                              <a href="{{ url('/student-details', $batch->id)}}" class="price_card price_bg{{ $i }}">
                                  &pound; {{ $batch->batch_price_per_session }}
                              </a>
                              {{-- @php i++ @endphp --}}
                          </div>
                      </div>
                      {{-- <a> --}}
   
                  </div>
                  @php $i++ @endphp
                  @endforeach
                  <td colspan="3"></td>                               
              </table>
              <!-- </div> -->
           <!--  -->
           
        
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-6">
                <div class="student_tabcontent">
                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div id="mathTab" class="container tab-pane active"><br>
                        <div class="accordion-container">
                        <div class="set">
                            <a href="javascript:void(0)" class="">
                            What are the benefits of taking a Digital Marketing Course?
                            <i class="fa fa-chevron-down"></i>
                            <img class="img_folder" src="{{asset('wa/studymaterial/assets/img/folder.svg')}}" width="25" height="25"> 
                            </a>
                            <div class="content" style="display: none;">
                            <div class="row">
                                <div class="col-lg-4 col-md-4 col-sm-6">
                                    <ul class="folder_list">
                                        <li>
                                            <div class="folder_cn">
                                            <p><img class="img_folder" src="{{asset('wa/studymaterial/assets/img/folder.svg')}}" width="25" height="25"></p>
                                            <p class="pera_cn">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus finibus nibh id nulla tristiqu</p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="folder_cn">
                                            <p><img class="img_folder" src="{{asset('wa/studymaterial/assets/img/folder.svg')}}" width="25" height="25"></p>
                                            <p class="pera_cn">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus finibus nibh id nulla tristiqu</p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="folder_cn">
                                            <p><img class="img_folder" src="{{asset('wa/studymaterial/assets/img/folder.svg')}}" width="25" height="25"></p>
                                            <p class="pera_cn">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus finibus nibh id nulla tristiqu</p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="folder_cn">
                                            <p><img class="img_folder" src="{{asset('wa/studymaterial/assets/img/folder.svg')}}" width="25" height="25"></p>
                                            <p class="pera_cn">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus finibus nibh id nulla tristiqu</p>
                                            </div>
                                        </li>
                                    
                                    </ul>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-6">
                                    <ul class="syllabus_list">
                                        <li>
                                            <div class="syllabus">
                                                <div class='border-left'></div>
                                                <div class="bar_div">
                                                    <label for="file">Syllabus Covered</label>
                                                    <progress id="file" value="32" max="100"> 32% </progress>
                                                    <span><strong>72</strong>/34</span>
                                                </div>
                                                <div class="border-right"></div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="syllabus">
                                                <div class='border-left'></div>
                                                <div class="bar_div">
                                                    <label for="file">Syllabus Covered</label>
                                                    <progress id="file" value="32" max="100"> 32% </progress>
                                                    <span><strong>72</strong>/34</span>
                                                </div>
                                                <div class="border-right"></div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="syllabus">
                                                <div class='border-left'></div>
                                                <div class="bar_div">
                                                    <label for="file">Syllabus Covered</label>
                                                    <progress id="file" value="32" max="100"> 32% </progress>
                                                    <span><strong>72</strong>/34</span>
                                                </div>
                                                <div class="border-right"></div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="syllabus">
                                                <div class='border-left'></div>
                                                <div class="bar_div">
                                                    <label for="file">Syllabus Covered</label>
                                                    <progress id="file" value="32" max="100"> 32% </progress>
                                                    <span><strong>72</strong>/34</span>
                                                </div>
                                                <div class="border-right"></div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-6">
                                    <ul class="syllabus_list">
                                        <li>
                                            <div class="list_div">
                                                <div class="question_div">
                                                    <p class="image_cn"><img src="{{asset('wa/studymaterial/assets/img/question.svg')}}" width="25" height="25"></p>
                                                    <p class="title_cn">Questions</p>
                                                </div>
                                                <div class="work_sheet">
                                                    <p class="image_cn"><img src="{{asset('wa/studymaterial/assets/img/book.svg')}}" width="25" height="25"></p>
                                                    <p class="wr_cn">Questions</p>
                                                </div>
                                                <div class="work_vedio">
                                                    <p class="image_cn"><img src="{{asset('wa/studymaterial/assets/img/vedio-icon.svg')}}" width="25" height="25"></p>
                                                    <p class="vd_cn">Questions</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="list_div">
                                                <div class="question_div">
                                                    <p class="image_cn"><img src="{{asset('wa/studymaterial/assets/img/question.svg')}}" width="25" height="25"></p>
                                                    <p class="title_cn">Questions</p>
                                                </div>
                                                <div class="work_sheet">
                                                    <p class="image_cn"><img src="{{asset('wa/studymaterial/assets/img/book.svg')}}" width="25" height="25"></p>
                                                    <p class="wr_cn">Questions</p>
                                                </div>
                                                <div class="work_vedio">
                                                    <p class="image_cn"><img src="{{asset('wa/studymaterial/assets/img/vedio-icon.svg')}}" width="25" height="25"></p>
                                                    <p class="vd_cn">Questions</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="list_div">
                                                <div class="question_div">
                                                    <p class="image_cn"><img src="{{asset('wa/studymaterial/assets/img/question.svg')}}" width="25" height="25"></p>
                                                    <p class="title_cn">Questions</p>
                                                </div>
                                                <div class="work_sheet">
                                                    <p class="image_cn"><img src="{{asset('wa/studymaterial/assets/img/book.svg')}}" width="25" height="25"></p>
                                                    <p class="wr_cn">Questions</p>
                                                </div>
                                                <div class="work_vedio">
                                                    <p class="image_cn"><img src="{{asset('wa/studymaterial/assets/img/vedio-icon.svg')}}" width="25" height="25"></p>
                                                    <p class="vd_cn">Questions</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="list_div">
                                                <div class="question_div">
                                                    <p class="image_cn"><img src="{{asset('wa/studymaterial/assets/img/question.svg')}}" width="25" height="25"></p>
                                                    <p class="title_cn">Questions</p>
                                                </div>
                                                <div class="work_sheet">
                                                    <p class="image_cn"><img src="{{asset('wa/studymaterial/assets/img/book.svg')}}" width="25" height="25"></p>
                                                    <p class="wr_cn">Questions</p>
                                                </div>
                                                <div class="work_vedio">
                                                    <p class="image_cn"><img src="{{asset('wa/studymaterial/assets/img/vedio-icon.svg')}}" width="25" height="25"></p>
                                                    <p class="vd_cn">Questions</p>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>

                                </div>
                            </div>
                            </div>
                        </div>
                        <div class="set">
                            <a href="javascript:void(0)" class="">
                                What are the benefits of taking a Digital Marketing Course?
                                <i class="fa fa-chevron-down"></i>
                                <img class="img_folder" src="{{asset('wa/studymaterial/assets/img/folder.svg')}}" width="25" height="25"> 
                                </a>
                                <div class="content" style="display: none;">
                                <div class="row">
                                    <div class="col-lg-4 col-md-4 col-sm-6">
                                        <ul class="folder_list">
                                            <li>
                                                <div class="folder_cn">
                                                <p><img class="img_folder" src="{{asset('wa/studymaterial/assets/img/folder.svg')}}" width="25" height="25"></p>
                                                <p class="pera_cn">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus finibus nibh id nulla tristiqu</p>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="folder_cn">
                                                <p><img class="img_folder" src="{{asset('wa/studymaterial/assets/img/folder.svg')}}" width="25" height="25"></p>
                                                <p class="pera_cn">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus finibus nibh id nulla tristiqu</p>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="folder_cn">
                                                <p><img class="img_folder" src="{{asset('wa/studymaterial/assets/img/folder.svg')}}" width="25" height="25"></p>
                                                <p class="pera_cn">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus finibus nibh id nulla tristiqu</p>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="folder_cn">
                                                <p><img class="img_folder" src="{{asset('wa/studymaterial/assets/img/folder.svg')}}" width="25" height="25"></p>
                                                <p class="pera_cn">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus finibus nibh id nulla tristiqu</p>
                                                </div>
                                            </li>
                                        
                                        </ul>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-6">
                                        <ul class="syllabus_list">
                                            <li>
                                                <div class="syllabus">
                                                    <div class='border-left'></div>
                                                    <div class="bar_div">
                                                        <label for="file">Syllabus Covered</label>
                                                        <progress id="file" value="32" max="100"> 32% </progress>
                                                        <span><strong>72</strong>/34</span>
                                                    </div>
                                                    <div class="border-right"></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="syllabus">
                                                    <div class='border-left'></div>
                                                    <div class="bar_div">
                                                        <label for="file">Syllabus Covered</label>
                                                        <progress id="file" value="32" max="100"> 32% </progress>
                                                        <span><strong>72</strong>/34</span>
                                                    </div>
                                                    <div class="border-right"></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="syllabus">
                                                    <div class='border-left'></div>
                                                    <div class="bar_div">
                                                        <label for="file">Syllabus Covered</label>
                                                        <progress id="file" value="32" max="100"> 32% </progress>
                                                        <span><strong>72</strong>/34</span>
                                                    </div>
                                                    <div class="border-right"></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="syllabus">
                                                    <div class='border-left'></div>
                                                    <div class="bar_div">
                                                        <label for="file">Syllabus Covered</label>
                                                        <progress id="file" value="32" max="100"> 32% </progress>
                                                        <span><strong>72</strong>/34</span>
                                                    </div>
                                                    <div class="border-right"></div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-6">
                                        <ul class="syllabus_list">
                                            <li>
                                                <div class="list_div">
                                                    <div class="question_div">
                                                        <p class="image_cn"><img src="{{asset('wa/studymaterial/assets/img/question.svg')}}" width="25" height="25"></p>
                                                        <p class="title_cn">Questions</p>
                                                    </div>
                                                    <div class="work_sheet">
                                                        <p class="image_cn"><img src="{{asset('wa/studymaterial/assets/img/book.svg')}}" width="25" height="25"></p>
                                                        <p class="wr_cn">Questions</p>
                                                    </div>
                                                    <div class="work_vedio">
                                                        <p class="image_cn"><img src="{{asset('wa/studymaterial/assets/img/vedio-icon.svg')}}" width="25" height="25"></p>
                                                        <p class="vd_cn">Questions</p>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="list_div">
                                                    <div class="question_div">
                                                        <p class="image_cn"><img src="{{asset('wa/studymaterial/assets/img/question.svg')}}" width="25" height="25"></p>
                                                        <p class="title_cn">Questions</p>
                                                    </div>
                                                    <div class="work_sheet">
                                                        <p class="image_cn"><img src="{{asset('wa/studymaterial/assets/img/book.svg')}}" width="25" height="25"></p>
                                                        <p class="wr_cn">Questions</p>
                                                    </div>
                                                    <div class="work_vedio">
                                                        <p class="image_cn"><img src="{{asset('wa/studymaterial/assets/img/vedio-icon.svg')}}" width="25" height="25"></p>
                                                        <p class="vd_cn">Questions</p>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="list_div">
                                                    <div class="question_div">
                                                        <p class="image_cn"><img src="{{asset('wa/studymaterial/assets/img/question.svg')}}" width="25" height="25"></p>
                                                        <p class="title_cn">Questions</p>
                                                    </div>
                                                    <div class="work_sheet">
                                                        <p class="image_cn"><img src="{{asset('wa/studymaterial/assets/img/book.svg')}}" width="25" height="25"></p>
                                                        <p class="wr_cn">Questions</p>
                                                    </div>
                                                    <div class="work_vedio">
                                                        <p class="image_cn"><img src="{{asset('wa/studymaterial/assets/img/vedio-icon.svg')}}" width="25" height="25"></p>
                                                        <p class="vd_cn">Questions</p>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="list_div">
                                                    <div class="question_div">
                                                        <p class="image_cn"><img src="{{asset('wa/studymaterial/assets/img/question.svg')}}" width="25" height="25"></p>
                                                        <p class="title_cn">Questions</p>
                                                    </div>
                                                    <div class="work_sheet">
                                                        <p class="image_cn"><img src="{{asset('wa/studymaterial/assets/img/book.svg')}}" width="25" height="25"></p>
                                                        <p class="wr_cn">Questions</p>
                                                    </div>
                                                    <div class="work_vedio">
                                                        <p class="image_cn"><img src="{{asset('wa/studymaterial/assets/img/vedio-icon.svg')}}" width="25" height="25"></p>
                                                        <p class="vd_cn">Questions</p>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>

                                    </div>
                                </div>
                                </div>
                        </div>
                        <div class="set">
                            <a href="javascript:void(0)" class="">
                                What are the benefits of taking a Digital Marketing Course?
                                <i class="fa fa-chevron-down"></i>
                                <img class="img_folder" src="{{asset('wa/studymaterial/assets/img/folder.svg')}}" width="25" height="25"> 
                                </a>
                                <div class="content" style="display: none;">
                                <div class="row">
                                    <div class="col-lg-4 col-md-4 col-sm-6">
                                        <ul class="folder_list">
                                            <li>
                                                <div class="folder_cn">
                                                <p><img class="img_folder" src="{{asset('wa/studymaterial/assets/img/folder.svg')}}" width="25" height="25"></p>
                                                <p class="pera_cn">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus finibus nibh id nulla tristiqu</p>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="folder_cn">
                                                <p><img class="img_folder" src="{{asset('wa/studymaterial/assets/img/folder.svg')}}" width="25" height="25"></p>
                                                <p class="pera_cn">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus finibus nibh id nulla tristiqu</p>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="folder_cn">
                                                <p><img class="img_folder" src="{{asset('wa/studymaterial/assets/img/folder.svg')}}" width="25" height="25"></p>
                                                <p class="pera_cn">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus finibus nibh id nulla tristiqu</p>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="folder_cn">
                                                <p><img class="img_folder" src="{{asset('wa/studymaterial/assets/img/folder.svg')}}" width="25" height="25"></p>
                                                <p class="pera_cn">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus finibus nibh id nulla tristiqu</p>
                                                </div>
                                            </li>
                                        
                                        </ul>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-6">
                                        <ul class="syllabus_list">
                                            <li>
                                                <div class="syllabus">
                                                    <div class='border-left'></div>
                                                    <div class="bar_div">
                                                        <label for="file">Syllabus Covered</label>
                                                        <progress id="file" value="32" max="100"> 32% </progress>
                                                        <span><strong>72</strong>/34</span>
                                                    </div>
                                                    <div class="border-right"></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="syllabus">
                                                    <div class='border-left'></div>
                                                    <div class="bar_div">
                                                        <label for="file">Syllabus Covered</label>
                                                        <progress id="file" value="32" max="100"> 32% </progress>
                                                        <span><strong>72</strong>/34</span>
                                                    </div>
                                                    <div class="border-right"></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="syllabus">
                                                    <div class='border-left'></div>
                                                    <div class="bar_div">
                                                        <label for="file">Syllabus Covered</label>
                                                        <progress id="file" value="32" max="100"> 32% </progress>
                                                        <span><strong>72</strong>/34</span>
                                                    </div>
                                                    <div class="border-right"></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="syllabus">
                                                    <div class='border-left'></div>
                                                    <div class="bar_div">
                                                        <label for="file">Syllabus Covered</label>
                                                        <progress id="file" value="32" max="100"> 32% </progress>
                                                        <span><strong>72</strong>/34</span>
                                                    </div>
                                                    <div class="border-right"></div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-6">
                                        <ul class="syllabus_list">
                                            <li>
                                                <div class="list_div">
                                                    <div class="question_div">
                                                        <p class="image_cn"><img src="{{asset('wa/studymaterial/assets/img/question.svg')}}" width="25" height="25"></p>
                                                        <p class="title_cn">Questions</p>
                                                    </div>
                                                    <div class="work_sheet">
                                                        <p class="image_cn"><img src="{{asset('wa/studymaterial/assets/img/book.svg')}}" width="25" height="25"></p>
                                                        <p class="wr_cn">Questions</p>
                                                    </div>
                                                    <div class="work_vedio">
                                                        <p class="image_cn"><img src="{{asset('wa/studymaterial/assets/img/vedio-icon.svg')}}" width="25" height="25"></p>
                                                        <p class="vd_cn">Questions</p>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="list_div">
                                                    <div class="question_div">
                                                        <p class="image_cn"><img src="{{asset('wa/studymaterial/assets/img/question.svg')}}" width="25" height="25"></p>
                                                        <p class="title_cn">Questions</p>
                                                    </div>
                                                    <div class="work_sheet">
                                                        <p class="image_cn"><img src="{{asset('wa/studymaterial/assets/img/book.svg')}}" width="25" height="25"></p>
                                                        <p class="wr_cn">Questions</p>
                                                    </div>
                                                    <div class="work_vedio">
                                                        <p class="image_cn"><img src="{{asset('wa/studymaterial/assets/img/vedio-icon.svg')}}" width="25" height="25"></p>
                                                        <p class="vd_cn">Questions</p>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="list_div">
                                                    <div class="question_div">
                                                        <p class="image_cn"><img src="{{asset('wa/studymaterial/assets/img/question.svg')}}" width="25" height="25"></p>
                                                        <p class="title_cn">Questions</p>
                                                    </div>
                                                    <div class="work_sheet">
                                                        <p class="image_cn"><img src="{{asset('wa/studymaterial/assets/img/book.svg')}}" width="25" height="25"></p>
                                                        <p class="wr_cn">Questions</p>
                                                    </div>
                                                    <div class="work_vedio">
                                                        <p class="image_cn"><img src="{{asset('wa/studymaterial/assets/img/vedio-icon.svg')}}" width="25" height="25"></p>
                                                        <p class="vd_cn">Questions</p>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="list_div">
                                                    <div class="question_div">
                                                        <p class="image_cn"><img src="{{asset('wa/studymaterial/assets/img/question.svg')}}" width="25" height="25"></p>
                                                        <p class="title_cn">Questions</p>
                                                    </div>
                                                    <div class="work_sheet">
                                                        <p class="image_cn"><img src="{{asset('wa/studymaterial/assets/img/book.svg')}}" width="25" height="25"></p>
                                                        <p class="wr_cn">Questions</p>
                                                    </div>
                                                    <div class="work_vedio">
                                                        <p class="image_cn"><img src="{{asset('wa/studymaterial/assets/img/vedio-icon.svg')}}" width="25" height="25"></p>
                                                        <p class="vd_cn">Questions</p>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>

                                    </div>
                                </div>
                                </div>
                        </div>
                        </div>
                        </div>
                        <div id="englishaTab" class="container tab-pane fade"><br>
                        <h3>Menu 1</h3>
                        <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                        </div>
                        <div id="comprehensionTab" class="container tab-pane fade"><br>
                        <h3>Menu 2</h3>
                        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
                        </div>
                        <div id="creativewritingTab" class="container tab-pane fade"><br>
                            <h3>Menu 2</h3>
                            <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection
@section('js')
<!-- <script src="{{ asset('wa/coustom.js') }}"></script> -->
<script>
    document.FIX_HEADER_TOP = 150;
    $(".set > a").on("click", function() {
        if ($(this).hasClass("active")) {
          $(this).removeClass("active");
          $(this)
            .siblings(".set .content")
            .slideUp(200);
          $(".set > a i")
            .removeClass("fa-minus")
            .addClass("fa-plus");
        } else {
          $(".set > a i")
            .removeClass("fa-minus")
            .addClass("fa-plus");
          $(this)
            .find("i")
            .removeClass("fa-plus")
            .addClass("fa-minus");
          $(".set > a").removeClass("active");
          $(this).addClass("active");
          $(".set .content").slideUp(200);
          $(this)
            .siblings(".set .content")
            .slideDown(200);
        }
      });


$(document).ready(function () {
    $(".filter-button").click(function () {
        var value = $(this).attr("data-filter");

        $("#selected_value_filter").val(value);

        if (value == "all") {
            //$('.filter').removeClass('hidden');
            $(".filter").show("1000");
        } else {
            //            $('.filter[filter-item="'+value+'"]').removeClass('hidden');
            //            $(".filter").not('.filter[filter-item="'+value+'"]').addClass('hidden');
            $(".filter")
                .not("." + value)
                .hide("3000");
            $(".filter")
                .filter("." + value)
                .show("3000");
        }
        $(".filter-button").removeClass("filter_tab_active");
        $(this).addClass("filter_tab_active");
    });
    $(".filter-subject-button").click(function () {
        var value = $(this).attr("data-filter");

        var rootval = $("#selected_value_filter").val();

        if (value == "all") {
            //$('.filter').removeClass('hidden');
            $(".filter").show("1000");
        } else {
            //            $('.filter[filter-item="'+value+'"]').removeClass('hidden');
            //            $(".filter").not('.filter[filter-item="'+value+'"]').addClass('hidden');
           $(".filter-sub")
                .not("."+rootval+"-sub-" + value)
                .hide("3000");
            $(".filter-sub")
                .filter("."+rootval+"-sub-" + value)
                .show("3000"); 
        }
        $(".filter-button").removeClass("filter_tab_active");
        $(this).addClass("filter_tab_active");
    });
});
</script>

<script src="{{ asset('wa/coustom.js') }}"></script>
@endsection