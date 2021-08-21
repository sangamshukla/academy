<table id="example" style="width:100%" class="table table-bordered table-responsive w-100 d-block d-md-table">
    <thead>
        <tr>
            <th class="text-center">Sr No. </th>
            <th class="text-center">Teacher Name</th>
            <th class="text-center">Session Count</th>
            <th class="text-center">Action</th>
        </tr>
    </thead>
    @include('_form.success')
    <tbody style="height: auto !important">
        @php
            $j=1;
        @endphp
        @foreach ($data as $data)
            <tr>
                <td class="text-center">{{ $j }}</td>
                <td class="text-center">{{ $data->name }}</td>
                    @php
                    $i=0;
                    $session_arr=[];
                @endphp
                <td class="text-center">
                {{-- <td>{{ implode(',',$sessions->pluck("start_date_time")->toArray()) }}</td> --}}
                @if (isset($sessions))
                     @forelse ($sessions as $session)
                        @isset($session->batch->teacher->name)
                        @if ($session->batch->teacher->name==$data->name)
                            @php
                                $i=$i+1;
                                array_push($session_arr,$session->id);
                            @endphp
                        @endif
                        @endisset
                        @empty
                        {{ 'No sessions for today' }}
                    @endforelse
                    <form action="{{ route('batch-list') }}" method="post" style="margin:0;" >
                        @csrf
                        <input type="hidden" name="session_arr" value="{{ implode("/", $session_arr) }}">
                        @if($i>0)
                            <input type="submit" class="btn btn-info rounded" value="{{ $i }}">
                        @else
                            <p>No Session</p>
                        @endif
                    </td>

                            <td class="text-center">
                                @if($i>0)
                                   <input type="submit" value="View Detail" class="btn btn-info rounded">
                               @else
                               <p>No session</p>
                               @endif
                            </td>

                    @else
                            {{ 'No session for today' }}
                    @endif
                </form>
            </tr>
            @php
                $j=$j+1;
            @endphp
        @endforeach
    </tbody>
</table>
