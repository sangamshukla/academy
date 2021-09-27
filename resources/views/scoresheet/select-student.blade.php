@extends('layouts.admin_dashboard')
@section('content')
    Select Student for Scoresheet {{ $id }}
    <table class="table table-hover table-inverse table-responsive">
        <thead class="thead-inverse">
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Select</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($students as $student)
                <tr>
                    <td scope="row">{{ $student->name }}</td>
                    <td>{{ $student->email }}</td>
                    <form action="{{ route('select-student') }}" method="post">
                        @csrf
                        <td><input type="checkbox" name="selected_students[]" value="{{ $student->id }}"></td>
                </tr>
            @endforeach
        </tbody>
    </table>
    <input type="hidden" name="scoresheet_id" value="{{ $id }}">
    <div class="text-center">
        <input class="btn btn-primary center" type="submit" value="Submit">
    </div>
    </form>
@endsection
