@extends('layouts.main')
@section('css')
    <link rel="stylesheet" href="{{ asset('wa/viewdetails.css') }}">
@endsection
    <!-- cart icon -->
 @section('carticon')
 @endsection
@section('content')
<section class="math_booster">
    <form id="buynowform" method="POST" action="{{ route('buy.now') }}">
        @csrf
    <div class="container-fluid">
        <div class="row">
            <div class="col">
                <div class="subject_heading mt-5">{{ \Illuminate\Support\Str::limit($batch->classSettings->name ,'30') . ' - '. Str::ucfirst($batch->classMaster->name) . ' - '}}{{ $batch->status == 1 ? 'Online' : 'Offline' }}</div>
                {{-- <p class="name_section">{{ Str::ucfirst($batch->classMaster->name) }}</p> --}}

                <div class="math_csc d-flex flex-sm-row flex-column justify-content-between mt-5">
                    <div class="subject_card">
                         @if($batch->subject->name == 'English')

                                  <img style="width:100%;" src="{{ asset('frontend/assets/English/English.jpg') }}" alt="">

                                @elseif($batch->subject->name == 'Maths')

                                    <img  style="width:100%;" src="{{ asset('frontend/assets/Maths/Math.jpg') }}" alt="">

                                @elseif($batch->subject->name == 'Physics')

                                    <img  style="width:100%;" src="{{ asset('frontend/assets/Physics/Physics.jpg') }}" alt="">

                                @elseif($batch->subject->name == 'Chemistry')

                                    <img style="width:100%" src="{{ asset('frontend/assets/card-cover.png') }}" alt="">

                                @elseif($batch->subject->name == 'Essay')

                                    <img  style="width:100%" src="{{ asset('frontend/assets/Essay/Essay.jpg') }}" alt="">

                                @else

                                <img style="width:100%" src="{{ asset('frontend/assets/English/English.jpg')}}" alt="">

                                @endif
                    </div>
                    <div class="left_block">
                         <a href="http://pariharz.com/teacher-calander/<?php echo $batch->assignteacher->id; ?>">
                        <p class="name_section">{{ Str::ucfirst($batch->assignteacher->name) }} &nbsp;&nbsp;&nbsp;&nbsp;
                        {{ $batch->status != 1 ? 'Location : '.$batch->location : '' }}
                        </p></a>


                        <div class="card_details">
                            <div class="subject_detail pr-3">
                                <p>No Of Seats</p>
                                <p class="blue_cr">{{ $batch->no_of_seats }}</p>
                            </div>
                            <div class="border_left pl-3 "></div>
                            <div class="subject_detail pr-3">
                                <p>No Of Sessions</p>
                                <p class="blue_cr">{{ $batch->batchSession->where('start_date_time', '>=', \Carbon\Carbon::today() )->count() }}</p>

                            </div>
                            <div class="border_left pl-3 "></div>
                            <div class="subject_detail pr-3">
                                <p>Starts date</p>
                                <p class="color_og">{{ $batch->batch_start_date->format('d M, Y') }}</p>
                            </div>
                        </div>
                        @php $i=0; @endphp
                        @foreach($batch->batchSession as $session)
                        {{-- session start date --}}
                        @if($session->start_date_time >= \Carbon\Carbon::today())
                            @php $i++; @endphp
                        @endif
                        @endforeach
                       <div class="d-flex flex-sm-row flex-column mt-3"><p class="doler_text">£ <span id="pricec">{{ $batch->sell_each_session == 1 ? 0 : ($batch->batch_price_per_session * $i) }}</span></p><div class="buy_cta m-3">
                           {{-- href="{{ route('cart.add', $batch->id) }}" --}}
                        <a id="addToCart"  class="btn btn_block text-capitalize add_cart_section my-2 my-sm-0">Add to Cart</a>
                                <a href="#" id="buyNow"><button class="btn btn_block text-capitalize my-2 my-sm-0" type="button"
                                    id="register">Buy Now</button></a><br><br>

                                {{-- for success msg --}}
                                @include('_form.success')

                                <div class="alert alert-danger" id="showErrorMessage">
                                    Please Select At least 1 Session
                                </div>
                                {{-- @if (session('status'))
                                <div class="alert alert-success">
                                    {{ session('status') }}
                                </div>
                                 @endif --}}
                                {{-- end success msg --}}
                            {{-- </form> --}}
                        </div></div>
                        <div class=" share_sectiond-flex flex-sm-row mt-5">
                             <span class="share ml-3">Share</span>
                                <span class="ml-3"><a href="#"><img src="{{ asset('wa/assets/img/sharefb.svg') }}"></a></span>
                                <span class="ml-3"><a href="#"><img src="{{ asset('wa/assets/img/shareml.svg') }}"></a></span>
                                <span class="ml-3"><a href="#"><img src="{{ asset('wa/assets/img/sharewh.svg') }}"></a></span>
                                <span class="ml-3"><a href="#"><img src="{{ asset('wa/assets/img/sharetr.svg') }}"></a></span>
                        </div>
                    </div>
                </div>
                <div class="session_section d-flex flex-sm-row flex-column justify-content-between">
                    <div class="left_section">
                        <div class="card_header">
                            <div class="card_heading">Sessions</div>
                            <div class="card_date">Topic</div>
                            <div class="card_date">Date</div>
                            <div class="card_time">Time</div>
                            @if($batch->sell_each_session == 1)
                            <div class="card_time">Action</div>
                            @endif

                        </div>
                        <?php $i=1; ?>
                        @foreach($batch->batchSession as $session)
                        {{-- session start date --}}
                        {{-- @if($session->start_date_time >= \Carbon\Carbon::today()) --}}
                            <div class="session_card">
                                <div class="session_no">{{ $session->name }}</div>
                                <div class="session_no">
                                    @if(isset($session->singleTopic->topic->name))
                                        {{$session->singleTopic->topic->name}}
                                    @else
                                        Erorr Findnig Topic
                                    @endif
                                    </div>
                                {{-- <div class="session_date">{{ $batch->batch_start_date->format('d M, Y H:i A') }}</div> --}}

                                <div class="session_date"><?php echo $Session = date('Y-m-d', strtotime( $session->start_date_time )); ?></div>

                                <div class="session_time"><?php echo $Session = date('H:i A', strtotime( $session->start_date_time )); ?></div>
                                {{-- <div class="session_time"><input type="checkbox" style="width:40px;" class="form-control" name="session_id[]" value="{{ $session->id }}" /></div> --}}
                                {{-- <div><input type="checkbox" style="width:40px;" class="form-control" name="session_id[]" value="{{ $session->id }}" /></div> --}}
                                @if($batch->sell_each_session == 1)
                                <div class="session_date">
                                    @if($session->start_date_time >= \Carbon\Carbon::today())
                                    <div class="check_form">
                                      <div class="form-group">
                                        <input name="session_id[]" onchange="markChecked()" value="{{ $session->id }}"  type="checkbox" id="html<?php echo $i; ?>">
                                        <label for="html<?php echo $i; ?>" style="background: none;
                                        border: none;"></label>
                                      </div>
                                    </div>
                                    @else
                                        Session Over
                                    @endif
                                </div>
                                @else
                                <div class="session_date" style="display: none">
                                    @if($session->start_date_time >= \Carbon\Carbon::today())
                                    <div class="check_form">
                                      <div class="form-group">
                                        <input checked name="session_id[]" onchange="markChecked()" value="{{ $session->id }}"  type="checkbox" id="html<?php echo $i; ?>">
                                        <label for="html<?php echo $i; ?>" style="background: none;
                                        border: none;"></label>
                                      </div>
                                    </div>
                                    @else

                                    @endif
                                </div>
                                @endif
                            </div>
                        {{-- @endif --}}
                        <?php $i++; ?>
                        @endforeach

                    </div>
                    <div class="right_section mt-5">
                        <p class="learn_heading">What You Will Learn</p>

                        @foreach($batch->batchSession as $session)
                        @if($session->start_date_time >= \Carbon\Carbon::today())
                          <div class="card-link-block">
                           Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's. Ipsum has been the industry's. {{$session->name > 1 ? $session->name : $session->name }}
                        </div>
                        @endif
                    @endforeach


                    {{-- <button class="btn btn_block text-capitalize my-2 my-sm-0" type="button" id="login"><a href="{{ url('/home') }}">Welcome {!! strlen(auth()->user()->name) > 6 ? auth()->user()->name : auth()->user()->name.'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;' !!}</a></button> --}}

                    </div>
                </div>
                <div class="card_slider">
                    <div class="cource_title mt-3 mb-3">Courses you would like to buy</div>
                    <div class="swiper-container subject_card_block" id="swipercard">
                        <div class="swiper-wrapper">
                            @php $i=1 @endphp
                            @foreach($allBatches as $relatedBatch)
                            <div style="cursor:pointer;" onClick="(function(){
                                window.location.href = '/student-details/{{ $relatedBatch->id }}';
                            })();return false;" class="swiper-slide card">
                                <div class="single-district card{{ $i }} slid_card">
                                    <div class="card_img mb-3">
                                        @if($relatedBatch->subject->name == 'English')
                                            <img style="width:100%;" src="{{ asset('frontend/assets/English/English.jpg') }}" alt="">
                                        @endif
                                        @if($relatedBatch->subject->name == 'Maths')
                                            {{-- <img src="{{ asset('frontend/assets/Maths/Maths.jpg') }}" alt=""> --}}
                                            <img style="width:100%;" src="{{ asset('frontend/assets/Maths/Math.jpg') }}" alt="">
                                        @endif
                                        @if($relatedBatch->subject->name == 'Physics')
                                            <img style="width:100%;" src="{{ asset('frontend/assets/Physics/Physics.jpg') }}" alt="">
                                        @endif
                                        @if($relatedBatch->subject->name == 'Chemistry')
                                            <img style="width:100%;" src="{{ asset('frontend/assets/card-cover.png') }}" alt="">
                                        @endif
                                        @if($relatedBatch->subject->name == 'Essay')
                                             <img src="{{ asset('frontend/assets/Essay/Essay.jpg') }}" alt="">
                                        @endif
                                    </div>
                                    <div class="card_block_info pl-3 pr-3">
                                        <div class="card_info">
                                            <p>{{ \Illuminate\Support\Str::limit($relatedBatch->classSettings->name ,'18') }}</p>
                                            <p>{{ $relatedBatch->subject->name }}</p>
                                        </div>
                                        <div class="card_details">
                                            <div class="seat_block pr-3">
                                                <p>No Of Seats</p>
                                                <p>{{ $batch->no_of_seats }}</p>
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
                                                {{ $batch->status == 1 ? 'Online' : 'Offline' }}
                                                </span>
                                                {{-- for color  --}}
                                                <span class="dot{{ $batch->status == 1 ? '' : '-prime' }}"></span></div>
                                            </div>
                                        </div>
                                    <div class="view_detail_block pb-3">
                                        <a href="#" class="view_detail">
                                            View details
                                        </a>
                                        <a href="{{ url('/student-details', $batch->id)}}" class="price_card price_bg{{ $i }}">
                                            {{-- £ 150* --}}
                                            &pound; {{ $batch->batch_price_per_session }}
                                        </a>
                                    </div>
                                </div>
                            </div>
                            @php $i++ @endphp
                            @endforeach
                        </div>
                        <!-- Add Pagination -->
                        <div class="swiper-pagination"></div>
                        <div class="swiper-button-next"></div>
                         <div class="swiper-button-prev"></div>
                      </div>
                </div>

            </div>
        </div>
    </div>
        <input type="hidden" name="batch_id" value="{{ $batch->id }}">
        <input type="hidden" name="classId" value="{{ $batch->id }}">
    </form>
