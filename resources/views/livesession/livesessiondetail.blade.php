@extends('layouts.main')

@section('css')
<link rel="stylesheet" href="{{ asset('wa/livesession/css/liveclassdetail.css') }}">
<link rel="stylesheet" href="{{ asset('wa/livesession/css/style1.css') }}">
<link rel="stylesheet" href="{{ asset('wa/welcome.css') }}">

@endsection

@section('content')
        <div class="mt-5 live_class_section" style="background-image: url('{{asset('wa/livesession/assets/img/bgimg1.svg')}}')">
      <!-- Content Row -->
      <div class="row mt-5">
        <!-- Area Chart -->
        <div class="col-xl-8 col-lg-8">
          <div class="row">
            <div clas="col-12">
              <p class="live_class">Live Classes</p>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-12">
              <div class="card mt-5">
                <div class="card-body">
                  <div class="cover video_cover" style="background-image:url('{{asset('wa/livesession/assets/img/VideoImage.png')}}')">
                    <video controls class="video" width="600">
                      <source
                        src="https://riverisland.scene7.com/is/content/RiverIsland/c20171205_Original_Penguin_AW17_Video"
                        type="video/mp4"
                      />
                      <source
                        src="https://riverisland.scene7.com/is/content/RiverIsland/c20171205_Original_Penguin_AW17_Video_OGG"
                      />
                    </video>
                  </div>
                  <div class="video-text">
                    <p class="text-center">Video</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-12">
              <div class="teacher_detail mt-5">
                <!-- Card Header - Dropdown -->
                <div class="mt-3">
                  <div class="teacher_section_detail">
                    <div class="teacher_img">
                      <img src="{{asset('wa/livesession/assets/img/user1.svg')}}" />
                    </div>
                    <div class="detail1">
                      <p class="fist_pera">David Pettenson</p>
                      <p class="second_pera">
                        <span class="address_detail"
                          ><img src="{{asset('wa/livesession/assets/img/addresicon.svg')}}" /></span
                        ><span>United Nation</span>
                      </p>
                    </div>
                    <div class="payment_pera">
                      <p>Charges</p>
                      <p><span>£</span>20.00</p>
                    </div>
                    <div class="detail1">
                      <p class="fist_pera">Speaks</p>
                      <p class="second_pera">French,English</p>
                    </div>

                  </div>
                  <div class="about_pera mt-5">
                    <p><strong>About me-</strong></p>
                    <p>
                      Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                      Mauris elementum aliquam viverra. Aliquam erat volutpat.
                      Mauris id sagittis tortor. Ut condimentum, arcu nec tempor
                      laoreet, ex quam tincidunt purus, sed placerat nulla ex
                      placerat lacus. Nullam quis lectus ac odio dictum tempor
                      ac vitae quam.
                      <br>
                      <br>
                      Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                      Mauris elementum aliquam viverra. Aliquam erat volutpat.
                      Mauris id sagittis tortor. Ut condimentum, arcu nec tempor
                      laoreet, ex quam tincidunt purus, sed placerat nulla ex
                      placerat lacus. Nullam quis lectus ac odio dictum tempor
                      ac vitae quam.
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-12">
              <div class="card_tec mt-3">
              <p class="tech-heading">Teaching Expertise</p>
              <div class="card mt-3">
                <div class="card-body card_body_bg">
                  <div class="row">
                      <div class="col-4 lang1">Language I speak</div>
                      <div class="col-8">
                        <p class="spec_tex">French (Advance)</p>
                        <p class="spec_tex">English (Advance)</p>
                      </div>
                  </div>
                </div>
              </div>
            </div>
             <div class="card_tec mt-3">
              <p class="sub-heading">Subject I Teach</p>
              <div class="card mt-3">
                <div class="card-body card_body_bg">
                  <div class="row">
                      <div class="col-4 lang1">Subjects</div>
                      <div class="col-8">
                        <p class="spec_tex">Maths</p>
                        <p class="spec_tex">Physics</p>
                      </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="card_tec mt-3">
              <p class="staic-heading">Statistics</p>
              <div class="card mt-3">
                <div class="card-body card_body_bg">
                  <div class="row">
                      <div class="col-xl-4 col-lg-4 col-12">
                        <p class="title_bar">Completed Lessons</p>
                        <p class="bar_no">456</p>
                        <div class="chart">
                          <div class="bar-1"></div>
                          <div class="bar-2"></div>
                          <div class="bar-3"></div>
                        </div>
                        <div class="chart">
                           <div class="bar_month bar_month1">November</div>
                            <div class="bar_month bar_month2">Decemeber</div>
                             <div class="bar_month bar_month3">January</div>
                        </div>
                      </div>
                      <div class="col-xl-4 col-lg-4 col-12 title_bar space_top">Response Rate
                        <p class="bar_no">100%</p>
                        <div>
                        <div class=" first_progress_bar">
                          <div class="bar_month">November</div>
                        <div class="progress">
                          <div data-percentage="0%" style="width: 50%;" class="progress-bar progress-bar-success" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                          <div class="bar_month">November</div>
                        <div class="progress">
                          <div data-percentage="0%" style="width: 60%;" class="progress-bar progress-bar-info" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                        <div class="bar_month">November</div>
                        <div class="progress">
                          <div data-percentage="0%" style="width: 40%;" class="progress-bar progress-bar-warning" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>

                      </div>
                        </div>
                      </div>
                      <div class="col-xl-4 col-lg-4 col-12 title_bar space_top"> Attendence Rate
                        <p class="bar_no">100%</p>
                        <div class="second_progress_bar">
                          <div class="bar_month">November</div>
                        <div class="progress">
                          <div data-percentage="0%" style="width: 50%;" class="progress-bar progress-bar-success" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                        <div class="bar_month">November</div>
                        <div class="progress">
                          <div data-percentage="0%" style="width: 60%;" class="progress-bar progress-bar-info" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                        <div class="bar_month">November</div>
                        <div class="progress">
                          <div data-percentage="0%" style="width: 40%;" class="progress-bar progress-bar-warning" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>

                      </div>
                      </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="card_tec mt-3">
              <p class="pric-heading">Pricing</p>
              <div class="mt-3">
                <div class="card_body_bg">
                 <div class="table-responsive" id="sailorTableArea">
                    <table id="sailorTable" class="table table-striped table-bordered graid_table" width="100%">
                      <thead>
                        <tr class="">
                          <th class="card_heading">Grade</th>
                          <th class="card_heading">Maths</th>
                          <th class="card_heading">English</th>
                          <th class="card_heading">Chemistry</th>
                          <th class="card_heading">Physics</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr class="session_card">
                          <td class="session_no">Grade 01</td>
                          <td class="session_no">Numbers</td>
                          <td class="session_date">2021-03-10</td>
                          <td class="session_date">21:30 PM</td>
                          <td class="session_date">21:30 PM</td>
                        </tr>
                        <tr class="session_card">
                          <td class="session_no">Grade 01</td>
                          <td class="session_no">Numbers</td>
                          <td class="session_date">2021-03-10</td>
                          <td class="session_date">21:30 PM</td>
                          <td class="session_date">21:30 PM</td>
                        </tr>
                        <tr class="session_card">
                          <td class="session_no">Session-1</td>
                          <td class="session_no">Numbers</td>
                          <td class="session_date">2021-03-10</td>
                          <td class="session_date">21:30 PM</td>
                          <td class="session_date">21:30 PM</td>
                        </tr>
                        <tr class="session_card">
                          <td class="session_no">Grade 01</td>
                          <td class="session_no">Numbers</td>
                          <td class="session_date">2021-03-10</td>
                          <td class="session_date">21:30 PM</td>
                          <td class="session_date">21:30 PM</td>
                        </tr>
                        <tr class="session_card">
                          <td class="session_no">Grade 01</td>
                          <td class="session_no">Numbers</td>
                          <td class="session_date">2021-03-10</td>
                          <td class="session_date">21:30 PM</td>
                          <td class="session_date">21:30 PM</td>
                        </tr>
                        <tr class="session_card">
                          <td class="session_no">Session-1</td>
                          <td class="session_no">Numbers</td>
                          <td class="session_date">2021-03-10</td>
                          <td class="session_date">21:30 PM</td>
                          <td class="session_date">21:30 PM</td>
                        </tr>
                        <tr class="session_card">
                          <td class="session_no">Grade 01</td>
                          <td class="session_no">Numbers</td>
                          <td class="session_date">2021-03-10</td>
                          <td class="session_date">21:30 PM</td>
                          <td class="session_date">21:30 PM</td>
                        </tr>
                        <tr class="session_card">
                          <td class="session_no">Session-1</td>
                          <td class="session_no">Numbers</td>
                          <td class="session_date">2021-03-10</td>
                          <td class="session_date">21:30 PM</td>
                        </tr>
                        <tr class="session_card">
                          <td class="session_no">Grade 01</td>
                          <td class="session_no">Numbers</td>
                          <td class="session_date">2021-03-10</td>
                          <td class="session_date">21:30 PM</td>
                          <td class="session_date">21:30 PM</td>
                        </tr>
                        <tr class="session_card">
                          <td class="session_no">Grade 01</td>
                          <td class="session_no">Numbers</td>
                          <td class="session_date">2021-03-10</td>
                          <td class="session_date">21:30 PM</td>
                          <td class="session_date">21:30 PM</td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
             <div class="card_tec mt-3">
              <p class="revie-heading">Reviews</p>
              <div class="card mt-3">
                <div class="card-body ">
                  <div class="row">
                      <div class="col-12">
                           <!-- Swiper -->
                          <div class="swiper-container" id="teacher_testimonial">
                            <div class="swiper-wrapper">
                              <div class="swiper-slide">
                                <div clas="user_testimonial_block">
                                  <div class="user_icon"><img src="{{asset('wa/livesession/assets/img/user.png')}}"></div>
                                  <div class="star_block">
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star "></span>
                                    <span class="fa fa-star "></span>
                                  </div>
                                  <div class="pera_testimonial">
                                    <p class="user_name">Joanna</p>
                                    <p class="title_user"><strong>(Wallington County Grammar School - 2015)</strong></p>
                                    <p class="testimonial_pera">My oldest son went to Julie for a year to prepare for the 11+. What we found after is that her method enabled our son to strengthen his foundation and cover the Year 6 curriculum so that he flew through that year with ease and was well prepared for secondary. Furthermore, he practiced sitting exa...</p>
                                  </div>
                                </div>
                              </div>
                              <div class="swiper-slide">
                                 <div clas="user_testimonial_block">
                                  <div class="user_icon"><img src="{{asset('wa/livesession/assets/img/user.png')}}"></div>
                                  <div class="star_block">
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star "></span>
                                    <span class="fa fa-star "></span>
                                  </div>
                                  <div class="pera_testimonial">
                                    <p class="user_name">Joanna</p>
                                    <p class="title_user"><strong>(Wallington County Grammar School - 2015)</strong></p>
                                    <p class="testimonial_pera">My oldest son went to Julie for a year to prepare for the 11+. What we found after is that her method enabled our son to strengthen his foundation and cover the Year 6 curriculum so that he flew through that year with ease and was well prepared for secondary. Furthermore, he practiced sitting exa...</p>
                                  </div>
                                </div>
                              </div>
                              <div class="swiper-slide">
                                 <div clas="user_testimonial_block">
                                  <div class="user_icon"><img src="{{asset('wa/livesession/assets/img/user.png')}}"></div>
                                  <div class="star_block">
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star "></span>
                                    <span class="fa fa-star "></span>
                                  </div>
                                  <div class="pera_testimonial">
                                    <p class="user_name">Joanna</p>
                                    <p class="title_user"><strong>(Wallington County Grammar School - 2015)</strong></p>
                                    <p class="testimonial_pera">My oldest son went to Julie for a year to prepare for the 11+. What we found after is that her method enabled our son to strengthen his foundation and cover the Year 6 curriculum so that he flew through that year with ease and was well prepared for secondary. Furthermore, he practiced sitting exa...</p>
                                  </div>
                                </div>
                              </div>
                              <div class="swiper-slide">
                                 <div clas="user_testimonial_block">
                                  <div class="user_icon"><img src="{{asset('wa/livesession/assets/img/user.png')}}"></div>
                                  <div class="star_block">
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star "></span>
                                    <span class="fa fa-star "></span>
                                  </div>
                                  <div class="pera_testimonial">
                                    <p class="user_name">Joanna</p>
                                    <p class="title_user"><strong>(Wallington County Grammar School - 2015)</strong></p>
                                    <p class="testimonial_pera">My oldest son went to Julie for a year to prepare for the 11+. What we found after is that her method enabled our son to strengthen his foundation and cover the Year 6 curriculum so that he flew through that year with ease and was well prepared for secondary. Furthermore, he practiced sitting exa...</p>
                                  </div>
                                </div>
                              </div>
                              <div class="swiper-slide">
                                 <div clas="user_testimonial_block">
                                  <div class="user_icon"><img src="{{asset('wa/livesession/assets/img/user.png')}}"></div>
                                  <div class="star_block">
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star "></span>
                                    <span class="fa fa-star "></span>
                                  </div>
                                  <div class="pera_testimonial">
                                    <p class="user_name">Joanna</p>
                                    <p class="title_user"><strong>(Wallington County Grammar School - 2015)</strong></p>
                                    <p class="testimonial_pera">My oldest son went to Julie for a year to prepare for the 11+. What we found after is that her method enabled our son to strengthen his foundation and cover the Year 6 curriculum so that he flew through that year with ease and was well prepared for secondary. Furthermore, he practiced sitting exa...</p>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <!-- Add Arrows -->
                            <div class="swiper-button-next"></div>
                            <div class="swiper-button-prev"></div>
                              <!-- Add Pagination -->
                            <div class="swiper-pagination"></div>
                          </div>
                      </div>
                  </div>
                </div>
              </div>
            </div>
            </div>
          </div>
        </div>
        <!-- Pie Chart -->
        <div class="col-xl-4 col-lg-4">
          <div class="row">
            <div class="col-12">
              <div class="free_trail_section">
                <p class="free_title">Free Trial</p>
                <button class="btn btn_book_trail">Book Free Trial</button>
                <p class="free_pera">Book your trial free for 30 min only.</p>
              </div>
              <div class="reserve_section mt-5 mb-5">
                <p>Reserve a session</p>
                <div class="btn btn_book_section">book</div>
                <div class="btn btn_msg">Message</div>
              </div>
            </div>
          </div>
          <div class="">
            <!-- Card Header - Dropdown -->
            <!-- Card Body -->

               <x-calander-block/>
          <div class="all_card_section">
            <div class="tab_view_section">
              <p>Other Classes</p>
              <p>View all</p>
            </div>
          </div>
          <div class="card mt-3">
            <div class="card-body card_background1">
              <p class="date_ab_div">Feb 04, 2021- Feb 21,20201</p>
              <!-- subject section for mobile -->
              <div class="subject_section_mobile">
                <div class="border_left_div">
                  <p>subject</p>
                  <p class="subject_text">Math</p>
                </div>

                <div class="border_left_div">
                  <p>subject</p>
                  <p class="grade">7</p>
                </div>

                <div class="border_left_div">
                  <p>subject</p>
                  <p class="grade">1 to 1</p>
                </div>

                <div class="border_left_div">
                  <p>subject</p>
                  <p class="starts">10:08:55</p>
                </div>
              </div>
            </div>
          </div>
            <div class="card mt-3">
            <div class="card-body card_background2">
              <p class="date_ab_div">Feb 04, 2021- Feb 21,20201</p>
              <!-- subject section for mobile -->
              <div class="subject_section_mobile">
                <div class="border_left_div">
                  <p>subject</p>
                  <p class="subject_text">Math</p>
                </div>

                <div class="border_left_div">
                  <p>subject</p>
                  <p class="grade">7</p>
                </div>

                <div class="border_left_div">
                  <p>subject</p>
                  <p class="grade">1 to 1</p>
                </div>

                <div class="border_left_div">
                  <p>subject</p>
                  <p class="starts">10:08:55</p>
                </div>
              </div>
            </div>
          </div>  <div class="card mt-3">
            <div class="card-body card_background3">
              <p class="date_ab_div">Feb 04, 2021- Feb 21,20201</p>
              <!-- subject section for mobile -->
              <div class="subject_section_mobile">
                <div class="border_left_div">
                  <p>subject</p>
                  <p class="subject_text">Math</p>
                </div>

                <div class="border_left_div">
                  <p>subject</p>
                  <p class="grade">7</p>
                </div>

                <div class="border_left_div">
                  <p>subject</p>
                  <p class="grade">1 to 1</p>
                </div>

                <div class="border_left_div">
                  <p>subject</p>
                  <p class="starts">10:08:55</p>
                </div>
              </div>
            </div>
          </div>  <div class="card mt-3">
            <div class="card-body card_background4">
              <p class="date_ab_div">Feb 04, 2021- Feb 21,20201</p>
              <!-- subject section for mobile -->
              <div class="subject_section_mobile">
                <div class="border_left_div">
                  <p>subject</p>
                  <p class="subject_text">Math</p>
                </div>

                <div class="border_left_div">
                  <p>subject</p>
                  <p class="grade">7</p>
                </div>

                <div class="border_left_div">
                  <p>subject</p>
                  <p class="grade">1 to 1</p>
                </div>

                <div class="border_left_div">
                  <p>subject</p>
                  <p class="starts">10:08:55</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <hr />

      <!-- Content Row -->
    </div>
@endsection



@section('js')
<script>
    // document.FIX_HEADER_TOP = 35;
  </script>
  <script src="{{ asset('wa/livesession/js/coustom.js') }}"></script>
  <script src="{{ asset('wa/livesession/js/calander.js') }}"></script>

@endsection
