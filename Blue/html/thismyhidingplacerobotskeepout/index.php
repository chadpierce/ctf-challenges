<?php
if (!isset($_COOKIE["have_cookie"]))
{
setcookie("have_cookie","no",time()+3600);
}
//echo $_COOKIE["cookie"];
$isHaveCookie = $_COOKIE["have_cookie"];
?>
<html>
<head>
<title>Hiding Place</title>
<link rel="stylesheet" href="/css/style.css" type="text/css" media="all" />
<style>
body {
background-image: url("monster.png");
background-repeat: no-repeat;
background-attachment: fixed;
background-position: center;
}
</style>
</head>
<body>
<?php
echo "<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>";
if ($isHaveCookie == "yes" || $isHaveCookie == "YES") {
    echo "<p><center><h1>Sometimes me think, \"What is friend?\" and then me say, \"Friend is someone to share last cookie with.\"</h1></center></p>";
    echo "<p><center><h3>flag{by_continuing_to_browse_this_site_you_consent_to_our_use_of_cookies}</h3></center></p>";
}

echo "<!-- Me famished. You have cookie? -->";

?>
</body>

</html>


