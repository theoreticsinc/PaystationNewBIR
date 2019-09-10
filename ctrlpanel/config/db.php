<?php
session_start();
error_reporting(E_ERROR | E_WARNING | E_PARSE | E_NOTICE);    
date_default_timezone_set('Asia/Manila');

$db_server = "localhost"; // server 127.0.0.1
$db_user = "base"; // databe user name
$db_pass = "theoreticsinc"; //password
$db_name = "carpark"; //database name 

$dbcon = new mysqli($db_server,$db_user,$db_pass,$db_name);
if ($dbcon->connect_error) 
{
    die("Connection failed: " . $dbcon->connect_error);
}
$conn1=mysqli_connect($db_server,$db_user,$db_pass, "colltrain");
$conn2=mysqli_connect($db_server,$db_user,$db_pass, "parkertypes");
              
              //Check connection
              if (mysqli_connect_errno()) {
                  echo "Failed to connect to MySQL: " . mysqli_connect_error();
              }
?>
