@extends('layouts.app')

@section('content')
<!-- start page title -->
<div class="row">
  <div class="col-12">
      <div class="page-title-box">
          <div class="page-title-right">
              <ol class="breadcrumb m-0">
              </ol>
          </div>
          <h4 class="page-title">Edit Profile</h4>
      </div>
  </div>
</div>     
<!-- end page title --> 

     <div class="content">
      <div class="row">
        <div class="col-md-12">
          <div class="card">
            <div class="card-body">

                <h4 class="header-title mb-3">{{ auth()->user()->role }} profile</h4>

                    <div id="basicwizard1">

                        <ul class="nav nav-pills nav-justified form-wizard-header mb-4">
                            <li class="nav-item">
                                <a href="#basictab1" data-toggle="tab" class="nav-link rounded-0 pt-2 pb-2"> 
                                    <i class="mdi mdi-account-circle mr-1"></i>
                                    <span class="d-none d-sm-inline">Personal Info</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="#basictab2" data-toggle="tab" class="nav-link rounded-0 pt-2 pb-2 active">
                                    <i class="mdi mdi-face-profile mr-1"></i>
                                    <span class="d-none d-sm-inline">Professional Info</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="#basictab3" data-toggle="tab" class="nav-link rounded-0 pt-2 pb-2">
                                    <i class="mdi mdi-checkbox-marked-circle-outline mr-1"></i>
                                    <span class="d-none d-sm-inline">Educational Info</span>
                                </a>
                            </li>
                        </ul>

                        <div class="tab-content b-0 mb-0">
                            <div class="tab-pane" id="basictab1">
                                <div class="row">
                                    <div class="col-12">
                                      @if (session('status'))
                                        <div class="row">
                                          <div class="col-sm-12">
                                            <div class="alert alert-success">
                                              <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                <i class="material-icons">close</i>
                                              </button>
                                              <span>{{ session('status') }}</span>
                                            </div>
                                          </div>
                                        </div>
                                      @endif
                                        {{-- <form method="post" action="{{ route('profile.update') }}" autocomplete="off" class="form-horizontal" enctype="multipart/form-data"> --}}
                                        <form method="post" action="{{ route('image-upload')}}" autocomplete="off" class="form-horizontal" enctype="multipart/form-data">
                                          @csrf
                                          <div class="row">
                                            <div class="col">
                                              <div class="form-group">
                                                <label for="simpleinput">Name</label>
                                                <input type="text" id="simpleinput" name="name" placeholder="Name" id="input-name" class="form-control"  value="{{ old('name', auth()->user()->name) }}">
                                              </div>
                                            </div>
                        
                                            <div class="col">
                                             <div class="form-group">
                                              <label for="simpleinput">Email</label>
                                              <input type="email" id="input-email"  name="email" placeholder="Email" class="form-control" value="{{ old('email', auth()->user()->email) }}">
                                            </div>
                                            </div>
                                          </div>
                                           

                                          {{-- image/file --}}
                                          <div class="row">
                                            <div class="col">
                                              <div class="form-group">
                                                <label for="simpleinput">File / Image</label>
                                                <div class="input-group">
                                                  <div class="custom-file">
                                                      <input type="file" class="custom-file-input" name="image" id="image">
                                                      <label class="custom-file-label" for="inputGroupFile04">Choose file</label>
                                                  </div>
                                              </div>
                                              </div>
                                            </div>

                                            {{--Video --}}
                                            <div class="col">
                                             <div class="form-group">
                                              <label for="video">Video</label>
                                              <input type="text" id="video"  name="video" placeholder="Video" class="form-control">
                                            </div>
                                            </div>
                                          </div>
                                          <!-- About [editor]-->
                                         <label>About</label>
                                          <div id="summernote-basic" name="about"></div> 
                                          <div class="row mt-2">
                                            <div class="col-md-12">
                                              <button type="submit" class="btn btn-primary">Save</button>
                                            </div>
                                          </div>
                                        </form>
                                    </div> <!-- end col -->
                                </div> <!-- end row -->
                                {{-- submit button here --}}
                            </div>

                            <div class="tab-pane" id="basictab2">
                              <form method="post" action="{{ route('profile.password') }}" autocomplete="off" class="form-horizontal">
                                @csrf
                                @method('put')
                              <div class="row">
                                <label class="col-sm-2 col-form-label" for="input-current-password">{{ __('Current Password') }}</label>
                                <div class="col-sm-7">
                                  <div class="form-group{{ $errors->has('old_password') ? ' has-danger' : '' }}">
                                    <input class="form-control{{ $errors->has('old_password') ? ' is-invalid' : '' }}" input type="password" name="old_password" id="input-current-password" placeholder="{{ __('Current Password') }}" value="" required />
                                    @if ($errors->has('old_password'))
                                      <span id="name-error" class="error text-danger" for="input-name">{{ $errors->first('old_password') }}</span>
                                    @endif
                                  </div>
                                </div>
                              </div>
                              <div class="row">
                                <label class="col-sm-2 col-form-label" for="input-password">{{ __('New Password') }}</label>
                                <div class="col-sm-7">
                                  <div class="form-group{{ $errors->has('password') ? ' has-danger' : '' }}">
                                    <input class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" id="input-password" type="password" placeholder="{{ __('New Password') }}" value="" required />
                                    @if ($errors->has('password'))
                                      <span id="password-error" class="error text-danger" for="input-password">{{ $errors->first('password') }}</span>
                                    @endif
                                  </div>
                                </div>
                              </div>
              
                              <div class="row">
                                <label class="col-sm-2 col-form-label" for="input-password-confirmation">{{ __('Confirm New Password') }}</label>
                                <div class="col-sm-7">
                                  <div class="form-group">
                                    <input class="form-control" name="password_confirmation" id="input-password-confirmation" type="password" placeholder="{{ __('Confirm New Password') }}" value="" required />
                                  </div>
                                </div>
                              </div>
                              <div class="row mt-2">
                                <div class="col-md-12">
                                  <button type="submit" class="btn btn-primary">Save</button>
                                </div>
                              </div>
                              </form>
                            </div>

                            <div class="tab-pane" id="basictab3">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="text-center">
                                            <h2 class="mt-0"><i class="mdi mdi-check-all"></i></h2>
                                            <h3 class="mt-0">Thank you !</h3>

                                            <p class="w-75 mb-2 mx-auto">Quisque nec turpis at urna dictum luctus. Suspendisse convallis dignissim eros at volutpat. In egestas mattis dui. Aliquam
                                                mattis dictum aliquet.</p>

                                            <div class="mb-3">
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" id="customCheck1">
                                                    <label class="custom-control-label" for="customCheck1">I agree with the Terms and Conditions</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div> <!-- end col -->
                                </div> <!-- end row -->
                            </div>

                        </div> <!-- tab-content -->
                    </div> <!-- end #basicwizard-->
                </form>

            </div> <!-- end card-body -->
        </div> <!-- end card-->
        </div>
      </div>
      <div class="row">
        <div class="col-md-12">
          <form method="post" action="{{ route('profile.update') }}" autocomplete="off" class="form-horizontal">
            @csrf
            @method('put')

        </div>
      </div>
      <div class="row">
        <div class="col-md-12">
          <form method="post" action="{{ route('profile.password') }}" class="form-horizontal">
            @csrf
            @method('put')

          </form>
        </div>
      </div>

     </div>
@endsection

@section('scripts')
  <!-- demo app -->
    <script src="/assets/js/pages/demo.form-wizard.js"></script>
    <script>
       $("#basicwizard1").bootstrapWizard();
    </script>

  <!-- end demo js-->
@endsection