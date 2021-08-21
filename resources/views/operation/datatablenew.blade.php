@foreach($data as $teacher)
    @foreach($teacher->sessions as $sessionss)
        @if(\Carbon\Carbon::parse($sessionss->start_date_time)->format('d')==\Carbon\Carbon::today()->format('d'))
            <p>Today</p>
        @endif
    @endforeach
@endforeach