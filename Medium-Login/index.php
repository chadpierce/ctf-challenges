<!DOCTYPE html>
<html>

<head>
  <link rel="stylesheet" href="style.css">
  <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" />
  <title>Medium Website Login!</title>
</head>
<body>

<?php

$username = "admin";
$password = "reallyreallyREALLYREALLYREALLYGOODPASSWORD";

if (!empty($_POST)){
  $input_username = $_POST['username'];
  $input_password = $_POST['password'];

  if ($input_username === $username) {
      if ($input_password === $password)
        $msg="That is a good password!! Here is the flag: flag{who_was_your_favorite_teacher}";
      else
          $msg="incorrect password!";
  } else
    $msg="bad username!";
  
  echo "<script type='text/javascript'>alert('$msg');</script>";
}
?>

<div class="main">
  <p class="sign" align="center">Medium Website Login!</p>
  <form class="form1" method="post" action="#">
    <input class="un" name="username" type="text" align="center" placeholder="Username"/>
    <input class="pass" name="password" type="text" align="center" placeholder="Password"/>
    <input class="submit" align="center" name="submit" type="submit" value="Submit" />
  </form>
  <p class="forgot" align="center"><a href="forgot.php">Forgot password?</a></p>
</div>
</body>
<div class="footer">
 <footer>
 <a class="icon-facebook" href=https://facebook.com>
  <i class="fa fa-facebook"></i>
  <span class="hidden"> Facebook   </span>
  </a>
  <a class="icon-twitter" href=https://twitter.com/phpwizzard>
  <i class="fa fa-twitter"></i>
  <span class="hidden">Twitter   </span>
  </a>
    <a class="icon-linkedin" href=https://linkedin.com>
  <i class="fa fa-linkedin"></i>
  <span class="hidden">Linkedin   </span>
  </a>

</footer>
</div>
</html>
