@extends('layouts.teacher_dashboard')
@section('content')
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800 session_heading">My Session</h1>
                    </div>
                    <!-- image block -->
                    <!-- <div class="row">
              <div class="col-xl-12 col-lg-12">
                <div class="container-fluid mt-5">

                  <a class="direction_nav" href="#"
                    ><span class="arrow-right"
                      ><i class="fa fa-angle-left" aria-hidden="true"></i></span
                    ><span>Edit Profile</span></a
                  >
                  <div class="row">

                    <div class="col-lg-3">
                      <div class="form-group session_info">
                        <label for="text">Session Date</label>
                        <input
                          type="text"
                          class="form-control"
                          id="session-data"
                          aria-describedby="emailHelp"
                          placeholder="Session Date"
                        />
                      </div>
                    </div>

                    <div class="col-lg-3">
                      <div class="form-group session_info">
                        <label for="text">Session Time</label>
                        <input
                          type="text"
                          class="form-control"
                          id="session-time"
                          aria-describedby="emailHelp"
                          placeholder="Session Time"
                        />
                      </div>
                    </div>
                    <div class="col-lg-3">
                      <div class="form-group session_info">
                        <label for="text">Teachers Name</label>
                        <input
                          type="text"
                          class="form-control"
                          id="teacher-name"
                          aria-describedby="emailHelp"
                          placeholder="Teachers Name"
                        />
                      </div>
                    </div>
                    <div class="col-lg-3">
                      <div class="form-group session_info">
                        <label for="text">Students Name</label>
                        <input
                          type="text"
                          class="form-control"
                          id="student-name"
                          aria-describedby="emailHelp"
                          placeholder="Students Name"
                        />
                      </div>
                    </div>
                    <div class="col-lg-3">
                      <div class="form-group session_info">
                        <label for="text">Class</label>
                        <input
                          type="text"
                          class="form-control"
                          id="class-data"
                          aria-describedby="emailHelp"
                          placeholder="Class"
                        />
                      </div>
                    </div>
                    <div class="col-lg-3">
                      <div class="form-group session_info">
                        <label for="text">Subject</label>
                        <input
                          type="text"
                          class="form-control"
                          id="subject-data"
                          aria-describedby="emailHelp"
                          placeholder="Subject"
                        />
                      </div>
                    </div>
                    <div class="col-lg-3">
                      <div class="form-group session_info">
                        <label for="text">Topic</label>
                        <input
                          type="text"
                          class="form-control"
                          id="topic-data"
                          aria-describedby="emailHelp"
                          placeholder="Topic"
                        />
                      </div>
                    </div>

                  </div>
                  <div class="row">
                    <div class="col-lg-4">
                      <div class="">
                        <ul class="nav nav-pills nav-fill navtop side_tab">
                          <li class="nav-item">
                            <a
                              class="nav-link tab_title side_nav tab_sidebar tab_sidebar1 active"
                              href="#menu1"
                              data-toggle="tab"
                              >today</a
                            >
                          </li>
                          <li class="nav-item">
                            <a
                              class="nav-link tab_title side_nav tab_sidebar tab_sidebar2"
                              href="#menu2"
                              data-toggle="tab"
                              >Upcoming</a
                            >
                          </li>
                          <li class="nav-item">
                            <a
                              class="nav-link tab_title side_nav tab_sidebar tab_sidebar3"
                              href="#menu3"
                              data-toggle="tab"
                              >This Week</a
                            >
                          </li>
                          <li class="nav-item">
                            <a
                              class="nav-link tab_title side_nav tab_sidebar tab_sidebar4"
                              href="#menu4"
                              data-toggle="tab"
                              >This Month</a
                            >
                          </li>
                          <li class="nav-item">
                            <a
                              class="nav-link tab_title side_nav tab_sidebar tab_sidebar5"
                              href="#menu5"
                              data-toggle="tab"
                              >This Month</a
                            >
                          </li>
                        </ul>
                      </div>
                    </div>
                    <div class="col-lg-8 border_block_box">
                      <div class="tab-content">
                        <p class="assign_text">Assign Homework</p>
                        <div class="d-flex justify-content-between"></div>
                        <div class="tab-pane active" role="tabpanel" id="menu1">

                          <div class="">
                            <div class="d-flex justify-content-between">
                              <div>
                                <ul class="nav nav-tabs" role="tablist">
                                  <li class="nav-item">
                                    <a
                                      class="nav-link tab_title side_nav inner_nav active"
                                      data-toggle="tab"
                                      href="#tabhome1"
                                      >PDF</a
                                    >
                                  </li>
                                  <li class="nav-item">
                                    <a
                                      class="nav-link tab_title side_nav inner_nav"
                                      data-toggle="tab"
                                      href="#tabhome2"
                                      >Upload File</a
                                    >
                                  </li>
                                  <li class="nav-item">
                                    <a
                                      class="nav-link tab_title side_nav inner_nav"
                                      data-toggle="tab"
                                      href="#tabhome3"
                                      >Add Question</a
                                    >
                                  </li>
                                </ul>
                              </div>
                              <div><p class="joined">08 Joined</p></div>
                            </div>

                            <div class="tab-content">
                              <div
                                id="tabhome1"
                                class="container tab-pane active"
                              >
                                <br />

                                <div>
                                  <ul class="list_pdf">
                                    <li>
                                      <span class="pdf_list_no">1.</span>
                                      <span>Lorem ipsum dolor sit amet-</span>
                                      <span><img src="img/pdf.svg" /></span>
                                    </li>
                                    <li>
                                      <span class="pdf_list_no">1.</span>
                                      <span>Lorem ipsum dolor sit amet-</span>
                                      <span><img src="img/pdf.svg" /></span>
                                    </li>
                                    <li>
                                      <span class="pdf_list_no">1.</span>
                                      <span>Lorem ipsum dolor sit amet-</span>
                                      <span><img src="img/pdf.svg" /></span>
                                    </li>
                                    <li>
                                      <span class="pdf_list_no">1.</span>
                                      <span>Lorem ipsum dolor sit amet-</span>
                                      <span><img src="img/pdf.svg" /></span>
                                    </li>
                                    <li>
                                      <span class="pdf_list_no">1.</span>
                                      <span>Lorem ipsum dolor sit amet-</span>
                                      <span><img src="img/pdf.svg" /></span>
                                    </li>
                                    <li>
                                      <span class="pdf_list_no">1.</span>
                                      <span>Lorem ipsum dolor sit amet-</span>
                                      <span><img src="img/pdf.svg" /></span>
                                    </li>
                                  </ul>
                                  <div>
                                    <div class="share_block">
                                      <label class="container">
                                        <input
                                          type="checkbox"
                                          checked="checked"
                                        />
                                        <span class="checkmark"></span>
                                        <span class="add_text">Select to All</span>
                                      </label>
                                      <label class="container">
                                        <input
                                          type="checkbox"
                                          checked="checked"
                                        />
                                        <span class="checkmark"></span>
                                        <span class="add_text">Selected Students</span>
                                      </label>
                                    </div>
                                    <div>
                                      <button class="btn share_cta">
                                        Share
                                      </button>
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div
                                id="tabhome2"
                                class="container tab-pane fade"
                              >
                                <div class="file_upload">
                                  <label class="file">
                                    <input
                                      type="file"
                                      id="file"
                                      aria-label="example.pdf"
                                    />
                                    <span class="file-custom"></span>
                                  </label>
                                </div>

                                <div>
                                  <ul class="list_pdf">
                                    <li>
                                      <span class="pdf_list_no">1.</span>
                                      <span>Lorem ipsum dolor sit amet-</span>
                                      <span><img src="img/pdf.svg" /></span>
                                    </li>
                                    <li>
                                      <span class="pdf_list_no">1.</span>
                                      <span>Lorem ipsum dolor sit amet-</span>
                                      <span><img src="img/pdf.svg" /></span>
                                    </li>
                                    <li>
                                      <span class="pdf_list_no">1.</span>
                                      <span>Lorem ipsum dolor sit amet-</span>
                                      <span><img src="img/pdf.svg" /></span>
                                    </li>
                                    <li>
                                      <span class="pdf_list_no">1.</span>
                                      <span>Lorem ipsum dolor sit amet-</span>
                                      <span><img src="img/pdf.svg" /></span>
                                    </li>
                                    <li>
                                      <span class="pdf_list_no">1.</span>
                                      <span>Lorem ipsum dolor sit amet-</span>
                                      <span><img src="img/pdf.svg" /></span>
                                    </li>
                                    <li>
                                      <span class="pdf_list_no">1.</span>
                                      <span>Lorem ipsum dolor sit amet-</span>
                                      <span><img src="img/pdf.svg" /></span>
                                    </li>
                                  </ul>
                                  <div>
                                    <div class="share_block">
                                      <label class="container">
                                        <input
                                          type="checkbox"
                                          checked="checked"
                                        />
                                        <span class="checkmark"></span>
                                        <span class="add_text">Select to All</span>
                                      </label>
                                      <label class="container">
                                        <input
                                          type="checkbox"
                                          checked="checked"
                                        />
                                        <span
                                          class="checkmark"
                                          data-toggle="modal"
                                        ></span>
                                        <span class="add_text">Selected Students</span>
                                      </label>
                                    </div>
                                    <div>

                                      <button
                                        type="button"
                                        class="btn btn-primary"
                                        data-toggle="modal"
                                        data-target="#exampleModal"
                                      >
                                        Launch demo modal
                                      </button>


                                      <div
                                        class="modal fade"
                                        id="exampleModal"
                                        tabindex="-1"
                                        role="dialog"
                                        aria-labelledby="exampleModalLabel"
                                        aria-hidden="true"
                                      >
                                        <div
                                          class="modal-dialog"
                                          role="document"
                                        >
                                          <div class="modal-content">
                                            <div class="modal-header">
                                              <h5
                                                class="modal-title"
                                                id="exampleModalLabel"
                                              >
                                                Student List for the session
                                              </h5>
                                              <button
                                                type="button"
                                                class="close"
                                                data-dismiss="modal"
                                                aria-label="Close"
                                              >
                                                <span aria-hidden="true"
                                                  >&times;</span
                                                >
                                              </button>
                                            </div>
                                            <div
                                              class="modal-body table_modal_body"
                                            >

                                              <table
                                                class="table table-bordered"
                                              >
                                                <thead>
                                                  <tr>
                                                    <th scope="col">#</th>
                                                    <th scope="col">First</th>
                                                    <th scope="col">Last</th>
                                                    <th scope="col">Handle</th>
                                                  </tr>
                                                </thead>
                                                <tbody>
                                                  <tr>
                                                    <th scope="row">
                                                        <label class="container">
                                                            <input
                                                              type="checkbox"
                                                              checked="checked"
                                                            />
                                                            <span class="checkmark"></span>

                                                          </label>
                                                    </th>
                                                    <td>Mark</td>
                                                    <td>Otto</td>
                                                    <td>@mdo</td>
                                                  </tr>
                                                  <tr>
                                                    <th scope="row">
                                                        <label class="container">
                                                            <input
                                                              type="checkbox"
                                                              checked="checked"
                                                            />
                                                            <span class="checkmark"></span>

                                                          </label>
                                                    </th>
                                                    <td>Jacob</td>
                                                    <td>Thornton</td>
                                                    <td>@fat</td>
                                                  </tr>
                                                  <tr>
                                                    <th scope="row">
                                                        <label class="container">
                                                            <input
                                                              type="checkbox"
                                                              checked="checked"
                                                            />
                                                            <span class="checkmark"></span>

                                                          </label>
                                                    </th>
                                                    <td colspan="2">
                                                      Larry the Bird
                                                    </td>
                                                    <td>@twitter</td>
                                                  </tr>
                                                </tbody>
                                              </table>
                                            </div>
                                            <div class="modal-footer">
                                              <button
                                                class="save_btn"
                                                data-dismiss="modal"
                                              >
                                                Close
                                              </button>
                                              <button
                                                type="button"
                                                class="save_change_btn"
                                              >
                                                Save changes
                                              </button>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                      <button class="btn share_cta">
                                        Share
                                      </button>
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div
                                id="tabhome3"
                                class="container tab-pane fade"
                              >
                                <br />
                                <h3>Menu 2</h3>
                                <p>
                                  Sed ut perspiciatis unde omnis iste natus
                                  error sit voluptatem accusantium doloremque
                                  laudantium, totam rem aperiam.
                                </p>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="tab-pane" role="tabpanel" id="menu2">
                          <div class="card shadow mt-3">
                            <div
                              class="card-body card_left_border border_left_color1"
                            >
                              <div class="subject_edit">
                                <div class="subject_practis">
                                  <p class="subject">Math Practice xxxxx</p>
                                  <p class="time_pera">
                                    <span>23 Jan,</span
                                    ><span>04:00pm - 05:00pm</span>
                                  </p>
                                </div>
                                <div class="starttime_block">
                                  <p class="sub_subject">Starts in</p>
                                  <p class="green_text">00:08:55</p>
                                </div>
                                <div class="class_block">
                                  <p class="sub_subject">Class</p>
                                  <p class="blue_text">10th</p>
                                </div>
                                <div class="class_block">
                                  <p class="sub_subject">Subject</p>
                                  <p class="blue_text">Maths</p>
                                </div>
                                <div class="class_block">
                                  <p class="sub_subject">Time</p>
                                  <p class="blue_text">30 Min</p>
                                </div>
                                <div class="class_mb">
                                  <p class="sub_subject">Students</p>
                                  <p class="blue_text">30</p>
                                </div>
                                <div class="delite_icon">
                                  <img
                                    src="img/delete.svg"
                                    width="20"
                                    height="20"
                                  />
                                </div>
                                <div class="edit_icon">
                                  <img
                                    src="img/edit.svg"
                                    width="20"
                                    height="20"
                                  />
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="tab-pane" role="tabpanel" id="menu3">
                          <div class="card shadow mt-3">
                            <div
                              class="card-body card_left_border border_left_color4"
                            >
                              <div class="subject_edit">
                                <div class="subject_practis">
                                  <p class="subject">Math Practice ssssss</p>
                                  <p class="time_pera">
                                    <span>23 Jan,</span
                                    ><span>04:00pm - 05:00pm</span>
                                  </p>
                                </div>
                                <div class="starttime_block">
                                  <p class="sub_subject">Starts in</p>
                                  <p class="green_text">00:08:55</p>
                                </div>
                                <div class="class_block">
                                  <p class="sub_subject">Class</p>
                                  <p class="blue_text">10th</p>
                                </div>
                                <div class="class_block">
                                  <p class="sub_subject">Subject</p>
                                  <p class="blue_text">Maths</p>
                                </div>
                                <div class="class_block">
                                  <p class="sub_subject">Time</p>
                                  <p class="blue_text">30 Min</p>
                                </div>
                                <div class="class_mb">
                                  <p class="sub_subject">Students</p>
                                  <p class="blue_text">30</p>
                                </div>
                                <div class="delite_icon">
                                  <img
                                    src="img/delete.svg"
                                    width="20"
                                    height="20"
                                  />
                                </div>
                                <div class="edit_icon">
                                  <img
                                    src="img/edit.svg"
                                    width="20"
                                    height="20"
                                  />
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="tab-pane" role="tabpanel" id="menu4">
                          <div class="card shadow mt-3">
                            <div
                              class="card-body card_left_border border_left_color4"
                            >
                              <div class="subject_edit">
                                <div class="subject_practis">
                                  <p class="subject">Math Practice gggggg</p>
                                  <p class="time_pera">
                                    <span>23 Jan,</span
                                    ><span>04:00pm - 05:00pm</span>
                                  </p>
                                </div>
                                <div class="starttime_block">
                                  <p class="sub_subject">Starts in</p>
                                  <p class="green_text">00:08:55</p>
                                </div>
                                <div class="class_block">
                                  <p class="sub_subject">Class</p>
                                  <p class="blue_text">10th</p>
                                </div>
                                <div class="class_block">
                                  <p class="sub_subject">Subject</p>
                                  <p class="blue_text">Maths</p>
                                </div>
                                <div class="class_block">
                                  <p class="sub_subject">Time</p>
                                  <p class="blue_text">30 Min</p>
                                </div>
                                <div class="class_mb">
                                  <p class="sub_subject">Students</p>
                                  <p class="blue_text">30</p>
                                </div>
                                <div class="delite_icon">
                                  <img
                                    src="img/delete.svg"
                                    width="20"
                                    height="20"
                                  />
                                </div>
                                <div class="edit_icon">
                                  <img
                                    src="img/edit.svg"
                                    width="20"
                                    height="20"
                                  />
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="tab-pane" role="tabpanel" id="menu5">
                          <div class="card shadow mt-3">
                            <div
                              class="card-body card_left_border border_left_color4"
                            >
                              <div class="subject_edit">
                                <div class="subject_practis">
                                  <p class="subject">Math Practice gggggg</p>
                                  <p class="time_pera">
                                    <span>23 Jan,</span
                                    ><span>04:00pm - 05:00pm</span>
                                  </p>
                                </div>
                                <div class="starttime_block">
                                  <p class="sub_subject">Starts in</p>
                                  <p class="green_text">00:08:55</p>
                                </div>
                                <div class="class_block">
                                  <p class="sub_subject">Class</p>
                                  <p class="blue_text">10th</p>
                                </div>
                                <div class="class_block">
                                  <p class="sub_subject">Subject</p>
                                  <p class="blue_text">Maths</p>
                                </div>
                                <div class="class_block">
                                  <p class="sub_subject">Time</p>
                                  <p class="blue_text">30 Min</p>
                                </div>
                                <div class="class_mb">
                                  <p class="sub_subject">Students</p>
                                  <p class="blue_text">30</p>
                                </div>
                                <div class="delite_icon">
                                  <img
                                    src="img/delete.svg"
                                    width="20"
                                    height="20"
                                  />
                                </div>
                                <div class="edit_icon">
                                  <img
                                    src="img/edit.svg"
                                    width="20"
                                    height="20"
                                  />
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div> -->
                    <!-- test-wizard -->
                    <div class="container-fluid mt-5">
                        <a class="direction_nav" href="#">
                            <span class="arrow-right"><i class="fa fa-angle-left" aria-hidden="true"></i></span>
                            <span>Edit Profile</span>
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
                                    <a href="#step-3" type="button" class="btn btn-default btn-circle"
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
                            <form role="form">
                                <div class="panel panel-primary setup-content" id="step-1">
                                    <div class="panel-heading">
                                        <h3 class="panel-title personal">
                                            <span><img src="{{asset('wa/teacherdashboard/img/pf-icon.svg')}}" width="50" height="50"></span>PERSONAL
                                            INFORMATION
                                        </h3>
                                        <div class="upload_border border-dotted">
                                            <img src="{{asset('wa/teacherdashboard/img/Frame69623.svg')}}" width="65" height="65">
                                            <p>Upload Image</p>
                                        </div>
                                    </div>
                                    <div class="panel-body">
                                        <div class="form-group session_info">
                                            <label for="text">Name</label>
                                            <input type="text" class="form-control" id="session-data"
                                                aria-describedby="emailHelp" placeholder="Enter Name">
                                        </div>
                                        <div class="d-flex">
                                            <div class="form-group session_info">
                                                <label for="text">Phone Number</label>
                                                <input type="text" class="form-control" id="session-data"
                                                    aria-describedby="emailHelp" placeholder="Enter Phone Number">

                                            </div>
                                            <button class="btn  verifyBtn pull-left" type="button">Verify</button>
                                        </div>
                                        <div class="form-group session_info">
                                            <label for="text">Email ID</label>
                                            <input type="text" class="form-control" id="session-data"
                                                aria-describedby="emailHelp" placeholder="Enter Email Id">
                                        </div>
                                        <div class="row">
                                            <div class="col-md-3">
                                                <div class="form-group session_info">
                                                    <label for="text">Gender</label>
                                                    <!-- <input type="text" class="form-control" id="session-data" aria-describedby="emailHelp" placeholder="Select your Gender"> -->
                                                    <select class="form-control">
                                                        <optgroup label="gender">
                                                            <option value="volvo">Gender</option>
                                                            <option value="saab">Saab</option>
                                                        </optgroup>

                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group session_info">
                                                    <label for="text">About</label>
                                                    <input type="text" class="form-control" id="session-data"
                                                        placeholder="about">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group session_info">
                                            <label for="text">Address</label>
                                            <input type="text" class="form-control" id="session-data"
                                                aria-describedby="emailHelp" placeholder="Address">
                                        </div>
                                        <div class="row">
                                            <div class="col-md-3">
                                                <div class="form-group session_info">
                                                    <label for="text">City</label>
                                                    <input type="text" class="form-control" id="session-data"
                                                        aria-describedby="emailHelp" placeholder="Enter City">
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group session_info">
                                                    <label for="text">Zip Code</label>
                                                    <input type="text" class="form-control" id="session-data"
                                                        placeholder="Enter Location">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-3">
                                                <div class="form-group session_info">
                                                    <label for="text">Country</label>
                                                    <input type="text" class="form-control" id="session-data"
                                                        aria-describedby="emailHelp" placeholder="Select Country">
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group session_info">
                                                    <label for="text">Time Zone</label>
                                                    <input type="text" class="form-control" id="session-data"
                                                        placeholder="about">
                                                </div>
                                            </div>
                                        </div>
                                        <p>ID Proof</p>
                                        <div class="id_proof border-dotted">
                                            <img src="{{asset('wa/teacherdashboard/img/Frame69623.svg')}}" width="65" height="65">
                                            <p>Upload Image</p>
                                            <div>
                                                <button class="upload_btn"><img src="{{asset('wa/teacherdashboard/img/upload 1.svg')}}" width="20"
                                                        height="20">Upload</button>
                                            </div>
                                        </div>
                                        <p>The format of image should be JPG, PNG or PDF and size should not exeed 300KB
                                        </p>
                                    </div>
                                </div>

                                <!-- <div class="panel panel-primary setup-content" id="step-2">
                            <div class="panel-heading">
                                 <h3 class="panel-title">Destination</h3>
                            </div>
                            <div class="panel-body">
                                <div class="form-group">
                                    <label class="control-label">Company Name</label>
                                    <input maxlength="200" type="text" required="required" class="form-control" placeholder="Enter Company Name" />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Company Address</label>
                                    <input maxlength="200" type="text" required="required" class="form-control" placeholder="Enter Company Address" />
                                </div>
                                <button class="btn btn-primary nextBtn pull-right" type="button">Next</button>
                            </div>
                        </div>

                        <div class="panel panel-primary setup-content" id="step-3">
                            <div class="panel-heading">
                                 <h3 class="panel-title">Schedule</h3>
                            </div>
                            <div class="panel-body">
                                <div class="form-group">
                                    <label class="control-label">Company Name</label>
                                    <input maxlength="200" type="text" required="required" class="form-control" placeholder="Enter Company Name" />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Company Address</label>
                                    <input maxlength="200" type="text" required="required" class="form-control" placeholder="Enter Company Address" />
                                </div>
                                <button class="btn btn-primary nextBtn pull-right" type="button">Next</button>
                            </div>
                        </div>

                        <div class="panel panel-primary setup-content" id="step-4">
                            <div class="panel-heading">
                                 <h3 class="panel-title">Cargo</h3>
                            </div>
                            <div class="panel-body">
                                <div class="form-group">
                                    <label class="control-label">Company Name</label>
                                    <input maxlength="200" type="text" required="required" class="form-control" placeholder="Enter Company Name" />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Company Address</label>
                                    <input maxlength="200" type="text" required="required" class="form-control" placeholder="Enter Company Address" />
                                </div>
                                <button class="btn btn-success pull-right" type="submit">Finish!</button>
                            </div>
                        </div>
                        <div class="panel panel-primary setup-content" id="step-5">
                            <div class="panel-heading">
                                 <h3 class="panel-title">Cargo</h3>
                            </div>
                            <div class="panel-body">
                                <div class="form-group">
                                    <label class="control-label">Company Name</label>
                                    <input maxlength="200" type="text" required="required" class="form-control" placeholder="Enter Company Name" />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Company Address</label>
                                    <input maxlength="200" type="text" required="required" class="form-control" placeholder="Enter Company Address" />
                                </div>
                                <button class="btn btn-success pull-right" type="submit">Finish!</button>
                            </div>
                        </div>
                        <div class="panel panel-primary setup-content" id="step-6">
                            <div class="panel-heading">
                                 <h3 class="panel-title">Cargo</h3>
                            </div>
                            <div class="panel-body">
                                <div class="form-group">
                                    <label class="control-label">Company Name</label>
                                    <input maxlength="200" type="text" required="required" class="form-control" placeholder="Enter Company Name" />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Company Address</label>
                                    <input maxlength="200" type="text" required="required" class="form-control" placeholder="Enter Company Address" />
                                </div>
                                <button class="btn btn-success pull-right" type="submit">Finish!</button>
                            </div>
                        </div> -->
                            </form>
                        </div>


                    </div>
                    <!-- test-wizard -->
                    <!-- Content Row -->
                    <!-- subject card Row -->

                    <!-- subject card Row -->
@endsection
