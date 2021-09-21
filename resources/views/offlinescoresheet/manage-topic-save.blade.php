@extends('layouts.admin_dashboard')
@section('content')
<form method="POST" action="{{ route('manage-topic-save', $subject->id) }}">
    @csrf
<div class="row" >
    <div class="col-md-4" style="margin-bottom:20px">
        <div class="card" style="width: 18rem;">
            <div class="card-header">
                {{ $subject->name }}
            </div>
            <ul class="list-group list-group-flush">
                    {{-- <li class="list-group-item">{{ $st->sub_topic_name }}</li> --}}
                    <input type="text" name="sub_topic_name">
            </ul>
            <button style="background: #1d6771;" type="submit" class="btn btn-primary">Save</button>
        </div>
    </div>
</div>

</form>

@endsection
