<?php
include "connection.php";

try {
    // set the PDO error mode to exception
    $database->testconn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $sql = "INSERT INTO main (id, fname, lname, age) 
          VALUES ('1', 'You Doe', 'john@example.com', '25')";
    // use exec() because no results are returned
    $database->testconn->exec($sql);
    echo "New record created successfully";
    }
catch(PDOException $e)
    {
    echo $sql . "<br>" . $e->getMessage();
    }


$database->testconn = null;
?>