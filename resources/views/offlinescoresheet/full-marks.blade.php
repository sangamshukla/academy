<!-- fullmarks -->
@extends('layouts.admin_dashboard')
@section('content')
<link href="{{asset('wa/admin/css/custom.css')}}" rel="stylesheet" />
<div class="inner-container" style="overflow-y: scroll;">
    <div class="row">
        <div class="col-md-12">
            <div>
                <p style="margin-top: 30px; margin-left:20px; position:relative;" class="p-text">Score Sheet</p>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <h6 style="margin-top: 30px; margin-left:20px; position:relative;">Select week for score card list</h6>
        </div>
    </div>
    
    <form method="POST" action="{{route('full-marks')}}" >
      @csrf
    <div class="row">
        <div class="col-md-4">
          <div class="input-group mb-3">
            @include('_form.success')
            <select style="margin-left:20px; position:relative;" id="weekid" name="week_id" class="custom-select" onchange="rerender()" >
              <option selected>Choose...</option>
              @foreach($weeks as $week)
              <option value="{{ $week->id }}" @if(request('weekId') == $week->id) selected @endif>{{ $week->week_name }}</option>
              @endforeach
            </select>
            <div class="input-group-append">
                <!-- <button class="btn btn-outline-secondary" type="button">Button</button> -->
             <button class="btn btn-outline-secondary" type="button" style="background-color: #1D6771;">
                 <img src="{{asset('wa/admin/img/vector.svg')}}" alt="" style="margin-left: 0px; margin:-10px;"  class="search-img">
            </button>
              <!-- <label class="" for="inputGroupSelect02"></label> -->
            </div>
        </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 col-xs-12">
            <table style="width:100%; margin-left:20px;" class="table table-bordered">
                <thead>
                  <tr>
                    <th style="width:20%" scope="col">S. No</th>
                    <th style="width:50%" scope="col">Subject</th>
                    <th style="width:30%" scope="col">Marks</th>
                    @if($hasValue)
                    <th style="width:30%" scope="col">Edit</th>
                    @endif

                  </tr>
                </thead>
                <tbody>
                  @foreach($subjects as $subject)
                  <tr style="background-color: white;">
                    <th scope="row">{{ $loop->iteration }}</th>
                    <td>{{ $subject->name }} <input type="hidden" value="{{ $subject->id }}" name="sub_id[]" /></td>
                    <td><input name="sub_marks[]" @if($hasValue && !request('edit')) readonly @else  @endif value="{{ request('weekId') ?  $fullMarks->where('subject_id', $subject->id)->first()->full_marks ?? 0 : 0 }}" class="form-control" /></td>
                    @if($hasValue)
                    <td>
                      <a href="#" onclick="rerenderEdit()" class="action-icon"> <i style="color:#858796"class="fa fa-edit"></i></a>
                    </td>
                    @endif
                  </tr>
                  @endforeach
                </tbody>
              </table>
              <div >
                <button class="submit"  type="submit">Submit</button>
              </div>
        </div>
    </div>
    </form>
</div>
 
@endsection
@section('scripts')
<script>
  function rerender(){
    var wid = $('#weekid').val();
    window.location.href="/full-marks?weekId="+wid
  }
  function rerenderEdit(){
    var wid = $('#weekid').val();
    window.location.href="/full-marks?weekId="+wid+"&edit=true"
  }
</script>

@endsection