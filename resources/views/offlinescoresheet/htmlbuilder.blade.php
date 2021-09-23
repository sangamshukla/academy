@extends('layouts.admin_dashboard')
@section('content')
    {{-- {{ $html->table() }} --}}
    <div>
        @if (count($weeks) >= 1)

            <form id="get-admin-score">
                <select name="select_week" id="week_id_name">
                    @foreach ($weeks as $week)
                        <option value="{{ $week->id }}">{{ $week->week_name }}</option>
                    @endforeach
                </select>
                <input type="submit" value="Get Scoresheet" id="get-admin-score">
                <form>
    </div>
    <br>
    @endif
    <div id="table-score"></div>
@endsection
@push('scripts')
    <script>
        $('#marks').dataTable({

        });
    </script>
    <script>
        $('#get-admin-score').submit(function(e) {
            e.preventDefault()
            var week_id = $("#week_id_name").val()
            $.ajax({
                type: 'post',
                url: '{{ route('get-admin-score') }}',
                data: {
                    '_token': '{{ csrf_token() }}',
                    week_id: week_id,
                },
                success: function(response) {
                    $("#table-score").html(response)

                },
                error: function(response) {
                    $('#video_loader').hide();
                    // $('#subjectslist').html(response);
                    $('#data-expertise-error').text("there is some error, please try again.")
                }
            });
        });
    </script>
@endpush
