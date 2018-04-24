<!DOCTYPE html>
<html lang="en">
<head>
@include('layout.gentelella.head')
</head>
<body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.php" class="site_title" style="background:#D9DEE4; "><img src="images/SELCOM-01.png" alt="Selcom"> <!--<span style="color:#2A3F54">Selcom</span>--></a>
            </div>

            <div class="clearfix"></div>        

@include('layout.gentelella.menu_profile')
<br />
@include('layout.gentelella.sidebar')
</div>
</div>
@include('layout.gentelella.top_nav')
<div class="right_col" role="main">
@yield('content')
</div>
    </div>
@include('layout.gentelella.footer')
@include('layout.gentelella.footer-scripts')

</body>
</html>
