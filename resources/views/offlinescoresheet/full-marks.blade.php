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
    
    <div class="row">
        <div class="col-md-4">
            <div class="input-group mb-3">
                <select style="margin-left:20px; position:relative;" class="custom-select" id="inputGroupSelect02">
                  <option selected>Choose...</option>
                  <option value="1">One</option>
                  <option value="2">Two</option>
                  <option value="3">Three</option>
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
                  </tr>
                </thead>
                <tbody>
                  <tr style="background-color: white;">
                    <th scope="row">1</th>
                    <td>English</td>
                    <td><input class="form-control" /></td>
                  </tr>
                  <tr style="background-color: white;">
                    <th scope="row">1</th>
                    <td>English</td>
                    <td><input class="form-control" /></td>
                  </tr>
                  <tr style="background-color: white;">
                    <th scope="row">1</th>
                    <td>English</td>
                    <td><input class="form-control" /></td>
                  </tr>
                  <tr style="background-color: white;">
                    <th scope="row">1</th>
                    <td>English</td>
                    <td><input class="form-control" /></td>
                  </tr>
                  <tr style="background-color: white;">
                    <th scope="row">1</th>
                    <td>English</td>
                    <td><input class="form-control" /></td>
                  </tr>
                  <tr style="background-color: white;">
                    <th scope="row">1</th>
                    <td>English</td>
                    <td><input class="form-control" /></td>
                  </tr>
                  <tr style="background-color: white;">
                    <th scope="row">1</th>
                    <td>English</td>
                    <td><input class="form-control" /></td>
                  </tr>
                  <tr style="background-color: white;">
                    <th scope="row">1</th>
                    <td>English</td>
                    <td><input class="form-control" /></td>
                  </tr>
                  <tr style="background-color: white;">
                    <th scope="row">1</th>
                    <td>English</td>
                    <td><input class="form-control" /></td>
                  </tr>
                  <tr style="background-color: white;">
                    <th scope="row">1</th>
                    <td>English</td>
                    <td><input class="form-control" /></td>
                  </tr>

                </tbody>
              </table>
        </div>
    </div>
</div>

 
@endsection