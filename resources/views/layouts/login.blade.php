<!DOCTYPE html>
<html lang="en">

<!--Designed By ALpha-->
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Vendor styles -->
    <link rel="stylesheet" href="vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="vendors/bower_components/animate.css/animate.min.css">

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
