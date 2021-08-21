<div class="left-side-menu left-side-menu-detached">

    <div class="leftbar-user">
        <a href="javascript: void(0);">
            <img src="/assets/images/users/avatar-1.jpg" alt="user-image" height="100"  class="rounded-circle shadow-sm">
            
            <span class="leftbar-user-name">{{ auth()->user()->name }} </span>
            <h3 style="color:#A6C439"> {{ \Carbon\Carbon::now()->format('H:i:s')}}</h3>
        </a>
    </div>

    <!--- Sidemenu -->
    <ul class="metismenu side-nav">

        {{-- <li class="side-nav-title side-nav-item">Navigation</li> --}}

        <li class="side-nav-item">
            <a href="{{ url('admin-login') }}" class="side-nav-link">
                <i class="uil-home-alt"></i>
                <span> Dashboard </span>
            </a>
        </li>
        @include('layouts._partials.menu.'.auth()->user()->role)
         <li class="side-nav-item">
            <a href="{{ route('logout') }}" onclick="event.preventDefault();document.getElementById('logout-form').submit();" class="side-nav-link">
                <i class="uil uil-arrow-from-right"></i> 
                <span> Logout</span>
            </a>
        </li>
            </ul>
        </li>
    </ul>

    <!-- End Sidebar -->

    <div class="clearfix"></div>
    <!-- Sidebar -left -->

</div>
