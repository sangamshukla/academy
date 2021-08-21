@extends('layouts.app')

@section('content')
<!-- start page title -->
<div class="row">
  <div class="col-12">
      <div class="page-title-box">
          <div class="page-title-right">
              <ol class="breadcrumb m-0">
                  <li class="breadcrumb-item"><a href="javascript: void(0);">Home</a></li>
                  <li class="breadcrumb-item"><a href="javascript: void(0);">Teacher</a></li>
                  <li class="breadcrumb-item active">Add Teacher</li>
              </ol>
          </div>
          <h4 class="page-title">Add Teacher / Add Member</h4>
      </div>
  </div>
</div>     
<!-- end page title --> 

     <div class="content">
      <div class="row">
        <div class="col-md-12">
          <form method="post" action="{{ route('edit-teacher', $teacher->id) }}" autocomplete="off" class="form-horizontal">
            @csrf
            <div class="card ">
              <div class="card-header card-header-success">
                <h4 class="card-title">Update Teacher</h4>
                <p class="card-category">Fill the required fields</p>
              </div>

              <div class="card-body ">
                @include('_form.success')

                {{-- <form> --}}
                  <div class="row">
                    <div class="col">
                      <div class="form-group">
                        <label for="simpleinput">Name</label>
                        <input type="text" id="name" name="name" placeholder="Name" value="{{ $teacher->User->name }}" class="form-control">
                      </div>
                    </div>

                    {{-- Email --}}
                    <div class="col">
                     <div class="form-group">
                      <label for="simpleinput">Email</label>
                      <input type="email" id="email" name="email" placeholder="Email" value="{{ $teacher->User->email }}" class="form-control">
                    </div>
                    </div>

                  </div>

                  {{-- contact Number --}}
                  <div class="row">
                    <div class="col">
                      <div class="form-group">
                        <label for="simpleinput">Contact Number</label>
                        <input type="number" id="contact_number" name="contact_number" placeholder="Contact Number" value="{{ $teacher->user->contact_number }}" class="form-control">
                      </div>
                    </div>

                    {{-- Year/Batch --}}
                    <div class="col">
                     <label for="inputState">Select Year</label>
                     <select name="class_master_id"  required id="inputState" class="form-control">
                       <option selected>...Select Year...</option>

                       <option value="1" @if($teacher->class_master_id ==1)
                        {{ 'selected' }} @endif>Year 1</option>

                       <option value="2" @if($teacher->class_master_id ==2)
                        {{ 'selected' }} @endif>Year 2</option>

                       <option value="3" @if($teacher->class_master_id ==3)
                        {{ 'selected' }} @endif>Year 3</option>

                       <option value="4" @if($teacher->class_master_id ==4)
                        {{ 'selected' }} @endif>Year 4</option>
                        
                     </select>
                    </div>
                  </div>

                  {{-- User Type --}}
                    <div class="row">
                      <div class="col-md-6">
                        <label for="inputState">User Type &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                    <div class="form-check-inline">
                      <label class="form-check-label">
                        <input type="checkbox" class="form-check-input" value="Teacher" name="user_type" {{ $teacher->user_type == 'Teacher' ? 'checked' : ''}}>Teacher
                      </label>
                    </div>
                    <div class="form-check-inline">
                      <label class="form-check-label">
                        <input type="checkbox" class="form-check-input" value="Operation" name="user_type" {{ $teacher->user_type == 'Operation' ? 'checked' : ''}}>Opration
                      </label>
                    </div>
                    
                  </div>
                {{-- </form> --}}
                
          </div>
        
              <div class="card-footer ml-auto mr-auto">
                @include('_form.button',['title'=>'Update Teacher'])
              </div>
            </div>
          </form>
        </div>
      </div>
     </div>
@endsection