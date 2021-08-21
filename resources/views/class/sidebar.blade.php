  <!-- Sidebar -->
  <ul
  class="student_dashboard navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
  id="accordionSidebar"
>
  <!-- Sidebar - Brand -->
  <a
    class="sidebar-brand d-flex align-items-center justify-content-center"
    href="index.html"
  >
    <div class="sidebar-brand-icon">
      {{-- <img src="{{asset('wa/admindashboard/img/logo.png')}}" title="logo" alt="logo" /> --}}
     <a href="/testing/public"> <img src="{{asset('wa/admindashboard/img/logo.png')}}" title="logo" alt="logo" /></a>
    </div>
  </a>
  <!-- Divider -->
  <hr class="sidebar-divider my-0" />

  <!-- Nav Item - Dashboard -->

  <hr class="sidebar-divider" />
  <li class="nav-item">
    <a class="nav-link collapsed" href="{{ route('add-teacher')}}">
      <div class="nav_images">
        <img src="{{asset('wa/admindashboard/img/teacher/one to one.svg')}}" />
      </div>
      <br />
      <span>Add Teacher</span>
    </a>
  </li>

  <hr class="sidebar-divider" />
  <li class="nav-item">
    <a class="nav-link collapsed" href="{{ route('manage-teacher')}}">
      <div class="nav_images">
        <img src="{{asset('wa/admindashboard/img/teacher/one to one.svg')}}" />
      </div>
      <br />
      <span>Manage Teacher</span>
    </a>
  </li>

  <hr class="sidebar-divider" />
  <li class="nav-item">
    <a class="nav-link collapsed" href="{{ route('manage-classnew')}}">
      <div class="nav_images">
        <img src="{{asset('wa/admindashboard/img/teacher/one to one.svg')}}" />
      </div>
      <br />
      <span>Manage Classes</span>
    </a>
  </li>

  <hr class="sidebar-divider" />
  <li class="nav-item">
    <a class="nav-link collapsed" href="{{ route('marks-sheet')}}">
      <div class="nav_images">
        <img src="{{asset('wa/admindashboard/img/teacher/one to one.svg')}}" />
      </div>
      <br />
      <span>ScoreSheet</span>
    </a>
  </li>

  <!-- Divider -->
  <hr class="sidebar-divider" />
  <li class="nav-item">
    <a class="nav-link collapsed" href="#">
      <div class="nav_images">
        <img src="{{asset('wa/admindashboard/img/teacher/one to one.svg')}}" />
      </div>
      <br />
      <span>One to One</span>
    </a>
  </li>

  <li class="nav-item">
    <a class="nav-link collapsed" href="#">
      <div class="nav_images">
        <img src="{{asset('wa/admindashboard/img/teacher/user-icon.svg')}}" />
      </div>
      <br />
      <span>Profile</span>
    </a>
  </li>
  <!-- Nav Item - Charts -->
  <li class="nav-item">
    <a class="nav-link" href="#">
      <div class="nav_images">
        <img src="{{asset('wa/admindashboard/img/teacher/videoconference.svg')}}" />
      </div>
      <br />

      <span>Manage Questions</span>
    </a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">
      <div class="nav_images"><img src="{{asset('wa/admindashboard/img/teacher/setting.svg')}}" /></div>
      <br />

      <span>Settings</span>
    </a>
  </li>

  <!-- Nav Item - Tables -->
  <li class="nav-item">
    <a class="nav-link" href="tables.html">
      <div class="nav_images"><img src="{{asset('wa/admindashboard/img/calender.svg')}}" /></div>
      <br />
      <span>Calender</span>
    </a>
  </li>
  <!-- Nav Item - Alerts -->
  <li class="nav-item dropdown no-arrow mx-1 pl-5">
    <a
      class="dropdown-toggle"
      href="#"
      id="alertsDropdown"
      role="button"
      data-toggle="dropdown"
      aria-haspopup="true"
      aria-expanded="false"
    >
      <i class="fas fa-bell fa-fw"></i>
      <!-- Counter - Alerts -->
      <span class="badge badge-danger badge-counter">3+</span>
    </a>
    <!-- Dropdown - Alerts -->
    <div
      class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
      aria-labelledby="alertsDropdown"
    >
      <h6 class="dropdown-header">Alerts Center</h6>
      <a class="dropdown-item d-flex align-items-center" href="#">
        <div class="mr-3">
          <div class="icon-circle bg-primary">
            <i class="fas fa-file-alt text-white"></i>
          </div>
        </div>
        <div>
          <div class="small text-gray-500">December 12, 2019</div>
          <span class="font-weight-bold"
            >A new monthly report is ready to download!</span
          >
        </div>
      </a>
      <a class="dropdown-item d-flex align-items-center" href="#">
        <div class="mr-3">
          <div class="icon-circle bg-success">
            <i class="fas fa-donate text-white"></i>
          </div>
        </div>
        <div>
          <div class="small text-gray-500">December 7, 2019</div>
          $290.29 has been deposited into your account!
        </div>
      </a>
      <a class="dropdown-item d-flex align-items-center" href="#">
        <div class="mr-3">
          <div class="icon-circle bg-warning">
            <i class="fas fa-exclamation-triangle text-white"></i>
          </div>
        </div>
        <div>
          <div class="small text-gray-500">December 2, 2019</div>
          Spending Alert: We've noticed unusually high spending for your
          account.
        </div>
      </a>
      <a class="dropdown-item text-center small text-gray-500" href="#"
        >Show All Alerts</a
      >
    </div>
  </li>
  <!-- Divider -->
  <hr class="sidebar-divider d-none d-md-block" />

  <!-- Sidebar Toggler (Sidebar) -->
  <div class="text-center d-none d-md-inline">
    <button class="rounded-circle border-0" id="sidebarToggle"></button>
  </div>
</ul>

<!-- End of Sidebar -->