@extends('layouts.admin_dashboard')
@section('content')
    {{-- {{ $html->table() }} --}}
     <div>
        @if (count($weeks) >= 1)
        
            <form action="{{route('get-admin-score')}}" method="post">
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
    <table class="table" id="marks">
        <thead>
            <tr>

                <th>Students</th>
                @foreach ($subjects as $subject)
                    <th>{{ $subject->subject->name }} ({{$subject->full_marks}})</th>
                    <th>Rank</th>
                @endforeach
                
            </tr>
        </thead>
        <tbody>
            @foreach ($students as $student)

                <tr>

                    <td scope="row">{{ $student->student->name }}</td>
                    @foreach ($subjects as $subject)
                        @php
                            $marks = \App\Http\Controllers\OfflineController::get_marks($student->student->id, $subject->id, $week_id);
                            $rank = \App\Http\Controllers\OfflineController::getRanking($week_id, $subject->subject->id,$student->student->id);
                            $rank_no=\App\Http\Controllers\OfflineController::get_rank_no($rank, $student->student->id);
                        @endphp
                        @if (isset($marks->obtained_marks))
                            <td>
                                {{ $marks->obtained_marks }}
                            </td>
                         
                        @else
                            <td>
                                {{ 'No Marks' }}
                            </td>
                        @endif
                           <td>
                            {{$rank_no}}
                            </td>
                    @endforeach
                </tr>
            @endforeach
        </tbody>
    </table>
@endsection
@push('scripts')
    <script>
        $('#marks').dataTable({
           
        });
    </script>
    <script>
    </script>
@endpush
