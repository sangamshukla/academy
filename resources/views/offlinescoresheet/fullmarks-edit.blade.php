w<!-- fullmarks -->
@extends('layouts.admin_dashboard')
@section('content')
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

     <form method="POST" action="{{route('manage-year-edit', $year->id" >
      @csrf
    <div class="row">
        <div class="col-md-4">
          <div class="input-group mb-3">
            <select style="margin-left:20px; position:relative;" name="week_id" class="custom-select" id="inputGroupSelect02">
              <option selected>Choose...</option>
              @foreach($weeks as $week)
              <option value="{{ $week->id }}">{{ $week->week_name }}</option>
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
                    <th style="width:30%" scope="col">Edit</th>

                  </tr>
                </thead>
                <tbody>
                  @foreach($subjects as $subject)
                  <tr style="background-color: white;">
                    <th scope="row">{{ $loop->iteration }}</th>
                    <td>{{ $subject->name }} <input type="hidden" value="{{ $subject->id }}" name="sub_id[]" /></td>
                    <td><input name="sub_marks[]" value="0" class="form-control" /></td>
                    <td>
                    <a href="{{ url('edit-full-marks', $subject->id) }}" class="action-icon"> <i style="color:#858796"class="fa fa-edit"></i></a>
                  </td>
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
