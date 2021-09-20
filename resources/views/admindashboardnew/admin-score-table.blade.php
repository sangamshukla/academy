<table class="table table-bordered" id="users-table">
    <thead>
        <tr>
            <th>Student</th>
            @foreach ($subject_full_marks as $subject_full_mark)
                               <th scope="col">{{$subject_full_mark->subject->name.'('.$subject_full_mark->full_marks.')'}}</th>
                           @endforeach
        </tr>
    </thead>
</table>


@push('scripts')

<script>
$(function() {
    $('#users-table').DataTable({
        processing: true,
        serverSide: true,
        ajax: "{!! route('admin-score-data') !!}",
        columns: [
            { data: 'name', name: 'name' },
            {data:'maths', name:'maths'},
            {data:'english', name:'english'},
            {data:'physics', name:'physics'},
            {data:'science', name:'science'}
        ]
    });
});
</script>
@endpush