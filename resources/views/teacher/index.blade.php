@extends('layouts.app')

@section('content')
<!-- start page title -->
@include('layouts._partials.breadcrumb', [
    'menuone'=> 'Home', 
    'menutwo' =>'Add Teacher',
    'menuthree' => 'Manage Teacher',
    'menutwourl' => '/add-teacher',
    'menuthreeurl' => '#',
    'title' => 'Manage Classes'
]) 
<!-- end page title --> 

     <div class="content">
      <div class="row">
        <div class="col-md-12">
            <div class="card ">
              <div class="card-body ">
                @include('_form.success')

                {{-- <form> --}}
                        <table id="myTable" class="table table-bordered table-responsive w-100 d-block d-md-table">
                        <thead style="background-color:#7DC234;color:#fff;">

                            <tr>
                                <th>S.No</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Contact Number</th>
                                <th>Year</th>
                                <th>User Type</th>
                                <th style="width:73.6979px;">Action</th>
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
                                  <a href="{{ url('edit-teacher', $teacher->id) }}" class="action-icon"> <i style="color:#A6C439"class="mdi mdi-pencil"></i></a>
                                  <a href="{{ url('destroy-teacher', $teacher->id) }}" onclick = "return confirm('Are You Sure For Delete ?')" class="action-icon"> <i style="color:red" class="mdi mdi-delete"></i></a>
                                  <a href="{{ url('show-teacher', $teacher->id) }}" class="action-icon"> <i style="color:#2b58ace8" width="500" height="200"class="mdi mdi-eye"></i></a>
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
