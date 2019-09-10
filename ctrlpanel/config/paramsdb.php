<?php
session_start();
error_reporting(E_ERROR | E_WARNING | E_PARSE | E_NOTICE);    
date_default_timezone_set('Asia/Manila');

$db_server = "localhost"; // server 127.0.0.1
$db_user = "root"; // databe user name
$db_pass = "sa"; //password
$db_name = "ratesparam"; //database name 



$dbcon = new mysqli($db_server,$db_user,$db_pass,$db_name);
if ($dbcon->connect_error) 
{
    die("Connection failed: " . $dbcon->connect_error);
}

function updateparams($dbcon) {
if(isset($_SESSION["tableName"])) 
{
    $tablename = $_SESSION["tableName"];
}
else 
{
    $tablename = 'flatrate';
}
  $sql = "UPDATE ".$tablename." SET " .
  "Hr0='" . $_POST['HR0'] . 
  "', GracePeriod='" . $_POST['GracePeriod'] . 
  "', ExitGracePeriod='" . $_POST['ExitGracePeriod'] . 
  "', OTCutoff='" . $_POST['OTCutoff'] . 
  "', Hr1='" . $_POST['HR1'] . 
  "', Hr2='" . $_POST['HR2'] . 
  "', Hr3='" . $_POST['HR3'] . 
  "', Hr4='" . $_POST['HR4'] . 
  "', Hr5='" . $_POST['HR5'] . 
  "', Hr6='" . $_POST['HR6'] . 
  "', Hr7='" . $_POST['HR7'] . 
  "', Hr8='" . $_POST['HR8'] . 
  "', Hr9='" . $_POST['HR9'] . 
  "', Hr10='" . $_POST['HR10'] . 
  "', Hr11='" . $_POST['HR11'] . 
  "', Hr12='" . $_POST['HR12'] . 
  "', Hr13='" . $_POST['HR13'] . 
  "', Hr14='" . $_POST['HR14'] . 
  "', Hr15='" . $_POST['HR15'] . 
  "', Hr16='" . $_POST['HR16'] . 
  "', Hr17='" . $_POST['HR17'] . 
  "', Hr18='" . $_POST['HR18'] . 
  "', Hr19='" . $_POST['HR19'] . 
  "', Hr20='" . $_POST['HR20'] . 
  "', Hr21='" . $_POST['HR21'] . 
  "', Hr22='" . $_POST['HR22'] . 
  "', Hr23='" . $_POST['HR23'] . 
  "', Hr0plus='" . $_POST['HR0+'] . 
  "', Hr1plus='" . $_POST['HR1+'] . 
  "', Hr2plus='" . $_POST['HR2+'] . 
  "', Hr3plus='" . $_POST['HR3+'] . 
  "', Hr4plus='" . $_POST['HR4+'] . 
  "', Hr5plus='" . $_POST['HR5+'] . 
  "', Hr6plus='" . $_POST['HR6+'] . 
  "', Hr7plus='" . $_POST['HR7+'] . 
  "', Hr8plus='" . $_POST['HR8+'] . 
  "', Hr9plus='" . $_POST['HR9+'] . 
  "', Hr10plus='" . $_POST['HR10+'] . 
  "', Hr11plus='" . $_POST['HR11+'] . 
  "', Hr12plus='" . $_POST['HR12+'] . 
  "', Hr13plus='" . $_POST['HR13+'] . 
  "', Hr14plus='" . $_POST['HR14+'] . 
  "', Hr15plus='" . $_POST['HR15+'] . 
  "', Hr16plus='" . $_POST['HR16+'] . 
  "', Hr17plus='" . $_POST['HR17+'] . 
  "', Hr18plus='" . $_POST['HR18+'] . 
  "', Hr19plus='" . $_POST['HR19+'] . 
  "', Hr20plus='" . $_POST['HR20+'] . 
  "', Hr21plus='" . $_POST['HR21+'] . 
  "', Hr22plus='" . $_POST['HR22+'] . 
  "', Hr23plus='" . $_POST['HR23+'] . 
  "', Hr24='" . $_POST['HR24'] . "'"; 

    if (isset($_POST['EveryNthHour'])) {
       $EveryNthHour = $_POST['EveryNthHour'];
       $sql = $sql . ", EveryNthHour = '".$EveryNthHour."'";
       //debug_to_console("$EveryNthHour =".$EveryNthHour);
    }
        if (isset($_POST['NthHourRate'])) {
       $NthHourRate = $_POST['NthHourRate'];
       $sql = $sql . ", NthHourRate = '".$NthHourRate."'";
       //debug_to_console("$NthHourRate =".$NthHourRate);
    }
    
    if (isset($_POST['OTPrice'])) {
       $OTPrice = $_POST['OTPrice'];
       $sql = $sql . ", OTPrice = '".$OTPrice."'";
       //debug_to_console("$OTPrice =".$OTPrice);
    }
    
    if (isset($_POST['rateType1'])) {
       $rateType = $_POST['rateType1'];
       $sql = $sql . ", TreatNextDayAsNewDay = '".$rateType."'";
       //debug_to_console("$rateType =".$rateType);
    }
    if (isset($_POST['rateType2'])) {
       $rateType = $_POST['rateType2'];
       $sql = $sql . ", TreatNextDayAsNewDay = '".$rateType."'";
       //debug_to_console("$rateType =".$rateType);
    }
    if (isset($_POST['rateType3'])) {
       $rateType = $_POST['rateType3'];
       $sql = $sql . ", TreatNextDayAsNewDay = '".$rateType."'";
       //debug_to_console("$rateType =".$rateType);
    }
    if (isset($_POST['rateType4'])) {
       $rateType = $_POST['rateType4'];
       $sql = $sql . ", TreatNextDayAsNewDay = '".$rateType."'";
       //debug_to_console("$rateType =".$rateType);
    }
    if (isset($_POST['rateType5'])) {
       $rateType = $_POST['rateType5'];
       $sql = $sql . ", TreatNextDayAsNewDay = '".$rateType."'";
       //debug_to_console("$rateType =".$rateType);
    }
    if (isset($_POST['rateType6'])) {
       $rateType = $_POST['rateType6'];
       $sql = $sql . ", TreatNextDayAsNewDay = '".$rateType."'";
       //debug_to_console("$rateType =".$rateType);
    }
    if (isset($_POST['succeedingRate1'])) {
       $succeeding = $_POST['succeedingRate1'];
       $sql = $sql . ", SucceedingRate = '".$succeeding."'";
       //debug_to_console("$succeeding =".$succeeding);
    }
    if (isset($_POST['succeedingRate2'])) {
       $succeeding = $_POST['succeedingRate2'];
       $sql = $sql . ", SucceedingRate = '".$succeeding."'";
       //debug_to_console("$succeeding =".$succeeding);
    }
    if (isset($_POST['succeedingRate3'])) {
       $succeeding = $_POST['succeedingRate3'];
       $sql = $sql . ", SucceedingRate = '".$succeeding."'";
       //debug_to_console("$succeeding =".$succeeding);
    }
    if (isset($_POST['succeedingRate4'])) {
       $succeeding = $_POST['succeedingRate4'];
       $sql = $sql . ", SucceedingRate = '".$succeeding."'";
       //debug_to_console("$succeeding =".$succeeding);
    }
    if (isset($_POST['succeedingRate5'])) {
       $succeeding = $_POST['succeedingRate5'];
       $sql = $sql . ", SucceedingRate = '".$succeeding."'";
       //debug_to_console("$succeeding =".$succeeding);
    }
    if (isset($_POST['succeedingRate6'])) {
       $succeeding = $_POST['succeedingRate6'];
       $sql = $sql . ", SucceedingRate = '".$succeeding."'";
       //debug_to_console("$succeeding =".$succeeding);
    }


    if (isset($_POST['Hr0Waived1st'])) {
       $sql = $sql . ", Hr0Waived1st = '1'";
       //debug_to_console("Hr0Waived1st was checked");
    } else {
       $sql = $sql . ", Hr0Waived1st = '0'";
       //debug_to_console("Hr0Waived1st was checked");
    }
    if (isset($_POST['Hr0plusWaived1st'])) {
       $sql = $sql . ", Hr0plusWaived1st = '1'";
    } else {
       $sql = $sql . ", Hr0plusWaived1st = '0'";
    }
    if (isset($_POST['Hr1Waived1st'])) {
       $sql = $sql . ", Hr1Waived1st = '1'";
    } else {
       $sql = $sql . ", Hr1Waived1st = '0'";
    }
    if (isset($_POST['Hr1plusWaived1st'])) {
       $sql = $sql . ", Hr1plusWaived1st = '1'";
    } else {
       $sql = $sql . ", Hr1plusWaived1st = '0'";
    }
    if (isset($_POST['Hr2Waived1st'])) {
       $sql = $sql . ", Hr2Waived1st = '1'";
    } else {
       $sql = $sql . ", Hr2Waived1st = '0'";
    }
    if (isset($_POST['Hr2plusWaived1st'])) {
       $sql = $sql . ", Hr2plusWaived1st = '1'";
    } else {
       $sql = $sql . ", Hr2plusWaived1st = '0'";
    }
    if (isset($_POST['Hr3Waived1st'])) {
       $sql = $sql . ", Hr3Waived1st = '1'";
    } else {
       $sql = $sql . ", Hr3Waived1st = '0'";
    }
    if (isset($_POST['Hr3plusWaived1st'])) {
       $sql = $sql . ", Hr3plusWaived1st = '1'";
    } else {
       $sql = $sql . ", Hr3plusWaived1st = '0'";
    }
    if (isset($_POST['Hr4Waived1st'])) {
       $sql = $sql . ", Hr4Waived1st = '1'";
    } else {
       $sql = $sql . ", Hr4Waived1st = '0'";
    }
    if (isset($_POST['Hr4plusWaived1st'])) {
       $sql = $sql . ", Hr4plusWaived1st = '1'";
    } else {
       $sql = $sql . ", Hr4plusWaived1st = '0'";
    }
    if (isset($_POST['Hr5Waived1st'])) {
       $sql = $sql . ", Hr5Waived1st = '1'";
    } else {
       $sql = $sql . ", Hr5Waived1st = '0'";
    }
    if (isset($_POST['Hr5plusWaived1st'])) {
       $sql = $sql . ", Hr5plusWaived1st = '1'";
    } else {
       $sql = $sql . ", Hr5plusWaived1st = '0'";
    }
    if (isset($_POST['Hr6Waived1st'])) {
       $sql = $sql . ", Hr6Waived1st = '1'";
    } else {
       $sql = $sql . ", Hr6Waived1st = '0'";
    }
    if (isset($_POST['Hr6plusWaived1st'])) {
       $sql = $sql . ", Hr6plusWaived1st = '1'";
    } else {
       $sql = $sql . ", Hr6plusWaived1st = '0'";
    }
    if (isset($_POST['Hr7Waived1st'])) {
       $sql = $sql . ", Hr7Waived1st = '1'";
    } else {
       $sql = $sql . ", Hr7Waived1st = '0'";
    }
    if (isset($_POST['Hr7plusWaived1st'])) {
       $sql = $sql . ", Hr7plusWaived1st = '1'";
    } else {
       $sql = $sql . ", Hr7plusWaived1st = '0'";
    }
    if (isset($_POST['Hr8Waived1st'])) {
       $sql = $sql . ", Hr8Waived1st = '1'";
    } else {
       $sql = $sql . ", Hr8Waived1st = '0'";
    }
    if (isset($_POST['Hr8plusWaived1st'])) {
       $sql = $sql . ", Hr8plusWaived1st = '1'";
    } else {
       $sql = $sql . ", Hr8plusWaived1st = '0'";
    }
    if (isset($_POST['Hr9Waived1st'])) {
       $sql = $sql . ", Hr9Waived1st = '1'";
    } else {
       $sql = $sql . ", Hr9Waived1st = '0'";
    }
    if (isset($_POST['Hr9plusWaived1st'])) {
       $sql = $sql . ", Hr9plusWaived1st = '1'";
    } else {
       $sql = $sql . ", Hr9plusWaived1st = '0'";
    }
    if (isset($_POST['Hr10Waived1st'])) {
       $sql = $sql . ", Hr10Waived1st = '1'";
    } else {
       $sql = $sql . ", Hr10Waived1st = '0'";
    }
    if (isset($_POST['Hr10plusWaived1st'])) {
       $sql = $sql . ", Hr10plusWaived1st = '1'";
    } else {
       $sql = $sql . ", Hr10plusWaived1st = '0'";
    }
    if (isset($_POST['Hr11Waived1st'])) {
       $sql = $sql . ", Hr11Waived1st = '1'";
    } else {
       $sql = $sql . ", Hr11Waived1st = '0'";
    }
    if (isset($_POST['Hr11plusWaived1st'])) {
       $sql = $sql . ", Hr11plusWaived1st = '1'";
    } else {
       $sql = $sql . ", Hr11plusWaived1st = '0'";
    }
    if (isset($_POST['Hr12Waived1st'])) {
       $sql = $sql . ", Hr12Waived1st = '1'";
    } else {
       $sql = $sql . ", Hr12Waived1st = '0'";
    }
    if (isset($_POST['Hr12plusWaived1st'])) {
       $sql = $sql . ", Hr12plusWaived1st = '1'";
    } else {
       $sql = $sql . ", Hr12plusWaived1st = '0'";
    }
    if (isset($_POST['Hr13Waived1st'])) {
       $sql = $sql . ", Hr13Waived1st = '1'";
    } else {
       $sql = $sql . ", Hr13Waived1st = '0'";
    }
    if (isset($_POST['Hr13plusWaived1st'])) {
       $sql = $sql . ", Hr13plusWaived1st = '1'";
    } else {
       $sql = $sql . ", Hr13plusWaived1st = '0'";
    }
    if (isset($_POST['Hr14Waived1st'])) {
       $sql = $sql . ", Hr14Waived1st = '1'";
    } else {
       $sql = $sql . ", Hr14Waived1st = '0'";
    }
    if (isset($_POST['Hr14plusWaived1st'])) {
       $sql = $sql . ", Hr14plusWaived1st = '1'";
    } else {
       $sql = $sql . ", Hr14plusWaived1st = '0'";
    }
    if (isset($_POST['Hr15Waived1st'])) {
       $sql = $sql . ", Hr15Waived1st = '1'";
    } else {
       $sql = $sql . ", Hr15Waived1st = '0'";
    }
    if (isset($_POST['Hr15plusWaived1st'])) {
       $sql = $sql . ", Hr15plusWaived1st = '1'";
    } else {
       $sql = $sql . ", Hr15plusWaived1st = '0'";
    }
    if (isset($_POST['Hr16Waived1st'])) {
       $sql = $sql . ", Hr16Waived1st = '1'";
    } else {
       $sql = $sql . ", Hr16Waived1st = '0'";
    }
    if (isset($_POST['Hr16plusWaived1st'])) {
       $sql = $sql . ", Hr16plusWaived1st = '1'";
    } else {
       $sql = $sql . ", Hr16plusWaived1st = '0'";
    }
    if (isset($_POST['Hr17Waived1st'])) {
       $sql = $sql . ", Hr17Waived1st = '1'";
    } else {
       $sql = $sql . ", Hr17Waived1st = '0'";
    }
    if (isset($_POST['Hr17plusWaived1st'])) {
       $sql = $sql . ", Hr17plusWaived1st = '1'";
    } else {
       $sql = $sql . ", Hr17plusWaived1st = '0'";
    }
    if (isset($_POST['Hr18Waived1st'])) {
       $sql = $sql . ", Hr18Waived1st = '1'";
    } else {
       $sql = $sql . ", Hr18Waived1st = '0'";
    }
    if (isset($_POST['Hr18plusWaived1st'])) {
       $sql = $sql . ", Hr18plusWaived1st = '1'";
    } else {
       $sql = $sql . ", Hr18plusWaived1st = '0'";
    }
    if (isset($_POST['Hr19Waived1st'])) {
       $sql = $sql . ", Hr19Waived1st = '1'";
    } else {
       $sql = $sql . ", Hr19Waived1st = '0'";
    }
    if (isset($_POST['Hr19plusWaived1st'])) {
       $sql = $sql . ", Hr19plusWaived1st = '1'";
    } else {
       $sql = $sql . ", Hr19plusWaived1st = '0'";
    }
    if (isset($_POST['Hr20Waived1st'])) {
       $sql = $sql . ", Hr20Waived1st = '1'";
    } else {
       $sql = $sql . ", Hr20Waived1st = '0'";
    }
    if (isset($_POST['Hr20plusWaived1st'])) {
       $sql = $sql . ", Hr20plusWaived1st = '1'";
    } else {
       $sql = $sql . ", Hr20plusWaived1st = '0'";
    }
    if (isset($_POST['Hr21Waived1st'])) {
       $sql = $sql . ", Hr21Waived1st = '1'";
    } else {
       $sql = $sql . ", Hr21Waived1st = '0'";
    }
    if (isset($_POST['Hr21plusWaived1st'])) {
       $sql = $sql . ", Hr21plusWaived1st = '1'";
    } else {
       $sql = $sql . ", Hr21plusWaived1st = '0'";
    }
    if (isset($_POST['Hr22Waived1st'])) {
       $sql = $sql . ", Hr22Waived1st = '1'";
    } else {
       $sql = $sql . ", Hr22Waived1st = '0'";
    }
    if (isset($_POST['Hr22plusWaived1st'])) {
       $sql = $sql . ", Hr22plusWaived1st = '1'";
    } else {
       $sql = $sql . ", Hr22plusWaived1st = '0'";
    }
    if (isset($_POST['Hr23Waived1st'])) {
       $sql = $sql . ", Hr23Waived1st = '1'";
    } else {
       $sql = $sql . ", Hr23Waived1st = '0'";
    }
    if (isset($_POST['Hr23plusWaived1st'])) {
       $sql = $sql . ", Hr23plusWaived1st = '1'";
    } else {
       $sql = $sql . ", Hr23plusWaived1st = '0'";
    }
    if (isset($_POST['Hr24Waived1st'])) {
       $sql = $sql . ", Hr24Waived1st = '1'";
    } else {
       $sql = $sql . ", Hr24Waived1st = '0'";
    }
    if (isset($_POST['OTCutoff1stWaived'])) {
       $sql = $sql . ", OTCutoff1stWaived = '1'";
    } else {
       $sql = $sql . ", OTCutoff1stWaived = '0'";
    }

    if (isset($_POST['FractionThereOf'])) {
       $sql = $sql . ", FractionThereOf = '1'";
       //debug_to_console("FractionThereOf was checked");
    } else {
       $sql = $sql . ", FractionThereOf = '0'";
       //debug_to_console("FractionThereOf was checked");
    }

    
  $sql = $sql . " WHERE name='" . $_POST['name'] . "'";
  //debug_to_console($sql);
  if ($dbcon->query($sql) === TRUE) {
      //debug_to_console("Record updated successfully");
      echo '<script language="javascript">';
      echo 'alert("Rates Updated Successfully")';
      echo '</script>';
  } else {
      //debug_to_console("Error updating record: " . $dbcon->error);
      echo '<script language="javascript">';
      echo 'alert("Error updating Rates")';
      echo '</script>';
  }
  
	}
?>
