@forelse ($subjects as $subject)
<div class="form-group">
    <input type="checkbox" id="{{$subject->name}}" class="subjects" name="{{$subject->name}}" value="{{$subject->id}}"/>
    <label for="{{$subject->name}}" class="subjects">{{$subject->name}}</label>
</div>
@empty
    <h6>No Subject for selected class</h6>
@endforelse
