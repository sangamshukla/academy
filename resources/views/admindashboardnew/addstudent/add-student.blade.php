@extends('layouts.admin_dashboard')
@section('content')
    <!-- <h4 style="color: black; margin-left:18px;"> Add Student</h4><br> -->
     <div class="card" style="border: none; height:700px;">
        <div class="card-body">
            
    <h4 style="color: black;">Add Student</h4><br>
    <form class="needs-validation" novalidate method="POST" action="{{ route('student-register') }}">
      @csrf
        <div class="form-row">
            <!-- first name -->
          <div class="col-md-4 mb-3">
            <label for="validationTooltip01">First Name</label>
            <input type="text" class="form-control" name="name" id="validationTooltip01" placeholder="Enter First Name" required>
            <div class="valid-tooltip">
              Looks good!
            </div>
          </div>
          <!-- end first name -->

          <!-- last name -->
          <div class="col-md-4 mb-3">
            <label for="validationTooltip02">Last Name</label>
            <input type="text" class="form-control" name="last_name" placeholder="Enter Last Name">
          </div>
          <!-- end last name -->
        </div>

        <div class="form-row">
            <!-- year -->
            <div class="col-md-4 mb-3">
              <label for="validationTooltip01">Year</label>
              <input type="text" class="form-control" placeholder="Year">
            </div>
            <!-- end year -->

            <!-- email -->
            <div class="col-md-4 mb-3">
              <label for="validationTooltip02">Email</label>
              <input type="email" class="form-control" name="email"  placeholder="Enter Email Id">
            </div>
            <!-- end email -->
          </div>

          <!-- mobile Number -->
          <div class="form-row">
            <div class="col-md-4 mb-3">
              <label for="validationTooltip01">Mobile Number</label>
              <input type="number" class="form-control" name="mobile_number" placeholder="Enter Mobile Number">
            </div>
            <!-- end mobile number -->

            <!-- password -->
            <div class="col-md-4 mb-3">
              <label for="validationTooltip02">Password</label>
              <input type="text" class="form-control" name="password" placeholder="Enter Password">
            </div>
          </div>
          <!-- end password -->

          <!-- submit -->
        <!-- <button style="background-color: #1d6771;" type="submit">Submit</button> -->
        <button class="btn btn-info" type="submit">Submit</button>

        <!-- end submit -->
      </form>
    
    </div>
    </div>
@endsection