<!DOCTYPE html>
<html lang="en">
    
<!--Designed By ALpha-->
<head>
    <title>Presupuestos Ciisa</title>
    <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <!-- Vendor styles -->
        <link rel="stylesheet" href="./vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css">
        <link rel="stylesheet" href="./vendors/bower_components/animate.css/animate.min.css">
        <link rel="stylesheet" href="./vendors/bower_components/jquery.scrollbar/jquery.scrollbar.css">
        <link rel="stylesheet" href="./vendors/bower_components/dropzone/dist/dropzone.css">
        <link rel="stylesheet" href="./vendors/bower_components/flatpickr/dist/flatpickr.min.css" />
        <link rel="stylesheet" href="./vendors/bower_components/nouislider/distribute/nouislider.min.css">
        <link rel="stylesheet" href="./vendors/bower_components/bootstrap-colorpicker/dist/css/bootstrap-colorpicker.css">
        <link rel="stylesheet" href="./vendors/bower_components/trumbowyg/dist/ui/trumbowyg.min.css">

        <!-- App styles -->
        <link rel="stylesheet" href="css/app.min.css">
    </head>

    <body data-sa-theme="3">
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
                    <img src="../img/logo/logo.png" alt="logo"
                         style="max-width:100%;
max-height:100%;"  >
                    <h1><a style="margin-left: 10px;" href="{{route('home')}}">Presupuesto Ciisa</a></h1>
                </div>


                <div class="clock hidden-md-down">
                    <div class="time">
                        <span class="hours"></span>
                        <span class="min"></span>
                        <span class="sec"></span>
                    </div>
                </div>
                @guest
                    @else
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="{{ route('logout') }}"
                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                        {{ __('Logout') }}
                    </a>

                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                        @csrf
                    </form>
                </div>
                @endguest
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
                        @if(Auth::user()->role != 'Rectoria')
                        <li class="@@indexactive"><a href="{{route('Solicitud')}}"><i class="zmdi zmdi-home"></i> Solicitudes</a></li>
                        @endif
                        @if(Auth::user()->role != 'Solicitante')
                            <li class="@@indexactive"><a href="{{route('presupuesto')}}"><i class="zmdi zmdi-home"></i> Presupuestos</a></li>
                        @endif
                        @if(Auth::user()->role != 'Rectoria')
                            <li class="@@indexactive"><a href="{{route('MisPresupuestos')}}"><i class="zmdi zmdi-home"></i> Mis Presupuestos</a></li>
                        @endif
                        @if(Auth::user()->role != 'Rectoria')
                            <li class="@@indexactive"><a href="{{route('EjecutarPresupuesto')}}"><i class="zmdi zmdi-home"></i> Ejecutar Presupuesto</a></li>
                        @endif
                        @if(Auth::user()->role == 'Rectoria')
                            <li class="@@indexactive"><a href="{{route('AprobarPresupuestos')}}"><i class="zmdi zmdi-home"></i> Aprobar Presupuesto</a></li>
                        @endif
                        @if(Auth::user()->role == 'Finanzas' || Auth::user()->role == 'Rectoria')
                            <li class="@@indexactive"><a href="{{route('PeriodosPresupuestales')}}"><i class="zmdi zmdi-home"></i>Periodos Presupuestales</a></li>
                        @endif
                        @if(Auth::user()->role == 'Finanzas')
                            <li class="@@indexactive"><a href="{{route('CrearPeriodoPresupuestal')}}"><i class="zmdi zmdi-home"></i>Crear Periodo Presupuestal</a></li>
                        @endif
                        @if(Auth::user()->role == 'Finanzas')
                            <li class="@@indexactive"><a href="{{route('Departamentos')}}"><i class="zmdi zmdi-home"></i>Departamentos</a></li>
                        @endif
                        @if(Auth::user()->role == 'Finanzas')
                            <li class="@@indexactive"><a href="{{route('NuevoDepartamento')}}"><i class="zmdi zmdi-home"></i>Crear un Nuevo Departamento</a></li>
                        @endif
                        @if(Auth::user()->role == 'Finanzas')
                            <li class="@@indexactive"><a href="{{route('EnrolarSolicitante')}}"><i class="zmdi zmdi-home"></i>Enrolar Solicitante</a></li>
                            @if(Auth::user()->role == 'Finanzas')
                                <li class="@@indexactive"><a href="{{route('Solicitantes')}}"><i class="zmdi zmdi-home"></i>Solicitantes</a></li>
                            @endif
                        @endif
                            <li class="@@indexactive"> <a href="{{ route('logout') }}"
                               onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                    {{ __('Cerrar Sesion') }}</a>
                            </li>

                            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                @csrf
                            </form>



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
        <script src="vendors/bower_components/jquery-mask-plugin/dist/jquery.mask.min.js"></script>
        <script src="vendors/bower_components/select2/dist/js/select2.full.min.js"></script>
        <script src="vendors/bower_components/dropzone/dist/min/dropzone.min.js"></script>
        <script src="vendors/bower_components/moment/min/moment.min.js"></script>
        <script src="vendors/bower_components/flatpickr/dist/flatpickr.min.js"></script>
        <script src="vendors/bower_components/nouislider/distribute/nouislider.min.js"></script>
        <script src="vendors/bower_components/bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
        <script src="vendors/bower_components/trumbowyg/dist/trumbowyg.min.js"></script>



        <!-- App functions and actions -->
        <script src="js/app.min.js"></script>

        @yield('Scripts')
    </body>

<!--Designed By ALpha-->
</html>
