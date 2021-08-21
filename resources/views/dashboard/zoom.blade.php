@extends('layouts.student')
@section('style')
<link href="/testing/public/wa/dashboard/css/student-admin.css" rel="stylesheet">
<link href="/testing/public/wa/dashboard/css/session.css" rel="stylesheet">
@endsection
@section('content')

<div style="margin-top: 10%;" class="container">
    <p>Time left to start your session</p>
    {{-- <p class="subject_card">Join Now</p> --}}
    {{-- <div id="app"></div> --}}

    <p class="card_subject_title2">
        <a id="{{ $batch->id }}" href="{{ $batch->zoom->meeting_join_url ?? ''  }}">Join Now

        </a>
        <script>
            window.onload = (event) => {

                // alert("here");
                function timer() {
                    setInterval(function() {
                        let difference = new Date("{{ $batch->batch_start_date->format('Y-m-d H:i:s') }}") - new Date();
                        let remaining = "Join Now";
                        // alert(difference);
                        // alert('{{ $batch->batch_start_date->format("Y-m-d h:i:s") }}'+'---'+difference);
                        if (difference > 0) {
                            const parts = {
                                // days: Math.floor(difference / (1000 * 60 * 60 * 24)),
                                // hours: Math.floor((difference / (1000 * 60 * 60)) % 24),
                                m: Math.floor((difference / 1000 / 60) % 60),
                                s: Math.floor((difference / 1000) % 60),
                            };
                            remaining = Object.keys(parts).map(part => {
                                return `${parts[part]} ${part}`;
                            }).join(" ");
                        }
                        document.getElementById("{{ $batch->id }}").innerHTML = remaining;
                    }, 1000);

                }
                timer();
            };
        </script>
    </p>
<table class="table table-bordered">
    <thead>
      <tr>
        <th>Teacher Name</th>
        <td>{{ $batch->teacher->name }}</td>
      </tr>
    </thead>
    <tbody>
      <tr>
        <th>Session Schedule On</th>
        <td>{{ $batch->batch_start_date->format('d M, Y H:i A') }}</td>
      </tr>
      <tr>
        @php $session = $batch->batchSession()->first(); @endphp
        <th>Topic</th>
        <td>{{ $session->topics->topic->name }}</td>
      </tr>
    </tbody>
  </table>
</div>
@endsection
