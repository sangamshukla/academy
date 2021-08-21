<label for="session_list">Select Session</label><br>
<select name="session_list" class="demo-default" id="session_list" onchange="getStudents()">
    <option value="">Please Choose Session </option>
    @foreach ($sessions as $session)
        <option value="{{ $session->id }}">{{ $session->name }}</option>
    @endforeach
</select>


        