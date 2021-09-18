@extends('layouts.admin_dashboard')

@section('content')
<table class="table table-bordered" id="users-table">
    <thead>
        <tr>
            <th>Student</th>
            <th>Obtained Marks</th>
            <th>Subject</th>
            <th>Week</th>
        </tr>
    </thead>
</table>
@stop

@push('scripts')

<script>
$(function() {
    $('#users-table').DataTable({
        processing: true,
        serverSide: true,
        ajax: '{!! route('any-data') !!}',
        columns: [
            { data: 'name', name: 'name' },
            { data: 'marks', name: 'marks' },
            { data: 'subject', name: 'subject' },
            { data: 'week', name: 'week' },
        ]
    });
});
</script>
@endpush
