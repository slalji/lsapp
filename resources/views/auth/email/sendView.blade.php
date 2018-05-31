<!DOCTYPE html>
<html>
<head>
    <title>Welcome Email</title>
</head>
 
<body>
<h2>Welcome {{$user['name']}} to the site </h2>
<br/>
Copy Temp Password to paste into login form : {{$temppassword}}
Verify your email : <a href="{{ route('sendEmailDone',['email'=> $user->email,'verify_token' => $user->verify_token] ) }}">click here</a>

</body>
 
</html>