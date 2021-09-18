{{-- <input type="hidden" value="{{ $weekId ?? null }}" name="weekId" />
                   @foreach($students as $student)
                   @php
                       $enrolled=\App\Http\Controllers\OfflineController::is_enrolled($student->id, $weekId);
                      if($enrolled)
                      {
                        $status="checked";
                      }
                      else {
                        $status="";
                      }
                @endphp
                <th class="custom-checkbox">
                  <input name="student_id[]" value="{{ $student->id }}" type="checkbox" {{$status}}>
                </th> --}}
hello