@extends('layouts.app')

@section('content')
<!-- start page title -->
<div class="row">
  <div class="col-12">
      <div class="page-title-box">
          <div class="page-title-right">
              <ol class="breadcrumb m-0">
                  <li class="breadcrumb-item"><a href="{{url('/')}}">Home</a></li>
                  <li class="breadcrumb-item"><a href="{{ url('#') }}">My Live Sessions</a></li>
                  {{-- <li class="breadcrumb-item"><a href="{{ url('student') }}">View Sessions Details</a></li> --}}
              </ol>
          </div>
          <h4 class="page-title" style="color:#A6C439">Live Sessions</h4>
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
                        <table id="myTable" class="table table-bordered table-responsive w-100 d-block d-md-table">
                        <thead style="background-color:#7DC234;color:#fff;">
                            <tr>
                                <th>S.No</th>
                                <th>Class Name</th>
                                <th>Nubmer Of Sessions</th>
                                <th>Class Start Date & Time</th>
                                <th>Duration</th>
                                <th style="width:73.6979px;">Action</th>
                            </tr>
                        </thead>                    
                        <tbody>
                        @foreach($batches as $batch)
                            <tr>                                
                                <td>{{ $batch->id }}</td>
                                <td>{{ $batch->batch->classSettings->name }}</td>
                                <td>{{ $batch->batch->batchSession->count() }}</td>
                                <td>{{ $batch->batch->batch_start_date }}</td>
                                <td>{{ $batch->batch->duration_per_session }}</td>                        
                                <td>
                                  <a href="#" data-toggle="modal" data-target="#batch{{ $batch->id }}" >View Session Details</a>
                                </td> 
                            </tr>
                        @endforeach
                        </tbody>
                    </table>                    
                {{-- </form> --}}                
          </div>
            </div>
        </div>
      </div>
     </div>

     @foreach($batches as $batch)
         
     <!-- Modal -->
<div class="modal fade" id="batch{{ $batch->id }}" tabindex="-1" role="dialog" aria-labelledby="batch{{ $batch->id }}" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLongTitle">{{ $batch->batch->name }}</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <h3>{{ Str::ucfirst($batch->batch->classSettings->name) . ' - ' . Str::ucfirst($batch->batch->assignteacher->name ). ' ' . Str::ucfirst($batch->batch_start_date)}}</h3>
            <table id="myTable" class="table table-bordered">
                {{-- <thead style="color:#2b58ace8"> --}}
                <thead style="background-color:#7DC234;color:#fff;">
                    <tr>
                        <th>S.No</th>
                        <th>Session Name</th>
                        <th>Session Topic</th>
                        <th> Session Date & Time</th>
                        <th>join Session</th>
                    </tr>
                </thead>
                <tbody>
                @foreach($batch->batch->batchSession as $session)
                    <tr>
                        <td>{{ $batch->id }}</td>
                        <td>{{ $session->name }}</td>  
                        <td>@foreach($session->topics as $t)
                            {{ $t->topic->name }}                                       
                            @endforeach</td> 
                        <td>{{ $session->start_date_time }}</td>  
                        <td>now working on it</td>  
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          {{-- <button type="button" class="btn btn-primary">Save changes</button> --}}
        </div>
      </div>
    </div>
  </div>
     @endforeach
@endsection

@section('scripts')
<script>
    $(document).ready( function () {
        $('#myTable').DataTable();
        // $('#myTable').DataTable( {"scrollX": true} );
    } );]
</script>


@endsection
