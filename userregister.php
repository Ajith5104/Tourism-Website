
<?php
include('config.php');
if(isset($_POST["mydata"])){
    $name = $_POST["name"];
    $number = $_POST["number"];
    $email = $_POST["email"];
    $password = $_POST["password"];

    $ins_qry=$conn->query("insert into demo(name,Mobile,email,password) values('$name','$mobile','$email','$password')");
    if($ins_qry)
    {
        echo "<script> alert('Registered successfully')</script>";
    }
    else
    {
    echo "<script>alert('Registeration Failed')</script>";
    }
    }
?>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>Register Form</title>
    <link rel="stylesheet" href="userregister.css"/>
    <style>
     input { font-size: 20px; }
    </style>
    
</head>
<body>
<div class="image_list">
            <video style="margin-left:0%;" width="100%" height="100%" autoplay controls src="images/NATURE.mp4" alt="just"></video>
      </div>
      
        <form method="post" >
            <h1>Register Form</h1>
            <label><h3>Name</h3></label>
            <input name="name" type="text"><br>
            <label><h3>Mobile no</h3></label>
            <input name="number" type="text" ><br>
            <label><h3>Email id</h3></label>          
            <input name="email" type="text"><br>
            <label><h3>Password</h3></label>          
            <input name="password" type="password"><br>
            <button type="submit" name="mydata"><b>Register</b></button><br>
            <a href="userlogin.php"><h2> << Back to Login<h2></a>
        </form>

    </body>
    </html>
    