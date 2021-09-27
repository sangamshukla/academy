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
                {{-- {{ $subject }} --}}
                <tr>
                    <td scope="row">{{ $subject->name }}</td>
                    <form action="{{ route('select-subjects') }}" method="post">
                        @csrf
                        <td><input type="number" name="{{ $subject->id }}"></td>
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
