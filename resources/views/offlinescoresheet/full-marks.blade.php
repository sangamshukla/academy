@extends('layouts.admin_dashboard')
@section('content')
<div class="inner-container" style="overflow-y: scroll;">
    <div class="row">
        <div class="col-md-12">
            <div>
                <p style="margin-top: 30px; margin-left:20px; position:relative;" class="p-text">Score Sheet</p>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <h6 style="margin-top: 30px; margin-left:20px; position:relative;">Select week for score card list</h6>
        </div>
    </div>
    
    <div class="row">
        <div class="col-md-4">
            <div class="input-group mb-3">
            </div>
        </div>
    </div>
            <form method="POST" >
              @csrf
    <div class="row">
        <div class="col-md-4 col-xs-12">
            <table style="width:100%; margin-left:20px;" class="table table-bordered">
                <thead>
                  <tr>
                    <th style="width:20%" scope="col">S. No</th>
                    <th style="width:50%" scope="col">Subject</th>
                    <th style="width:30%" scope="col">Marks</th>
                  </tr>
                </thead>
                <tbody>
                  @foreach($subjects as $subject)
                  <tr style="background-color: white;">
                    <th scope="row">{{ $loop->iteration }}</th>
                    <td>{{ $subject->name }}</td>
                    <td><input class="form-control" /></td>
                  </tr>
                  @endforeach
                </tbody>
              </table>
              <div >
                <button class="submit"  type="button">Submit</button>
              </div>
        </div>
    </div>
    </form>
</div>

 
@endsection