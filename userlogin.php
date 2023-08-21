<?php
include('config.php');
if(isset($_POST['login']))
{
    
    $email=$_POST['email'];
    
    $password=$_POST['password'];
    

// $ins_qry=$conn->query("insert into user_tab(name,username,email,number,password,cpassword,gender) values('$fullname','$username','$email','$number','$password','$cpassword','$gender')");
$lg_qry=$conn->query("select * from demo where email='$email' and password='$password'");
if($lg_qry->rowCount()==1)
{
    header('Location:tour.php');
}
else
{
 echo "credentials wrong";
}
}
?>
<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>User Login</title>
    <link rel="stylesheet" href="userlogin.css"/>
    <style>
     input { font-size: 20px; }
    </style>
    
</head>
<body>
<div class="image_list">
            <video style="margin-left:0;" width="100%" height="100%" autoplay controls src="images/NATURE-2.mp4" alt="just"></video>
      </div>
        <form method="post">
            <h1>LOGIN</h1>
            <label><h3>EMAIL</h3></label>
            <input type="text" name="email" /><br /><br />
            <label><h3>PASSWORD</h3></label>
            <input type="password" name="password" /><br />
           <button name="login"> <b>Login </b></button><br />
            <a href="userregister.php"><h2><b>Register Now</b> >><h2></a>
        </form>

    </body>
    </html>