</section>
@endsection
@section('js')
 @php
 $cart = session()->get('cart');
 @endphp
@if(isset($cart[$batch->id]))
<script>
 $("#buyNow").click(function(){
    window.location.href="/buy-now";
 });
</script>
@else
<script>
    $("#buyNow").click(function(){
       var checked = $("input[name='session_id[]']:checked").length;
       if(checked <= 0){
           $('#showErrorMessage').show();
       }else{
           $("#buynowform").submit(); // Submit the form
       }
   });
   </script>
@endif

    <script src="{{ asset('wa/viewdetails.js') }}"></script>
    @if($batch->sell_each_session)
    <script>
        $(document).ready(function(){
            $('#showErrorMessage').hide();


            $("#addToCart").click(function(){
                var checked = $("input[name='session_id[]']:checked").length;
                if(checked <= 0){
                    $('#showErrorMessage').show();
                }else{
                    $('#showErrorMessage').hide();
                    var checked = '';
                    $('input[name="session_id[]"]:checked').each(function() {
                    checked += ','+this.value;
                    });
                    window.location.href = "/add-to-cart/{{ $batch->id }}/?session_id="+checked
                }
            });

        });
        function markChecked()
        {
            var checked = $("input[name='session_id[]']:checked").length;
            if(checked <= 0){
                $('#showErrorMessage').show();
            }else{
                $('#showErrorMessage').hide();
            }
            var p = {{ $batch->batch_price_per_session }}
            var price = p * checked;
            $('#pricec').html(price);
        }
        // pricec
    </script>
    @else
    <script>
        $(document).ready(function(){
            $('#showErrorMessage').hide();
            $("#addToCart").click(function(){

                    $('#showErrorMessage').hide();
                    var checked = '';
                    $('input[name="session_id[]"]:checked').each(function() {
                    checked += ','+this.value;
                    });
                    window.location.href = "/add-to-cart/{{ $batch->id }}/?session_id="+checked
            });

        });
        // pricec
    </script>

    @endif

@endsection

