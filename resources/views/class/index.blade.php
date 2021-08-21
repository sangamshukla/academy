@extends('layouts.app')

@section('content')
<!-- start page title -->
@include('layouts._partials.breadcrumb', [
    'menuone'=> 'Home', 
    'menutwo' =>'Add Classes',
    'menuthree' => 'Manage Classes',
    'menutwourl' => '/create-classes',
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
                                <th>Class Name</th>
                                @if(auth()->user()->role == 'admin')
                                <th>Assign Teacher</th>
                                @endif
                                <th> Price Per Session(&pound;)</th>
                                <th>Total Price</th>
                                <th>Nubmer Of Sessions</th>
                                <th>Class Start Date & Time</th>
                                <th>Year</th>
                                <th>Subject</th>
                                <th>No Of Seats</th>
                                {{-- <th>status</th> --}}
                                <th style="width:73.6979px;">Action</th>
                            </tr>
                        </thead>
                    
                        <tbody>
                            @php $i=1; @endphp
                        @foreach($batches as $batch)
                            <tr>
                                
                                <td>{{ $i }}</td>
                                <td>{{ $batch->classSettings->name }}</td>
                                @if(auth()->user()->role == 'admin')
                                <td>{{ $batch->assignteacher->name }}</td>
                                @endif
                                <td>{{ $batch->batch_price_per_session }}</td>
                                <td>{{ $batch->batchSession->count() * $batch->batch_price_per_session }}</td>
                                <td>{{ $batch->batchSession->count() }}</td>
                                <td>{{ $batch->batch_start_date }}</td>
                                <td>{{ $batch->classmaster->name }}</td>
                                <td>{{ $batch->subject->name }}</td>
                                <td>{{ $batch->no_of_seats }}</td>
                                {{-- <td></td> --}}

                                <td>
                                    
                                  <a href="{{ url('edit-classes', $batch->id) }}" class="action-icon"> <i style="color:#A6C439"class="mdi mdi-pencil"></i></a>
                                  <a href="{{ url('destroy-classes', $batch->id) }}" onclick = "return confirm('Are You Sure For Delete ?')" class="action-icon"> <i style="color:red" class="mdi mdi-delete"></i></a>
                                  <a target="_blanck" href="{{ url('show-classes', $batch->id) }}" class="action-icon"> <i style="color:#2b58ace8" width="500" height="200"class="mdi mdi-eye"></i></a>
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
    $(document).ready(function(){
        $('#myTable').DataTable({
            paging: true,
            ordering:  true
        });    
} );
</script>

@endsection
