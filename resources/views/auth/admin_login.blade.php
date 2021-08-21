@extends('layouts.auth')

@section('content')
<div class="text-center w-75 m-auto">
    <h4 class="text-dark-50 text-center mt-0 font-weight-bold">Admin Login</h4>
</div>
<div class="card-body">
    <form method="POST" action="{{ route('login') }}">
        @csrf

        @include('_form.input', ['title' => 'Email Address', 'name' => 'email'])
        @include('_form.input', ['title' => 'Password', 'name' => 'password'])

        <div class="form-group row">
            <div class="col-md-6 offset-md-4">
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>

                    <label class="form-check-label" for="remember">
                        {{ __('Remember Me') }}
                    </label>
                </div>
            </div>
        </div>

        <div class="form-group mb-0 text-center">
            <button class="btn btn-primary" type="submit"> Log In </button>
        </div>
        
    </form>
</div>
@endsection
