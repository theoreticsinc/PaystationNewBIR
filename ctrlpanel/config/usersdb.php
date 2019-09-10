<?php
session_start();
error_reporting(E_ERROR | E_WARNING | E_PARSE | E_NOTICE);    
date_default_timezone_set('Asia/Manila');


	function addusers() {

    $success = false;
    $db_server = "localhost"; // server 127.0.0.1
    $db_user = "root"; // databe user name
    $db_pass = ""; //password
    $db_name1 = "pos_users"; //database name 

    $dbcon1 = new mysqli($db_server,$db_user,$db_pass,$db_name1);
    if ($dbcon1->connect_error) 
    {
        die("Connection failed: " . $dbcon1->connect_error);
    }

    $passwd = MD5($_POST['password']);

     $sql = "INSERT INTO `main` (`id`, `username`, `password`, `usercode`) 
     VALUES (NULL, '".$_POST['username']."', '".$passwd."', '".$_POST['usercode']."')";

        debug_to_console($sql);
        if ($dbcon1->query($sql) === TRUE) {
            $success = true;
        } else {
          debug_to_console("Error adding record: " . $dbcon1->error);
            $success = false;
        }


        if ($success) {
            debug_to_console("Parker added successfully");
            echo '<script language="javascript">';
            echo 'alert("User added Successfully")';
            echo '</script>';
        } else {
            echo '<script language="javascript">';
            echo 'alert("Error Adding User Records")';
            echo '</script>';
        }




}
?>
