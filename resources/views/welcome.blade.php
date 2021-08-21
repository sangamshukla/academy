@extends('layouts.main')

@section('css')
    <link rel="stylesheet" href="{{ asset('wa/welcome.css') }}">
@endsection

@section('content')
    @include('common.content')
@endsection

@section('footer_one')
    @include('common.footer_one')
@endsection

@section('js')
<script>
    document.FIX_HEADER_TOP = 35;
  </script>
  <script src="{{ asset('wa/coustom.js') }}"></script>
@endsection
