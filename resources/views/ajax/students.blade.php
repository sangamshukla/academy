<label for="students_lista" for="session_list">Select Student</label><br>
<select name="session_list" id="students_lista" onchange="getFilteredData()" >
    <option value="">Please Choose Student </option>
    @foreach ($users as $user)
        <option value="{{ $user->id }}">{{ $user->name }}</option>
    @endforeach
</select>