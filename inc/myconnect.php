<?php
$conn=mysqli_connect("den1.mysql6.gear.host","mobileshop1","Ud404w5!!2jg","mobileshop1");
// Check connection
if ($conn->connect_error)
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
  $conn->set_charset("utf8")
?>
