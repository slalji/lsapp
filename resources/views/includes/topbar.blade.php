<!-- top navigation -->
<div class="top_nav">
    <div class="nav_menu">
        <nav>
            <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
            </div>
            
           
            <ul class="profile nav navbar-nav navbar-right ml-auto">
                        <!-- Authentication Links -->
                        @if (Auth::guest())
                            <li><a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a></li>
                        @elseif (!Auth::guest() && Auth::user()->hasRole('Admin'))
                        <li><a class="dropdown-item" href="{{ route('admin') }}">Admin</a></li>
                                    <li><a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                    </li>
                        </li>
                        
                        @else
                        <!--
                        <li><a class="dropdown-item" href="">Settings</a>
                        </li>
                                    <li><a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                    </li>
                                    <li>
                                        <a href="changePassword">
                                        Change Password
                                        </a>
                                    </li>
                        </li>
                        -->
                        <li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
    <i class="fa fa-gear"></i></a>
    <div class="dropdown-menu">
    <ul>
      <li><a class="nav dropdown-item" href="changePassword">Change Password</a>
      
      <li>
      <a class="nav dropdown-item" href="{{ route('logout') }}"
            onclick="event.preventDefault();
                            document.getElementById('logout-form').submit();">
            {{ __('Logout') }}
        </a>
    </ul>
    </div>
  </li>
                       
                        @endif
                    </ul>
        </nav>
    </div>
</div>
<!-- /top navigation -->