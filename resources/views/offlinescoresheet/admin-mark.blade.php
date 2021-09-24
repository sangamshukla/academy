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