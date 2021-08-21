@extends('layouts.teacher_dashboard')
@section('content')
<link rel="stylesheet" href="{{asset('wa/teacherdashboard/css/teacherProfile.css')}}">
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800 session_heading">My Session</h1>
    </div>
                    <!-- test-wizard -->
                    <div class="container-fluid mt-5">
                        <a class="direction_nav" href="{{route('teacher-dashboard')}}">
                            <span class="arrow-right"><i class="fa fa-angle-left" aria-hidden="true"></i></span>
                            <span>Back to Dashbaord</span>
                        </a>
                        <div class="stepwizard">
                            <div class="stepwizard-row setup-panel">
                                <div class="stepwizard-step col-xs-3">
                                    <a href="#step-1" type="button" class="btn btn-success btn-circle active">1</a>
                                    <p class=" tab_font_title active">PERSONAL INFORMATION</p>
                                </div>
                                <div class="stepwizard-step col-xs-3">
                                    <a href="#step-2" type="button" class="btn btn-default btn-circle"
                                        disabled="disabled">2</a>
                                    <p class="tab_font_title">Experience</p>
                                </div>
                                <div class="stepwizard-step col-xs-3">
                                    <a href="#step-3" id="button3" type="button" class="btn btn-default btn-circle"
                                        disabled="disabled">3</a>
                                    <p class="tab_font_title">Subjects</p>
                                </div>
                                <div class="stepwizard-step col-xs-3">
                                    <a href="#step-4" type="button" class="btn btn-default btn-circle"
                                        disabled="disabled">4</a>
                                    <p class="tab_font_title">Teaching Expertise</p>
                                </div>
                                <div class="stepwizard-step col-xs-3">
                                    <a href="#step-5" type="button" class="btn btn-default btn-circle"
                                        disabled="disabled">5</a>
                                    <p class="tab_font_title">Availability</p>
                                </div>
                                <div class="stepwizard-step col-xs-3">
                                    <a href="#step-6" type="button" class="btn btn-default btn-circle"
                                        disabled="disabled">6</a>
                                    <p class="tab_font_title">Pricing</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-6">


                            {{--Form for profile photo upload--}}
                            <div class="panel panel-primary setup-content" id="step-1">
                                <div class="panel-heading">
                                    <h3 class="panel-title personal">
                                        <span><img src="{{asset('wa/teacherdashboard/img/pf-icon.svg')}}" width="50" height="50"></span>PERSONAL
                                        INFORMATION
                                    </h3>

                                    <div class="upload_border border-dotted">
                                         <form enctype="multipart/form-data" id="profile_photo_form">
                                            @csrf
                                            <label>
                                                <img src="{{asset('wa/teacherdashboard/img/Frame 69623.svg')}}" width="65" height="65" id="preview-image-before-upload">
                                                <input type="file" name="profile_photo_input" id="profile_upload" style="cursor: pointer;">
                                            </label>
                                            <div>
                                                <button class="upload_btn" type="submit"><img src="{{asset('wa/teacherdashboard/img/upload 1.svg')}}" width="20"
                                                        height="20">Upload</button>
                                            </div>
                                            <span class="text-danger" id="image-input-error"></span>
                                            <span class="text-primary" id="image-input-success"></span>
                                            {{-- <p>Upload Image</p> --}}
                                            <div style="display: none;" id="profile_pic_loader">
                                              <img src="{{asset('wa/assets/img/ajax-loader.gif')}}" alt="">
                                              <p><b>Please wait...</b></p>
                                            </div>
                                         </form>
                                        </div>
                                    </div>
                                    <div class="panel-body">
                                    <form role="form" id="profile_details">
                                            @csrf
                                        <div class="form-group session_info">
                                            <label for="text">Name</label>
                                            <input type="text" class="form-control" name="teacher_name" id="session-data"
                                                aria-describedby="emailHelp" placeholder="Enter Name" value="{{auth()->user()->name}}">
                                        </div>
                                        <div class="d-flex">
                                            <div class="form-group session_info">
                                                <label for="text">Phone Number</label>
                                                <input type="text" class="form-control" id="session-data"
                                                    aria-describedby="emailHelp" placeholder="Enter Phone Number" name="teacher_phone" value="{{auth()->user()->contact_number}}">
                                                    <span><p>The phone numbers should be of 10 digits</p></span>
                                            </div>
                                            {{-- <button class="btn  verifyBtn pull-left" type="button">Verify</button> --}}
                                        </div>
                                        <div class="form-group session_info">
                                            <label for="text">Email ID</label>
                                            <input type="text" class="form-control" id="session-data"
                                                aria-describedby="emailHelp" placeholder="Enter Email Id" name="teacher_email" value="{{auth()->user()->email}}" disabled>
                                        </div>
                                        @foreach ($images as $image)
                                        <div class="row">
                                            <div class="col-md-3">
                                                <div class="form-group session_info">
                                                    <label for="text">Gender</label>
                                                    <!-- <input type="text" class="form-control" id="session-data" aria-describedby="emailHelp" placeholder="Select your Gender"> -->
                                                    <select class="form-control" name="gender">
                                                        <optgroup label="gender">
                                                            <option value="male">Male</option>
                                                            <option value="female">Female</option>
                                                            {{-- <option value="saab">Female</option> --}}
                                                        </optgroup>
                                                    </select>
                                                </div>
                                            </div>

                                        </div>
                                         <div>
                                                <div class="form-group session_info">
                                                    <label for="textarea">About</label>
                                                    <textarea rows="5" class="form-control" id="session-data"
                                                        placeholder="Write something about yourself" name="about" value="">{{$image->about}}</textarea>
                                                </div>
                                            </div>
                                        <div class="form-group session_info">
                                            <label for="text">Address</label>
                                            <input type="text" class="form-control" id="session-data"
                                                aria-describedby="emailHelp" placeholder="Address" name="address" value="{{$image->address}}">
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group session_info">
                                                    <label for="text">City</label>
                                                    <input type="text" class="form-control" id="session-data"
                                                        aria-describedby="emailHelp" placeholder="Enter City" name="city" value="{{$image->city}}">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group session_info">
                                                    <label for="text">Zip Code</label>
                                                    <input type="text" class="form-control" id="session-data"
                                                        placeholder="Enter Location" name="zipcode" value="{{$image->zip_code}}">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group session_info">
                                                    <label for="text">Country</label>
                                                    <input type="text" class="form-control" id="session-data"
                                                        aria-describedby="emailHelp" placeholder="Select Country" name="country" value="{{$image->country}}">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group session_info">
                                                    <label for="text">Time Zone</label>
                                                    <input type="text" class="form-control" id="session-data"
                                                        placeholder="Enter your time zone" name="timezone" value="{{$image->time_zone}}">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group session_info">
                                                {{-- <button type="submit" class="form-control">Submit</button> --}}
                                                 <button class="btn verifyBtn pull-left" type="submit">Submit</button>
                                            </div>
                                        </div>
                                        @endforeach
                                    <span class="text-primary" id="profile-information-sucess"></span>
                                    <span class="text-danger" id="profile-information-error"></span>
                                    <div style="display: none;" id="profile_info_loader">
                                              <img src="{{asset('wa/assets/img/ajax-loader.gif')}}" alt="">
                                              <p><b>Please wait...</b></p>
                                            </div>
                                    </form>

                                        <p>ID Proof</p>
                                        <div class="id_proof border-dotted">
                                    @if($check==true)
                                        <img src="{{asset('storage/id/'.$check)}}" id="before-id" width="450" height="200">
                                    @else
                                         <form role="form" enctype="multipart/form-data" id="profile_idphoto">
                                            @csrf
                                            <img src="{{asset('wa/teacherdashboard/img/Frame 69623.svg')}}" width="65" height="65" id="before-id">
                                            <input type="file" name="id_photo" id="id_upload" style="cursor: pointer;">
                                            <p>Upload Image</p>
                                            <div>
                                                <button class="upload_btn"><img src="{{asset('wa/teacherdashboard/img/upload 1.svg')}}" width="20"
                                                        height="20">Upload</button>
                                            </div>
                                        </form>
                                        <span class="text-primary" id="id-input-success"></span>
                                      <span class="text-danger" id="id-input-error"></span>
                                        <div style="display: none;" id="profile_id_loader">
                                              <img src="{{asset('wa/assets/img/ajax-loader.gif')}}" alt="">
                                              <p><b>Please wait...</b></p>
                                            </div>
                                    @endif
                                       
                                        </div>
                                        <p>The format of image should be JPG, PNG or PDF and size should not exeed 300KB
                                        </p>


                                    </div>
                                </div>
                                <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
                                <script type="text/javascript">
                                    $(document).ready(function (e) {


                                        $('#profile_upload').change(function(){

                                            let reader = new FileReader();

                                            reader.onload = (e) => {

                                            $('#preview-image-before-upload').attr('src', e.target.result);
                                            }

                                            reader.readAsDataURL(this.files[0]);

                                        });

                                        });
                                </script>
                                <script type="text/javascript">
                                    $(document).ready(function (e) {


                                        $('#id_upload').change(function(){

                                            let reader = new FileReader();

                                            reader.onload = (e) => {

                                            $('#before-id').attr('src', e.target.result);
                                            }

                                            reader.readAsDataURL(this.files[0]);

                                        });

                                        });
                                </script>
                        </div>


                    </div>
                <div class="panel panel-primary setup-content" id="step-2">
                  <div class="panel-heading">
                    <!-- <h3 class="panel-title">Destination</h3> -->
                    <h3 class="panel-title personal">
                      <span
                        ><img
                          src="{{asset('wa/teacherdashboard/img/experience.svg')}}"
                          width="50"
                          height="50" /></span
                      >EXPERIENCE
                    </h3>
                  </div>
                  <div class="panel-body">
                    <div class="table-responsive" id="sailorTableArea">
                      <table
                        id="sailorTable"
                        class="table table-striped table-bordered"
                        width="100%"
                      >
                        <thead>
                          <tr>
                            <th>Experience Type</th>
                            <th>Title</th>
                            <th>Institution/Organisation</th>
                            <th>Location</th>
                            <th>Start-End Year</th>
                            <th>Certification</th>
                            <th>Action</th>
                          </tr>
                        </thead>
                        <tbody>
                            @forelse ($teacher_experiences as $teacher_experience)
                            <tr>
                            <td>{{$teacher_experience->experience_type}}</td>
                            <td>{{$teacher_experience->experience_title}}</td>
                            <td>{{$teacher_experience->experience_org}}</td>
                            <td>{{$teacher_experience->experience_location}}</td>
                            <td>{{$teacher_experience->experience_startendyear}}</td>
                            <td>{{$teacher_experience->experience_certification}}</td>
                            <td>
                              <div class="d-flex">
                              <div><img src="{{asset('wa/teacherdashboard/img/delete.svg')}}" width="20" height="20" class="mr-3" data-toggle="modal" data-target="#exampleModal" onmouseover="this.style.cursor='pointer'"></div>

                                <div >
                                    <img src="{{asset('wa/teacherdashboard/img/edit.svg')}}" width="20" height="20" class="mr-3 editbutton" data-toggle="modal" data-target="#exampleModal1" onmouseover="this.style.cursor='pointer'" id="{{$teacher_experience->id}}">
                                </div>

                             </div>
                            </td>
                          </tr>
                            @empty
                             <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                          </tr>
                            @endforelse

                        </tbody>
                      </table>
                    </div>
                    <div class="row">
                      <button type="button" class="btn add_more_cta mt-4" data-toggle="modal" data-target="#exampleModal">Add More +</button>
                    </div>
                    <div class="row d-flex mt-3">
                      <a href="#" class="prev_cta_txt"><p class="mt-3">Prev</p></a>
                      <a href="#step-4" class="next_cta_pre "><p class="mt-3">Next</p></a>
                    </div>
                  </div>
                </div>
                 <!-- modal pup-up start -->
                <!-- Modal -->
                <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog form_data_modal" role="document">
                        <div class="modal-content">
                            <form role="form" id="experienceform">
                                @csrf
                            <div class="modal-header" >
                                <h5 class="modal-title" id="exampleModalLabel">Form Data</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">×</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="row">

                                    <div class="col-md-6">
                                        <div>
                              <div class="form-group session_info">
                                <label for="text" class="form_data_lable">Experience Type</label>
                                <input type="text" name="experience_type" class="form-control form_data_input" id="enter-experience" aria-describedby="enterExperience" placeholder="Enter Experience" >
                              </div>
                             </div>
                           </div>
                           <div class="col-md-6">
                            <div>
                              <div class="form-group session_info">
                                <label for="text" class="form_data_lable">Title</label>
                                <input type="text" name="experience_title" class="form-control form_data_input" id="enter-title" aria-describedby="emailHelp" placeholder="Enter Title">
                              </div>
                             </div>
                           </div>
                           <div class="col-md-6">
                            <div>
                              <div class="form-group session_info">
                                <label for="text" class="form_data_lable">Institution/Organisation</label>
                                <input type="text" name="experience_org" class="form-control form_data_input" id="organisation-data" aria-describedby="emailHelp" placeholder="Organisation">
                              </div>
                             </div>
                           </div>
                           <div class="col-md-6">
                            <div>
                              <div class="form-group session_info">
                                <label for="text" class="form_data_lable">Location</label>
                                <input type="text" name="experience_location" class="form-control form_data_input" id="location" aria-describedby="emailHelp" placeholder="Enter Location">
                              </div>
                             </div>
                           </div>
                           <div class="col-md-6">
                            <div>
                              <div class="form-group session_info">
                                <label for="text" class="form_data_lable">Start-End Year</label>
                                <input type="text" name="experience_startendyear" class="form-control form_data_input" id="session-data" aria-describedby="emailHelp" placeholder="Enter Year">
                              </div>
                             </div>
                           </div>
                           <div class="col-md-6">
                            <div>
                              <div class="form-group session_info">
                                <label for="text" class="form_data_lable">Certification</label>
                                <input type="text" name="experience_certification" class="form-control form_data_input" id="session-data" aria-describedby="emailHelp" placeholder="Enter Certification">
                              </div>
                             </div>
                            </div>
                        </div>
                      </div>
                      <div class="modal-footer">
                          <span class="text-primary" id="experience-success"></span>
                          <span class="text-danger" id="experience-error"></span>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save changes</button>
                    </div>
                </form>
                    </div>
                  </div>
                </div>

              <!-- modal pop up end -->
                    <!--modal for crate -->
                         <div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1" aria-hidden="true">
                    <div class="modal-dialog form_data_modal" role="document">
                        <div class="modal-content">
                            <form role="form" id="experienceform">
                                @csrf
                            <div class="modal-header" >
                                <h5 class="modal-title" id="exampleModalLabel1">Form Data</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">×</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="row">

                                    <div class="col-md-6">
                                        <div>
                              <div class="form-group session_info">
                                <label for="text" class="form_data_lable">Experience Type</label>
                                <input type="text" name="experience_type" class="form-control form_data_input" id="enter-experience" aria-describedby="enterExperience" placeholder="Enter Experience" >
                              </div>
                             </div>
                           </div>
                           <div class="col-md-6">
                            <div>
                              <div class="form-group session_info">
                                <label for="text" class="form_data_lable">Title</label>
                                <input type="text" name="experience_title" class="form-control form_data_input" id="enter-title" aria-describedby="emailHelp" placeholder="Enter Title">
                              </div>
                             </div>
                           </div>
                           <div class="col-md-6">
                            <div>
                              <div class="form-group session_info">
                                <label for="text" class="form_data_lable">Institution/Organisation</label>
                                <input type="text" name="experience_org" class="form-control form_data_input" id="organisation-data" aria-describedby="emailHelp" placeholder="Organisation">
                              </div>
                             </div>
                           </div>
                           <div class="col-md-6">
                            <div>
                              <div class="form-group session_info">
                                <label for="text" class="form_data_lable">Location</label>
                                <input type="text" name="experience_location" class="form-control form_data_input" id="location" aria-describedby="emailHelp" placeholder="Enter Location">
                              </div>
                             </div>
                           </div>
                           <div class="col-md-6">
                            <div>
                              <div class="form-group session_info">
                                <label for="text" class="form_data_lable">Start-End Year</label>
                                <input type="text" name="experience_startendyear" class="form-control form_data_input" id="session-data" aria-describedby="emailHelp" placeholder="Enter Year">
                              </div>
                             </div>
                           </div>
                           <div class="col-md-6">
                            <div>
                              <div class="form-group session_info">
                                <label for="text" class="form_data_lable">Certification</label>
                                <input type="text" name="experience_certification" class="form-control form_data_input" id="session-data" aria-describedby="emailHelp" placeholder="Enter Certification">
                              </div>
                             </div>
                            </div>
                        </div>
                      </div>
                      <div class="modal-footer">
                          <span class="text-primary" id="experience-success"></span>
                          <span class="text-danger" id="experience-error"></span>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save changes</button>
                    </div>
                </form>
                    </div>
                  </div>
                </div>

                    <!--end modal for crate -->
                    <!--step 3 starts here about teacher subjects -->
                <div class="panel panel-primary setup-content" id="step-3">
                  <div class="panel-heading">
                    <!-- <h3 class="panel-title">Schedule</h3> -->
                    <h3 class="panel-title personal">
                      <span class="pr-3"
                        ><img
                          src="{{asset('wa/teacherdashboard/img/subject.svg')}}"
                          width="50"
                          height="50" /></span
                      >Subjects
                    </h3>
                  </div>
                  <div class="panel-body">
                    <div class="row">
                      <div class="col-md-6 col-lg-6">
                        <p><strong>Select Student Group</strong></p>
                        <div class="row">
                          <div class="col-md-3 col-lg-3">
                            <input type="radio" id="agegroup1" name="agegroup" value="08 - 09 Years"/>
                            <label for="agegroup1" class="card-body border student_group_card">08 - 09 Years</label>
                            {{-- </div> --}}
                            </div>
                        <div class="col-md-3 col-lg-3">
                              <input type="radio" id="agegroup2" name="agegroup" value="10 - 11 Years"/>
                              <label for="agegroup2" class="card-body border student_group_card">10 - 11 Years</label>

                            </div>
                            <div class="col-md-3 col-lg-3">
                                <input type="radio" id="agegroup3" name="agegroup" value="12 - 14 Years"/>
                                <label for="agegroup3" class="card-body border student_group_card">12 - 14 Years</label>
                          </div>

                        </div>
                        <!-- tabsection start -->
                        <div class="container">
                          <div class="vertical-tabs">
                            <ul class="nav nav-tabs" role="tablist">
                                @foreach ($classes as $class)
                                <li class="nav-item">
                                  <a
                                  @if ($class->id==1)
                                    class="nav-link active clicklink"
                                 @else
                                    class="nav-link clicklink"
                                @endif
                                    data-toggle="tab"
                                    href="#pag{{$class->id}}"
                                    role="tab"
                                    aria-controls="home"
                                    id="{{$class->id}}"
                                    value="{{$class->id}}"
                                    >{{$class->name}}
                                    </a>
                                    <input type="hidden" id="{{$class->id}}" class="classId" value="{{$class->id}}">
                                </li>
                                @endforeach
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active" id="pag{{$class->id}}" role="tabpanel">
                                    <div class="sv-tab-panel">
                                        <div class="tab1_section_checkbox">
                                            <form id="subjectslist">
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                        <a href="#" class="prev_tab"><span>Prev</span></a>
                        <button
                        class="btn btn-primary nextBtn_cta pull-right"
                        type="submit"
                        id="submitButton"
                        >
                        Next
                    </button>
                    <span id="data-success"></span>
                    <span id="data-error"></span>
            </div>
        </div>

                              {{-- till here --}}
                <div class="panel panel-primary setup-content" id="step-4">
                  <div class="panel-heading">
                    <h3 class="panel-title personal">
                        <span class="pr-3"><img src="{{asset('wa/teacherdashboard/img/Expertise.svg')}}" width="50" height="50"></span>Teaching Expertise
                    </h3>
                  </div>
                  <div class="panel-body">
                   <div class="row">
                     <div class="col-md-6">
                      <div class="upload_border">
                          @forelse ($expertiseData as $data)
                        {{-- <img src="{{asset('wa/teacherdashboard/img/Frame 69623.svg')}}" width="65" height="65"> --}}
                        <textarea rows="3" cols="30" class="form-control" id="video_code" placeholder="Paste your Embed code here" name="about" value="{{$data->video_src}}">{{$data->video_src}}</textarea>
                        {{-- <p>Paste your Embeded code here</p> --}}
                      </div>
                       <div class="vedio_img">
                           {{-- <iframe width="560" height="315" src="https://www.youtube.com/embed/GRXaCfS1qj0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe> --}}

                        {{-- {{$data->video_src}} --}}
                        <iframe class="video_img" width="600" height="250" src="{{$data->video_src}}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        {{-- <img class="video_img" src="{{asset('wa/teacherdashboard/img/Video.svg')}}"> --}}
                        @empty
                        <textarea rows="3" cols="30" class="form-control" id="video_code" placeholder="Paste your Embed code here" name="about" value=""></textarea>
                                {{-- {{No Video found}} --}}
                        @endforelse
                       </div>
                       <div class="edit_delete_section text-center mt-3 mb-3">
                         <div class="vedio_delite"><img src="{{asset('wa/teacherdashboard/img/vedio-delite.svg')}}" ></div>
                         <div class="vedio_edit"><img src="{{asset('wa/teacherdashboard/img/vedio-edit.svg')}}" ></div>
                       </div>
                       <div class="row">
                        <div class="col-md-6">
                         <div>
                           <div class="form-group session_info">
                             <label for="text"><strong>Language Proficiency</strong></label>
                             <!-- <input type="text" class="form-control" id="session-data" aria-describedby="emailHelp" placeholder="Select your Gender"> -->
                             <select class="form-control" id="language_name">
                                 {{-- <optgroup label="gender"> --}}
                                     @foreach ($languages as $language)
                                     <option value="{{$language->language_name}}">{{$language->language_name}}</option>
                                     @endforeach
                                   {{-- <option value="saab">Saab</option> --}}
                                 {{-- </optgroup> --}}

                               </select>
                           </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div>
                            <div class="form-group session_info">
                              <label for="text"><strong>Language Proficiency</strong></label>
                              <!-- <input type="text" class="form-control" id="session-data" aria-describedby="emailHelp" placeholder="Select your Gender"> -->
                              <select class="form-control" id="proficiency">
                                  {{-- <optgroup label="gender"> --}}
                                    <option value="begineer">Begineer</option>
                                    <option value="proficient">Proficient</option>
                                    <option value="expert">Expert</option>
                                  {{-- </optgroup> --}}
                                </select>
                            </div>
                           </div>
                         </div>
                         {{-- <div class="col-md-6">
                          <div>
                            <div class="form-group session_info">
                              <label for="text"><strong>Language Proficiency</strong></label>
                              <!-- <input type="text" class="form-control" id="session-data" aria-describedby="emailHelp" placeholder="Select your Gender"> -->
                              <select class="form-control">
                                  <optgroup label="gender">
                                    <option value="volvo">Gender</option>
                                    <option value="saab">Saab</option>
                                  </optgroup>

                                </select>
                            </div>
                           </div>
                         </div> --}}
                         {{-- <div class="col-md-6">
                          <div>
                            <div class="form-group session_info">
                              <label for="text"><strong>Language Proficiency</strong></label>
                              <!-- <input type="text" class="form-control" id="session-data" aria-describedby="emailHelp" placeholder="Select your Gender"> -->
                              <select class="form-control">
                                  <optgroup label="gender">
                                    <option value="volvo">Gender</option>
                                    <option value="saab">Saab</option>
                                  </optgroup>

                                </select>
                            </div>
                           </div>
                         </div> --}}
                      </div>
                     </div>

                   </div>

                    {{-- <button class="btn add_more_cta pull-right" type="submit">
                      Add More +
                    </button> --}}

                    <div class="mt-5">
                      <a href="#step-3" class="prev_tab"><span>Prev</span></a>

                    <button
                      class="btn btn-primary nextBtn_cta pull-right"
                      type="button"
                      id="submitvideo"
                    >
                      Next
                    </button>
                </div>
                <div style="display: none;" id="video_loader">
                    <img src="{{asset('wa/assets/img/ajax-loader.gif')}}" alt="">
                    <p><b>Please wait...</b></p>
                </div>
                <span id="data-expertise-success"></span>
                <span id="data-expertise-error"></span>

                  </div>
                </div>



                    <!--end step 3 starts here about teacher subjects -->

<script>
$(document).ready(function(){
  $("#button3").click(function(){
    $(".special:first").addClass('active');
    var id=1
        $.ajax({
            type: 'post',
            url: '{{route("get-subject")}}',
            data: {
            '_token': '{{ csrf_token() }}',
            id:id,
            },
            success: function (response) {
            // alert(response);
            $('#subjectslist').html(response);
            },
            error: function (response) {
            $('#subjectslist').html(response);
            }
            });
  });
});
</script>
                     <script type="text/javascript">
                        $('#profile_photo_form').submit(function(e) {
                            e.preventDefault();
                            let formData = new FormData(this);
                            $('#image-input-error').text('');
                            $('#profile_pic_loader').show();
                            $.ajax({
                                "_token": "{{ csrf_token() }}",
                                type:'POST',
                                url: "{{route('teacher-image')}}",
                                data: formData,
                                contentType: false,
                                processData: false,
                                success: (xhr, response) => {
                                    $('#profile_pic_loader').hide();
                                    if (response) {
                                    this.reset();
                                    $('#image-input-success').text("Uploaded Succcessfully");

                                    }
                                },
                                error: (xhr, status, error)=>{
                                    if(error){
                                      $('#profile_pic_loader').hide();
                                    this.reset();
                                    var err=JSON.parse(xhr.responseText);
                                        $('#image-input-error').text(err.message + err.errors.profile_photo_input[0]);
                                    }
                                }
                            });
                        });
                            </script>

                     <script type="text/javascript">
                        $('#profile_details').submit(function(e) {
                            e.preventDefault();
                            let formData = new FormData(this);
                            $('#image-info-error').text('');
                            $('#profile_info_loader').show();
                            $.ajax({
                                "_token": "{{ csrf_token() }}",
                                type:'POST',
                                url: "{{route('teacher-info')}}",
                                data: formData,
                                contentType: false,
                                processData: false,
                                success: (response) => {
                                  $('#profile_info_loader').hide();
                                    if (response) {
                                    this.reset();
                                    $('#profile-information-sucess').text("Your information has been saved successfully.");
                                    }
                                },
                                error: function(response){
                                  $('#profile_info_loader').hide();
                                    console.log(response);
                                        $('#profile-information-error').text(response.responseJSON.errors.file);
                                }
                            });
                        });
                            </script>
                     <script type="text/javascript">
                        $('#profile_idphoto').submit(function(e) {
                            e.preventDefault();
                            let formData = new FormData(this);
                             $('#id-input-error').text('');
                            $("#profile_id_loader").show();
                            $.ajax({
                                "_token": "{{ csrf_token() }}",
                                type:'POST',
                                url: "{{route('teacher-idproof')}}",
                                data: formData,
                                contentType: false,
                                processData: false,
                                success: (response) => {
                            $("#profile_id_loader").hide();
                                    if (response) {
                                    this.reset();
                                   $('#id-input-success').text("Your image has been uploaded successfully");
                                    }
                                },
                                  error: (xhr, status, error)=>{
                                    if(error){
                                      $("#profile_id_loader").hide();
                                    this.reset();
                                    var err=JSON.parse(xhr.responseText);
                                    console.log(err)
                                        $('#id-input-error').text(err.message + err.errors.id_photo[0]);
                                    }
                                }
                            });
                        });
                            </script>

{{--script for submitting experience form. --}}
                     <script type="text/javascript">
                        $('#experienceform').submit(function(e) {
                            e.preventDefault();
                            let formData = new FormData(this);
                            $('#image-input-error').text('');

                            $.ajax({
                                "_token": "{{ csrf_token() }}",
                                type:'POST',
                                url: "{{route('teacher-experience')}}",
                                 data: formData,
                                contentType: false,
                                processData: false,
                                success: (xhr, response) => {
                                    if (response) {
                                    this.reset();
                                    $('#experience-success').text("Data saved Succcessfully");
                                    }
                                },
                                error: (xhr, status, error)=>{
                                    if(error){
                                    this.reset();
                                    var err=JSON.parse(xhr.responseText);
                                        $('#experience-error').text("There is some error");
                                    }
                                }
                            });
                        });
                            </script>
                            {{-- <script>
                             $(".editbutton").click(function() {
                                    id=this.id;
                                    console.log(id);
                                    // console.log("{{route('teacher-experience-edit')}}/"+id);
                             $.ajax({
                                type:'GET',
                                url: "{{url('teacher-experience-edit/id')}}",
                                success: (xhr, response) => {
                                    if (response) {
                                   console.log(response);
                                    }
                                },
                                error: (xhr, status, error)=>{
                                    if(error){
                                    var err=JSON.parse(xhr.responseText);
                                        $('#experience-error').text("There is some error");
                                    }
                                }
                            });
                                });
                            </script> --}}
                            <script>
                                $(".clicklink").on('click', function(){
                                    var id=this.id;
                                    	$.ajax({
                                            type: 'post',
                                            url: '{{route("get-subject")}}',
                                            data: {
                                                '_token': '{{ csrf_token() }}',
                                                id:id,
                                                },
                                            success: function (response) {
                                                // alert(response);
                                                $('#subjectslist').html(response);
                                    },
                                    error: function (response) {
                                                    $('#subjectslist').html(response);
                                                }
                                    });
                                });


                                $("#submitButton").click(function(e){
                                    e.preventDefault();
                                    var ageGroup=$("input[name='agegroup']:checked").val();
                                    var classId=1
                                    var subjectsArr=[]
                                    $("input:checkbox[class=subjects]:checked").each(function() {
                                        subjectsArr.push($(this).val());
                                    });
                                   subjectsArr=subjectsArr;
                                   $.ajax({
                                            type: 'post',
                                            url: '{{route("teacher-expertise")}}',
                                            data: {
                                                '_token': '{{ csrf_token() }}',
                                               ageGroup:ageGroup,
                                               classId:classId,
                                               subjectsArr:subjectsArr,
                                                },
                                            success: function (response) {
                                                $('#data-success').text("Your information has been saved successfully")

                                    },
                                    error: function (response) {
                                                    // $('#subjectslist').html(response);
                                                $('#data-error').text("there is some error, please try again.")
                                                }
                                    });

                                });
                                $("#submitvideo").click(function(e){
                                    e.preventDefault();
                                    var video_code=$('#video_code').val();
                                    var language_name=$('#language_name').val();
                                    var language_proficiency=$('#proficiency').val();;
                                    $('#video_loader').show();
                                   $.ajax({
                                            type: 'post',
                                            url: '{{route("teacher-expertise-data")}}',
                                            data: {
                                                '_token': '{{ csrf_token() }}',
                                               video_code:video_code,
                                               language_name:language_name,
                                               language_proficiency:language_proficiency,
                                                },
                                            success: function (response) {
                                                $('#video_loader').hide();
                                                $('#data-expertise-success').text("Your information has been saved successfully")

                                    },
                                    error: function (response) {
                                                $('#video_loader').hide();
                                                    // $('#subjectslist').html(response);
                                                $('#data-expertise-error').text("there is some error, please try again.")
                                                }

                                });
                                });
                            </script>

                            @endsection
