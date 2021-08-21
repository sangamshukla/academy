@extends('layouts.main')

@section('css')
    <link rel="stylesheet" href="{{ asset('wa/welcome.css') }}">

@endsection


@section('content')
  <!-- card-tab section  -->
  <section class="card_package">
    <div class="container-fulid">
        <div class="cource_heading">Available Courses</div>
        <div class="">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-12">
                        <button class="btn filter-button" data-filter="all">All</button>
                        <button class="btn filter-button" data-filter="1">Key Stage 2</button>
                        <button class="btn filter-button" data-filter="2">Key Stage 3</button>
                        <button class="btn filter-button" data-filter="3">GCSE</button>
                        <button class="btn filter-button" data-filter="4">11+</button>
                    </div>
                </div>
                <table>
                 <div  class="row mt-4">
                    @php $i=1 @endphp
                    @foreach($batches as $batch)
                     <div style="cursor:pointer;" onClick="(function(){
                        window.location.href = '/testing/public/student-details/{{ $batch->id }}';
                        
                    })();return false;" class="col-md-3 filter_box filter {{ $batch->classmaster->id  }}">
                            <div  class="single-district card{{ $i }}">
                            <div class="card_img mb-3">
                                
                                @if($batch->subject->name == 'English')
                                
                                  <img style="width:100%; border-radius:10px;" src="{{ asset('frontend/assets/English/English.jpg') }}" alt="">
                                
                                @elseif($batch->subject->name == 'Maths')
                                
                                    <img  style="width:100%; border-radius:10px;" src="{{ asset('frontend/assets/Maths/Math.jpg') }}" alt="">
                                
                                @elseif($batch->subject->name == 'Physics')
                                
                                    <img  style="width:100%; border-radius:10px;" src="{{ asset('frontend/assets/Physics/Physics.jpg') }}" alt="">
                                
                                @elseif($batch->subject->name == 'Chemistry')
                                
                                    <img style="width:100%;border-radius:10px;" src="{{ asset('frontend/assets/card-cover.png') }}" alt="">
                                
                                @elseif($batch->subject->name == 'Essay')
                                
                                    <img  style="width:100%;border-radius:10px;" src="{{ asset('frontend/assets/Essay/Essay.jpg') }}" alt="">
                                
                                @else
                                
                                <img style="width:100%;border-radius:10px;" src="{{ asset('frontend/assets/English/English.jpg')}}" alt="">
                                
                                @endif
                                {{-- <img src="{{ asset('wa/assets/img/card-cover.png') }}"> --}}
                            </div>
                            <div class="card_block_info pl-3 pr-3">
                                <div class="card_info">
                                    
                     <p> {{ \Illuminate\Support\Str::limit($batch->classSettings->name ,'18') }}</p>
                                    <!--<p>{{ $batch->classSettings->name }}</p>-->
                                    <p>{{ $batch->subject->name }}</p>
                                </div>
                                <div class="card_details">
                                    <div class="seat_block pr-3">
                                        <p>No Of Seats</p>
                                        <p>{{ $batch->no_of_seats }}</p>
                                    </div>
                                    {{-- <div class="border_div pl-3 "></div>
                                    <div class="date_block">
                                        <p>No Of Seats</p>
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
                                <a href="{{ url('/student-details', $batch->id)}}" class="view_detail">
                                    View details
                                </a>
                                {{-- @php $i = 1 @endphp --}}
                                <a href="{{ url('/student-details', $batch->id)}}" class="price_card price_bg{{ $i }}">
                                    &pound; {{ $batch->batch_price_per_session }}
                                </a>
                                {{-- @php i++ @endphp --}}
                            </div>
                        </div>
                        {{-- <a> --}}

                    </div>
                    @php $i++ @endphp
                    @endforeach
                    <td colspan="3"></td>                               
                </table>
                <div class="row">
                    <div class="col-md-12">
                        <!--#1d6771;-->
                        <div style="margin-top: 2rem; float:right;  border-color: coral;">{{ $batches->links() }}</div>
                    </div>
                </div>
                </div>

            </div>
        </div>
    </div>
    </div>
</section>

@endsection

@section('js')

<script>
    document.FIX_HEADER_TOP = 150;
</script>

  <script src="{{ asset('wa/coustom.js') }}"></script>
  

@endsection
