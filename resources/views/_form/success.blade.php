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

@if (isset($success))
    <div class="row">
    <div class="col-sm-12">      
        <div style="color: #1d6771;margin-right:815px; margin-left: 10px;"class="alert alert-success">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
        <span>{{ $success }}</span>
        </div>
    </div>
    </div>
@endif

@if ($errors->any())
    <div style="margin-left: 10px; margin-right:823px;" class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif