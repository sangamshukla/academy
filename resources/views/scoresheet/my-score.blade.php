@extends('layouts.student_dashboard')

@section('student-content')
    <div style="margin: 61px; margin-top: 113px;">
        <table class="table table-hover table-inverse table-responsive p-4">
            <thead class="thead-inverse">
                <tr>
                    <th>Sr. No.</th>
                    <th>Week</th>
                    <th>Class</th>
                    <th colspan="4" class="text-center">Action</th>
                </tr>
            </thead>
            <tbody>
                @forelse ($scoresheets as $scoresheet)

                    <tr>
                        <td scope="row">{{ $loop->iteration }}</td>
                        <td>{{ $scoresheet->scoresheet->week->week_name }}</td>
                        <td>{{ $scoresheet->scoresheet->grade->name }}</td>
                        <td>
                            @php
                                $is_allowed = App\Http\Controllers\ScoreSheetController::is_allowed($scoresheet->id);
                                $is_created = App\Http\Controllers\ScoreSheetController::is_created($scoresheet->id);
                            @endphp
                            @if ($is_allowed)
                                @if ($is_created)
                                    <a href="{{ route('student-scoresheet', $scoresheet->id) }}">
                                        <button class="btn btn-success">View Score Sheet</button>
                                    </a>
                                @else
                                    Not created
                                @endif
                            @else
                                Not Allowed, please ask administration
                            @endif
                        </td>
                    </tr>
                @empty

                    <tr>
                        <td scope="row">No ScoreSheet Created</td>
                    </tr>
                @endforelse
            </tbody>
        </table>

    @endsection
