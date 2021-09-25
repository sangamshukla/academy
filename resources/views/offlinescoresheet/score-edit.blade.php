@extends('layouts.admin_dashboard')
@section('content')
    <form action="{{ route('offline-scoresheet-udpate') }}" method="POST">

        @method('PUT')
        @foreach ($offline_scores as $subject)
            {{-- {{ $subject }} --}}
            <label for="{{ $subject->id }}">{{ $subject->subject->subject->name }}
                <input type="number" name="{{ $subject->subject->subject->id }}" value="{{ $subject->obtained_marks }}"
                    id="{{ $subject->id }}">
            </label>
            <br>
        @endforeach
        {{-- {{ dd($allowed) }} --}}
        <select name="is_allowed" id="is_allowed">
            <option value="0">No</option>
            <option value="1">Yes</option>
        </select>
        <input type="hidden" name="student_id" , value="{{ $student_id }}">
        <input type="hidden" name="week_id" , value="{{ $week_id }}">
        <input type="submit" value="Submit">
    </form>
@endsection
