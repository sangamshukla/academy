@extends('layouts.admin_dashboard')

@section('content')
    @php
    // dd(count($weeks));
    @endphp
    <div>
        @if (count($weeks) >= 1)
            <select name="select_week" id="week_id_name">
                @foreach ($weeks as $week)
                    <option value="{{ $week->id }}">{{ $week->week_name }}</option>
                @endforeach
            </select>
            <input type="button" value="Get Scoresheet" id="get-admin-score" onclick="get_score();">
    </div>
    <br>
    @endif
    @if (count($weeks) >= 1)


        <div id="admin-score-table">
            {{-- @include('admindashboardnew.admin-score-table') --}}
            <table class="table table-bordered" id="users-table">
                <thead>
                    <tr>
                        <th>Student</th>
                        @foreach ($subject_full_marks as $subject_full_mark)
                            <th scope="col">
                                {{ $subject_full_mark->subject->name . '(' . round($subject_full_mark->full_marks) . ')' }}
                            </th>
                            <th>Rank</th>
                        @endforeach
                    </tr>
                </thead>
            </table>

        </div>
    @else
        <p>No exam has been held so far</p>
    @endif
@stop
@push('scripts')
    <script>
        function get_score() {
            week_id = $('#week_id_name').val()
            $('#users-table').DataTable({
                destroy: true,off
                processing: true,
                serverSide: true,
                ajax: "{{ url('admin-score-data') }}" + "/" + week_id,
                columns: [{
                        data: 'name',
                        name: 'name'
                    },
                    {
                        data: 'english',
                        name: 'english'
                    },
                    {
                        data: 'english_rank',
                        name: 'english_rank'
                    },
                    {
                        data: 'maths',
                        name: 'maths'
                    },
                    {
                        data: 'math_rank',
                        name: 'math_rank'
                    },
                    {
                        data: 'physics',
                        name: 'physics'
                    },
                    {
                        data: 'physics_rank',
                        name: 'physics_rank'
                    },
                    {
                        data: 'science',
                        name: 'science'
                    },
                    {
                        data: 'science_rank',
                        name: 'science_rank'
                    }
                ]
            });
        }
    </script>

    <script>
        $(function() {
            var week_id = $('#week_id_name').val()
            $('#users-table').DataTable({
                // destroy: true,
                processing: true,
                serverSide: true,
                ajax: "{{ url('admin-score-data') }}" + "/" + week_id,
                columns: [{
                        data: 'name',
                        name: 'name'
                    },
                    {
                        data: 'english',
                        name: 'english'
                    },
                    {
                        data: 'english_rank',
                        name: 'english_rank'
                    },
                    {
                        data: 'maths',
                        name: 'maths'
                    },
                    {
                        data: 'math_rank',
                        name: 'math_rank'
                    },
                    {
                        data: 'physics',
                        name: 'physics'
                    },
                    {
                        data: 'physics_rank',
                        name: 'physics_rank'
                    },
                    {
                        data: 'science',
                        name: 'science'
                    },
                    {
                        data: 'science_rank',
                        name: 'science_rank'
                    }
                ]
            });
        });
    </script>
@endpush
