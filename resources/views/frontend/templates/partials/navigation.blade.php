<div class="navbar-fixed">
    <nav>
        <div class="nav-wrapper">
        <a href="{{ route('homegape')}}" class="brand-logo">PERPUS</a>
        <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">MENU</i></a>
        <ul class="right hide-on-med-and-down">
            @guest
                <li><a href="{{ route('login')}}">LOGIN</a></li>
                <li><a href="{{ route('register')}}">REGISTER</a></li>
                {{--  <li><a href="collapsible.html">Javascript</a></li>
                <li><a href="mobile.html">Mobile</a></li>  --}}

                {{-- pertemuan ke 42 membelahi navigati relasi user dan buku --}}
                    @else
                        <ul id="dropdown1" class="dropdown-content">

                            {{-- tambah home di navigasi buku apa yang sudah di pinjam  --}}
                            <li>
                                <a href="{{ route('home') }}">Buku Yang Sedang DiPinjam</a>
                            </li>

                            <li><a  href="{{ route('logout') }}"
                                    onclick="event.preventDefault();
                                            document.getElementById('logout-form').submit();">Logout
                                </a>
                            </li>
                        </ul>

                {{-- pertemua ke 42 di copy  --}}
                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                    @csrf
                </form>

                {{--   ketika link ini di klik maka aka mengTRIGER CODE @ELSE --}}
                <li><a href="#" class="dropdown-trigger" data-target="dropdown1">
                    {{ auth()->user()->name }}</a>
                </li>
            @endguest
        </ul>
        </div>
    </nav>
</div>


{{--  tampilan mobile   --}}
<ul class="sidenav" id="mobile-demo">
    @guest
        <li><a href="{{ route('login')}}">LOGIN</a></li>
        <li><a href="{{ route('register')}}">REGISTER</a></li>
        {{--  <li><a href="collapsible.html">Javascript</a></li>
        <li><a href="mobile.html">Mobile</a></li>  --}}
            @else
                <li><a href="{{ route('logout') }}"
                        onclick="event.preventDefault();
                            document.getElementById('logout-form').submit();">Logout
                    </a>
                </li>
    @endguest
</ul>


{{-- pertemua ke 42 di copy  --}}
<form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
    @csrf
</form>
