@extends('layouts.app')

@section('content')
<!-- start page title -->
<div class="row">
  <div class="col-12">
      <div class="page-title-box">
          <div class="page-title-right">
              <ol class="breadcrumb m-0">
                  <li class="breadcrumb-item"><a href="{{ url('/') }}">Home</a></li>
                  <li class="breadcrumb-item"><a href="{{ url('#') }}">Show Classes</a></li>
              </ol>
          </div>
          <h4 class="page-title">Show Classes </h4>
          <h3 style="text-align: center" >{{ Str::ucfirst($batch->classSettings->name) . ' - ' . Str::ucfirst($batch->assignteacher->name ). ' - ' . Str::substr($batch->batch_start_date,0,-3) }}</h3>    
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
                                <th>Session Name</th>
                                <th>Session Topic</th>
                                <th> Session Date & Time</th>
                                <th>Comment</th>
                            </tr>
                        </thead>
                        <tbody>
                        @foreach($batch->batchSession as $session)
                            <tr>
                                <td>{{ $session->name }}</td>  
                                <td>{{ $session->topics->topic->name }}</td>
                            {{-- <td>@foreach($session->topics as $t)
                                {{ $t->topic->name }}                                       
                                @endforeach</td>  --}}
                                <td>{{ $session->start_date_time }}</td> 
                                {{-- <td>{{ $session->first_date_time }}</td>   --}}
                                <td>{{ $session->comment }}</td>  
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                    <a class="btn btn-success" href="{{ url('manage-classes') }}" role="button">Back</a>
                    {{-- <a href="{{ url('manage-classes') }}" class="btn btn-primary btn-lg disabled" role="button" aria-disabled="true">Back</a> --}}

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
