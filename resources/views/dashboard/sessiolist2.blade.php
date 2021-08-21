@extends('layouts.student')
@section('content')
                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800 session_heading">My Session</h1>
                        
                    </div>
                    <!-- image block -->
                    
                   <div class="row">
                        <!-- Content Column -->
                        <div class=" col-xl-4 col-lg-4 mb-4 ">
                            <div class="mt-3 mb-3 tab-card">
                                <div class="tab-card-header">
                                  <ul class="nav nav-tabs" id="myTab" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link tab_cta active" id="one-tab" data-toggle="tab" href="#one" role="tab" aria-controls="One" aria-selected="true">All sessions</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link tab_cta" id="two-tab" data-toggle="tab" href="#two" role="tab" aria-controls="Two" aria-selected="false">Today’s</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link tab_cta" id="three-tab" data-toggle="tab" href="#three" role="tab" aria-controls="Three" aria-selected="false">Upcoming</a>
                                    </li>
                                  </ul>
                                </div>
                              </div>
                            <!-- Project Card Example -->
                            <div class="card shadow mb-4">
                                <div class="card-body p-0">
                                    <div class="tab-content" id="myTabContent">
                                        <div class="tab-pane fade show active p-3" id="one" role="tabpanel" aria-labelledby="one-tab">
                                          <div id="accordion">
                                            <div class="card mb-3">
                                              <div class="card-header" id="headingOne">
                                                <h5 class="mb-0">
                                                    <div class="d-flex justify-content-around">
                                                        <div class="card_img"><img src="{{ asset('wa/dashboard/sessionlist/img/image 31.png') }}"></div>
                                                    <div>
                                                        <p class="subject_card">Subject</p>
                                                        <p class="card_subject_title1">Maths</p>
                                                    </div>
                                                    <div class="border-left first_left_border"></div>
                                                    <div>
                                                        <p class="subject_card">Subject</p>
                                                        <p class="card_subject_title2">Maths</p>
                                                    </div>
                                                    <div class="border-left second_left_border"></div>
                                                    <div>
                                                        <p class="subject_card">Subject</p>
                                                        <p class="card_subject_title3">Maths</p>
                                                    </div>
                                                    <button class="btn btn-link card_cta" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                       <img src="{{ asset('wa/dashboard/sessionlist/img/chevron.svg') }}" alt="arrow" title="arrow">
                                                     </button>
                                                </div>
                                                <p class="date_text">Feb 04, 2021- Feb 21,20201</p>
                                                </h5>
                                              </div>
                                              <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
                                                <div class="card-body">
                                                  Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                                </div>
                                              </div>
                                            </div>
                                            <div class="card mb-3">
                                              <div class="card-header" id="headingTwo">
                                                <h5 class="mb-0">
                                                    <div class="d-flex justify-content-around">
                                                        <div class="card_img"><img src="{{ asset('wa/dashboard/sessionlist/img/image 31.png') }}"></div>
                                                    <div>
                                                        <p class="subject_card">Subject</p>
                                                        <p class="card_subject_title1">Maths</p>
                                                    </div>
                                                    <div class="border-left first_left_border"></div>
                                                    <div>
                                                        <p class="subject_card">Subject</p>
                                                        <p class="card_subject_title2">Maths</p>
                                                    </div>
                                                    <div class="border-left second_left_border"></div>
                                                    <div>
                                                        <p class="subject_card">Subject</p>
                                                        <p class="card_subject_title3">Maths</p>
                                                    </div>
                                                    <button class="btn btn-link card_cta" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseOne">
                                                         <img src="{{ asset('wa/dashboard/sessionlist/img/chevron.svg') }}" alt="arrow" title="arrow">
                                                     </button>
                                                </div>
                                                <p class="date_text">Feb 04, 2021- Feb 21,20201</p>
                                                </h5>
                                              </div>
                                              <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                                <div class="card-body">
                                                  Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                                </div>
                                              </div>
                                            </div>
                                            <div class="card mb-3">
                                              <div class="card-header" id="headingThree">
                                                <h5 class="mb-0">
                                                    <div class="d-flex justify-content-around">
                                                        <div class="card_img"><img src="{{ asset('wa/dashboard/sessionlist/img/image 31.png') }}"></div>
                                                    <div>
                                                        <p class="subject_card">Subject</p>
                                                        <p class="card_subject_title1">Maths</p>
                                                    </div>
                                                    <div class="border-left first_left_border"></div>
                                                    <div>
                                                        <p class="subject_card">Subject</p>
                                                        <p class="card_subject_title2">Maths</p>
                                                    </div>
                                                    <div class="border-left second_left_border"></div>
                                                    <div>
                                                        <p class="subject_card">Subject</p>
                                                        <p class="card_subject_title3">Maths</p>
                                                    </div>
                                                    <button class="btn btn-link card_cta" data-toggle="collapse" data-target="#collapseThree" aria-expanded="true" aria-controls="collapseOne">
                                                         <img src="{{ asset('wa/dashboard/sessionlist/img/chevron.svg') }}" alt="arrow" title="arrow">
                                                     </button>
                                                </div>
                                                <p class="date_text">Feb 04, 2021- Feb 21,20201</p>
                                                </h5>
                                              </div>
                                              <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                                <div class="card-body">
                                                  Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                                </div>
                                              </div>
                                            </div>
                                            <div class="card mb-3">
                                                <div class="card-header" id="headingFour">
                                                  <h5 class="mb-0">
                                                      <div class="d-flex justify-content-around">
                                                          <div class="card_img"><img src="{{ asset('wa/dashboard/sessionlist/img/image 31.png') }}"></div>
                                                      <div>
                                                          <p class="subject_card">Subject</p>
                                                          <p class="card_subject_title1">Maths</p>
                                                      </div>
                                                      <div class="border-left first_left_border"></div>
                                                      <div>
                                                          <p class="subject_card">Subject</p>
                                                          <p class="card_subject_title2">Maths</p>
                                                      </div>
                                                      <div class="border-left second_left_border"></div>
                                                      <div>
                                                          <p class="subject_card">Subject</p>
                                                          <p class="card_subject_title3">Maths</p>
                                                      </div>
                                                      <button class="btn btn-link card_cta" data-toggle="collapse" data-target="#collapseThree" aria-expanded="true" aria-controls="collapseOne">
                                                           <img src="{{ asset('wa/dashboard/sessionlist/img/chevron.svg') }}" alt="arrow" title="arrow">
                                                       </button>
                                                  </div>
                                                  <p class="date_text">Feb 04, 2021- Feb 21,20201</p>
                                                  </h5>
                                                </div>
                                                <div id="collapseThree" class="collapse" aria-labelledby="headingFour" data-parent="#accordion">
                                                  <div class="card-body">
                                                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                                  </div>
                                                </div>
                                              </div>
                                              <div class="card mb-3">
                                                <div class="card-header" id="headingFive">
                                                  <h5 class="mb-0">
                                                      <div class="d-flex justify-content-around">
                                                          <div class="card_img"><img src="{{ asset('wa/dashboard/sessionlist/img/image 31.png') }}"></div>
                                                      <div>
                                                          <p class="subject_card">Subject</p>
                                                          <p class="card_subject_title1">Maths</p>
                                                      </div>
                                                      <div class="border-left first_left_border"></div>
                                                      <div>
                                                          <p class="subject_card">Subject</p>
                                                          <p class="card_subject_title2">Maths</p>
                                                      </div>
                                                      <div class="border-left second_left_border"></div>
                                                      <div>
                                                          <p class="subject_card">Subject</p>
                                                          <p class="card_subject_title3">Maths</p>
                                                      </div>
                                                      <button class="btn btn-link card_cta" data-toggle="collapse" data-target="#collapseFive" aria-expanded="true" aria-controls="collapseOne">
                                                           <img src="{{ asset('wa/dashboard/sessionlist/img/chevron.svg') }}" alt="arrow" title="arrow">
                                                       </button>
                                                  </div>
                                                  <p class="date_text">Feb 04, 2021- Feb 21,20201</p>
                                                  </h5>
                                                </div>
                                                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                                  <div class="card-body">
                                                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                                  </div>
                                                </div>
                                              </div>
                                              <div class="card mb-3">
                                                <div class="card-header" id="headingSix">
                                                  <h5 class="mb-0">
                                                      <div class="d-flex justify-content-around">
                                                          <div class="card_img"><img src="{{asset('wa/dashboard/sessionlist/img/image 31.png') }}"></div>
                                                      <div>
                                                          <p class="subject_card">Subject</p>
                                                          <p class="card_subject_title1">Maths</p>
                                                      </div>
                                                      <div class="border-left first_left_border"></div>
                                                      <div>
                                                          <p class="subject_card">Subject</p>
                                                          <p class="card_subject_title2">Maths</p>
                                                      </div>
                                                      <div class="border-left second_left_border"></div>
                                                      <div>
                                                          <p class="subject_card">Subject</p>
                                                          <p class="card_subject_title3">Maths</p>
                                                      </div>

                                                        <button class="btn btn-link card_cta" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                        <img src="{{ asset('wa/dashboard/sessionlist/img/chevron.svg') }}" alt="arrow" title="arrow">
                                                      </button>
                                                  </div>
                                                  <p class="date_text">Feb 04, 2021- Feb 21,20201</p>
                                                  </h5>
                                                </div>
                                                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                                  <div class="card-body">
                                                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                                  </div>
                                                </div>
                                              </div>
                                          </div>            
                                        </div>
                                        <div class="tab-pane fade p-3" id="two" role="tabpanel" aria-labelledby="two-tab">
                                            <div id="accordion">
                                                <div class="card mb-3">
                                                  <div class="card-header" id="headingOne">
                                                    <h5 class="mb-0">
                                                        <div class="d-flex justify-content-around">
                                                            <div class="card_img"><img src="{{ asset('wa/dashboard/sessionlist/img/image 31.png') }}"></div>
                                                        <div>
                                                            <p class="subject_card">Subject</p>
                                                            <p class="card_subject_title1">Maths</p>
                                                        </div>
                                                        <div class="border-left first_left_border"></div>
                                                        <div>
                                                            <p class="subject_card">Subject</p>
                                                            <p class="card_subject_title2">Maths</p>
                                                        </div>
                                                        <div class="border-left second_left_border"></div>
                                                        <div>
                                                            <p class="subject_card">Subject</p>
                                                            <p class="card_subject_title3">Maths</p>
                                                        </div>
                                                        <button class="btn btn-link card_cta" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                             <img src="{{ asset('wa/dashboard/sessionlist/img/chevron.svg') }}" alt="arrow" title="arrow">
                                                         </button>
                                                    </div>
                                                    <p class="date_text">Feb 04, 2021- Feb 21,20201</p>
                                                    </h5>
                                                  </div>
                                              
                                                  <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
                                                    <div class="card-body">
                                                      Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                                    </div>
                                                  </div>
                                                </div>
                                                <div class="card mb-3">
                                                  <div class="card-header" id="headingTwo">
                                                    <h5 class="mb-0">
                                                        <div class="d-flex justify-content-around">
                                                            <div class="card_img"><img src="{{ asset('wa/dashboard/sessionlist/img/image 31.png') }}"></div>
                                                        <div>
                                                            <p class="subject_card">Subject</p>
                                                            <p class="card_subject_title1">Maths</p>
                                                        </div>
                                                        <div class="border-left first_left_border"></div>
                                                        <div>
                                                            <p class="subject_card">Subject</p>
                                                            <p class="card_subject_title2">Maths</p>
                                                        </div>
                                                        <div class="border-left second_left_border"></div>
                                                        <div>
                                                            <p class="subject_card">Subject</p>
                                                            <p class="card_subject_title3">Maths</p>
                                                        </div>
                                                        <button class="btn btn-link card_cta" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseOne">
                                                             <img src="{{ asset('wa/dashboard/sessionlist/img/chevron.svg') }}" alt="arrow" title="arrow">
                                                         </button>
                                                    </div>
                                                    <p class="date_text">Feb 04, 2021- Feb 21,20201</p>
                                                    </h5>
                                                  </div>
                                                  <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                                    <div class="card-body">
                                                      Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                                    </div>
                                                  </div>
                                                </div>
                                                <div class="card mb-3">
                                                  <div class="card-header" id="headingThree">
                                                    <h5 class="mb-0">
                                                        <div class="d-flex justify-content-around">
                                                            <div class="card_img"><img src="{{ asset('wa/dashboard/sessionlist/img/image 31.png') }}"></div>
                                                        <div>
                                                            <p class="subject_card">Subject</p>
                                                            <p class="card_subject_title1">Maths</p>
                                                        </div>
                                                        <div class="border-left first_left_border"></div>
                                                        <div>
                                                            <p class="subject_card">Subject</p>
                                                            <p class="card_subject_title2">Maths</p>
                                                        </div>
                                                        <div class="border-left second_left_border"></div>
                                                        <div>
                                                            <p class="subject_card">Subject</p>
                                                            <p class="card_subject_title3">Maths</p>
                                                        </div>
                                                      <button class="btn btn-link card_cta" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                        <img src="{{ asset('wa/dashboard/sessionlist/img/chevron.svg') }}" alt="arrow" title="arrow">
                                                      </button>
                                                    </div>
                                                    <p class="date_text">Feb 04, 2021- Feb 21,20201</p>
                                                    </h5>
                                                  </div>
                                                  <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                                    <div class="card-body">
                                                      Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                                    </div>
                                                  </div>
                                                </div>
                                                <div class="card mb-3">
                                                    <div class="card-header" id="headingFour">
                                                      <h5 class="mb-0">
                                                          <div class="d-flex justify-content-around">
                                                              <div class="card_img"><img src="{{ asset('wa/dashboard/sessionlist/img/image 31.png') }}"></div>
                                                          <div>
                                                              <p class="subject_card">Subject</p>
                                                              <p class="card_subject_title1">Maths</p>
                                                          </div>
                                                          <div class="border-left first_left_border"></div>
                                                          <div>
                                                              <p class="subject_card">Subject</p>
                                                              <p class="card_subject_title2">Maths</p>
                                                          </div>
                                                          <div class="border-left second_left_border"></div>
                                                          <div>
                                                              <p class="subject_card">Subject</p>
                                                              <p class="card_subject_title3">Maths</p>
                                                          </div>
                                                          <button class="btn btn-link card_cta" data-toggle="collapse" data-target="#collapseThree" aria-expanded="true" aria-controls="collapseOne">
                                                               <img src="{{ asset('wa/dashboard/sessionlist/img/chevron.svg') }}" alt="arrow" title="arrow">
                                                           </button>
                                                      </div>
                                                      <p class="date_text">Feb 04, 2021- Feb 21,20201</p>
                                                      </h5>
                                                    </div>
                                                    <div id="collapseThree" class="collapse" aria-labelledby="headingFour" data-parent="#accordion">
                                                      <div class="card-body">
                                                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                                      </div>
                                                    </div>
                                                  </div>
                                                  <div class="card mb-3">
                                                    <div class="card-header" id="headingFive">
                                                      <h5 class="mb-0">
                                                          <div class="d-flex justify-content-around">
                                                              <div class="card_img"><img src="{{ asset('wa/dashboard/sessionlist/img/image 31.png') }}"></div>
                                                          <div>
                                                              <p class="subject_card">Subject</p>
                                                              <p class="card_subject_title1">Maths</p>
                                                          </div>
                                                          <div class="border-left first_left_border"></div>
                                                          <div>
                                                              <p class="subject_card">Subject</p>
                                                              <p class="card_subject_title2">Maths</p>
                                                          </div>
                                                          <div class="border-left second_left_border"></div>
                                                          <div>
                                                              <p class="subject_card">Subject</p>
                                                              <p class="card_subject_title3">Maths</p>
                                                          </div>
                                                          <button class="btn btn-link card_cta" data-toggle="collapse" data-target="#collapseFive" aria-expanded="true" aria-controls="collapseOne">
                                                               <img src="{{ asset('wa/dashboard/sessionlist/img/chevron.svg') }}" alt="arrow" title="arrow">
                                                           </button>
                                                      </div>
                                                      <p class="date_text">Feb 04, 2021- Feb 21,20201</p>
                                                      </h5>
                                                    </div>
                                                    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                                      <div class="card-body">
                                                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                                      </div>
                                                    </div>
                                                  </div>
                                                  <div class="card mb-3">
                                                    <div class="card-header" id="headingSix">
                                                      <h5 class="mb-0">
                                                          <div class="d-flex justify-content-around">
                                                              <div class="card_img"><img src="{{ asset('wa/dashboard/sessionlist/img/image 31.png') }}"></div>
                                                          <div>
                                                              <p class="subject_card">Subject</p>
                                                              <p class="card_subject_title1">Maths</p>
                                                          </div>
                                                          <div class="border-left first_left_border"></div>
                                                          <div>
                                                              <p class="subject_card">Subject</p>
                                                              <p class="card_subject_title2">Maths</p>
                                                          </div>
                                                          <div class="border-left second_left_border"></div>
                                                          <div>
                                                              <p class="subject_card">Subject</p>
                                                              <p class="card_subject_title3">Maths</p>
                                                          </div>
                                                          <button class="btn btn-link card_cta" data-toggle="collapse" data-target="#collapseSix" aria-expanded="true" aria-controls="collapseOne">
                                                               <img src="{{ asset('wa/dashboard/sessionlist/img/chevron.svg') }}" alt="arrow" title="arrow">
                                                           </button>
                                                      </div>
                                                      <p class="date_text">Feb 04, 2021- Feb 21,20201</p>
                                                      </h5>
                                                    </div>
                                                    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                                      <div class="card-body">
                                                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                                      </div>
                                                    </div>
                                                  </div>
                                              </div>  
                                        </div>
                                        <div class="tab-pane fade p-3" id="three" role="tabpanel" aria-labelledby="three-tab">
                                            <div id="accordion">
                                                <div class="card mb-3">
                                                  <div class="card-header" id="headingOne">
                                                    <h5 class="mb-0">
                                                        <div class="d-flex justify-content-around">
                                                            <div class="card_img"><img src="{{ asset('wa/dashboard/sessionlist/img/image 31.png') }}"></div>
                                                        <div>
                                                            <p class="subject_card">Subject</p>
                                                            <p class="card_subject_title1">Maths</p>
                                                        </div>
                                                        <div class="border-left first_left_border"></div>
                                                        <div>
                                                            <p class="subject_card">Subject</p>
                                                            <p class="card_subject_title2">Maths</p>
                                                        </div>
                                                        <div class="border-left second_left_border"></div>
                                                        <div>
                                                            <p class="subject_card">Subject</p>
                                                            <p class="card_subject_title3">Maths</p>
                                                        </div>
                                                        <button class="btn btn-link card_cta" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                             <img src="{{ asset('wa/dashboard/sessionlist/img/chevron.svg') }}" alt="arrow" title="arrow">
                                                         </button>
                                                    </div>
                                                    <p class="date_text">Feb 04, 2021- Feb 21,20201</p>
                                                    </h5>
                                                  </div>
                                              
                                                  <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
                                                    <div class="card-body">
                                                      Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                                    </div>
                                                  </div>
                                                </div>
                                                <div class="card mb-3">
                                                  <div class="card-header" id="headingTwo">
                                                    <h5 class="mb-0">
                                                        <div class="d-flex justify-content-around">
                                                            <div class="card_img"><img src="{{ asset('wa/dashboard/sessionlist/img/image 31.png') }}"></div>
                                                        <div>
                                                            <p class="subject_card">Subject</p>
                                                            <p class="card_subject_title1">Maths</p>
                                                        </div>
                                                        <div class="border-left first_left_border"></div>
                                                        <div>
                                                            <p class="subject_card">Subject</p>
                                                            <p class="card_subject_title2">Maths</p>
                                                        </div>
                                                        <div class="border-left second_left_border"></div>
                                                        <div>
                                                            <p class="subject_card">Subject</p>
                                                            <p class="card_subject_title3">Maths</p>
                                                        </div>
                                                        <button class="btn btn-link card_cta" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseOne">
                                                             <img src="{{ asset('wa/dashboard/sessionlist/img/chevron.svg') }}" alt="arrow" title="arrow">
                                                         </button>
                                                    </div>
                                                    <p class="date_text">Feb 04, 2021- Feb 21,20201</p>
                                                    </h5>
                                                  </div>
                                                  <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                                    <div class="card-body">
                                                      Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                                    </div>
                                                  </div>
                                                </div>
                                                <div class="card mb-3">
                                                  <div class="card-header" id="headingThree">
                                                    <h5 class="mb-0">
                                                        <div class="d-flex justify-content-around">
                                                            <div class="card_img"><img src="{{ asset('wa/dashboard/sessionlist/img/image 31.png') }}"></div>
                                                        <div>
                                                            <p class="subject_card">Subject</p>
                                                            <p class="card_subject_title1">Maths</p>
                                                        </div>
                                                        <div class="border-left first_left_border"></div>
                                                        <div>
                                                            <p class="subject_card">Subject</p>
                                                            <p class="card_subject_title2">Maths</p>
                                                        </div>
                                                        <div class="border-left second_left_border"></div>
                                                        <div>
                                                            <p class="subject_card">Subject</p>
                                                            <p class="card_subject_title3">Maths</p>
                                                        </div>
                                                        <button class="btn btn-link card_cta" data-toggle="collapse" data-target="#collapseThree" aria-expanded="true" aria-controls="collapseOne">
                                                             <img src="{{ asset('wa/dashboard/sessionlist/img/chevron.svg') }}" alt="arrow" title="arrow">
                                                         </button>
                                                    </div>
                                                    <p class="date_text">Feb 04, 2021- Feb 21,20201</p>
                                                    </h5>
                                                  </div>
                                                  <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                                    <div class="card-body">
                                                      Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                                    </div>
                                                  </div>
                                                </div>
                                                <div class="card mb-3">
                                                    <div class="card-header" id="headingFour">
                                                      <h5 class="mb-0">
                                                          <div class="d-flex justify-content-around">
                                                              <div class="card_img"><img src="{{ asset('wa/dashboard/sessionlist/img/image 31.png') }}"></div>
                                                          <div>
                                                              <p class="subject_card">Subject</p>
                                                              <p class="card_subject_title1">Maths</p>
                                                          </div>
                                                          <div class="border-left first_left_border"></div>
                                                          <div>
                                                              <p class="subject_card">Subject</p>
                                                              <p class="card_subject_title2">Maths</p>
                                                          </div>
                                                          <div class="border-left second_left_border"></div>
                                                          <div>
                                                              <p class="subject_card">Subject</p>
                                                              <p class="card_subject_title3">Maths</p>
                                                          </div>
                                                          <button class="btn btn-link card_cta" data-toggle="collapse" data-target="#collapseThree" aria-expanded="true" aria-controls="collapseOne">
                                                               <img src="{{ asset('wa/dashboard/sessionlist/img/chevron.svg') }}" alt="arrow" title="arrow">
                                                           </button>
                                                      </div>
                                                      <p class="date_text">Feb 04, 2021- Feb 21,20201</p>
                                                      </h5>
                                                    </div>
                                                    <div id="collapseThree" class="collapse" aria-labelledby="headingFour" data-parent="#accordion">
                                                      <div class="card-body">
                                                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                                      </div>
                                                    </div>
                                                  </div>
                                                  <div class="card mb-3">
                                                    <div class="card-header" id="headingFive">
                                                      <h5 class="mb-0">
                                                          <div class="d-flex justify-content-around">
                                                              <div class="card_img"><img src="{{ asset('wa/dashboard/sessionlist/img/image 31.png') }}"></div>
                                                          <div>
                                                              <p class="subject_card">Subject</p>
                                                              <p class="card_subject_title1">Maths</p>
                                                          </div>
                                                          <div class="border-left first_left_border"></div>
                                                          <div>
                                                              <p class="subject_card">Subject</p>
                                                              <p class="card_subject_title2">Maths</p>
                                                          </div>
                                                          <div class="border-left second_left_border"></div>
                                                          <div>
                                                              <p class="subject_card">Subject</p>
                                                              <p class="card_subject_title3">Maths</p>
                                                          </div>
                                                          <button class="btn btn-link card_cta" data-toggle="collapse" data-target="#collapseFive" aria-expanded="true" aria-controls="collapseOne">
                                                               <img src="{{ asset('wa/dashboard/sessionlist/img/chevron.svg') }}" alt="arrow" title="arrow">
                                                           </button>
                                                      </div>
                                                      <p class="date_text">Feb 04, 2021- Feb 21,20201</p>
                                                      </h5>
                                                    </div>
                                                    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                                      <div class="card-body">
                                                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                                      </div>
                                                    </div>
                                                  </div>
                                                  <div class="card mb-3">
                                                    <div class="card-header" id="headingSix">
                                                      <h5 class="mb-0">
                                                          <div class="d-flex justify-content-around">
                                                              <div class="card_img"><img src="{{ asset('wa/dashboard/sessionlist/img/image 31.png') }}"></div>
                                                          <div>
                                                              <p class="subject_card">Subject</p>
                                                              <p class="card_subject_title1">Maths</p>
                                                          </div>
                                                          <div class="border-left first_left_border"></div>
                                                          <div>
                                                              <p class="subject_card">Subject</p>
                                                              <p class="card_subject_title2">Maths</p>
                                                          </div>
                                                          <div class="border-left second_left_border"></div>
                                                          <div>
                                                              <p class="subject_card">Subject</p>
                                                              <p class="card_subject_title3">Maths</p>
                                                          </div>
                                                          <button class="btn btn-link card_cta" data-toggle="collapse" data-target="#collapseSix" aria-expanded="true" aria-controls="collapseOne">
                                                               <img src="{{ asset('wa/dashboard/sessionlist/img/chevron.svg') }}" alt="arrow" title="arrow">
                                                           </button>
                                                      </div>
                                                      <p class="date_text">Feb 04, 2021- Feb 21,20201</p>
                                                      </h5>
                                                    </div>
                                                    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                                      <div class="card-body">
                                                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                                      </div>
                                                    </div>
                                                  </div>
                                              </div>              
                                        </div>
                                      </div>
                                </div>
                            </div>

                        </div>

                        <div class="col-xl-4 col-lg-4 mb-4 mt-4">
                        	<div class="card shadow mb-4 mt-5">
                                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold announce">Announcements</h6>
                                    <a href="#" class=" close close_card"><span>X</span></a>
                                   
                                </div>
                                <div class="card-body">
                               
                                    <div class="mt-4">
                                        <p class="mr-2 list_announce">
                                            <span>https://www.w3schools.com/cssref</span> 
                                            <span>go</span>
                                        </p>
                                        <p class="mr-2 list_announce">
                                            <span>https://www.w3schools.com/cssref</span> 
                                            <span>go</span>
                                        </p>
                                        <p class="mr-2 list_announce">
                                            <span>https://www.w3schools.com/cssref</span> 
                                            <span>go</span>
                                        </p>
                                    </div>
                                </div>
                            </div>

                            <!-- Illustrations -->
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold announce">Reports</h6>
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-6">
                                            <div class="card text-center mb-2">
                                                <div class="card-body p-0 cource_done_card">
                                                    <p class="mb-0 mt-2">Course Completed</p>
                                                    <p><strong>16</strong></p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="card text-center mb-2">
                                                <div class="card-body p-0 cource_done_card">
                                                    <p class="mb-0 mt-2">Course Completed</p>
                                                    <p><strong>16</strong></p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="card text-center mb-2">
                                                <div class="card-body p-0 cource_done_card">
                                                    <p class="mb-0 mt-2">Course Completed</p>
                                                    <p><strong>16</strong></p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="card text-center mb-2">
                                                <div class="card-body p-0 cource_done_card">
                                                    <p class="mb-0 mt-2">Course Completed</p>
                                                    <p><strong>16</strong></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-6">
                                            <div class="card text-center mb-2">
                                                <div class="card-body">
                                                    <div class="pt-4 pb-2">
                                                        <canvas id="myPieChart" width="560" height="150" class="chartjs-render-monitor" style="display: block;"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="card text-center mb-2">
                                                <div class="card-body">
                                                    <div class=" pt-4 pb-2">
                                                        <canvas id="myPieChart2" width="560" height="150" class="chartjs-render-monitor" style="display: block;"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12">
                                            <p class="mt-3 circle_heading_section">Lorem ipsum</p>
                                            <p class="circle_pera_setion">
                                            Lorem ipsum dolor sit amet, consectetur adipiscing
                                            elit, sed do eiusmod tempor...
                                            </p>
                                            <a href="#" class="circle_link">Lorem Ipsum</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                          

                        </div>
                        <div class="col-xl-4 col-lg-4 mb-4 ">
                            <div class="profile_details card py-4 px-4 text-center thirdbox">
                               <div class="profile">
                                <div class="profile_icon"><img src="{{ asset('wa/dashboard/sessionlist/img/user.png') }}"></div>
                                <p class="name mb-1">John Paul</p>
                                <p class="class_section"><span>class:</span><span>XI</span></p>
                                <a href="#" class="profile"><span>view Profile</span></a>
                               </div>
                               <div class="border_bottom_dotted"></div>
                               <div class="row">
                                   <div class="col-md-6 col-xs-16">
                                    <p class="wallet_heading">Wallet balance</p>
                                       <a href="#" class="balance"><p><span>+</span><span>Add Balance</span></p></a>
                                   </div>
                                   <div class="col-md-6 col-xs-16">
                                   
                                    <p class="wallet_balance"><span>Wallet balance:</span><strong>&nbsp;£ 1500</strong></p>
                                    </div>
                               </div>
                               <div class="border_bottom_dotted"></div>
                            </div>
                             <!-- Announcements -->
                            <div class="card shadow mb-4">
                                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold announce">History</h6>
                                </div>
                                <div class="card-body">
                                   <div class="row">
                                       <div class="col-12">
                                           <div class="card p-1 chat_card chat_card_background1">
                                            <div class="card-body p-2 d-flex">
                                                <div class="profile_icon_card pr-3"><img src="{{ asset('wa/dashboard/sessionlist/img/user.png') }}"></div>
                                                <div class="chat_block">
                                                    <p><strong>Subject</strong></p>
                                                    <p>Lorem ipsum dolor sit amet, consectetu...hhfhfhfhfhhfhfhhfhfhhnnnnnnnnnnnnn</p>
                                                </div>
                                            </div>
                                            <div class="text-right"><a class="send_msg" href="">Send Message</a></div>
                                           </div>
                                           <div class="card p-1 chat_card chat_card_background2">
                                            <div class="card-body p-2 d-flex">
                                                <div class="profile_icon_card pr-3"><img src="{{ asset('wa/dashboard/sessionlist/img/user.png') }}"></div>
                                                <div class="chat_block">
                                                    <p><strong>Subject</strong></p>
                                                    <p>Lorem ipsum dolor sit amet, consectetu...hhfhfhfhfhhfhfhhfhfhhnnnnnnnnnnnnn</p>
                                                </div>
                                            </div>
                                            <div class="text-right"><a class="send_msg" href="">Send Message</a></div>
                                           </div>
                                           <div class="card p-1 chat_card chat_card_background3">
                                            <div class="card-body p-2 d-flex">
                                                <div class="profile_icon_card pr-3"><img src="{{ asset('wa/dashboard/sessionlist/img/user.png') }}"></div>
                                                <div class="chat_block">
                                                    <p><strong>Subject</strong></p>
                                                    <p>Lorem ipsum dolor sit amet, consectetu...hhfhfhfhfhhfhfhhfhfhhnnnnnnnnnnnnn</p>
                                                </div>
                                            </div>
                                            <div class="text-right"><a class="send_msg" href="">Send Message</a></div>
                                           </div>
                                           <div class="card p-1 chat_card chat_card_background4">
                                            <div class="card-body p-2 d-flex">
                                                <div class="profile_icon_card pr-3"><img src="{{ asset('wa/dashboard/sessionlist/img/user.png') }}"></div>
                                                <div class="chat_block">
                                                    <p><strong>Subject</strong></p>
                                                    <p>Lorem ipsum dolor sit amet, consectetu...hhfhfhfhfhhfhfhhfhfhhnnnnnnnnnnnnn</p>
                                                </div>
                                            </div>
                                            <div class="text-right"><a class="send_msg" href="">Send Message</a></div>
                                           </div>
                                       </div>
                                   </div>
                                </div>
                            </div>
                            <div class="card shadow mb-4">
                                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold buy_card_section">You  would like to buy</h6>
                                </div>
                                <div class="card-body d-flex p-2">
                                    <div class="card">
                                        <div class="card-header display_card_header display_card_bg">
                                            <span>11+ Sample Papers</span>
                                            <br>
                                            <span>ENGLISH- Exam </span>
                                        </div>
                                        <div class="card_body display_card_body">
                                            <p><span>£ </span><span>12944</span></p>
                                            <p><span>Start date</span> <span>:12 March 2021</span></p>
                                            <p><a href="">View </a></p>
                                        </div>
                                    </div>
                                    <div class="card">
                                        <div class="card-header display_card_header display_card_bg2">
                                            <span>11+ Sample Papers</span>
                                            <br>
                                            <span>ENGLISH- Exam </span>
                                        </div>
                                        <div class="card_body display_card_body">
                                            <p><span>£ </span><span>12944</span></p>
                                            <p><span>Start date</span> <span>:12 March 2021</span></p>
                                            <p><a href="">View </a></p>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Content Row -->
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->
@endsection
@section('session.css')
<link rel="stylesheet" href="{{ asset('wa/dashboard/sessionlist/css/student-admin.css') }}">

<link rel="stylesheet" href="{{ asset('wa/dashboard/sessionlist/css/session.css') }}">
@endsection

@section('js')
<script src="/wa/dashboard/sessionlist/vendor/jquery/jquery.min.js"></script>
<script src="/wa/dashboard/sessionlist/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Core plugin JavaScript-->
<script src="/wa/dashboard/sessionlist/vendor/jquery-easing/jquery.easing.min.js"></script>
<!-- Custom scripts for all pages-->
<script src="/wa/dashboard/sessionlist/js/student.js"></script>
  <!-- Page level plugins -->
  <script src="/wa/dashboard/sessionlist/vendor/chart.js/Chart.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="/wa/dashboard/sessionlist/js/demo/chart-area-demo.js"></script>
  <script src="/wa/dashboard/sessionlist/js/demo/chart-pie-demo.js"></script>
@endsection