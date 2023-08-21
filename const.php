<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Here</title>
    <link rel="stylesheet" href="const.css">
</head>
<body>
      <div class="container">
        
           <div class="contact">
                <form action="" method="post">
                    <h1 style="color:green ;">Book Here</h1>
                    <table>
                        <thead>
                            <tr>
                                <td><label for="" class="inputs">full name</label></td>
                                <td><input type="text"></td>
                            </tr>
                            <tr>
                                <td><label for="" class="inputs">email</label></td>
                                <td><input type="email"></td>
                            </tr>
                            <tr>
                                <td><label for="" class="inputs">contact</label></td>
                                <td><input type="number"></td>
                            </tr>
                            <tr>
                                <td><label for="" class="inputs">id proof</label></td>
                                <td><input type="file" name="" id=""></td>
                            </tr>
                            <tr>
                                <td><label for="" class="inputs">blood group</label></td>
                                <td><input type="text" placeholder="A+/O+"></td>
                            </tr>
                            <tr>
                                <td><label for="" class="inputs">location</label></td>
                                <td><input type="text"></td>
                            </tr>
                            <td><label for="" class="inputs">payment</label></td>
                            <td><input type="button" onclick="myfunction()" id="hov" value="payment"></td>
                        </tr>
                    </tr>
                    <td><label for="">SUBMIT</label></td>
                    <td><a href="index.php"><input type="button" onclick="submit()" id="sub" value="submit"></a></td>
                </tr>
                        </thead>
                    </table>
                </form>
                <div class="imag">
                    <img src="images/contactus.jpg" alt="all">
                </div>
           </div>
      </div>
      <script>
           function myfunction(){
              alert("please wait");
              alert("payment successfully");
           }
           function mysubmit()
           {
              
              alert("Submitted seccessfully, Mediators Details has been sent to your mobile.<br> Please Check!!!");
           }


      </script>
</body>
</html>