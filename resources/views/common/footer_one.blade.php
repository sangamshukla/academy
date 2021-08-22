
    <!-- footer from section -->
    <section class="footer_form">
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12">
                    <div class="form_section">
                        <div class="form_div"> 
                            <div class="form_image">
                              
                                <div class="color" id="success_msg" style="color: green;"></div>

                                <p class="connect_heading">Let’s Connect</p>

                                <div class="color" id="error_msg" style="color: red;"></div>
                            <form action="{{route ('contact-mail')}}" method="POST" id="contact">
                                @csrf
                               
                                <!-- @include('_form.success') -->

                                          <div class="field">
                                    <span id="full_name_validation" class="text-danger"></span>
                                    <input type="text" name="fullname" id="fullname" placeholder="Full Name">
                                    <label for="fullname">Full Name</label>
                                </div>

                                <div class="field">
                                    <span id="school_name_validation" class="text-danger"></span>
                                    <input type="text" name="schoolName" id="schoolName" placeholder="School Name">
                                    <label for="schoolName">School Name</label>
                                </div>

                                <div class="field">
                                    <span id="mobile_number_validation" class="text-danger"></span>
                                    <input type="number" name="mobileNumber" id="mobileNumber"
                                        placeholder="Mobile Number">
                                    <label for="mobileNumber">Mobile Number</label>
                                </div>
                                <!-- msg -->
                            
                                <!-- msg -->
                                <div class="field">
                                    
                                        <textarea name="msg" id="msg"
                                        placeholder="Write Message" rows="10">
                                    </textarea>
                                    <label for="msg">Message</label>
                                </div>


                                <div class="text-center"><br><br>
                                    
                                <button type="submit" id="saveForm" class="btn submit">Submit</button>
                             </div>
                            </form>
                            </div>
                            <div class="man-stick d-none d-md-block"><img class="women-img"  src="{{ asset('wa/assets/img/man-with-a-stick.png') }}" alt="man-with-a-stick"></div>
                        </div>
                        <div class="splatter d-none d-md-block"><img src="{{ asset('wa/assets/img/background-splatter.svg') }}" alt="background-splatter"></div>
                        <div class="link_block_footer d-flex pl-md-5">
                            <div class="company_div">
                                <p><strong>Company</strong></p>
                                <ul class="lisyt_no list-unstyled p-0">
                                    <li><a href="{{route('about-us')}}">About Us</a></li>
                                    <li><a href="">Methodology</a></li>
                                    <li><a href="">Contact Us</a></li>
                                    <li><a href="">Career</a></li>
                                </ul>
                            </div>
                            <div class="contect_us_block pl-5 ">
                                <div><strong>Connect with us</strong></div>
                                <p>+44 20 7998 6161 (Toll Free)10 AM - 9 PM (All 7 Days)<span>*</span>Except National
                                    Holidays</p>
                                <p>Email: admin@wallingtonacademy.co.uk</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    
    
  <script>
        $(document).ready(function(){
            $("#saveForm").click(function(e){
                e.preventDefault();
                 //validation for contectus form
                var valid = true;
                if ($("#fullname").val() == "") {
                    $("#full_name_validation").html("Full Name Field Is Required.");
                    valid = false;
                }
                if ($('#schoolName').val() == ""){
                    $('#school_name_validation').html('School Name Feild Is Required.');
                    valid = false;
                }
                if($('#mobileNumber').val() == ""){
                    $('#mobile_number_validation').html('Mobile Number Feild Is Required.');
                    valid = false;
                }

        if(valid){
            $.post("{{route('contact-mail')}}",
            {
              fullname: $("#fullname").val(),
              schoolName: $("#schoolName").val(),
              mobileNumber: $("#mobileNumber").val(),
              msg: $("#msg").val(),
              _token: "{{csrf_token()}}"
            }).done(function(msg){ 
              $("#success_msg").html("Form submitted successfully.");
             })
            .fail(function(xhr, status, error) {
                $('#error_msg').html('');
                $('#error_msg').append('<ul>');
                $.each(xhr.responseJSON.errors,function(field_name,error){
                  $('#error_msg').append('<li class="text-strong text-danger">' +error+ '</li>');
              });
              $('#error_msg').append('</ul>');
            });
        }
            });
          });
          
        
    </script>
    