@extends('layouts.main')
@section('css')
<link rel="stylesheet" href="{{ asset('wa/style.css') }}">
@endsection
@section('content')


    <section class="d-flex justify-content-center">
      <section class="image_section">
        <div class="container-fluid">
          <div class="row">
            <div class="col-sm-12">
              <div class="image_block">
                <img class="register-img" src="{{ asset('wa/assets/img/register.png') }}" alt="login" title="login" />
              </div>
            </div>
          </div>
        </div>
      </section>
      <section class="login_block_block">
        <div class="container-fluid">
          <div class="row">
            <div class="col-sm-12">
              <div class="register_title mt-5 mb-5">Register here</div>
              <div class="pos-rel">
                <div id="organizer-details" class="tab-pane active">
                  @include('_form.success')

                  <form class="seminor-login-form" method="POST" action="{{ route('student-register') }}">
                    @csrf
                    <div class="form-group">
                      <input
                        type="text"
                        name="name"
                        class="form-control"
                        required
                        autocomplete="off"
                        value="{{old('name')}}"
                      />
                      <label
                        class="form-control-placeholder"
                        for="alternative-email"
                        >First Name</label
                      >
                    </div>
                    <div class="form-group">
                      <input
                        type="text"
                        name="last_name"
                        class="form-control"
                        required
                        autocomplete="off"
                        value="{{old('last_name')}}"
                      />
                      <label
                        class="form-control-placeholder"
                        for="contact-number"
                        >Last Name</label
                      >
                    </div>
                    <div class="form-group">
                      <select name="class_master_id" class="form-control">
                        @foreach($classMasters as $classMaster)

                          <option value="{{ $classMaster->id }}">{{ $classMaster->name }}</option>
                        @endforeach
                      </select>
                      <label
                        class="form-control-placeholder"
                        for="contact-person"
                        >Year</label
                      >
                    </div>
                    <div class="form-group">
                      <input
                        type="email"
                        name="email"
                        class="form-control"
                        required
                        autocomplete="off"
                        value="{{old('email')}}"
                      />
                      <label
                        class="form-control-placeholder"
                        for="contact-person"
                        >Email Address</label
                      >
                    </div>
                    <div class="form-group">
                      <input
                        type="number"
                        name="mobile_number"
                        class="form-control"
                        required
                        autocomplete="off"
                         value="{{old('mobile_number')}}"
                      />
                      <label
                        class="form-control-placeholder"
                        for="alternative-number"
                        >Mobile No.</label
                      >
                    </div>
                    <div class="form-group">
                      <input
                        type="password"
                        name="password"
                        class="form-control"
                        required
                        autocomplete="off"
                      />
                      <label
                        class="form-control-placeholder"
                        for="contact-email"
                        >Password</label
                      >
                      <small style="color:red;">Password Should be of 8 characters *</small>
                    </div>
                      <div class="form-group">
                        <input
                          type="password"
                          name="password_confirmation"
                          class="form-control"
                          required
                          autocomplete="off"
                        />
                        <label
                          class="form-control-placeholder"
                          for="contact-email"
                          > confirmation Password</label
                        >
                    </div>
                     <div class="btn-check-log">
                      <button type="submit" class="btn-check-login">
                        Register
                      </button>
                    </div>
                    <div class="form-group mt-3">
                      <label class="container-checkbox">
                        Remember Me
                        <input type="checkbox" checked="checked" required />
                        <span class="checkmark-box"></span>
                      </label>
                    </div>

                  </form>
                </div>
                <!-- Tab panes -->
              </div>
              <div class="sepration ml-5">
                <p class="subtitle fancy"><span>OR</span></p>
              </div>
              <div class="social_icon ml-1">
                <a href="#"> <img src="{{ asset('wa/assets/img/fb.svg') }}" /></a>
                <a href="#"> <img src="{{ asset('wa/assets/img/Google.svg') }}" /></a>
              </div>
              <p class="ml-1 mt-3 class="loginpera">
                <span class="account">Already have an account? </span
                ><span class="register"><a href="{{ url('student-login') }}">Login here</a></span>
              </p>
            </div>
          </div>
        </div>
      </section>
    </section>

    <!-- card-tab section  -->
    <!-- footer from section -->
     <script>
      document.FIX_HEADER_TOP = 35;
    </script>
    <!-- Swiper JS -->
    <script src="{{ asset('wa/coustom.js') }}"></script>
@endsection
