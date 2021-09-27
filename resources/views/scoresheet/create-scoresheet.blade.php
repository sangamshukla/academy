@extends('layouts.admin_dashboard')
@section('content')
    <div class="mt-3">
        @if (Session::has('msg'))
            <div class="alert alert-danger" role="alert">
                {{ Session::get('msg') }}
            </div>
        @endif
    </div>
    <form action="{{ route('create-scoresheet') }}" method="post">
        @csrf
        <div class="row">
            <div class="col-2">
                <div class="form-group">
                    <select name="week" id="week">
                        @foreach ($weeks as $week)
                            <option value="{{ $week->id }}">{{ $week->week_name }}</option>
                        @endforeach
                    </select>
                </div>

            </div>
            <div class="col-2">
                <div class="form-group">
                    <select name="grade" id="grade">
                        @foreach ($grades as $grade)
                            <option value="{{ $grade->id }}">{{ $grade->name }}</option>
                        @endforeach
                    </select>
                </div>
            </div>
        </div>
        <input type="submit" value="Create ScoreSheet" class="btn btn-info">
    </form>
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
                    <td>{{ $scoresheet->week->week_name }}</td>
                    <td>{{ $scoresheet->grade->name }}</td>
                    <td>
                        <a href="{{ route('select-student-edit', $scoresheet->id) }}">
                            <button class="btn btn-primary">Edit Students</button>
                        </a>
                    </td>
                    <td>
                        <a href="{{ route('select-subjects-edit', $scoresheet->id) }}">
                            <button class="btn btn-info">Edit Subjects</button>
                        </a>
                    </td>
                    <td>
                        <a href="{{ route('enter-marks', $scoresheet->id) }}">
                            <button class="btn btn-success">Edit Marks</button>
                        </a>
                    </td>
                    <td>
                        <a href="{{ route('view-score-sheet', $scoresheet->id) }}">
                            <button class="btn btn-success">View Score Sheet</button>
                        </a>
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
