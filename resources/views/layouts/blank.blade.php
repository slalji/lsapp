<!DOCTYPE html>
<html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Selcom Dashboard | </title>

        <!-- Bootstrap -->
        <link href="{{ asset("vendors/bootstrap/dist/css/bootstrap.min.css") }}" rel="stylesheet">
        <!-- Font Awesome -->
        <link href="{{ asset("vendors/font-awesome/css/font-awesome.min.css") }}" rel="stylesheet">
        <!-- Custom Theme Style -->
        <link href="{{ asset("vendors/gentelella/css/gentelella.css") }}" rel="stylesheet">
        <link href="{{ asset("vendors/bootstrap-daterangepicker/daterangepicker.css")}}" rel="stylesheet" >
        <link href="{{ asset("vendors/custom/custom.css") }}" rel="stylesheet">

        @stack('stylesheets')

        
        <!-- jQuery -->
        <script src="{{ asset("vendors/jquery/dist/jquery.min.js") }}"></script>


    </head>

    <body class="nav-md">
        <div class="container body">
            <div class="main_container">

                @include('includes/sidebar')

                @include('includes/topbar')
                <div class="right_col" role="main" style="min-height: 536px;">

                @yield('content')
                </div>
                @include('includes/footer')

            </div>
        </div>

        <!-- Bootstrap -->
        <script src="{{ asset("vendors/bootstrap/dist/js/bootstrap.min.js") }}"></script>
        <!-- Custom Theme Scripts -->
        <script src="{{ asset("vendors/gentelella/js/gentelella.min.js") }}"></script>
                <!-- Bootstrap -->
        <script src="{{ asset("vendors/moment/min/moment.min.js") }}"></script>
        <!-- Custom Theme Scripts -->
        <script src="{{ asset("vendors/gentelella/js/gentelella.min.js") }}"></script>

           <!-- FastClick -->
    <script src="{{ asset("vendors/fastclick/lib/fastclick.js") }}"></script>
    <!-- NProgress -->
    <script src="{{ asset("vendors/nprogress/nprogress.js") }}"></script>
    <!-- iCheck -->
    <script src="{{ asset("vendors/iCheck/icheck.min.js") }}"></script>
    <!-- Chart.js -->
    <script src="{{ asset("vendors/Chart.js/dist/Chart.min.js") }}"></script>
       <!-- Flot -->
       <script src="{{ asset("vendors/Flot/jquery.flot.js") }}"></script>
    <script src="{{ asset("vendors/Flot/jquery.flot.pie.js") }}"></script>
    <script src="{{ asset("vendors/Flot/jquery.flot.time.js") }}"></script>
    <script src="{{ asset("vendors/Flot/jquery.flot.stack.js") }}"></script>
    <script src="{{ asset("vendors/Flot/jquery.flot.resize.js") }}"></script>
    <script src="{{ asset("vendors/Flot/jquery.flot.axislabels.js") }}"></script>
    <!-- Flot plugins -->
    <script src="{{ asset("vendors/flot.orderbars/js/jquery.flot.orderBars.js") }}"></script>
    <script src="{{ asset("vendors/flot-spline/js/jquery.flot.spline.min.js") }}"></script>
    <script src="{{ asset("vendors/Flot/flot.tooltip-master/js/jquery.flot.tooltip.source.js") }}"></script>
    <script src="{{ asset("vendors/Flot/flot.tooltip-master/js/jquery.flot.tooltip.js") }}"></script>


    <!-- Datatables -->
    <script src="{{ asset("vendors/datatables.net/js/jquery.dataTables.min.js") }}"></script>
    <script src="{{ asset("vendors/datatables.net-bs/js/dataTables.bootstrap.min.js") }}"></script>
    <script src="{{ asset("vendors/datatables.net-buttons/js/dataTables.buttons.min.js") }}"></script>
    <script src="{{ asset("vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js") }}"></script>
    <script src="{{ asset("vendors/datatables.net-buttons/js/buttons.flash.min.js") }}"></script>
    <script src="{{ asset("vendors/datatables.net-buttons/js/buttons.html5.min.js") }}"></script>
    <script src="{{ asset("vendors/datatables.net-buttons/js/buttons.print.min.js") }}"></script>
    <script src="{{ asset("vendors/datatables.net-buttons/js/buttons.colVis.min.js") }}"></script>
    <script src="{{ asset("vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js") }}"></script>
    <script src="{{ asset("vendors/datatables.net-keytable/js/dataTables.keyTable.min.js") }}"></script>
    <script src="{{ asset("vendors/datatables.net-responsive/js/dataTables.responsive.min.js") }}"></script>
    <script src="{{ asset("vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js") }}"></script>
    <script src="{{ asset("vendors/datatables.net-scroller/js/dataTables.scroller.min.js") }}"></script>
    <script src="{{ asset("vendors/jszip/dist/jszip.min.js") }}"></script>
    <script src="{{ asset("vendors/pdfmake/build/pdfmake.min.js") }}"></script>
    <script src="{{ asset("vendors/pdfmake/build/vfs_fonts.js") }}"></script>
    <!-- JS_MASK-->
    <script src="{{ asset("vendors/jquery_mask/dist/jquery.mask.min.js") }}"></script>
    <!-- Include Date Range Picker -->
    <!-- Include Required Prerequisites -->
    <script type="text/javascript" src="{{ asset("vendors/moment/min/moment.min.js") }}"></script>

    <!-- Include Date Range Picker -->
    <script type="text/javascript" src="{{ asset("vendors/bootstrap-daterangepicker/daterangepicker.js") }}"></script>

<!-- jQuery Smart Wizard -->
<script src="{{ asset("vendors/jQuery-Smart-Wizard/js/jquery.smartWizard.js") }}"></script><!-- jQuery Smart Wizard -->
<!-- jQuery Galic Persistant to localstorage -->
<script src="{{ asset("vendors/garlicjs/dist/garlic.min.js") }}"></script>
<script src="{{ asset("vendors/custom/custom.js") }}"></script>
    

    </body>
</html>