@extends('layouts.admin_dashboard')
@section('content')
<!-- <div class="container"> -->

  <h4 style="margin: 10px;" class="page-title">Manage Teacher</h4>
     <div class="content">
      <div class="row">
        <div class="col-md-12">
            <div class="card ">
              <div class="card-body ">
                @include('_form.success')

                {{-- <form> --}}
                        <table id="myTable" class="table table-bordered table-responsive w-100 d-block d-md-table">
                        <thead style="background-color:#DEECFA;color:black;">
                            <tr>
                                <th>S.No</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Contact Number</th>
                                <th>Year</th>
                                <th>User Type</th>
                                <th style="width:102.6979px;">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @php $i=1; @endphp
                         @foreach($teachers as $teacher)
                            <tr>
                                
                                <td>{{ $i }}</td>
                                <td>{{ $teacher->user->name }}</td>
                                <td>{{ $teacher->user->email }}</td>
                                <td>{{ $teacher->user->contact_number }}</td>
                                <td>
                                    @if(isset($teacher->classmaster->name))
                                    {{ $teacher->classmaster->name }}
                                    @else
                                    No year Found
                                    @endif
                                </td>
                                <td>{{ $teacher->user_type }}</td>
                                <td>
                                    <a href="{{ url('show-teacher', $teacher->id) }}" class="action-icon"> <i style="color:#858796"class="fa fa-eye"></i></a>
                                    <a href="{{ url('edit-teacher', $teacher->id) }}" class="action-icon"> <i style="color:#858796"class="fa fa-edit"></i></a>
                                    <a href="{{ url('destroy-teacher', $teacher->id) }}" onclick = "return confirm('Are You Sure For Delete ?')" class="action-icon"> <i style="color:#ce0b5c" class="fa fa-trash"></i></a>
                                  <!-- <a href="{{ url('edit-teacher', $teacher->id) }}" class="action-icon"> <i style="color:#A6C439"class="mdi mdi-pencil"></i></a>
                                  <a href="{{ url('destroy-teacher', $teacher->id) }}" onclick = "return confirm('Are You Sure For Delete ?')" class="action-icon"> <i style="color:red" class="mdi mdi-delete"></i></a>
                                  <a href="{{ url('show-teacher', $teacher->id) }}" class="action-icon"> <i style="color:#2b58ace8" width="500" height="200"class="mdi mdi-eye"></i></a> -->
                                  <!-- <div class="edit_icon space_img">
                                    <a href="{{ url('show-teacher', $teacher->id) }}"><p>View Details</p></a>
                                </div>
                                  <div class="delite_icon space_img">
                                    <a href="{{ url('destroy-teacher', $teacher->id) }}" onclick = "return confirm('Are You Sure For Delete ?')">
                                      <img
                                        src="{{asset('wa/admindashboard/img/delete.svg')}}"
                                        width="20"
                                        height="20"
                                      /></a>
                                    </div>
                                    <div class="edit_icon space_img">
                                        <a href="{{ url('edit-teacher', $teacher->id) }}"><img src="{{asset('wa/admindashboard/img/edit.svg')}}" width="20" height="20" /></a>
                                    </div> -->
                                   
                                </td>   
                            </tr>
                            @php $i++; @endphp
                        @endforeach 
                        </tbody>
                    </table>
                    
                {{-- </form> --}}
                
          </div>
            </div>
        </div>
      </div>
     </div>
     <!-- </div> -->
@endsection

@section('scripts')
<script>
    $(document).ready( function () {
        $('#myTable').DataTable({
            paging: true,
            ordering:  true
        });    
        });
</script>

@endsection
