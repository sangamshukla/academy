@extends('layouts.operation_dashboard');
@section('content')

<div style="margin-top:100px; overflow:visible; min-height:700px;" class="container-fluid">

  <strong><h4 style="margin-top: 100px; color:#36b9cc; margin-left:100px; text:bold; font-style: italic;">{{'Class Name - ' . $batch->classSettings->name .'|' . 'Teacher Name - ' . $batch->assignteacher->name. '|' . 'Duration - ' . $batch->duration_per_session. '|'. 'Subject - ' . $batch->subject->name }}</h5></strong>
 <div style="margin-top:40px;" class="row">
   <div class="col-4">
        <label for="select-class">Select Class</label>
     <select id="select-class" class="demo-default" placeholder="Select a student..." onchange="return getStudentAsPerClass();">
         <option value="all">Select All</option> 
        @foreach ($classes as $class)
            <option value="{{ $class->id }}">{{ $class->name }}</option>
        @endforeach
      </select>
   </div>
  
   <div class="col-4" id="classlistid">
            <label for="select-student">Select a Student</label>
    <select id="select-student" class="demo-default" placeholder="Select a student...">
        
        
    </select>
   </div>
   <script class="show">
    $("#select-class").selectize({
      create: true,
      sortField: "text",
    });
  </script>
   <div class="col-4"></div>
</div>

<script>
  
    $("#select-student").selectize({
      create: true,
      sortField: "text",
    });
</script>
    <table style="margin: 40px;" class="table table-bordered w-100  d-md-table">     
        <thead>
          <tr>
            <th scope="col" class="text-center">Sr. No.</th>
            <th scope="col" class="text-center" colspan="2">Session Name</th>
            <th scope="col" class="text-center">Available Seats</th>
            <th scope="col" class="text-center">Start Date & Time</th>
            <th scope="col" class="text-center">Select Session</th>
            <th scope="col" class="text-center">Action</th>
          </tr>
        </thead>
        <tbody style="overflow:visible;">
          {{-- <form action="{{ route('sell-session') }}" method="post"> --}}
            @php
                $i=1;
            @endphp
            @foreach ($sessions as $session)
            <tr>
              <td scope="row" colspan="1" class="text-center">{{ $i }}</td>
              <td class="text-center" colspan="2">{{ $session->name }}</td>
              <td class="text-center">
                  @php
                    $session_id=$session->id;
                    $enrolled_student_count=\App\Models\OrderSessionMap::where('session_id', $session_id)->count();
                  @endphp
                  {{$enrolled_student_count}} / {{ $session->batch->no_of_seats }}
              </td>
              <td class="text-center" colspan="1">{{ $session->start_date_time}}</td>
              <td class="text-center">
                  @if(\Carbon\Carbon::parse($session->start_date_time)->addMinutes($session->batch->duration)>\Carbon\Carbon::now())
                    @if($session->batch->no_of_seats>$enrolled_student_count)
                        <input type="checkbox" onchange="markChecked()" name="session[]" id="sessions" value="{{ $session->id }}">
                    @else
                        <p>Seat is Full. </p>
                    @endif
                  @else
                    <input type="checkbox" onchange="markChecked()" name="session[]" id="sessions" value="{{ $session->id }}" disabled>
                    <p>Session Time is Over</p>
                  @endif
              </td>
              {{-- <td>  <span id="pricec"></span></td> --}}
              <td class="text-center"  colspan="1">
                  <button data-toggle="modal" id="student-list" data-target="#exampleModalCenter" onclick="return getStudent({{ $session->id }});" class="btn btn-info">Student List</button>
                </td>
            </tr>
            <input type="hidden" id="session_id" value="{{ $session->id }}">
            @php
                $i=$i+1;
            @endphp
            @endforeach
            <tr>
              <th scope="col" colspan="4" class="text-center">
                Total Amount
              </th>
               <th colspan="1" class="text-center">
                <span id="pricec"></span>
              </th>
            </tr>
            <tr>
              <th scope="col" colspan="4" class="text-center">
                Paid Amount
              </th>
               <th colspan="1" class="text-center">
               <input type="number" name="paid_amount" id="" class="form-control">
              </th>
            </tr>
               <tr>
                <td colspan="4" class="text-center">
                    <input type="submit" id="purchase_session" value="Enroll" class="text-center btn btn-primary">
                </td>
              </tr>
            {{-- </form> --}}
            </tbody>
      </table>
      {{-- for operation student list  --}}

<!-- Modal -->
        <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
          <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">Student Amount Details</h5>

              </div>
              <div class="modal-body" id="model-table">
              {{-- @include('operation.modal') --}}
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
              </div>
            </div>
          </div>
        </div>
      {{-- for operation student list --}}
    </div>
@endsection
@section('scripts')
<script>
function markChecked()
{
    var checked = $("input[name='session[]']:checked").length;
    if(checked <= 0){
        $('#showErrorMessage').show();
    }else{
        $('#showErrorMessage').hide();
    }
    var p = {{ $batch->batch_price_per_session }}
    var price = p * checked;
    $('#pricec').html(price);
}
// price
</script>
<script>
      $(document).ready(function(){
            $('#showErrorMessage').hide();
            $("#purchase_session").click(function(){
                var checked = $("input[name='session[]']:checked").length;
                var paid_amount=$("input[name='paid_amount']").val();
                if(checked <= 0){
                    $('#showErrorMessage').show();
                }else{
                    $('#showErrorMessage').hide();
                    var checked = '';
                    $('input[name="session[]"]:checked').each(function() {
                    checked += ','+this.value;
                    });
                    var studentId = $('#select-student').val();
                    window.location.href = "/testing/public/operation-add-to-cart/{{ $batch->id }}/?session_id="+checked+"&student_id="+studentId+"&paid_amount="+paid_amount
                }
            });

        });
    </script>
    <script>
        function getStudent(sessionId)
        {
                            $.ajax({
                                  type:"POST",
                                  url:'{{route("student-list")}}',
                                  data:{
                                      '_token': '{{ csrf_token() }}',
                                      sessionId:sessionId,
                                  },
                                   success: function (response) {
                                       $("#model-table").html(response)
                                   },
                                   error:function(error)
                                   {
                                       console.log("There is some problem. Please try again later. ");
                                   }
                              });
        }
    </script>
    <script>
        function getStudentAsPerClass()
        {
            classId=$('#select-class').val();
               $.ajax({
                                  type:"POST",
                                  url:'{{route("get-student-list")}}',
                                  data:{
                                      '_token': '{{ csrf_token() }}',
                                      classId:classId,
                                  },
                                   success: function (response) {
                                       console.log(response)
                                       $.each(response, function(key, item) 
                                                {
                                                    $('#select-student').each(function() {
                                                        if (this.selectize) {
                                                            this.selectize.addOption({value:item.id, text: item.name});
                                                            
                                                            
                                                        }
                                                    }); 
                                                })
                                                
                                   },
                                   error:function(error)
                                   {
                                       console.log("There is some problem. Please try again later. ");
                                   }
                              });
        }
    </script>
@endsection
