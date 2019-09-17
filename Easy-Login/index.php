<!DOCTYPE html>
<html>

<head>
  <link rel="stylesheet" href="green.css">
  <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
  <title>Easy Website Login!</title>
</head>
<body>
<!-- TODO update login code 
                and encrypt /data/creds.dat-->
<?php

// get credentials from dat file
$creds = array_map('str_getcsv', file('data/creds.dat'));
$username = $creds[1][0];
$password = $creds[1][1];

if (!empty($_POST)){
  $input_username = $_POST['username'];
  $input_password = $_POST['password'];

  if ($input_username === $username) {
      if ($input_password === $password)
        $msg="Good job!!!!!!\nHere is the flag: flag{always_hash_passwords}";
      else
          $msg="incorrect password!";
  } else
    $msg="bad username!";
  
  echo "<script type='text/javascript'>alert('$msg');</script>";
}
?>

<div class="main">
  <p class="sign" align="center">Easy Website Login!</p>
  <form class="form1" method="post" action="#">
    <input class="un" name="username" type="text" align="center" placeholder="Username"/>
    <input class="pass" name="password" type="text" align="center" placeholder="Password"/>
    <input class="submit" align="center" name="submit" type="submit" value="Submit" />
  </form>
</div>

</body>
</html>
