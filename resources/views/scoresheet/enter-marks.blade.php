@extends('layouts.admin_dashboard')
@section('content')
    <link rel="stylesheet" href="{{ asset('wa/admin/css/scoresheet.css') }}">
    <div class="inner-container enter-marks-div">
        <form action="{{ route('save-marks') }}" method="post">
            @csrf

            <table class="table" id="enter-marks">
                <thead>
                    <tr>
                        <th>Student</th>
                        @foreach ($enrolled_subjects as $enrolled_subject)
                            <th>{{ $enrolled_subject->subject->name }}({{ $enrolled_subject->full_marks }})</th>
                        @endforeach
                        <th>Allow</th>
                    </tr>
                </thead>
                <tbody>

                    @foreach ($enrolled_students as $enrolled_student)
                        <tr>
                            <td scope="row">{{ $enrolled_student->student->name }}</td>
                            @foreach ($enrolled_subjects as $enrolled_subject)
                                @php
                                    $obtained_mark = App\Http\Controllers\ScoreSheetController::get_obtained_marks($enrolled_student->id, $enrolled_subject->id);
                                    $is_allowed = App\Http\Controllers\ScoreSheetController::is_allowed($enrolled_student->id);
                                @endphp
                                <td><input type="number"
                                        name="marks[{{ $enrolled_student->id }}][{{ $enrolled_subject->id }}]"
                                        max="{{ $enrolled_subject->full_marks }}" id="" @if ($obtained_mark != null)
                                    value="{{ $obtained_mark }}"
                            @endif
                            ></td>
                    @endforeach
                    <td>
                        <input type="hidden" name="enrolled_student_id" value="{{ $enrolled_student->id }}">
                        <select name="allowed_students[{{ $enrolled_student->id }}]">
                            @if ($is_allowed)

                                <option value="1" selected>Yes</option>
                                <option value="0">No</option>
                            @else

                                <option value="1">Yes</option>
                                <option value="0" selected>No</option>
                            @endif
                        </select>
                    </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
            <input class="btn btn-primary" type="submit" value="Submit">
        </form>
        <div class="py-4">
            <a href="{{ route('view-score-sheet', $scoresheet_id) }}">
                <button class="btn btn-success">View ScoreSheet</button>
            </a>
            <a href="{{ route('create') }}">
                <button class="btn btn-info">View All</button>
            </a>
        </div>
        @push('scripts')
            <script>
                $(document).ready(function() {
                    $('#enter-marks').DataTable();
                });
            </script>
        @endpush
    </div>
@endsection
