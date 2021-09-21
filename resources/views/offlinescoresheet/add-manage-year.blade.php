@extends('layouts.admin_dashboard')
@section('content')
<div class="container-fluid">
    <!-- Page Heading -->
    <link href="http://walocal.test/wa/admin/css/custom.css" rel="stylesheet">
<div class="inner-container" style="overflow-y: scroll;">
<div class="row">
<div class="col-md-12">
    <div>
        <p style="margin-top: 30px; margin-left:20px; position:relative;" class="p-text">Score Sheet</p>
    </div>
</div>
</div>

<!-- success msg -->
 <!--   -->
 <div>
    @include('_form.success')
  </div>


<!-- success-->

<div class="row">
{{-- <div class="col-md-12">
    <h6 style="margin-top: 30px; margin-left:20px; position:relative;">Select week for score card list</h6>
</div> --}}
</div>
<form method="POST" action="{{ route('add-manage-year') }}">
    @csrf
<input type="hidden" name="_token" value="M9UsCe0hWJUvFMFCc7lArf6CFcOsJDUPeccxFNN8">    <div class="row">
<div class="col-md-4">
  <div class="input-group mb-3">
</div>
</div>
</div>
<div class="row">
<div class="col-md-4 col-xs-12">
    <table style="width:100%; margin-left:20px;" class="table table-bordered">
        <thead>
          <tr>
            <th style="width:20%" scope="col">S. No</th>
            <th style="width:50%" scope="col">Year</th>
            <th style="width:30%" scope="col">Action</th>

          </tr>
        </thead>
        <tbody>
            {{-- @foreach($years as $year) --}}
         <tr style="background-color: white;">
            <th scope="row">1</th>
            <td><input type="text" name="name" /></td>
            <td>
                <button type="submit">Submit</button>
                {{-- <a href="{{route('manage-yearedit', $year->id)}}" onclick="rerenderEdit()" class="action-icon"> <i style="color:#858796"class="fa fa-edit"></i></a> --}}
              </td>
            {{-- <td><input name="sub_marks[]" value="0" class="form-control"></td> --}}
         </tr>
         {{-- @endforeach --}}
         </tbody>
      </table>
      {{-- <div>
        <button class="submit" type="submit">Submit</button>
      </div> --}}
</div>
</div>
</form>
</div>
  </div>
@endsection
