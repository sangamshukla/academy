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
<form method="POST" action="{{ route('manage-year-edit', $year->id) }}">
<input type="hidden" name="_token" value="M9UsCe0hWJUvFMFCc7lArf6CFcOsJDUPeccxFNN8">    <div class="row">
<div class="col-md-4">
  <div class="input-group mb-3">

    {{-- <select style="margin-left:20px; position:relative;" id="weekid" name="week_id" class="custom-select" onchange="rerender()">
      <option selected=""></option>
                    <option value="1">week35</option>
                    <option value="2">week2</option>
                    <option value="3">week1</option>
                    <option value="4">week46</option>
                    <option value="5">week44</option>
                    <option value="6">week25</option>
                    <option value="7">week30</option>
                    <option value="8">week6</option>
                    <option value="9">week51</option>
                    <option value="10">week34</option>
                    <option value="11">week25</option>
                    <option value="12">week31</option>
                    <option value="13">week11</option>
                    <option value="14">week9</option>
                    <option value="15">week12</option>
                    <option value="16">week24</option>
                    <option value="17">week36</option>
                    <option value="18">week15</option>
                    <option value="19">week1</option>
                    <option value="20">week1</option>
                    <option value="21">week33</option>
                    <option value="22">week37</option>
                    <option value="23">week48</option>
                    <option value="24">week5</option>
                    <option value="25">week48</option>
                    <option value="26">week40</option>
                    <option value="27">week36</option>
                    <option value="28">week1</option>
                    <option value="29">week6</option>
                    <option value="30">week45</option>
                    <option value="31">week38</option>
                    <option value="32">week9</option>
                    <option value="33">week15</option>
                    <option value="34">week51</option>
                    <option value="35">week2</option>
                    <option value="36">week16</option>
                    <option value="37">week5</option>
                    <option value="38">week51</option>
                    <option value="39">week20</option>
                    <option value="40">week38</option>
                    <option value="41">week21</option>
                    <option value="42">week50</option>
                    <option value="43">week19</option>
                    <option value="44">week52</option>
                    <option value="45">week16</option>
                    <option value="46">week9</option>
                    <option value="47">week24</option>
                    <option value="48">week15</option>
                    <option value="49">week34</option>
                    <option value="50">week38</option>
                    <option value="51">week33</option>
                    <option value="52">week48</option>
                  </select>
    <div class="input-group-append">
     <button class="btn btn-outline-secondary" type="button" style="background-color: #1D6771;">
         <img src="http://walocal.test/wa/admin/img/vector.svg" alt="" style="margin-left: 0px; margin:-10px;" class="search-img">
    </button>
    </div> --}}
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
            <td><input type="text" name="name" value="{{ $year->name }}" /></td>
            <td>
                <button type="submit">Update</button>
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
