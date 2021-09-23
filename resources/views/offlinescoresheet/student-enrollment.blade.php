@extends('layouts.admin_dashboard')
@section('content')
<link href="{{asset('wa/admin/css/custom.css')}}" rel="stylesheet" />

<div class="inner-container" style="overflow-y: scroll;"><br>
  <div>
    @include('_form.success')
  </div>
    <div class="row">
        <div class="col-md-12">
            <div>
                <p style="margin-top: 30px; margin-left:20px; position:relative;" class="p-text">Score Sheet</p>
                <div>
                  <div style="margin-left:15px;"class="search-div">
                <form method="GET" action="{{ url('student-enrollment') }}/{{ $weekId }}">
                  <input type="text" name="student_name" id="" class="search-box" value="{{ request('student_name') }}">
                      <img src="{{asset('wa/admin/img/search.svg')}}" alt="" class="search-img">
                  </div>
                </form>
              </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <h6 style="margin-top: 30px; margin-left:20px; position:relative;">Select Students who appeared for this week</h6>
        </div>
    </div>

    <form method="POST" action="{{route('student-enrollment')}}">
      @csrf

    <!-- <div class="row">
        <div class="col-md-4">
            <div class="input-group mb-3">
                <select style="margin-left:20px; position:relative;" name="week_name" class="custom-select" id="inputGroupSelect02">
                  <option selected>Choose...</option>
                  @foreach($weeks as $week)
                  <option value="{{ $week->id }}">{{ $week->week_name }}</option>
                  @endforeach
                </select>

                <div class="input-group-append">
                 <button class="btn btn-outline-secondary" type="button" style="background-color: #1D6771;">
                     <img src="{{asset('wa/admin/img/vector.svg')}}" alt="" style="margin-left: 0px; margin:-10px;"  class="search-img">
                </button>

                </div>
            </div>
        </div>
    </div> -->

    <div class="row">
        <div class="col-md-8 col-xs-12 ml-4">
            {{-- <table style="width:100%; margin-left:20px;" class="table table-bordered">
                <thead>
                  <tr>
                    <th style="width:20%" scope="col">Select Student</th>
                    <th style="width:20%" scope="col">S. No</th>
                    <th style="width:50%" scope="col">List Of Student</th>
                    <!-- <th style="width:50%" scope="col">Edit</th> -->


                  </tr>
                </thead>
                <tbody>
                  <input type="hidden" value="{{ $weekId ?? null }}" name="weekId" />
                   @foreach($students as $student)
                   @php
                       $enrolled=\App\Http\Controllers\OfflineController::is_enrolled($student->id, $weekId);
                      if($enrolled)
                      {
                        $status="checked";
                      }
                      else {
                        $status="";
                      }
                   @endphp
                  <tr style="background-color: white;">
                    <th class="custom-checkbox">
                      <input name="student_id[]" value="{{ $student->id }}" type="checkbox" {{$status}}>
                    </th>
                    <!-- <th scope="row">{{ $loop->iteration }}</th> -->
                    <th scope="row">{{ (($students->currentPage() -1) * 10) + $loop->index+1 }}</th>
                    <td>{{$student->name}}</td>
                    <!-- <td></td> -->
                  </tr>
                   @endforeach

                </tbody>
              </table> --}}
              <table class="table table-bordered" id="student-table">
                <thead>
                    <tr>
                        <th>Select Student</th>
                        <th>Student Name</th>
                        <th>Class</th>

                    </tr>
                </thead>
            </table>
              <div >
              <!-- <button class="submit"  type="button">Submit</button> -->
              <input type="hidden" name="weekId" value={{$weekId}}>
              <input class="submit" type="submit" value="submit">

              <a  style="margin-left:25px;" href="{{route('offline-scoresheet', $weekId)}}"><input  class="submit" type="button" value="Next"></a>

              <a  href="{{route('full-marks')}}"><input class="submit" type="button" value="Back"></a>
              </div>
        </div>
    </div>
    </form>
</div>

 <!-- student-enrollment_load -->
{{-- <div style="margin-top: 2rem; float:right;  border-color: coral;">{{ $students->withQueryString()->links() }}</div>  --}}
@endsection

@section('css')
<style>
  /** do not delete */
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script>
$(function() {
    $('#student-table').DataTable({
        processing: false,
        serverSide: false,
        ajax: '{{route("get-student", $weekId) }}',
        columns: [
            {data: 'checkbox', name: 'student_id[]', orderable: false, searchable: false},
            { data: 'name', name: 'name' },
            { data: 'email', name: 'email' },
        ]
    });
});
</script>
@endsection
