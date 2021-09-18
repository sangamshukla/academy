@extends('layouts.admin_dashboard')
@section('content')
@include('_form.success')

<div class="row" >
    @foreach ($topics as $topic)
    <div class="col-md-4" style="margin-bottom:20px">
        <div class="card" style="width: 18rem;">
            <div class="card-header">
                {{ $topic->name }}
            </div>
            <ul class="list-group list-group-flush">
                @forelse ($topic->subtopics as $st)
                    <li class="list-group-item">{{ $st->sub_topic_name }}</li>
                @empty
                    <li class="list-group-item">No Sub topic present</li>
                @endforelse
            </ul>
            <a style="background: #1d6771;" href="{{route('manage-topic-save', $topic->id)}}" class="btn btn-primary">Add New</a>
        </div>
    </div>
@endforeach

</div>



@endsection
