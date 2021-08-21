@extends('layouts.app')

@section('content')
<!-- start page title -->

@include('layouts._partials.breadcrumb', 
[ 'menuone'=> 'Home',
  'menutwo' =>'Add Teacher',
  'menuthree' => 'Manage Teacher',
  'menutwourl' => '#',
  'menuthreeurl'=>'/manage-teacher',
   'title' => 'Add Classes'])
<!-- end page title --> 

     <div class="content">
      <div class="row">
        <div class="col-md-12">
          <form method="post" action="{{ route('add-teacher') }}" autocomplete="off" class="form-horizontal">
            @csrf
            <div class="card ">
              <div class="card-header card-header-success">
                <h4 class="card-title">Add New Teacher</h4>
                <p class="card-category">Fill the required fields</p>
              </div>

              <div class="card-body ">
                @include('_form.success')

                {{-- <form> --}}
                  <div class="row">
                    <div class="col">
                      <div class="form-group">
                        <label for="simpleinput">Name</label>
                        <input type="text" id="simpleinput" name="name" placeholder="Name" class="form-control">
                      </div>
                    </div>

                    <div class="col">
                     <div class="form-group">
                      <label for="simpleinput">Email</label>
                      <input type="email" id="email" name="email" placeholder="Email" class="form-control">
                    </div>
                    </div>

                  </div>

                  <div class="row">
                    <div class="col">
                      <div class="form-group">
                        <label for="simpleinput">Contact Number</label>
                        <input type="number" id="contact_number" name="contact_number" placeholder="Contact Number" class="form-control">
                      </div>
                    </div>

                    <div class="col">
                     <label for="inputState">Select Year</label>
                     <select name="class_master_id" required id="inputState" class="form-control">
                       <option selected>...Select Year...</option>
                       @foreach($classes as $class)
                       <option value="{{$class->id}}">{{$class->name}}</option>
                       @endforeach
                     </select>
                    </div>
                  </div>
{{-- 
                  <div class="row">
                    <div class="col-md-6">
                      <label for="inputState">User Type &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>

                      <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="user_type" id="inlineRadio2" value="teacher">
                        <label class="form-check-label" for="inlineRadio2">Teacher</label>
                      </div>
                      <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="user_type" id="inlineRadio3" value="operation">
                        <label class="form-check-label" for="inlineRadio3">Operation</label>
                      </div>
                    </div>  --}}

                    <div class="row">
                      <div class="col-md-6">
                        <label for="inputState">User Type &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                    <div class="form-check-inline">
                      <label class="form-check-label">
                        <input type="checkbox" class="form-check-input" value="teacher" name="user_type">Teacher
                      </label>
                    </div>
                    <div class="form-check-inline">
                      <label class="form-check-label">
                        <input type="checkbox" class="form-check-input" value="operation" name="user_type">Opration
                      </label>
                    </div> 
                  </div>   
{{-- 
                  <div class="row">
                    <div class="col-md-4">
                      <label for="inputState">User Type</label>
                      <div class="funkyradio">
                            <div class="funkyradio-info">
                                <input type="checkbox" class="form-check-input" value="Teacher" name="user_type" id="checkbox1" checked/>
                                <label for="checkbox1">Teacher</label>
                            </div>

                            <div class="funkyradio-info">
                                <input type="checkbox" name="checkbox" id="checkbox2" checked/>
                                <input type="checkbox" class="form-check-input" value="Operation" name="user_type" id="checkbox1" checked/>
                                <label for="checkbox2">Opration</label>
                            </div>
                        </div>
                
                  </div>
                  </div>  --}}
                {{-- </form> --}}
              </div>
        
              <div class="card-footer ml-auto mr-auto">
                @include('_form.button',['title'=>'Save Teacher'])
              </div>
            </div>
          </form>
        </div>
      </div>
     </div>   
@endsection