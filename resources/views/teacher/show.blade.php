@extends('layouts.app')

@section('content')
<!-- start page title -->
<div class="row">
  <div class="col-12">
      <div class="page-title-box">
          <div class="page-title-right">
              <ol class="breadcrumb m-0">
                  <li class="breadcrumb-item"><a href="javascript: void(0);">Home</a></li>
                  <li class="breadcrumb-item"><a href="javascript: void(0);">Teacher</a></li>
                  <li class="breadcrumb-item active">Add Teacher</li>
              </ol>
          </div>
          <h4 class="page-title">Teacher Details</h4>

      </div>
  </div>
</div>     
<!-- end page title --> 

     <div class="content">
      <div class="row">
        <div class="col-md-12">
            <div class="card ">
              <div class="card-body ">
                @include('_form.success')

                {{-- <form> --}}
                    <table id="myTable" class="table table-bordered">
                        {{-- <thead style="color:#2b58ace8"> --}}
                        <thead style="background-color:#7DC234;color:#fff;">
                            <tr>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Contact Number</th>
                                <th>Year</th>
                                <th>User Type</th>
                            </tr>
                        </thead>
                        <tbody>
                        {{-- @foreach($teachers as $teacher) --}}
                            <tr>
                                <td>{{ $teacher->user->name }}</td>
                                <td>{{ $teacher->userforemail->email }}</td>
                                <td>{{ $teacher->user->contact_number }}</td>
                                <td>{{ $teacher->classmaster->name }}</td>
                                <td>{{ $teacher->user_type }}</td>
                            </tr>
                        {{-- @endforeach  --}}
                        </tbody>
                    </table>
                    
                {{-- </form> --}}
                
          </div>
            </div>
        </div>
      </div>
     </div>
@endsection

@section('scripts')
<script>
    $(document).ready( function () {
        $('#myTable').DataTable();
        // $('#myTable').DataTable( {"scrollX": true} );
    } );
</script>

@endsection
