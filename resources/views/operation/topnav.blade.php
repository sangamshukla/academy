          <!-- Topbar -->
          <nav
            class="navbar navbar-expand navbar-light topbar mb-4 static-top shadow"
          >
            <!-- Sidebar Toggle (Topbar) -->
            <button
              id="sidebarToggleTop"
              class="btn btn-link d-md-none rounded-circle mr-3"
            >
              <i class="fa fa-bars"></i>
            </button>
            <!-- Topbar Search -->
            <a href="{{url('operation-dashboard')}}">
            <div style="float:left;" class="dashboard_title">My Dashboard</div>
            </a>
            {{-- <form class="d-none d-sm-inline-block form-inline navbar-search"> --}}
              {{-- <div class="d-flex"> --}}
                {{-- <div class="input-group">
                  <select class="form-control border-0 nav_border_line">
                    <optgroup>
                      <option value="volvo">all</option>
                      <option value="saab">all1</option>
                    </optgroup>
                  </select>
                  <input
                    type="text"
                    class="serch_block bg-white form-control bg-light border-0 small"
                    placeholder="Search for..."
                    aria-label="Search"
                    aria-describedby="basic-addon2"
                  />
                  <div class="input-group-append">
                    <button class="btn btn-primary search_cta" type="button">
                      <i class="fas fa-search fa-sm"></i>
                    </button>
                  </div>
                </div> --}}
              {{-- </div> --}}
            {{-- </form> --}}
            <ul class="navbar-nav">
              
              
              <div class="topbar-divider d-none d-sm-block"></div>
              <!-- Nav Item - User Information -->
              <li class="nav-item dropdown no-arrow">
                <a
                  class="nav-link dropdown-toggle"
                  href="#"
                  id="userDropdown"
                  role="button"
                  data-toggle="dropdown"
                  aria-haspopup="true"
                  aria-expanded="false"
                >
                  <div class="text-center">
                      @forelse ($images ?? []  as $image)
                        <img class="img-profile rounded-circle" src="{{asset('storage/images/'.$image->teacher_profile_photo)}}"/>
                      @empty
                          <img class="img-profile rounded-circle" src="{{asset('wa/operationdashboard/img/undraw_profile.svg')}}"/>
                      @endforelse

                  </div>
                  <div class="mr-2 d-none d-lg-inline text-gray-600 small">
                    
                    {{auth()->user()->name}}
                  </div>
                </a>
                <!-- Dropdown - User Information -->
                <div
                  class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                  aria-labelledby="userDropdown"
                >
                  <a class="dropdown-item" href="{{route('teacher-profile')}}">
                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                    Profile
                  </a>
                  <a class="dropdown-item" href="#">
                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                    Settings
                  </a>
                  <a class="dropdown-item" href="#">
                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                    Activity Log
                  </a>
                  <div class="dropdown-divider"></div>
                  <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                    @csrf
                  </form>
                  <a
                    class="dropdown-item"
                    href="{{ route('logout') }}" onclick="event.preventDefault();document.getElementById('logout-form').submit();"
                    data-toggle="modal"
                    data-target="#logoutModal"
                  >
                    <i
                      class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"
                    ></i>
                    Logout
                  </a>
                </div>
              </li>
              
            </ul>

          </nav>
          
          <!-- End of Topbar -->
