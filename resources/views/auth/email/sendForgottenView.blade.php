<!DOCTYPE html>
<html>
<head>
    <title>Welcome Email</title>
</head>
 
<body>
<h2>Reset your password {{$user['name']}} to the site </h2>
<br/>
Verify your account : <a href="{{ route('showResetForm',['token' => $token] ) }}">click here</a>

</body>
 
</html>