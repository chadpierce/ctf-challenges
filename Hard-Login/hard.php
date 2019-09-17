<!DOCTYPE html>
<html>

<head>
  <link rel="stylesheet" href="style.css">
  <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
  <title>Hard Website Login!</title>
</head>
<body>

<!-- TODO - verify login code logic 
            dont worry about these comments being public cus
              i hashed the password! duh!
  $username_hash = '21232f297a57a5a743894a0e4a801fc3'; //login: admin
  $password_hash = '0e549193047796524270260661450500'; //password: 

  if (md5($username) === $username_hash) {
      if (md5($password) == $password_hash)  //fixme
        $msg=$flag;
      else
          $msg="incorrect password!";
  } else
    $msg="bad username!";
-->

<?php

if (!empty($_POST)){
  $username = $_POST["username"];
  $password = $_POST["password"];

      //if (md5($username) === $username_hash && md5($password) == $password_hash)
      //if (md5($password) == $password_hash)
      //if (md5($username) === $username_hash)
      
      //plaintext:"240610708", md5:0e462097431906509019562988736854
      //plaintext:"314282422", md5:0e990995504821699494520356953734
      //plaintext:"R34llyV4rySUp3rG00dP455sW0rd670773149", md5:0e549193047796524270260661450500

  $username_hash = '21232f297a57a5a743894a0e4a801fc3';
  $password_hash = '0e549193047796524270260661450500';

  if (md5($username) === $username_hash) {
      if (md5($password) == $password_hash)
        $msg="gadzooks! here is your flag: flag{way_to_juggle_those_types}";
      else
          $msg="incorrect password!";
  } else
    $msg="bad username!";
  
  echo "<script type='text/javascript'>alert('$msg');</script>";
}
?>

<div class="main">
  <p class="sign" align="center">Hard Website Login!</p>
  <form class="form1" method="post" action="#">
    <input class="un" name="username" type="text" align="center" placeholder="Username"/>
    <input class="pass" name="password" type="text" align="center" placeholder="Password"/>
    <input class="submit" align="center" name="submit" type="submit" value="Submit" />
  </form>
</div>
     
</body>
</html>
