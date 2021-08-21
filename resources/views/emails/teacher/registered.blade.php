@component('mail::message')
# Hi {{$user->name}}


@if($user->role == 'teacher')
@component('mail::button', ['url' => url('teacher-dashboard')])
    Click Here To Login
@endcomponent
@endif


@if($user->role == 'operation')
@component('mail::button', ['url' => url('operation-dashboard')])
    Click Here To Login
@endcomponent
@endif




Thanks,<br>
{{ config('app.name') }}
@endcomponent

