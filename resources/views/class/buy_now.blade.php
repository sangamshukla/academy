@extends('layouts.main')
@section('css')
    <link rel="stylesheet" href="{{ asset('wa/buynow.css') }}">
    <link rel="stylesheet" href="{{ asset('wa/modal.css') }}">
@endsection

@section('content')
    <!-- subject cartsection -->
    <section class="quickpay_block">
      <div class="container-fluid">
        <div class="row">
          <div class="col">
            <button class="pay_now btn mobilw_show">Pay Now</button>
            <div class="quick_heading">Quick Pay</div>
            <div class="pay_section d-flex flex-sm-row flex-column mt-3">
              <div class="pay_image_block">
                <img
                  class="register-img"
                  src="{{ asset('wa/assets/img/buynow/register-img.svg') }}"
                  alt="login"
                  title="login"
                />
              </div>
              <div class="paymet_setion">
                @include('_form.success')

                <div class="buy_cards_block">
                  @php $i = 1 @endphp
                  @foreach($relatedBatches as $relatedBatch)
                  <div  class="card_cart_div">
                    <a href="{{ route('cart.remove', $relatedBatch->id) }}" class="close"></a>
                      <div style="cursor:pointer;" onClick="(function(){
                        window.location.href = '/testing/public/student-details/{{ $relatedBatch->id }}';
                        })();return false;" class="single-district card{{ $i }}">
                        {{-- @php $i =1 @endphp --}}
                          <div class="card_img mb-3">
                              <!--@if($relatedBatch->subject->name == 'English')-->
                              <!--    <img src="{{ asset('frontend/assets/English/English.jpg') }}" alt="">-->
                              <!--@endif-->
                              <!--@if($relatedBatch->subject->name == 'Maths')-->
                              <!--    {{-- <img src="{{ asset('frontend/assets/Maths/Maths.jpg') }}" alt=""> --}}-->
                              <!--    <img src="{{ asset('frontend/assets/Maths/Math.jpg') }}" alt="">-->
                              <!--@endif-->
                              <!--@if($relatedBatch->subject->name == 'Physics')-->
                              <!--    <img src="{{ asset('frontend/assets/Physics/Physics.jpg') }}" alt="">-->
                              <!--@endif-->
                              <!--@if($relatedBatch->subject->name == 'Chemistry')-->
                              <!--    <img src="{{ asset('frontend/assets/card-cover.png') }}" alt="">-->
                              <!--@endif-->
                              
                                @if($relatedBatch->subject->name == 'English')
                                
                                  <img style="width:100%; border-radius:10px;" src="{{ asset('frontend/assets/English/English.jpg') }}" alt="">
                                
                                @elseif($relatedBatch->subject->name == 'Maths')
                                
                                    <img  style="width:100%; border-radius:10px;" src="{{ asset('frontend/assets/Maths/Math.jpg') }}" alt="">
                                
                                @elseif($relatedBatch->subject->name == 'Physics')
                                
                                    <img  style="width:100%; border-radius:10px;" src="{{ asset('frontend/assets/Physics/Physics.jpg') }}" alt="">
                                
                                @elseif($relatedBatch->subject->name == 'Chemistry')
                                
                                    <img style="width:100%;border-radius:10px;" src="{{ asset('frontend/assets/card-cover.png') }}" alt="">
                                
                                @elseif($relatedBatch->subject->name == 'Essay')
                                
                                    <img  style="width:100%;border-radius:10px;" src="{{ asset('frontend/assets/Essay/Essay.jpg') }}" alt="">
                                
                                @else
                                
                                <img style="width:100%;border-radius:10px;" src="{{ asset('frontend/assets/English/English.jpg')}}" alt="">
                                
                                @endif
                                {{-- <img src="{{ asset('wa/assets/img/card-cover.png') }}"> --}}
                          </div>
                          <div class="card_block_info pl-3 pr-3">
                              <div class="card_info">
                                  <p>{{ $relatedBatch->classSettings->name }}</p>
                                  <p>{{ $relatedBatch->subject->name }}</p>
                              </div>
                              <div class="card_details">
                                  <div class="seat_block pr-3">
                                      <p>No Of Seats</p>
                                      <p>{{ $relatedBatch->no_of_seats }}</p>
                                  </div>
                                  {{-- <div class="border_div pl-3 "></div> --}}
                                  {{-- <div class="date_block">
                                      <p>No Of Seats</p>
                                      <p>{{ $batch->no_of_seats }}</p>
                                      <p>32</p>
                                  </div> --}}
                              </div>
                              <div class="class_section">
                                <div class="class_type">class type</div>
                                <div>
                                    <span class="online">
                                    {{ $relatedBatch->status == 1 ? 'Online' : 'Offline' }}
                                    </span>
                                    {{-- for color  --}}
                                    <span class="dot{{ $relatedBatch->status == 1 ? '' : '-prime' }}"></span></div>
                                </div>
                            </div>
                          <div class="view_detail_block pb-3">
                              <a href="#" class="view_detail">
                                  View details
                              </a>
                              <a href="#" class="price_card price_bg{{ $i }}">
                                &pound; {{ $relatedBatch->batch_price_per_session }}
                              </a>
                          </div>
                          {{-- @php $i++ @endphp --}}

                      </div>
                  </div>
                  @php $i++ @endphp
                  @endforeach

                </div>
                <hr />
                <div class="coupon_block">
                  <span>
                    <input
                      type="text"
                      class="form-control"
                      placeholder="Discount code"
                    />
                  </span>
                  <span
                    ><button class="btn disabled apply_cta">Apply</button></span
                  >
                </div>
                <div>
                  <div class="cource_detail_section">
                    <div>Course cost</div>
                    <div>£ {{ $totalPrice ?? 0 }}</div>
                    <!--<div>£ {{ $relatedBatches->sum('batch_price_per_session') }}</div>-->
                  </div>
                  <div class="cource_detail_section"> 
                    <div>Tax </div>
                    <div>£  0</div>
                  </div>
                  {{-- <div class="cource_detail_section">
                    <div>Tax 2</div>
                    <div>£ 150</div>
                  </div> --}}
                </div>
                <hr class="border_bottom" />
                <div class="total_amount_block">
                  <div class="total">Total</div>
                  <div>£ {{ $totalPrice ?? 0 }}</div>
                  <!--<div>£ {{$relatedBatches->sum('batch_price_per_session')}}</div>-->
                </div>
                <div class="form-group term_pera mt-3">
                  <label class="container-checkbox">
                    <input type="checkbox" checked="checked" required="" />
                    <span class="checkmark-box"></span>
                    I accept the <a href="#">terms and conditions</a>.
                  </label>
                </div>
                <div class="pay_cta mb-5">
                  @guest
                  <button class="pay_now btn desktopshow" data-toggle="modal" data-target="#exampleModal">Pay Now</button>
                @endguest
                @auth
                <form method="POST" id="paymentForm" action="{{ route('payment.makePayment') }}">
                  @csrf
                  <button type="submit" id="btReload" class="pay_now btn desktopshow" >Pay Now</button>
                </form>
                @endauth
                </div>

                  <!-- Modal -->
                  {{-- <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                      <div class="modal-content" style="background-color: #EAEAEA">
                        <a href="/"><img alt="Paris" style="width:27%;" src="{{ asset('wa/assets/img/logo.png')}}"></a><br>
                        <h4 style="text-align: center;" >Student Login</h4>
                        <div class="modal-header">
                          <h5 class="modal-title" id="exampleModalLongTitle"></h5>
                        </div>
                        <div class="modal-body" >
                          <form>
                            @csrf
                            <div id="error" class="alert alert-danger">
                              Incorrect Email Or Password
                            </div>
                            <div id="email_password" class="alert alert-danger">
                              Please Enter Email and Password
                            </div>
                            @include('_form.input', ['title' => 'Email Address', 'name' => 'email'])
                            @include('_form.input', ['title' => 'Password', 'name' => 'password', 'type' => 'password'])
                            <div class="form-group row">
                                <div class="col-md-6 offset-md-4">
                                    {{-- <div class="form-check">
                                        <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>

                                        <label class="form-check-label" for="remember">
                                            {{ __('Remember Me') }}
                                        </label>
                                    </div> --}}
                                {{-- </div>
                            </div>

                            <div class="form-group mb-0 text-center">
                                <button style="background: #1d6771;" id="submitLogin" class="btn btn-primary" type="button"> Log In </button>
                            </div>
                        </form>
                        </div>
                        <div class="modal-footer">
                          <button style="background: #1d6771;" type="button" class="btn btn-secondary" data-dismiss="modal">Close</button> --}}
                          {{-- <button type="button" class="btn btn-primary">Save changes</button> --}}
                        {{-- </div>
                      </div>
                    </div>
                  </div> --}}
            {{-- close model --}}
            <section class="modal_section">
                  <!-- Modal -->
                    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                      <div class="modal-dialog" role="document">
                        <div class="modal-content">
                          <div class="modal-body">
                            <section class="modal_tab">
                                <div class="container-fluid">
                                  <div class="row">
                                    <div class="col-sm-12">
                                      <div class="modal_logo text-center">
                                          <a href="/testing/public"><img alt="logo-img" title="logo-img" src="{{asset('wa/assets/img/logo.png')}}" width="120"></a>
                                          
                                          <!--<img alt="logo-img" title="logo-img" src="/testing/public/wa/assets/img/logo.png" width="120">-->
                                      </div>
                                        <div class="modal_cta_sections mt-5">
                                          <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                                            <li class="nav-item text-center"> <a class="nav-link active btl" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true"><button id="" class="btn btn_block_modal"> Login</button></a> </li>
                                            <li class="nav-item text-center"> <a class="nav-link btr" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false"><button id="login-modal" class="btn btn_block_modal active">Sign up</button></a> </li>
                                          </ul>
                                        </div>

                                        <div class="tab-content" id="pills-tabContent">
                                          <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                                            <div class="modal_login_section">
                                              <div class="pos-rel">
                                                <div id="organizer-details" class="tab-pane active">
                                                  <form class="seminor-login-form">
                                                    @csrf
                                                    <div id="error" class="alert alert-danger">
                                                        Incorrect Email Or Password
                                                        </div>
                                                        <div id="email_password" class="alert alert-danger">
                                                        Please Enter Email and Password
                                                        </div>

                                                    <div class="form-group">
                                                    @include('_form.input', ['title' => 'Email Address', 'name' => 'email'])
                                                    {{-- <input type="email" name="email" id="email" class="form-control" required="" autocomplete="off"> --}}
                                                    {{-- <label class="form-control-placeholder" for="contact-person">Email Address</label> --}}
                                                </div>
                                                <div class="form-group">
                                                        @include('_form.input', ['title' => 'Password', 'name' => 'password', 'type' => 'password'])
                                                      {{-- <input type="password" name="password" class="form-control" required="" autocomplete="off"> --}}
                                                      {{-- <label class="form-control-placeholder" for="contact-email">Password</label> --}}
                                                    </div>
                                                    <div class="btn-check-log text-center">
                                                      <button id="submitLogin" class="btn-check-login loginmodal_cta" type="button">
                                                        Login
                                                      </button>
                                                    </div>

                                                    <div class="form-group mt-3">


                                                        {{-- <label class="form-check-label" for="remember"> --}}

                                                        <label class="container-checkbox">
                                                            {{ __('Remember Me') }}
                                                            {{-- Remember Me --}}
                                                        <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>
                                                        {{-- <input type="checkbox" checked="checked" required=""> --}}
                                                        <span class="checkmark-box"></span>
                                                      </label>
                                                    </div>
                                                  </form>
                                                </div>
                                                <!-- Tab panes -->
                                              </div>
                                            </div>
                                          </div>
                                          <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
                                        <div class="modal_signup_section">
                                          <div class="pos-rel">
                                            <div id="organizer-details" class="tab-pane active">
                                              <form class="seminor-login-form">
                                                <div class="form-group">
                                                    @include('_form.input', ['title' => 'First Name', 'name' => 'first_name', 'class'=>'form-control'])
                                                    {{-- <input type="text" class="form-control" name="first_name" id="first_name" required="" autocomplete="off">
                                                    <label class="form-control-placeholder" for="first_name">First Name</label> --}}
                                                </div>
                                                <div class="form-group">
                                                    @include('_form.input', ['title' => 'Last Name', 'name' => 'last_name', 'class'=>'form-control'])
                                                  {{-- <input type="text" class="form-control" name="last_name" required="" autocomplete="off">
                                                  <label class="form-control-placeholder" for="last_name">Last Name</label> --}}
                                                </div>
                                                <div class="form-group">
                                                  <input type="email" class="form-control" required="" autocomplete="off">
                                                  <label class="form-control-placeholder" for="contact-person">Email Address</label>
                                                </div>
                                                <div class="form-group">
                                                  <input type="password" class="form-control" required="" autocomplete="off">
                                                  <label class="form-control-placeholder" for="contact-email">Password</label>
                                                </div>
                                                <div class="btn-check-log text-center">
                                                  <button type="button" id="signUp" class="btn-check-login loginmodal_cta">
                                                    Sign up
                                                  </button>
                                                </div>

                                                <div class="form-group mt-3">
                                                  <label class="container-checkbox">
                                                    Remember Me
                                                    <input type="checkbox" checked="checked" required="">
                                                    <span class="checkmark-box"></span>
                                                  </label>
                                                </div>
                                              </form>
                                            </div>
                                            <!-- Tab panes -->
                                          </div>
                                        </div>

                                          </div>
                                        </div>



                                      <div class="sepration text-center">
                                        <p class="subtitle fancy"><span>OR</span></p>
                                      </div>
                                      <div class="social_icon ml-1 social_icon_modal">
                                        <a href="#"> <img src="{{asset('wa/assets/img/fb.svg')}}"></a>
                                        <a href="#"> <img src="{{asset('wa/assets/img/Google.svg')}}"></a>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </section>
                          </div>
                        </div>
                      </div>
                    </div>
                    </section>

              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    @endsection
    <!-- Swiper JS -->
    <script>
      document.FIX_HEADER_TOP = 35;
    </script>
    @section('js')
    <script src="{{ asset('wa/buynow.js') }}"></script>

    <script src="{{asset('wa/coustom.js') }}"></script>
    <script>

      $('#error').hide();
      $('#email_password').hide();
      // email_password
      $('#submitLogin').on('click', function(){

          // ajax for login
          var email = $('#email').val();
          var password = $('#password').val();
          if(email == '' && password == '')
          {
           $('#email_password').show();
          }
          $.post( "/testing/public/login-api",
            { email: email, password: password, _token : "{{ csrf_token() }}" }).done(function( data ) {
            if(data == 'success')
            {
                // window.location.href="/pay";
              location.reload();
            // alert("logged in");
            // $("#paymentForm").submit();


            }else {
              $('#error').show();

            }
          });
      })

    </script>
    <script>
        $('#signUp').on('click', function(){
            var fname=$('#first_name').val();
            var lname=$('#last_name').val();
            console.log(fname);
            console.log(lname);
        })
    </script>
    @endsection

    {{-- for scroll --}}

    <!--<script src="coustom.js"></script>-->
