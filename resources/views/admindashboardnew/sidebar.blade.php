<ul class="student_dashboard navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
  <!-- Sidebar - Brand -->
  <a class="sidebar-brand d-flex align-items-center justify-content-center" href="{{route('/')}}">
    <div class="sidebar-brand-icon">
      <img src="{{asset('wa/admin/img/logo.png')}}" title="logo" alt="logo">
    </div>
  </a>
  <!-- Divider -->
  <hr class="sidebar-divider my-0">

  <!-- Nav Item - Dashboard -->
  <li class="nav-item active">
    <a class="nav-link" href="#">
      <div class="nav_images"><img src="{{asset('wa/admin/img/dasboard.svg')}}"></div>
      <br>
      <span>Dashboard</span></a>
  </li>
  
  <!--  -->
  <li class="nav-item">
    <a class="nav-link collapsed text-center" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
       
        <div class="nav_images mb-2"><img src="{{asset('wa/admin/img/teacher.svg')}}"></div>
        <span class="manage_section">Teacher</span>
    </a>
    <div id="collapseTwo" class="collapse side_bar" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
        <div class="bg-white py-2 collapse-inner rounded sub_menu">
            
            <a class="collapse-item sub_menu_block" href="{{route('add-teacher')}}">Add Teacher</a>
            <a class="collapse-item sub_menu_block" href="{{route('manage-teacher')}}">Manage Teacher</a>
            <!-- <a class="collapse-item sub_menu_block" href="cards.html">Cards</a> -->
        </div>
    </div>
</li>
<li class="nav-item">
  <a class="nav-link collapsed text-center" href="#" data-toggle="collapse" data-target="#collapseThree" aria-expanded="true" aria-controls="collapseTwo">
     
      <div class="nav_images mb-2"><img src="{{asset('wa/admin/img/Online-b.svg')}}"></div>
      <span class="manage_section">Classes</span>
  </a>
  <div id="collapseThree" class="collapse side_bar" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
      <div class="bg-white py-2 collapse-inner rounded sub_menu">
          
          <a class="collapse-item sub_menu_block" href="{{route('class.create')}}">Add Classes</a>
          <a class="collapse-item sub_menu_block" href="{{route('manage-classnew')}}">Manage Classes</a>
          <!-- <a class="collapse-item sub_menu_block" href="cards.html">Cards</a> -->
      </div>
  </div>
</li>
  <!--  -->

  <!-- Divider -->
   <!-- <hr class="sidebar-divider"> -->
  <li class="nav-item">
    <a class="nav-link collapsed" href="{{route('add-student')}}">
      <div class="nav_images"><img src="{{asset('wa/admin/img/student-a.svg')}}"></div>
      <br>
      <span>Students</span>
    </a>
  </li> 


  <!-- Nav Item - Charts -->
   <!-- <li class="nav-item">
    <a class="nav-link" href="#">
      <div class="nav_images"><img src="{{asset('wa/admin/img/Online-b.svg')}}"></div>
      <br>
      <span>Classes</span></a>
  </li>  -->

  <!-- Nav Item - Tables -->
   <!-- <li class="nav-item">
    <a class="nav-link" href="#">
      <div class="nav_images"><img src="{{asset('wa/admin/img/online-a.svg')}}"></div>
      <br>
      <span>Payment</span></a>
      
  </li>  -->

   <!-- <li class="nav-item">
    <a class="nav-link collapsed text-center" href="#" data-toggle="collapse" data-target="#collapsePayment" aria-expanded="true" aria-controls="collapseTwo">
        <div class="nav_images"><img src="{{asset('wa/admin/img/online-a.svg')}}"></div>
        <span class="manage_section">Payment</span>
    </a>
    <div id="collapsePayment" class="collapse side_bar" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
        <div class="bg-white py-2 collapse-inner rounded sub_menu">  
            <a class="collapse-item sub_menu_block" href="">Online Payment</a>
            <a class="collapse-item sub_menu_block" href="">Offline Payment</a>
        </div>
    </div>
</li>   -->
<li class="nav-item">
  <a class="nav-link collapsed text-center" href="#" data-toggle="collapse" data-target="#collapsePayment" aria-expanded="true" aria-controls="collapseTwo">
     
      <div class="nav_images mb-2"><img src="{{asset('wa/admin/img/online-a.svg')}}"></div>
      <span class="manage_section">Payment</span>
  </a>
  <div id="collapsePayment" class="collapse side_bar" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
      <div class="bg-white py-2 collapse-inner rounded sub_menu">
          
          <a class="collapse-item sub_menu_block" href="">Online Payment</a>
          <a class="collapse-item sub_menu_block" href="">Offline Payment</a>
      </div>
  </div>
</li>
   <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item">
    <a class="nav-link collapsed text-center" href="#" data-toggle="collapse" data-target="#collapseManage" aria-expanded="true" aria-controls="collapseTwo">
       
        <div class="nav_images"><img src="{{asset('wa/admin/img/iconfinder-a.svg')}}"></div>
        <span class="manage_section">Manage</span>
    </a>
    <div id="collapseManage" class="collapse side_bar" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
        <div class="bg-white py-2 collapse-inner rounded sub_menu">
            
            <a class="collapse-item sub_menu_block" href="">Manage Year</a>
            <a class="collapse-item sub_menu_block" href="">Manage Subject</a>
            <a class="collapse-item sub_menu_block" href="">Manage Topic</a>
        </div>
    </div>
</li> 
<!-- offline scoresheet -->
<li class="nav-item">
  <a class="nav-link collapsed" href="{{route('full-marks')}}">
    <div class="nav_images"><img src="{{asset('wa/admin/img/student-a.svg')}}"></div>
    <br>
    <span>Score Sheet</span>
  </a>
</li> 
<li class="nav-item">
  <a class="nav-link collapsed" href="{{route('admin-scoresheet')}}">
    <div class="nav_images"><img src="{{asset('wa/admin/img/student-a.svg')}}"></div>
    <br>
    <span>View Scores</span>
  </a>
</li> 
<!-- end offlin scoresheet -->
  <!-- Nav Item - Alerts -->
   <li class="nav-item dropdown no-arrow mx-1 pl-5">
    <a class="dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      <i class="fas fa-bell fa-fw"></i> 
      <!-- Counter - Alerts -->
      <span class="badge badge-danger badge-counter">3+</span>
    </a>
    <!-- Dropdown - Alerts -->
     <!-- <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="alertsDropdown">
      <h6 class="dropdown-header">Alerts Center</h6>
      <a class="dropdown-item d-flex align-items-center" href="#">
        <div class="mr-3">
          <div class="icon-circle bg-primary">
            <i class="fas fa-file-alt text-white"></i>
          </div>
        </div>
        <div>
          <div class="small text-gray-500">December 12, 2019</div>
          <span class="font-weight-bold">A new monthly report is ready to download!</span>
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
      <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
    </div> -->
  </li>
 
  <!-- <p class="manage_section" style="width: 1x;">Notification</p> -->
  <p class="manage_section" style="font-size: small;">Notification</p>

  <!-- Divider -->
  <hr class="sidebar-divider d-none d-md-block">
  <!-- profile pic -->
  <div class="text-center">
    <img style="width:50px;"
      class="img-profile rounded-circle"
      src="{{asset('wa/admindashboard/img/undraw_profile.svg')}}"
    />
  </div> 
  <!-- Sidebar Toggler (Sidebar) -->
  <div class="text-center d-none d-md-inline">
    <button class="rounded-circle border-0" id="sidebarToggle"></button>
  </div>
  
</ul>
