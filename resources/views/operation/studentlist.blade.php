

  @foreach ($students as $student)
            <option value="{{$student->user_id}}">
                {{$student->name}}
            </option>
        @endforeach
      
      

