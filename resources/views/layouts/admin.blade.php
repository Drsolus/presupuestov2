<!DOCTYPE html>
<html lang="en">
    
<!--Designed By ALpha-->
<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <!-- Vendor styles -->
        <link rel="stylesheet" href="vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css">
        <link rel="stylesheet" href="vendors/bower_components/animate.css/animate.min.css">
        <link rel="stylesheet" href="vendors/bower_components/jquery.scrollbar/jquery.scrollbar.css">

        <!-- App styles -->
        <link rel="stylesheet" href="css/app.min.css">
    </head>

    <body data-sa-theme="1">
        <main class="main">
            <div class="page-loader">
                <div class="page-loader__spinner">
                    <svg viewBox="25 25 50 50">
                        <circle cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" />
                    </svg>
                </div>
            </div>

            <header class="header">
                <div class="navigation-trigger hidden-xl-up" data-sa-action="aside-open" data-sa-target=".sidebar">
                    <i class="zmdi zmdi-menu"></i>
                </div>

                <div class="logo hidden-sm-down">
                    <h1><a href="{{route('home')}}">Presupuesto Ciisa</a></h1>
                </div>


                <div class="clock hidden-md-down">
                    <div class="time">
                        <span class="hours"></span>
                        <span class="min"></span>
                        <span class="sec"></span>
                    </div>
                </div>
            </header>

            <aside class="sidebar">
                <div class="scrollbar-inner">

                    <div class="user">
                        <div class="user__info" data-toggle="dropdown">

                            <div>
                                <div class="user__name">{{ Auth::user()->name}}</div>
                                <div class="user__email">{{ Auth::user()->email}}</div>
                            </div>
                        </div>
                    </div>

                    <ul class="navigation">
                        <li class="@@indexactive"><a href="{{route('home')}}"><i class="zmdi zmdi-home"></i> Home</a></li>
                        <li class="@@indexactive"><a href="{{route('Solicitud')}}"><i class="zmdi zmdi-home"></i> Solicitudes</a></li>
                        <li class="navigation__sub @@variantsactive">
                            <a href="#"><i class="zmdi zmdi-view-week"></i> Variants</a>

                            <ul>
                                <li class="@@sidebaractive"><a href="hidden-sidebar.html">Hidden Sidebar</a></li>
                                <li class="@@boxedactive"><a href="boxed-layout.html">Boxed Layout</a></li>
                                <li class="@@hiddensidebarboxedactive"><a href="hidden-sidebar-boxed-layout.html">Boxed Layout with Hidden Sidebar</a></li>
                            </ul>
                        </li>

                    </ul>
                </div>
            </aside>

            <section class="content">
                <div class="content__inner">
                    <header class="content__title">
                    @yield('content')


                    </header>
                    </div>
            </section>
        </main>

        <!-- Older IE warning message -->
            <!--[if IE]>
                <div class="ie-warning">
                    <h1>Warning!!</h1>
                    <p>You are using an outdated version of Internet Explorer, please upgrade to any of the following web browsers to access this website.</p>

                    <div class="ie-warning__downloads">
                        <a href="http://www.google.com/chrome">
                            <img src="img/browsers/chrome.png" alt="">
                        </a>

                        <a href="https://www.mozilla.org/en-US/firefox/new">
                            <img src="img/browsers/firefox.png" alt="">
                        </a>

                        <a href="http://www.opera.com">
                            <img src="img/browsers/opera.png" alt="">
                        </a>

                        <a href="https://support.apple.com/downloads/safari">
                            <img src="img/browsers/safari.png" alt="">
                        </a>

                        <a href="https://www.microsoft.com/en-us/windows/microsoft-edge">
                            <img src="img/browsers/edge.png" alt="">
                        </a>

                        <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie">
                            <img src="img/browsers/ie.png" alt="">
                        </a>
                    </div>
                    <p>Sorry for the inconvenience!</p>
                </div>
            <![endif]-->

        <!-- Javascript -->
        <!-- Vendors -->
        <script src="vendors/bower_components/jquery/dist/jquery.min.js"></script>
        <script src="vendors/bower_components/popper.js/dist/umd/popper.min.js"></script>
        <script src="vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="vendors/bower_components/jquery.scrollbar/jquery.scrollbar.min.js"></script>
        <script src="vendors/bower_components/jquery-scrollLock/jquery-scrollLock.min.js"></script>

        <script src="vendors/bower_components/autosize/dist/autosize.min.js"></script>

        <!-- App functions and actions -->
        <script src="js/app.min.js"></script>

        @yield('Scripts')
    </body>

<!--Designed By ALpha-->
</html>
