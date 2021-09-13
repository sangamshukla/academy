@extends('layouts.student_dashboard')

@section('student-content')
<div style="margin: 61px; margin-top: 113px;" >
        <select name="select-week" id="select-week">
            @foreach ($week_alls as $week_all)
                <option value="{{$week_all->id}}">{{$week_all->week_name}}</option>
            @endforeach
        </select>
        <input type="button" value="Get Scoresheet" id="get-scoresheet">
        <div id="score">

        </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script type="text/javascript">
        $("#get-scoresheet").click(function(e){
                                    e.preventDefault();
                                    var week_number=1;
                                   $.ajax({
                                            type: 'post',
                                            url: '{{route("my-scoresheet")}}',
                                            data: {
                                                '_token': '{{ csrf_token() }}',
                                                week_number:week_number,
                                                },
                                            success: function (response) {
                                                $('#score').html(response)

                                    },
                                    error: function (response) {
                                                    // $('#subjectslist').html(response);
                                                $('#data-error').text("there is some error, please try again.")
                                                }
                                    });

                                });
            </script>
    {{-- @include('dashboard.student-scoresheet') --}}
</div>
@endsection