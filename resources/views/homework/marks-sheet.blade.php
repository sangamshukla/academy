@extends('layouts.class_dashboard')
@section('content')
<div class="mt-10" style="position: relative; margin-top:11%;">
  <h3>Exam Name : Week 17 Year 5</h3>
  {{--  --}}
 <!--<div class="row">-->
 <!-- <div class="col mb-3">-->
 <!--   <label for="select-batch" for="select-class">Select Class</label></br>-->
 <!--       <select id="select-batch" class="" placeholder="Select a batch" onchange="getSessions()" >-->
 <!--           <option value="">Please Select a batch</option>-->
 <!--             @foreach ($batches as $batch)-->
 <!--           <option value="{{ $batch->id }}">{{ $batch->classSettings->name }}</option>-->
 <!--             @endforeach-->
 <!--       </select>-->
 <!-- </div>-->
 <!-- <div class="col mb-3" id="sessions_place"></div>-->
 <!-- <div class="col mb-3" id="students_place"></div>-->
 <!--</div>-->
 <div class="row" style="margin-bottom:20px;">
  <div class="col-4">
    <label for="select-batch" for="select-class">Select Class</label><br/>
    <select id="select-batch" class="demo-default" style="width:200px;" placeholder="Select a batch" onchange="getSessions()" >
      <option value="">Please Select a batch</option>
      @foreach ($batches as $batch)
        <option value="{{ $batch->id }}">{{ $batch->classSettings->name }}</option>
      @endforeach
    </select>
    
  </div>
  <div class="col-4" id="sessions_place"></div>
  <div class="col-4" id="students_place"></div>
 </div>


<div class="card">
  <div class="card-body" id="card-replaced">
    <div class="table-responsive-sm">          
      <table class="table table-bordered table table-striped">
      <thead style="color: black;">
        <tr>
          <th colspan="3" style="text-align:center">
            <img height="36" src="{{ asset('logo.png') }}" />
          </th>
          <th colspan="3" style="text-align:center">Name: Week 17 Year 5</th>
          <th colspan="4" style="text-align:center">Date: 2020-01-17</th>
        </tr>
        <tr>
          <th>Sr.No.</th>
          <th>Index Number</th>
          <th>Full Name</th>
          <th>Maths Multiple({{ $assignedhomeworks->first()->maths_marks_total }})</th>
          <th>English Multiple({{ $assignedhomeworks->first()->english_marks_total }})</th>
          <!--<th>Comprehension({{ $assignedhomeworks->first()->essay_marks_total }})</th>-->
          <th>Comprehension({{ $assignedhomeworks->first()->essay_marks_total }})</th>
            <!--<th>Creative Writing({{ $assignedhomeworks->first()->essay_marks_total }})</th>-->
          <th>Obtd Marks</th>
          <th>Total Marks</th>
          <th>Percentage</th>
          <th>Rank</th>
        </tr>
      </thead>
      <tbody>
          @php $i=1; @endphp
        @foreach($assignedhomeworks as $assignedhomework)
        <tr>
          <td>{{ $i }}</td>
          <td>{{ $assignedhomework->id }}</td>
          <td>{{ $assignedhomework->name }}</td>
          {{-- <td>{{ $assignedhomework->homeWork->session->batch->subject->name}}</td> --}}
          <td>{{ $assignedhomework->maths_marks[1] }}</td>
          <td>{{ $assignedhomework->english_marks[1] }}</td>
          <td>{{ $assignedhomework->essay_marks[1]   }}</td>
          <td>{{ $assignedhomework->obtd_marks   }}</td>
          <td>{{ $assignedhomework->total_marks    }}</td>
          <td>
            @if($assignedhomework->percentage < 40)
              <span class="text text-danger">{{ round($assignedhomework->percentage, 2) }} %</span>
            @elseif($assignedhomework->percentage > 40 && $assignedhomework->percentage < 80)
            <span class="text text-warning">{{ round($assignedhomework->percentage, 2) }} %</span>
            @else
            <span class="text text-success">{{ round($assignedhomework->percentage, 2) }} %</span>
            @endif
          </td>
          <td>{{ $i    }}</td>
        </tr>
        @php $i++; @endphp
        @endforeach
        
      </tbody>
    </table>
    
    <div style="margin-top: 2rem; float:right;  border-color: coral;">{{ $getYear1Students->links() }}</div>
    </div>
  </div>
</div>
</div>
@endsection
@section('scripts')
<script>
  function getSessions(){
    // ajax 
    var batchId = $('#select-batch').val();
    $.get("{{ url('api/get-session-on-batch') }}/"+batchId ,function( data ) {
      $( "#sessions_place" ).html( data );
       $.get("{{ url('api/get-ajax-report') }}?batchId="+batchId ,function( data ) {
        $( "#card-replaced" ).html( data );
      });
    });
  }

  // session_list
  function getStudents(){
    // ajax 
    var sesionId = $('#session_list').val();
    $.get("{{ url('api/get-students-on-batch') }}/"+sesionId ,function( data ) {
      $( "#students_place" ).html( data );
      var batchId = $('#select-batch').val();
      $.get("{{ url('api/get-ajax-report') }}?batchId="+batchId+"&session_id="+sesionId ,function( data ) {
        $( "#card-replaced" ).html( data );
      });
    });
  }
  function getFilteredData()
  {
    var studentId = $('#students_lista').val();
    var batchId = $('#select-batch').val();
    $.get("{{ url('api/get-ajax-report') }}?studentId="+studentId+"&batchId="+batchId ,function( data ) {
      $( "#card-replaced" ).html( data );
    });
  }
</script>
@endsection
