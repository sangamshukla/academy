<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>Wallington Academy</title>
    <meta name="Wallington Academy - After School Tutorials" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link
      href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap"
      rel="stylesheet"
    />
    <link
      href="http://fonts.googleapis.com/css?family=Roboto"
      rel="stylesheet"
      type="text/css"
    />
    <link
      href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,400;1,700&display=swap"
      rel="stylesheet"
    />
    <!-- <link
      rel="stylesheet"
      href="https://unpkg.com/swiper/swiper-bundle.min.css"
    /> -->
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    />
    <link
      rel="stylesheet"
      href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"
    />

    <link rel="stylesheet" href="{{asset('cal/style.css')}}" />
    <link rel="stylesheet" href="{{asset('wa/welcome.css')}}" />
    <link rel="stylesheet" href="{{asset('cal/calander.css')}}" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <!-- <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script> -->
  </head>

  <body>
      @include('common.nav')
        <!-- Begin Page Content -->
    <div class="mt-5 calander_section">
      <!-- Content Row -->
      <div class="row mt-5">
        <!-- Area Chart -->
        <div class="col-xl-8 col-lg-8">
          <div class="row">
            <div clas="col-xl-12">
              <p class="day" id="todayOnChange">Today</p>
            </div>
          </div>
          <div class="row">
            <div class="col-xl-3 col-lg-3">
              <p class="day_date">
                <span class="pr-2" id="dayOnChange">{{$date}}</span>
              </p>
            </div>
            <div class="col-xl-3 col-lg-3">
              <!--<div class="year_box">-->
            <!--    <select class="form-control year_text" id="FormControlSelect1">-->
            <!--        @for ($i = 0; $i <=6; $i++)-->
            <!--        <option>{{$year}}</option>-->
            <!--        {{$year--}}-->
            <!--        @endfor-->
            <!--    </select>-->
              <!--</div>-->
            </div>
            <div class="col-xl-3 col-lg-3">
              <div class="report_status">
                <p>Report:</p>
                <form class="month_week_block">
                  <div class="week">
                    <label class="container-checkbox">
                      <input
                        class="week_input"
                        type="checkbox"
                        checked="checked"
                        required=""
                      />
                      <span class="checkmark-box week_checkbox"></span>
                      Day
                    </label>
                  </div>
                  <div class="month">
                    <label class="container-checkbox">
                      <input class="month_input" type="checkbox" required="" />
                      <span class="checkmark-box week_checkbox"></span>
                      Week
                    </label>
                  </div>
                </form>
              </div>
            </div>
            <!--<div class="col-xl-3 col-lg-3">-->
            <!--  <div class="arrow_block">-->
            <!--    <p class="left_arrow">-->
            <!--      <img src="{{asset('cal/assets/img/arrow-left.svg')}}" />-->
            <!--    </p>-->
            <!--    <p class="right_arrow">-->
            <!--      <img src="{{asset('cal/assets/img/arrow-right.svg')}}" />-->
            <!--    </p>-->
            <!--  </div>-->
            <!--</div>-->
          </div>
    <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div
                class="card-header py-3 d-flex flex-row align-items-center justify-content-between"
                >
                <div class="cd-schedule js-full calander_tab">
                <div class="timeline">
                    <ul>
                        <li><span>09:00 AM</span></li>
                        <li><span>09:30 AM</span></li>
                        <li><span>10:00 AM</span></li>
                        <li><span>10:30 AM</span></li>
                        <li><span>11:00 AM</span></li>
                        <li><span>11:30 AM</span></li>
                        <li><span>12:00 PM</span></li>
                        <li><span>12:30 PM</span></li>
                        <li><span>13:00 PM</span></li>
                        <li><span>13:30 PM</span></li>
                        <li><span>14:00 PM</span></li>
                        <li><span>14:30 PM</span></li>
                        <li><span>15:00 PM</span></li>
                        <li><span>15:30 PM</span></li>
                        <li><span>16:00 PM</span></li>
                        <li><span>16:30 PM</span></li>
                        <li><span>17:00 PM</span></li>
                        <li><span>17:30 PM</span></li>
                        <li><span>18:00 PM</span></li>
                    </ul>
                </div>
                <!-- .timeline -->
                <div class="events">
                    <ul>
                        <li class="events-group">
                        <!-- <div class="top-info"><span>Monday</span></div> -->

                        <ul id="Teacherswithsession">
                    {{-- @include('teacher_calander.sessions') --}}
                    </ul>
                    </li>
                    </ul>
                </div>
                <div class="event-modal">
                    <header class="header">
                        <div class="content">
                        <div class="bprder-bottom_event">
                            <h3 class="add_title">Add title</h3>
                        </div>

                        <div class="modal_data mt-3">
                            <div class="class-title">My Class</div>
                        </div>
                        <div class="time_block">
                            <span class="wall_clock"
                            ><img src="{{asset('cal/assets/img/wall-clock 1.svg')}}"
                            /></span>
                            <span>Sunday, March 14</span>
                            <span>9:00am - 10:00am</span>
                        </div>
                        <div class="report_block">
                            <p class="find_text">Find a time</p>
                            <div class="report_status">
                            <p>Report:</p>
                            <form class="month_week_block">
                                <div class="week">
                                <label class="container-checkbox">
                                    <input
                                    class="week_input"
                                    type="checkbox"
                                    checked="checked"
                                    required=""
                                    />
                                    <span
                                    class="checkmark-box week_checkbox"
                                    ></span>
                                    Week
                                </label>
                                </div>
                                <div class="month">
                                <label class="container-checkbox">
                                    <input
                                    class="month_input"
                                    type="checkbox"
                                    required=""
                                    />
                                    <span
                                    class="checkmark-box week_checkbox"
                                    ></span>
                                    Month
                                </label>
                                </div>
                            </form>
                            </div>
                        </div>
                        <div class="discription_block">
                            <p class="dis_text">Add description</p>
                            <div class="student_info">
                            <img src="{{asset('cal/assets/img/ab.svg')}}" />
                            <div class="notify_block">
                                <p class="notify_block p1">Kelly Kavin</p>
                                <p class="notify_block p2">Notify 20 min before</p>
                            </div>
                            </div>
                            <div class="student_info">
                            <img src="{{asset('cal/assets/img/calendar 1.svg')}}" />
                            <div>
                                <p class="notify_block p1">Kelly Kavin</p>
                                <p class="notify_block p2">Notify 20 min before</p>
                            </div>
                            </div>
                        </div>
                        <div class="modal-closer">
                            <div class="cancle_cta">Cancel</div>
                            <div class="btn ok_cta">Okay</div>
                        </div>
                        </div>
                        <div class="header-bg"></div>
                    </header>
                    <div class="body">
                        <div class="event-info"></div>
                        <div class="body-bg"></div>
                    </div>
                    <a href="#0" class="close"></a>
                    </div>
                    <div class="cover-layer"></div>
                </div>
            </div>
        </div>
        </div>
        <!-- Pie Chart -->
        <div class="col-xl-4 col-lg-4">
          <div class="mb-4 mt-5">
            <!-- Card Header - Dropdown -->
            <!-- Card Body -->
            <div class="card-body calander_block">
              <p>
                <img src="{{asset('cal/assets/img/calandericon.svg')}}" /><span
                  >Availabilitys</span
                >
              </p>
              <div id="datepicker" class=""></div>
            </div>
          </div>
          <div class="row">
            <div class="col-xl-12 col-lg-12">
              <div class="mb-4">
                <p>
                  <!--<a class="add_task" href="">+ Add Tasks</a>-->
                </p>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-xl-12 col-lg-12">
              <div class="mb-4">
                <div class="card-body subject_card_details math_border1 mb-3">
                  <div class="d-flex justify-content-between">
                    <div>
                      <p class="subject_title_section">Math Practice</p>
                      <p class="subject-title_pera">
                        23 Jan, 04:00pm - 05:00pm
                      </p>
                    </div>
                    <div class="d-flex justify-content-between">
                      <div class="delete_img">
                        <a href="#"><img src="{{asset('cal/assets/img/delete.svg')}}" /></a>
                      </div>

                      <div class="edit_img">
                        <a href="#"><img src="{{asset('cal/assets/img/edit.svg')}}" /></a>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="card-body subject_card_details math_border2 mb-3">
                  <div class="d-flex justify-content-between">
                    <div>
                      <p>Math Practice</p>
                      <p>23 Jan, 04:00pm - 05:00pm</p>
                    </div>
                    <div class="d-flex justify-content-between">
                      <div class="delete_img">
                        <a href="#"><img src="{{asset('cal/assets/img/delete.svg')}}" /></a>
                      </div>

                      <div class="edit_img">
                        <a href="#"><img src="{{asset('cal/assets/img/edit.svg')}}" /></a>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="card-body subject_card_details math_border3 mb-3">
                  <div class="d-flex justify-content-between">
                    <div>
                      <p>Math Practice</p>
                      <p>23 Jan, 04:00pm - 05:00pm</p>
                    </div>
                    <div class="d-flex justify-content-between">
                      <div class="delete_img">
                        <a href="#"><img src="{{asset('cal/assets/img/delete.svg')}}" /></a>
                      </div>

                      <div class="edit_img">
                        <a href="#"><img src="{{asset('cal/assets/img/edit.svg')}}" /></a>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="card-body subject_card_details math_border4">
                  <div class="d-flex justify-content-between">
                    <div>
                      <p>Math Practice</p>
                      <p>23 Jan, 04:00pm - 05:00pm</p>
                    </div>
                    <div class="d-flex justify-content-between">
                      <div class="delete_img">
                        <a href="#"><img src="{{asset('cal/assets/img/delete.svg')}}" /></a>
                      </div>

                      <div class="edit_img">
                        <a href="#"><img src="{{asset('cal/assets/img/edit.svg')}}" /></a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Content Row -->
    </div>
    <!-- /.container-fluid -->

    @include('common.main_footer')
    <!-- Swiper JS -->
    <script src="{{asset('wa/coustom.js')}}"></script>
    <script>
      $(function () {
        $("#datepicker").datepicker({
          changeMonth: true,
          changeYear: true,


        });
      });
    </script>
    {{-- <script src="{{asset('cal/calander.js')}}"></script> --}}
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
    function getSessionInfo(todayDate, teacherId)
{

    var currentDate=todayDate;
    console.log(currentDate);
    var teacherId=teacherId;
	$.ajax({
        type: 'post',
        url: '{{route("teacher-calander", ["id"=>$id])}}',
        data: {
            '_token': '{{ csrf_token() }}',
            currentDate:currentDate,
            teacherId:teacherId},
        success: function (response) {
            // alert(response);
            $('#Teacherswithsession').html(response);
},
error: function (response) {
                $('#Teacherswithsession').html("No sessions for today");
            }
});
};
</script>
<script>
    $( document ).ready(function() {
    var todayDate=$("#datepicker").val();
    var teacherId={{$id}};
    getSessionInfo(todayDate, teacherId);
});

</script>
<script>
    $('#datepicker').change(function(){

        var monthSelected=$(".ui-datepicker-month option:selected" ).text();
        var todayDate=$("#datepicker").val();
        var res = todayDate.split("/");
        var finalDate=(res[1])+" " +monthSelected;
        $("#dayOnChange").text(finalDate);
        var currentDateinfo="<?php echo date('d')?>"
        // alert(currentDateinfo);
        if(res[1]==currentDateinfo)
        {
            $('#todayOnChange').text('Today');
        }
        else
        {
            $('#todayOnChange').text(' ');
        }
        var teacherId=1;
        getSessionInfo(todayDate, teacherId);
});
</script>
  </body>
</html>
