@extends('layouts.operation_dashboard');

@section('content')
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="https://resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link
      href="https://cdn.datatables.net/1.10.25/css/dataTables.bootstrap4.min.css">
<div style="margin-top: 110px;" class="container-fluid">

    <p>Date: <input type="datetime" id="datepicker" onchange="return getSession();"></p>
    
    @if(session()->has('status'))
        <p></p>
        <div class="alert alert-success" role="alert">
                {{session('status')}}
            </div>

    @endif
    <div id="datatable">

    </div>
</div>
<script>
    var $j = jQuery.noConflict();
    $j(document).ready(function () {
      $j( "#datepicker" ).datepicker().datepicker('setDate', new Date());
      selectedDate=$('#datepicker').val();
        $.ajax({
            type:"POST",
            url:"{{ route('get-session-list') }}",
            data:{
                '_token': '{{ csrf_token() }}',
                selectedDate:selectedDate,
            },
            success:function(response){
                $('#datatable').html(response);
            },
            error:function(error){
                $('#datatable').text("No session for selected day");
            }
        });
    });
</script>
<script>
    function getSession()
    {
        selectedDate=$('#datepicker').val();
        $.ajax({
            type:"POST",
            url:"{{ route('get-session-list') }}",
            data:{
                '_token': '{{ csrf_token() }}',
                selectedDate:selectedDate,
            },
            success:function(response){
                $('#datatable').html(response);
            },
            error:function(error){
                $('#datatable').text("No session for selected day");
            }
        });
    }
</script>
<script>
    function loadSession()
    {
        selectedDate="{{ \Carbon\Carbon::today() }}";
        console.log(selectedDate+"date");
        $.ajax({
            type:"POST",
            url:"{{ route('get-session-list') }}",
            data:{
                '_token': '{{ csrf_token() }}',
                selectedDate:selectedDate,
            },
            success:function(response){
                $('#datatable').html(response);
            },
            error:function(error){
                $('#datatable').text("No session for selected day");
            }
        });
    }
</script>
@endsection
