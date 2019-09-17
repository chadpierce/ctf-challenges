<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="style.css">
  <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" />
  <title>You forgot your password again!?!?!</title>
</head>
<body>
<?php

$dog = "tugg";
$bday = "11/05/1997";
$futbol = "arsenal";
$maiden = "zuckerberg";

if (!empty($_POST)){
  $input_dog = $_POST['dog'];
  $input_bday = $_POST['bday'];
  $input_futbol = $_POST['futbol'];
  $input_maiden = $_POST['maiden'];
  $adog = "wrong!";
  $abday = "wrong!";
  $afutbol = "wrong!";
  $amaiden = "wrong!";
  $getflag = 0;

  if (strtolower($input_dog) === $dog) {
    $adog = 'correct';
    $getflag += 1;
  }
  if (strtolower($input_bday) === $bday) {
    $abday = 'correct';
    $getflag += 1;
  }
  if (strtolower($input_futbol) === $futbol) {
    $afutbol = 'correct';
    $getflag += 1;
  }
  if (strtolower($input_maiden) === $maiden) {
    $amaiden = 'correct';
    $getflag += 1;
  }
  print_r($getflag);
  if ($getflag === 4) 
    $msg="Verified! Here is your new password: reallyreallyREALLYREALLYREALLYGOODPASSWORD";
  else
    $msg="You got something wrong!\\nDog: $adog\\nBirthday: $abday\\nTeam: $afutbol\\nMaiden Name: $amaiden";


  echo "<script type='text/javascript'>alert('$msg');</script>";
}
?>

<div class="main_pw">
  <p class="sign" align="center">Password Reset Form</p>
  <p class="field" align="center">'admin' account password reset</p>
  <form class="form1" method="post" action="#">
    <p class="field" align="center">What is your dog's name?</p>
    <input class="un" name="dog" type="text" align="center" placeholder=""/>
    <p class="field" align="center">What is your birth date (mm/dd/yyyy)?</p>
    <input class="pass" name="bday" type="text" align="center" placeholder=""/>
    <p class="field" align="center">What is your favorite sports team?</p>
    <input class="pass" name="futbol" type="text" align="center" placeholder=""/>
    <p class="field" align="center">What is your mother's maiden name?</p>
    <input class="pass" name="maiden" type="text" align="center" placeholder=""/>
    <input class="submit" align="center" name="submit" type="submit" value="Submit" />
  </form>
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
