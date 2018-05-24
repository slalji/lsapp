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
                        
                        <li><a class="dropdown-item" href="">Settings</a></li>
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
                        <li>
                            <a href="changePassword">
                            Change Password
                            </a>
                        </li>
                        @endif
                    </ul>
        </nav>
    </div>
</div>
<!-- /top navigation -->