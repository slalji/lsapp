<!DOCTYPE html>
<html>
<head>
    <title>Welcome Email</title>
</head>
 
<body>
<h2>Reset your password {{$user['name']}} to the site </h2>
<br/>
Verify your email : <a href="{{url(route('sendForgottenEmailDone', $token, false))}}">click here</a>
 

</body>
 
</html>