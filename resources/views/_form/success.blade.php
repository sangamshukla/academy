@if (session('status'))
    <div class="row">
    <div class="col-sm-12">
        <div style="color: #1d6771"class="alert alert-success">
        {{-- <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <i class="fa fa-close"></i>
        </button>  --}}
        <span>{{ session('status') }}</span>
        </div>
    </div>
    </div>
@endif

@if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif