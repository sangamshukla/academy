@extends('layouts.admin_dashboard')
@section('content')
    Select Subect for Scoresheet {{ $id }}
    <table class="table table-hover table-inverse table-responsive">
        <thead class="thead-inverse">
            <tr>
                <th>Name</th>
                <th>Insert Full Marks</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($subjects as $subject)
                @php
                    $is_already_enrolled = \App\Http\Controllers\ScoreSheetController::is_already_enrolled_subject($subject->id, $id);
                    $get_full_marks_subject = \App\Http\Controllers\ScoreSheetController::get_full_marks_subject($subject->id, $id);
                @endphp
                <tr>
                    <td scope="row">{{ $subject->name }}</td>
                    <form action="{{ route('select-subjects') }}" method="post">
                        @csrf
                        <td><input type="number" name="{{ $subject->id }}"
                                value="{{ $is_already_enrolled ? $get_full_marks_subject->full_marks : null }}">
                        </td>
                </tr>
            @endforeach
        </tbody>
    </table>
    <input type="hidden" name="scoresheet_id" value="{{ $id }}">
    <div class="">
        <input class=" btn btn-primary center" type="submit" value="Submit">
    </div>
    </form>
@endsection
