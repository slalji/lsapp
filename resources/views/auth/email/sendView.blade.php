<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>Gentellela Alela! | </title>
    
    <!-- Bootstrap -->
    <link href="{{ asset("css/bootstrap.min.css") }}" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="{{ asset("css/font-awesome.min.css") }}" rel="stylesheet">
    <!-- Custom Theme Style -->
    <link href="{{ asset("css/gentelella.min.css") }}" rel="stylesheet">
     <!-- Bootstrap -->
     <link href="{{ asset("vendors/bootstrap/dist/css/bootstrap.min.css") }}" rel="stylesheet">
        <!-- Font Awesome -->
        <link href="{{ asset("vendors/font-awesome/css/font-awesome.min.css") }}" rel="stylesheet">
        <!-- Custom Theme Style -->
        <link href="{{ asset("vendors/gentelella/css/gentelella.css") }}" rel="stylesheet">

</head>

<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <!-- page content -->
        <div class="col-md-12">
            <div class="col-middle">
                <div class="text-center text-center">
                    <h3 >Registration Auth</h3>
                    <h4>{{$user['name']}} to <?php getenv('APP_NAME')?>

<br/>
<h3>
Copy Temp Password to paste into login form :<span style="color:#fff; font-size:1em"> {{$temppassword}}</span>
</h3>
Verify your email :<button class="btn btn-default"> <a href="{{ route('sendEmailDone',['email'=> $user->email,'verify_token' => $user->verify_token] ) }}">click here</a>
</button>
</div>
            </div>
        </div>
        <!-- /page content -->
    </div>
</div>

<!-- jQuery -->
<script src="{{ asset("js/jquery.min.js") }}"></script>
<!-- Bootstrap -->
<script src="{{ asset("js/bootstrap.min.js") }}"></script>
<!-- Custom Theme Scripts -->
<script src="{{ asset("js/gentelella.min.js") }}"></script>
  <!-- jQuery -->
  <script src="{{ asset("vendors/jquery/dist/jquery.min.js") }}"></script>

 <!-- Bootstrap -->
 <script src="{{ asset("vendors/bootstrap/dist/js/bootstrap.min.js") }}"></script>
        <!-- Custom Theme Scripts -->
        <script src="{{ asset("vendors/gentelella/js/gentelella.min.js") }}"></script>

</body>
</html>