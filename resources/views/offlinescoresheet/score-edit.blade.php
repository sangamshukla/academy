@extends('layouts.admin_dashboard')
@section('content')
    <form action="{{ route('offline-scoresheet-udpate') }}" method="POST">
        @csrf
        @method("PUT")
        @foreach ($offline_scores as $score)
            <input type="number" name="{{ $score->id }}" id="" value={{ $score->obtained_marks }}>
            <br>
        @endforeach
        <input type="submit" value="Submit">
    </form>
@endsection
