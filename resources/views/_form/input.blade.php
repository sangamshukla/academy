@if(!isset($col))
<div class="form-group {{ $class ?? ''}}" style="{{ $style ?? '' }}">
    <label for="{{ $name }}" class="">{{ $title }}</label>
    <input id="{{ $name }}" type="{{ $type ?? 'text' }}" class="form-control  @error($name) is-invalid @enderror" name="{{ $name }}" {{ $readonly ?? '' }} value="{{ old($name) }}" placeholder="{!! $placeholder ?? '' !!}" autofocus>
     @error($name)
        <span class="invalid-feedback" role="alert">
            <strong>{{ $message }}</strong>
        </span>
    @enderror 
</div>
@else
{{-- form --}}
<div class="row">
    <label class="col-sm-2 col-form-label ">{{ $title }}</label>
    {{-- <label class="col-sm-2 col-form-label">{{ $title }}</label> --}}

    <div class="col-sm-7">
        <div class="form-group{{ $errors->has($name) ? ' has-danger' : '' }}">
        <input class="form-control  {{ $errors->has($name) ? ' is-invalid' : '' }}"  name="{{ $name }}" id="{{ $name }}" type="{{ $type ?? 'text' }}" value="{{ old($name) }}" aria-required="true"/>
         @if ($errors->has($name))
            <span id="name-error" class="error text-danger" for="{{ $name }}">{{ $errors->first($name) }}</span>
        @endif 
        </div>
    </div>
</div>
@endif

{{-- .form-group {
    margin-bottom: 1rem;
    border: solid 1px gray;
    border-radius: 0.50rem;
    padding: 6px;
} --}}