<!-- start page title -->
<div class="row">
    <div class="col-12">
        <div class="page-title-box">
            <div class="page-title-right">
                <ol class="breadcrumb m-0">
                    <li class="breadcrumb-item"><a href="{{ url('/')}}">{{ $menuone}}</a></li>
                    <li class="breadcrumb-item"><a href="{{ url($menutwourl)}}">{{ $menutwo }}</a></li>
                    <li class="breadcrumb-item"><a href="{{ url($menuthreeurl)}}">{{ $menuthree }}</a></li>
                </ol>
            </div>
            {{-- <h4 class="page-title">{{ $title ?? '' }}</h4> --}}
            <h4 class="page-title">{{ $title }}</h4>
        </div>
    </div>
  </div>  
  