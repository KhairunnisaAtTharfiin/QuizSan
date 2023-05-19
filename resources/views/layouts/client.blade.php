<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
</head>

<body>
    <div id="app">
        <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
            <div class="container">
                <h3 class="mx-auto text-center">  
                    <img src="{{asset('asset/QuizSan.pn')}}g" width="150px" height="40px">
                </h3>
                <h5 class="mx-auto text-center d-flex">  
                    @auth
                        <a class="nav-link text-center" style="color: black; font-weight:bold; font-size:1.rem;" href="{{ route('admin.dashboard.index') }}">
                            {{ auth()->user()->name }}
                        </a>
                        <a class="nav-link text-center" onclick="event.preventDefault();document.getElementById('logout-form').submit();" href="{{ route('logout') }} " style="color: black; font-weight:bold; font-size:1.2rem;" >
                            Logout
                        </a>
                    @endauth
                    <form class="d-none" action="{{ route('logout') }}" id="logout-form" method="post">
                        @csrf 
                        
                    </form>
                </h5>
            </div>
        </nav>

        <main class="py-4">
            @yield('content')
        </main>
    </div>
</body>

</html>