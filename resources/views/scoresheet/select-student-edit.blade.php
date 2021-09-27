@extends('layouts.admin_dashboard')
@section('content')
    Select Student for Scoresheet {{ $id }}
    <form action="{{ route('select-student') }}" method="post">
        @csrf
        <table class="table table-hover table-inverse table-responsive" id="student">
            <thead class="thead-inverse">
                <tr>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Select</th>
                    <th>Is Enrolled</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($students as $student)
                    @php
                        $is_student_enrolled = \App\Http\Controllers\ScoreSheetController::isStudentEnrolled($student->id, $id);
                    @endphp
                    <tr>
                        <td scope="row">{{ $student->name }}</td>
                        <td>{{ $student->email }}</td>

                        <td><input type="checkbox" name="selected_students[]" value="{{ $student->id }}" @if ($is_student_enrolled)
                            checked
                @endif ></td>
                <td>{{ $is_student_enrolled }}</td>
                </tr>
                @endforeach
            </tbody>
        </table>
        <input type="hidden" name="scoresheet_id" value="{{ $id }}">

        <input class="btn btn-primary center" type="submit" value="Submit">
        <a href="{{ route('create', $id) }}">
            <input class="btn btn-primary center" type="button" value="Back to Home">
        </a>
    </form>
    @push('scripts')
        <script>
            $(document).ready(function() {
                $('#student').DataTable();
            });
        </script>

    @endpush
@endsection
