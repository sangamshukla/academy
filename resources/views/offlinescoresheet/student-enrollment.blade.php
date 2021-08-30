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
    @include('_form.success')
    <form method="POST" action="">
      @csrf
    {{--  @foreach($weeks as $week)
      @php(dd($weeks))
      @endforeach --}}
    <div class="row">
        <div class="col-md-4">
            <div class="input-group mb-3">
                <select style="margin-left:20px; position:relative;" name="week_name" class="custom-select" id="inputGroupSelect02">
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
                    <th style="width:20%" scope="col"></th>
                    <th style="width:20%" scope="col">S. No</th>
                    <th style="width:50%" scope="col">List Of Student</th>
                    
                  </tr>
                </thead>
                <tbody>
                   @foreach($students as $student)                 
                  <tr style="background-color: white;">
                    <th class="custom-checkbox"><input name="student_id[]" value="{{ $student->id }}" type="checkbox"></th>
                    <!-- <th scope="row">{{ $loop->iteration }}</th> -->
                    <th scope="row">{{ $loop->index+1 }}</th>
                    <td>{{$student->name}}</td>
                  </tr>                 
                   @endforeach 
                  
                </tbody>
              </table>
              <div >
              <!-- <button class="submit"  type="button">Submit</button> -->
              <input class="submit" type="submit" value="submit">
              </div>
        </div>
    </div>
    </form>
</div>

 
@endsection

@section('css')
<style>
  /** do not delete */
</style>

@endsection