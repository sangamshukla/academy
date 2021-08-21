@extends('layouts.main')

@section('css')
    <link rel="stylesheet" href="{{ asset('wa/welcome.css') }}">
@endsection

@section('content')
{{-- <span>We are processing your payment.</span> --}}

<div class="row">
    <div class="col-sm-12">
        <div id="processing" style="color: #1d6771"class="alert alert-warning">
        {{-- <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <i class="fa fa-close"></i>
        </button> --}}
        {{-- <span> Your Payment has been done successfully.</span> --}}
        <span>We are processing your payment.</span>
        </div>
        <div id="processed" class="alert alert-success">
            <span>Your Payment has been done successfully.</span>
        </div>
    </div>
    </div>
<img style="width:1500px;" src="{{ asset('wa/assets/paymentimg/whatis.png')}}">
@endsection

@section('js')
<script>
    $('document').ready(function() {
        $('#processed').hide();
        setTimeout(() => {
            $('#processing').hide();
            $('#processed').show();
        }, 5000);
    });
</script>
@endsection

