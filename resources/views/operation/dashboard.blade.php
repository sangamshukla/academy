@extends('layouts.operation_dashboard')

@section('content')
<link href="{{asset('wa/operationdashboard/css/session.css')}}" rel="stylesheet" />
          <!-- Begin Page Content -->
            <!-- Page Heading -->

            <div style="margin-top: 90px;" class="d-sm-flex align-items-center justify-content-between mb-4">
              <h1  class="h3 mb-0 text-gray-800 session_heading">My Session</h1>
            </div>
            <div class="m-2">
                <div class="m-2"><a href="{{route('teacher.management')}}" class="btn btn-info">Manage Classes</a></div>
                 <div class="m-2"><a href="{{route('class.store')}}" class="btn btn-primary">Add Classes</a></div> 
            </div>
             
@endsection
