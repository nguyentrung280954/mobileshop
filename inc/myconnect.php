<?php
$conn=mysqli_connect("mobileshop1","mobileshop1","Lj7C9z_12~z7","mobileshop1");
// Check connection
if ($conn->connect_error)
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
  $conn->set_charset("utf8")
?>