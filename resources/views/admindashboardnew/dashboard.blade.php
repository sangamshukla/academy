@extends('layouts.admin_dashboard')
@section('content')
 <!-- subject card section start -->
 <div class="row">
  <div class="col-12">
    <div class="card shadow mb-4">
      <div class="card-body">
        <p class="buy_card_pera">You would like to buy</p>
        <div class="row">
          <div class="col-xl-3 col-sm-12">
            <div class="card mb-3">
              <div class="card_body display_card_body card-1">
                <div class="d_teacher">
                  <div><span class="d_title">Teachers</span></div>
                  <div><img src="{{asset('wa/admin/img/teacher1.svg')}}"></div>
                 </div>
                 <p class="d_title_val">1445</p>
                <p>
                  <span>Increased by 10% this Month</span>
                </p>
              </div>
            </div>
          </div>
          <div class="col-xl-3 col-sm-12">
            <div class="card mb-3">
              <div class="card_body display_card_body card-2">
                <div class="d_teacher">
                  <div><span class="d_title">Students</span></div>
                  <div><img src="{{asset('wa/admin/img/videoconference.svg')}}"></div>
                </div>
                <p class="d_title_val">1445</p>
                <p>
                  <span>Increased by 15% this Month</span>
                </p>
               
              </div>
            </div>
          </div>
          <div class="col-xl-3 col-sm-12">
            <div class="card mb-3">
              <div class="card_body display_card_body card-3">
                <div class="d_teacher">
                   <div><span class="d_title">Classes</span></div>
                   <div><img src="{{asset('wa/admin/img/sales 1.svg')}}"></div>
                </div>
                <p class="d_title_val">1445</p>
                <p>
                  <span>IIncreased by 2% this Month</span>
                </p>
               
              </div>
            </div>
          </div>
          <div class="col-xl-3 col-sm-12">
            <div class="card mb-3">
              <div class="card_body display_card_body card-4">
                <div class="d_teacher">
                  <div><span class="d_title">Revenue</span></div>
                  <div><img src="{{asset('wa/admin/img/Online course.svg')}}"></div>
                </div>
                <p class="d_title_val">1445</p>
                <p>
                  <span>Increased by 3% this Month</span>
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="row">
  <!-- Content Column -->
  <div class="col-xl-4 col-lg-4 mb-4 mt-4">
    <div class="pop_val">
      <p>Popular Courses</p>
      <p><a href="#">View All</a></p>
    </div>
    <div class="row">
      <div class="col-xl-12 col-lg-12">
        <div class="card mb-3">
          <div class="d_card_val">
            <div class="math_p">
              <p>Math Practice</p>
              <p><span>23 Jan,</span><span>04:00pm - 05:00pm</span></p>
            </div>
            <div class="v_course">
                <p><a href="#">View Course</a></p>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-12 col-lg-12">
        <div class="card mb-3">
          <div class="d_card_val">
            <div class="math_p">
              <p>Math Practice</p>
              <p><span>23 Jan,</span><span>04:00pm - 05:00pm</span></p>
            </div>
            <div class="v_course">
                <p><a href="{{route('buy.now')}}">View Course</a></p>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-12 col-lg-12">
        <div class="card mb-3">
          <div class="d_card_val">
            <div class="math_p">
              <p>Math Practice</p>
              <p><span>23 Jan,</span><span>04:00pm - 05:00pm</span></p>
            </div>
            <div class="v_course">
                <p><a href="{{route('buy.now')}}">View Course</a></p>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-12 col-lg-12">
        <div class="card mb-3">
          <div class="d_card_val">
            <div class="math_p">
              <p>Math Practice</p>
              <p><span>23 Jan,</span><span>04:00pm - 05:00pm</span></p>
            </div>
            <div class="v_course">
                <p><a href="{{route('buy.now')}}">View Course</a></p>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-12 col-lg-12">
        <div class="card mb-3">
          <div class="d_card_val">
            <div class="math_p">
              <p>Math Practice</p>
              <p><span>23 Jan,</span><span>04:00pm - 05:00pm</span></p>
            </div>
            <div class="v_course">
                <p><a href="{{route('buy.now')}}">View Course</a></p>
            </div>
          </div>
        </div>
      </div>
  </div>
  </div>
  <div class="col-xl-4 col-lg-4 mb-4 mt-4">
    <div class="crt_val">
      <p>Current Activity</p>
    </div>
    <div class="row">
      <div class="col-xl-12 col-lg-12">

        <div class="card mostly_progress">
          <div class="title">Monthly Progress</div>
          <p> Four Months Improvement</p>
          <div><img class="chart_img" src="{{asset('wa/admin/img/Capture.PNG')}}" width="320" height="auto"></div>
        </div>
      </div>
    </div>
    <div class="row mt-5">
      <div class="col-xl-12 col-lg-12">
        <div class="cource_flex">
        <div class="card online_courses">
          <div class="title_no">42</div>
          <p> Online Courses</p>
        </div>
        <div class="card offline_courses">
          <div class="title_no">32</div>
          <p> Offline Courses</p>
        </div>
      </div>
      </div>
    </div>
  </div>
  <div class="col-xl-4 col-lg-4 mb-4 mt-4">
    <div class="best_val">
      <p> Best Teacher</p>
      <p><a href="#">View All</a></p>
    </div>
    <div class="row">
      <div class="col-xl-12 col-lg-12">
        <div class="card mb-3">
          <div class="d_card_val">
            <div class="profile_icon_card"><img src="{{asset('wa/admin/img/user.png')}}"></div>
            <div class="profile_p">
              <p>Math Practice</p>
              <p><span>5 Cource</span></p>
            </div>
            <div class="v_course">
                <p><a href="{{route('teacher-profile')}}">View Course</a></p>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-12 col-lg-12">
        <div class="card mb-3">
          <div class="d_card_val">
            <div class="profile_icon_card"><img src="{{asset('wa/admin/img/user.png')}}"></div>
            <div class="profile_p">
              <p>Math Practice</p>
              <p><span>5 Cource</span></p>
            </div>
            <div class="v_course">
                <p><a href="{{route('teacher-profile')}}">View Course</a></p>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-12 col-lg-12">
        <div class="card mb-3">
          <div class="d_card_val">
            <div class="profile_icon_card"><img src="{{asset('wa/admin/img/user.png')}}"></div>
            <div class="profile_p">
              <p>Math Practice</p>
              <p><span>5 Cource</span></p>
            </div>
            <div class="v_course">
                <p><a href="{{route('teacher-profile')}}">View Course</a></p>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-12 col-lg-12">
        <div class="card mb-3">
          <div class="d_card_val">
            <div class="profile_icon_card"><img src="{{asset('wa/admin/img/user.png')}}"></div>
            <div class="profile_p">
              <p>Math Practice</p>
              <p><span>5 Cource</span></p>
            </div>
            <div class="v_course">
                <p><a href="{{route('teacher-profile')}}">View Course</a></p>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-12 col-lg-12">
        <div class="card mb-3">
          <div class="d_card_val">
            <div class="profile_icon_card"><img src="{{asset('wa/admin/img/user.png')}}"></div>
            <div class="profile_p">
              <p>Math Practice</p>
              <p><span>5 Cource</span></p>
            </div>
            <div class="v_course">
                <p><a href="{{route('teacher-profile')}}">View Course</a></p>
            </div>
          </div>
        </div>
      </div>
  </div>
  </div>
</div>
@endsection
 
