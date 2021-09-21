@extends('layouts.admin_dashboard')
@section('content')
@include('_form.success')

<div class="row" >
    @foreach ($subjects as $subject)
    <div class="col-md-4" style="margin-bottom:20px">
        <div class="card" style="width: 18rem;">
            <div class="card-header">
                {{ $subject->name }}
            </div>
            <ul class="list-group list-group-flush">
                @forelse ($subject->topics as $st)
                    <li class="list-group-item">{{ $st->name }}</li>
                @empty
                    <li class="list-group-item">No Sub topic present</li>
                @endforelse
            </ul>
            <a style="background: #1d6771;" href="{{route('manage-topic-save', $subject->id)}}" class="btn btn-primary">Add New</a>
        </div>
    </div>
@endforeach

</div>



@endsection
