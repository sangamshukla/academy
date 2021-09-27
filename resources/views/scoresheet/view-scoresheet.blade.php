@extends('layouts.admin_dashboard')

@section('content')
    <div>


        <table class="table" id="myTable">
            <thead>
                <tr>
                    <th>Students</th>
                    @foreach ($enrolled_subjects as $enrolled_subject)
                        <th>{{ $enrolled_subject->subject->name }}({{ $enrolled_subject->full_marks }})</th>
                    @endforeach
                    <th>Total Marks</th>
                    <th>Rank</th>
                    <th>View Scoresheet</th>
                </tr>
            </thead>
            <tbody>
                @php
                    $rank_array = [];
                @endphp
                @foreach ($enrolled_students as $enrolled_student)
                    <tr>
                        <td scope="row">
                            <a href="">
                                {{ $enrolled_student->student->name }}
                            </a>
                        </td>
                        @foreach ($enrolled_subjects as $enrolled_subject)
                            @php
                                $obtained_mark = App\Http\Controllers\ScoreSheetController::get_obtained_marks($enrolled_student->id, $enrolled_subject->id);
                            @endphp
                            <td>{{ $obtained_mark ?? '-' }}</td>
                        @endforeach
                        <td>
                            @php
                                
                                $get_full_mark = App\Http\Controllers\ScoreSheetController::get_full_marks($enrolled_student->id);
                                if ($get_full_mark != null) {
                                    array_push($rank_array, $get_full_mark);
                                }
                            @endphp
                            @if ($get_full_mark != 0)
                                {{ $get_full_mark }}
                            @else
                                -
                            @endif
                        </td>
                        <td>
                            5/10
                        </td>
                        <td>
                            <a name="" id="" class="btn btn-primary"
                                href="{{ route('student-scoresheet', $enrolled_student->id) }}" role="button">View
                                Scoresheet</a>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
        <a href="{{ route('enter-marks', $score_sheeet_id) }}"><button class="btn btn-info">Update Marks</button></a>
        <a href="{{ route('create') }}"><button class="btn btn-info">Create New</button></a>
        @push('scripts')
            <script>
                $(document).ready(function() {
                    $('#myTable').DataTable();
                });
            </script>
        @endpush
    </div>
@endsection
