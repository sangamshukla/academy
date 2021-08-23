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
@endsection
 
