<?php
error_reporting(E_ERROR | E_WARNING | E_PARSE | E_NOTICE);    
date_default_timezone_set('Asia/Manila');


	function addparker() {

    $success = false;
    $db_server = "localhost"; // server 127.0.0.1
    $db_user = "root"; // databe user name
    $db_pass = ""; //password
    $db_name1 = "parkertypes"; //database name 

    $dbcon1 = new mysqli($db_server,$db_user,$db_pass,$db_name1);
    if ($dbcon1->connect_error) 
    {
        die("Connection failed: " . $dbcon1->connect_error);
    }

    $db_name2 = "ratesparam"; //database name 

    $dbcon2 = new mysqli($db_server,$db_user,$db_pass,$db_name2);
    if ($dbcon2->connect_error) 
    {
        die("Connection failed: " . $dbcon2->connect_error);
    }

    $db_name3 = "colltrain"; //database name 

    $dbcon3 = new mysqli($db_server,$db_user,$db_pass,$db_name3);
    if ($dbcon3->connect_error) 
    {
        die("Connection failed: " . $dbcon3->connect_error);
    }

    $trtype = strtoupper($_POST['parkertype']);
    if (isset($_POST['active'])) $active = 1; else $active = 0;
    if (isset($_POST['Discounted'])) $Discounted = 1; else $Discounted = 0;

     $sql = "INSERT INTO `main` (`ptypeID`, `parkertype`, `ptypename`, `ptypedesc`, `btnimg`, `ACTIVE`, `numOfReceipts`, `Discounted`, `DiscountPercentage`) 
     VALUES (NULL, '".$trtype."', '".$_POST['ptypename']."', '".$_POST['ptypedesc']."', 'http://127.0.0.1/img/".$_FILES['btnimage']['name']."', ".$active.", ".$_POST['numOfReceipts'].", ".$Discounted.", ".$_POST['DiscountPercentage'].")";

        debug_to_console($sql);
        if ($dbcon1->query($sql) === TRUE) {
            $success = true;
        } else {
          debug_to_console("Error adding record: " . $dbcon1->error);
            $success = false;
        }

     $sql = "INSERT INTO ratesparam.`flatrate` (`pkID`, `trtype`, `name`, `GracePeriod`, `ExitGracePeriod`, `OTCutoff`, `OTCutoff1stWaived`, `OTPrice`, `LostPrice`, `TreatNextDayAsNewDay`, `EveryNthHour`, `NthHourRate`, `SucceedingRate`, `FractionThereOf`, `Hr0`, `Hr0Waived1st`, `Hr0plus`, `Hr0plusWaived1st`, `Hr1`, `Hr1Waived1st`, `Hr1plus`, `Hr1plusWaived1st`, `Hr2`, `Hr2Waived1st`, `Hr2plus`, `Hr2plusWaived1st`, `Hr3`, `Hr3Waived1st`, `Hr3plus`, `Hr3plusWaived1st`, `Hr4`, `Hr4Waived1st`, `Hr4plus`, `Hr4plusWaived1st`, `Hr5`, `Hr5Waived1st`, `Hr5plus`, `Hr5plusWaived1st`, `Hr6`, `Hr6Waived1st`, `Hr6plus`, `Hr6plusWaived1st`, `Hr7`, `Hr7Waived1st`, `Hr7plus`, `Hr7plusWaived1st`, `Hr8`, `Hr8Waived1st`, `Hr8plus`, `Hr8plusWaived1st`, `Hr9`, `Hr9Waived1st`, `Hr9plus`, `Hr9plusWaived1st`, `Hr10`, `Hr10Waived1st`, `Hr10plus`, `Hr10plusWaived1st`, `Hr11`, `Hr11Waived1st`, `Hr11plus`, `Hr11plusWaived1st`, `Hr12`, `Hr12Waived1st`, `Hr12plus`, `Hr12plusWaived1st`, `Hr13`, `Hr13Waived1st`, `Hr13plus`, `Hr13plusWaived1st`, `Hr14`, `Hr14Waived1st`, `Hr14plus`, `Hr14plusWaived1st`, `Hr15`, `Hr15Waived1st`, `Hr15plus`, `Hr15plusWaived1st`, `Hr16`, `Hr16Waived1st`, `Hr16plus`, `Hr16plusWaived1st`, `Hr17`, `Hr17Waived1st`, `Hr17plus`, `Hr17plusWaived1st`, `Hr18`, `Hr18Waived1st`, `Hr18plus`, `Hr18plusWaived1st`, `Hr19`, `Hr19Waived1st`, `Hr19plus`, `Hr19plusWaived1st`, `Hr20`, `Hr20Waived1st`, `Hr20plus`, `Hr20plusWaived1st`, `Hr21`, `Hr21Waived1st`, `Hr21plus`, `Hr21plusWaived1st`, `Hr22`, `Hr22Waived1st`, `Hr22plus`, `Hr22plusWaived1st`, `Hr23`, `Hr23Waived1st`, `Hr23plus`, `Hr23plusWaived1st`, `Hr24`, `Hr24Waived1st`) VALUES (NULL, '".$trtype."', '".$_POST['ptypename']."', '15', '0', '2', '0', '+0', '+300', '1', '10', '+200', '+10', '1', '+20', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0')";

        debug_to_console($sql);
        if ($dbcon2->query($sql) === TRUE) {
            $success = true;
        } else {
            debug_to_console("Error adding record: " . $dbcon2->error);
            $success = false;
        }

     $sql = "ALTER TABLE `main` ADD `".strtolower($_POST['ptypename'])."Count` INT(11) NOT NULL DEFAULT '0'";

        debug_to_console($sql);
        if ($dbcon3->query($sql) === TRUE) {
            $success = true;
        } else {
            debug_to_console("Error adding record: " . $dbcon3->error);
            $success = false;
        }

      $sql = "ALTER TABLE `main` ADD `".strtolower($_POST['ptypename'])."Amount` FLOAT NOT NULL DEFAULT '0'";

        debug_to_console($sql);
        if ($dbcon3->query($sql) === TRUE) {
            $success = true;
        } else {
            debug_to_console("Error adding record: " . $dbcon3->error);
            $success = false;
        }

        if ($success) {
            debug_to_console("Parker added successfully");
            echo '<script language="javascript">';
            echo 'alert("Parker added Successfully")';
            echo '</script>';
        } else {
            echo '<script language="javascript">';
            echo 'alert("Error Adding Parker Records")';
            echo '</script>';
        }




    if(isset($_FILES['btnimage'])){
          $uploaddir = 'C:/xampp/htdocs/img/';
          $uploadfile = $uploaddir . basename($_FILES['btnimage']['name']);

          $errors= array();
          $file_name = $_FILES['btnimage']['name'];
          $file_size = $_FILES['btnimage']['size'];
          $file_tmp = $_FILES['btnimage']['tmp_name'];
          $file_type = $_FILES['btnimage']['type'];
          $file_ext=strtolower(end(explode('.',$_FILES['btnimage']['name'])));
          
          $expensions= array("jpeg","jpg","png");
          
          if(in_array($file_ext,$expensions)=== false){
             $errors[]="extension not allowed, please choose a JPEG or PNG file.";
          }
          
          if($file_size > 2097152) {
             $errors[]='File size must be excately 2 MB';
          }
          
          if(empty($errors)==true) {
              if (move_uploaded_file($_FILES['btnimage']['tmp_name'], $uploadfile)) {
                 //echo "File is valid, and was successfully uploaded.\n";
              } else {
                echo '<script language="javascript">';
                echo 'alert("ERROR: File invalid")';
                echo '</script>';
              }
             //echo "Success";
          }else{
             print_r($errors);
          }
       }

/*
//1

INSERT INTO `main` (`ptypeID`, `parkertype`, `ptypename`, `ptypedesc`) VALUES (NULL, 'T', 'Test', '');

//2

INSERT INTO `flatrate` (`pkID`, `trtype`, `name`, `GracePeriod`, `OTCutoff`, `OTCutoff1stWaived`, `OTPrice`, `LostPrice`, `TreatNextDayAsNewDay`, `EveryNthHour`, `NthHourRate`, `SucceedingRate`, `FractionThereOf`, `Hr0`, `Hr0Waived1st`, `Hr0plus`, `Hr0plusWaived1st`, `Hr1`, `Hr1Waived1st`, `Hr1plus`, `Hr1plusWaived1st`, `Hr2`, `Hr2Waived1st`, `Hr2plus`, `Hr2plusWaived1st`, `Hr3`, `Hr3Waived1st`, `Hr3plus`, `Hr3plusWaived1st`, `Hr4`, `Hr4Waived1st`, `Hr4plus`, `Hr4plusWaived1st`, `Hr5`, `Hr5Waived1st`, `Hr5plus`, `Hr5plusWaived1st`, `Hr6`, `Hr6Waived1st`, `Hr6plus`, `Hr6plusWaived1st`, `Hr7`, `Hr7Waived1st`, `Hr7plus`, `Hr7plusWaived1st`, `Hr8`, `Hr8Waived1st`, `Hr8plus`, `Hr8plusWaived1st`, `Hr9`, `Hr9Waived1st`, `Hr9plus`, `Hr9plusWaived1st`, `Hr10`, `Hr10Waived1st`, `Hr10plus`, `Hr10plusWaived1st`, `Hr11`, `Hr11Waived1st`, `Hr11plus`, `Hr11plusWaived1st`, `Hr12`, `Hr12Waived1st`, `Hr12plus`, `Hr12plusWaived1st`, `Hr13`, `Hr13Waived1st`, `Hr13plus`, `Hr13plusWaived1st`, `Hr14`, `Hr14Waived1st`, `Hr14plus`, `Hr14plusWaived1st`, `Hr15`, `Hr15Waived1st`, `Hr15plus`, `Hr15plusWaived1st`, `Hr16`, `Hr16Waived1st`, `Hr16plus`, `Hr16plusWaived1st`, `Hr17`, `Hr17Waived1st`, `Hr17plus`, `Hr17plusWaived1st`, `Hr18`, `Hr18Waived1st`, `Hr18plus`, `Hr18plusWaived1st`, `Hr19`, `Hr19Waived1st`, `Hr19plus`, `Hr19plusWaived1st`, `Hr20`, `Hr20Waived1st`, `Hr20plus`, `Hr20plusWaived1st`, `Hr21`, `Hr21Waived1st`, `Hr21plus`, `Hr21plusWaived1st`, `Hr22`, `Hr22Waived1st`, `Hr22plus`, `Hr22plusWaived1st`, `Hr23`, `Hr23Waived1st`, `Hr23plus`, `Hr23plusWaived1st`, `Hr24`, `Hr24Waived1st`) VALUES (NULL, 'T', 'Test', '15', '2', '0', '+200', '+200', '1', '10', '+200', '+10', '1', '+50', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+0', '0', '+10', '0', '+0', '0', '+10', '0', '+0', '0', '+10', '0', '+0', '0', '+10', '0', '+0', '0', '+10', '0', '+0', '0', '+10', '0', '+0', '0', '+10', '0', '+0', '0', '+10', '0', '+0', '0', '+10', '0', '+0', '0', '+10', '0', '+0', '0', '+10', '0', '+0', '0', '+10', '0', '+0', '0', '+10', '0', '+0', '0', '+10', '0', '+0', '0', '+200', '0');

//3
ALTER TABLE `main` ADD `testCount` INT(11) NOT NULL DEFAULT '0';
ALTER TABLE `main` ADD `testAmount` FLOAT NOT NULL DEFAULT '0';

    
  $sql = $sql . " WHERE name='" . $_POST['name'] . "'";
  debug_to_console($sql);
  if ($dbcon->query($sql) === TRUE) {
      debug_to_console("Record updated successfully");
      echo '<script language="javascript">';
      echo 'alert("Rates Updated Successfully")';
      echo '</script>';
  } else {
      debug_to_console("Error updating record: " . $dbcon->error);
      echo '<script language="javascript">';
      echo 'alert("Error updating Rates")';
      echo '</script>';
  }
  
	}

  */
}
?>
