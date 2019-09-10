<?php
//session_start();
error_reporting(E_ERROR | E_WARNING | E_PARSE | E_NOTICE);    
date_default_timezone_set('Asia/Manila');

  function getAllPtypes() {

$db_server = "localhost"; // server 127.0.0.1
$db_user = "root"; // databe user name
$db_pass = ""; //password
$db_name = "ratesparam"; //database name 

$dbcon = new mysqli($db_server,$db_user,$db_pass,$db_name);
if ($dbcon->connect_error) 
{
    die("Connection failed: " . $dbcon->connect_error);
}

$db_server2 = "localhost"; // server 127.0.0.1
$db_user2 = "base"; // databe user name
$db_pass2 = "theoreticsinc"; //password
$db_name2 = "parkertypes"; //database name 

$dbcon2 = new mysqli($db_server2,$db_user2,$db_pass2,$db_name2);
if ($dbcon2->connect_error) 
{
    die("Connection failed: " . $dbcon2->connect_error);
}
    $x = 1; 

    $sql = "SELECT * FROM main";

    debug_to_console($sql);

    $result = $dbcon2->query($sql);
        if ($result) {
          while($row = $result->fetch_array()) {
            echo '
<fieldset>
<form action="" method="POST">
            <legend>'.$row["ptypename"].'</legend>
          <table>
          <tr>
          <td>Grace Period</td>
          <td>Hr0</td>
          <td>Hr0+</td>
          <td>Hr1</td>
          <td>Hr1+</td>
          <td>Hr2</td>
          <td>Hr2+</td>
          <td>Hr3</td>
          <td>Hr3+</td>
          <td>Hr4</td>
          <td>Hr4+</td>
          <td>Hr5</td>
          <td>Hr5+</td>
          <td>Hr6</td>
          <td>Hr6+</td>
          <td>Hr7</td>
          <td>Hr7+</td>
          <td>Hr8</td>
          <td>Hr8+</td>
          <td>Hr9</td>
          <td>Hr9+</td>
          <td>Hr10</td>
          <td>Hr10+</td>
          <td>Hr11</td>
          <td>Hr11+</td>
          <td>Hr12</td>
          <td>Hr12+</td>
          </tr>';

$query = "SELECT * FROM flatrate WHERE name = ".$row['ptypename'];
echo $query;
$p = $dbcon->query($query) or trigger_error();
echo '
        <tr><input type="hidden" value="Regular" name="name" />
          <td><input type="text" placeholder="15" name="GracePeriod" class="input-style" value='.$p["GracePeriod"].' /> mins</td>
          <td> <input type="text" placeholder="" name="HR0" value=$p["Hr0"];?> /></td>
          <td> <input type="text" placeholder="" name="HR0+" value=$p["Hr0plus"];?> /></td>
          <td> <input type="text" placeholder="" name="HR1" value=$p["Hr1"];?> /></td>
          <td> <input type="text" placeholder="" name="HR1+" value=<?$p["Hr1plus"];?> /></td>
          <td> <input type="text" placeholder="" name="HR2" value=<?$p["Hr2"];?> /></td>
          <td> <input type="text" placeholder="" name="HR2+" value=<?$p["Hr2plus"];?> /></td>
          <td> <input type="text" placeholder="" name="HR3" value=<?$p["Hr3"];?> /></td>
          <td> <input type="text" placeholder="" name="HR3+" value=<?$p["Hr3plus"];?> /></td>
          <td> <input type="text" placeholder="" name="HR4" value=<?$p["Hr4"];?> /></td>
          <td> <input type="text" placeholder="" name="HR4+" value=<?$p["Hr4plus"];?> /></td>
          <td> <input type="text" placeholder="" name="HR5" value=<?$p["Hr5"];?> /></td>
          <td> <input type="text" placeholder="" name="HR5+" value=<?$p["Hr5plus"];?> /></td>
          <td> <input type="text" placeholder="" name="HR6" value=<?$p["Hr6"];?> /></td>
          <td> <input type="text" placeholder="" name="HR6+" value=<?$p["Hr6plus"];?> /></td>
          <td> <input type="text" placeholder="" name="HR7" value=<?$p["Hr7"];?> /></td>
          <td> <input type="text" placeholder="" name="HR7+" value=<?$p["Hr7plus"];?> /></td>
          <td> <input type="text" placeholder="" name="HR8" value=<?$p["Hr8"];?> /></td>
          <td> <input type="text" placeholder="" name="HR8+" value=<?$p["Hr8plus"];?> /></td>
          <td> <input type="text" placeholder="" name="HR9" value=<?$p["Hr9"];?> /></td>
          <td> <input type="text" placeholder="" name="HR9+" value=<?$p["Hr9plus"];?> /></td>
          <td> <input type="text" placeholder="" name="HR10" value=<?$p["Hr10"];?> /></td>
          <td> <input type="text" placeholder="" name="HR10+" value=<?$p["Hr10plus"];?> /></td>
          <td> <input type="text" placeholder="" name="HR11" value=<?$p["Hr11"];?> /></td>
          <td> <input type="text" placeholder="" name="HR11+" value=<?$p["Hr11plus"];?> /></td>
          <td> <input type="text" placeholder="" name="HR12" value=<?$p["Hr12"];?> /></td>
          <td> <input type="text" placeholder="" name="HR12+" value=<?$p["Hr12plus"];?> /></td>
        </tr>

        <tr>
          <td>1st Waived</td>
          <td> <input type="checkbox" placeholder="" name="Hr0Waived1st" <?($p["Hr0Waived1st"]==1 ? "checked" : "");?>/></td>
          <td> <input type="checkbox" placeholder="" name="Hr0plusWaived1st" <?($p["Hr0plusWaived1st"]==1 ? "checked" : "");?>/></td>
          <td> <input type="checkbox" placeholder="" name="Hr1Waived1st" <?($p["Hr1Waived1st"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr1plusWaived1st" <?($p["Hr1plusWaived1st"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr2Waived1st" <?($p["Hr2Waived1st"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr2plusWaived1st" <?($p["Hr2plusWaived1st"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr3Waived1st" <?($p["Hr3Waived1st"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr3plusWaived1st" <?($p["Hr3plusWaived1st"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr4Waived1st" <?($p["Hr4Waived1st"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr4plusWaived1st" <?($p["Hr4plusWaived1st"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr5Waived1st" <?($p["Hr5Waived1st"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr5plusWaived1st" <?($p["Hr5plusWaived1st"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr6Waived1st" <?($p["Hr6Waived1st"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr6plusWaived1st" <?($p["Hr6plusWaived1st"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr7Waived1st" <?($p["Hr7Waived1st"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr7plusWaived1st" <?($p["Hr7plusWaived1st"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr8Waived1st" <?($p["Hr8Waived1st"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr8plusWaived1st" <?($p["Hr8plusWaived1st"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr9Waived1st" <?($p["Hr9Waived1st"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr9plusWaived1st" <?($p["Hr9plusWaived1st"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr10Waived1st" <?($p["Hr10Waived1st"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr10plusWaived1st" <?($p["Hr10plusWaived1st"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr11Waived1st" <?($p["Hr11Waived1st"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr11plusWaived1st" <?($p["Hr11plusWaived1st"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr12Waived1st" <?($p["Hr12Waived1st"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr12plusWaived1st" <?($p["Hr12plusWaived1st"]==1 ? "checked" : "");?> /></td>

        <tr>
          <td>O.T. Cutoff</td>
          <td>Hr13</td>
          <td>Hr13+</td>
          <td>Hr14</td>
          <td>Hr14+</td>
          <td>Hr15</td>
          <td>Hr15+</td>
          <td>Hr16</td>
          <td>Hr16+</td>
          <td>Hr17</td>
          <td>Hr17+</td>
          <td>Hr18</td>
          <td>Hr18+</td>
          <td>Hr19</td>
          <td>Hr19+</td>
          <td>Hr20</td>
          <td>Hr20+</td>
          <td>Hr21</td>
          <td>Hr21+</td>
          <td>Hr22</td>
          <td>Hr22+</td>
          <td>Hr23</td>
          <td>Hr23+</td>
          <td>Hr24</td>

          </tr>
      <tr>
          <td><input type="text" placeholder="2" name="OTCutoff" value=<?$p["OTCutoff"];?> />00H</td>
          <td> <input type="text" placeholder="" name="HR13" value=<?$p["Hr13"];?> /></td>
          <td> <input type="text" placeholder="" name="HR13+" value=<?$p["Hr13plus"];?> /></td>
          <td> <input type="text" placeholder="" name="HR14" value=<?$p["Hr14"];?> /></td>
          <td> <input type="text" placeholder="" name="HR14+" value=<?$p["Hr14plus"];?> /></td>
          <td> <input type="text" placeholder="" name="HR15" value=<?$p["Hr15"];?> /></td>
          <td> <input type="text" placeholder="" name="HR15+" value=<?$p["Hr15plus"];?> /></td>
          <td> <input type="text" placeholder="" name="HR16" value=<?$p["Hr16"];?> /></td>
          <td> <input type="text" placeholder="" name="HR16+" value=<?$p["Hr16plus"];?> /></td>
          <td> <input type="text" placeholder="" name="HR17" value=<?$p["Hr17"];?> /></td>
          <td> <input type="text" placeholder="" name="HR17+" value=<?$p["Hr17plus"];?> /></td>
          <td> <input type="text" placeholder="" name="HR18" value=<?$p["Hr18"];?> /></td>
          <td> <input type="text" placeholder="" name="HR18+" value=<?$p["Hr18plus"];?> /></td>
          <td> <input type="text" placeholder="" name="HR19" value=<?$p["Hr19"];?> /></td>
          <td> <input type="text" placeholder="" name="HR19+" value=<?$p["Hr19plus"];?> /></td>
          <td> <input type="text" placeholder="" name="HR20" value=<?$p["Hr20"];?> /></td>
          <td> <input type="text" placeholder="" name="HR20+" value=<?$p["Hr20plus"];?> /></td>
          <td> <input type="text" placeholder="" name="HR21" value=<?$p["Hr21"];?> /></td>
          <td> <input type="text" placeholder="" name="HR21+" value=<?$p["Hr21plus"];?> /></td>
          <td> <input type="text" placeholder="" name="HR22" value=<?$p["Hr22"];?> /></td>
          <td> <input type="text" placeholder="" name="HR22+" value=<?$p["Hr22plus"];?> /></td>
          <td> <input type="text" placeholder="" name="HR23" value=<?$p["Hr23"];?> /></td>
          <td> <input type="text" placeholder="" name="HR23+" value=<?$p["Hr23plus"];?> /></td>
          <td> <input type="text" placeholder="" name="HR24" value=<?$p["Hr24"];?> /></td>

        </tr>

         <tr> 
          <td> <input type="checkbox" placeholder="" name="OTCutoff1stWaived" <?($p["OTCutoff1stWaived"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr13Waived1st" <?($p["Hr13Waived1st"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr13plusWaived1st" <?($p["Hr13plusWaived1st"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr14Waived1st" <?($p["Hr14Waived1st"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr14plusWaived1st" <?($p["Hr14plusWaived1st"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr15Waived1st" <?($p["Hr15Waived1st"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr15plusWaived1st" <?($p["Hr15plusWaived1st"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr16Waived1st" <?($p["Hr16Waived1st"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr16plusWaived1st" <?($p["Hr16plusWaived1st"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr17Waived1st" <?($p["Hr17Waived1st"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr17plusWaived1st" <?($p["Hr17plusWaived1st"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr18Waived1st" <?($p["Hr18Waived1st"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr18plusWaived1st" <?($p["Hr18plusWaived1st"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr19Waived1st" <?($p["Hr19Waived1st"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr19plusWaived1st" <?($p["Hr19plusWaived1st"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr20Waived1st" <?($p["Hr20Waived1st"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr20plusWaived1st" <?($p["Hr20plusWaived1st"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr21Waived1st" <?($p["Hr21Waived1st"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr21plusWaived1st" <?($p["Hr21plusWaived1st"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr22Waived1st" <?($p["Hr22Waived1st"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr22plusWaived1st" <?($p["Hr22plusWaived1st"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr23Waived1st" <?($p["Hr23Waived1st"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr23plusWaived1st" <?($p["Hr23plusWaived1st"]==1 ? "checked" : "");?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr24Waived1st" <?($p["Hr24Waived1st"]==1 ? "checked" : "");?> /></td>

        </tr>
        

        </table>
<button type="submit" class="btn btn-default" name="btn-update" style="float: right;" id="btn-update">Update</button>
<span id="succRate1" name="succRate1" style="float: right; padding-right: 10px;"><?($p["TreatNextDayAsNewDay"]==0 ? "&nbsp; Every: <input type="text" id="EveryNthHour" name="EveryNthHour" class="input-style" value="".$p["EveryNthHour"]."" />00H <input type="text" name="NthHourRate" class="input-style" value="".$p["NthHourRate"]."" /> " : "");?><?($p["TreatNextDayAsNewDay"]==1 ? "&nbsp; Succeeding Rate:<input type="text" name="succeedingRate1" class="input-style" value="".$p["SucceedingRate"]."" />" : "");?></span>&nbsp;
<select id="rateType1" name="rateType1" style="float: right; padding-right: 10px;" onchange="jsFunction1()">
  <option value="0" <?($p["TreatNextDayAsNewDay"]==0 ? "selected="selected"" : "");?> >Every nth Hour after Midnight</option>
  <option value="1" <?($p["TreatNextDayAsNewDay"]==1 ? "selected="selected"" : "");?> >Continuous Succeeding Rate</option>
  <option value="2" <?($p["TreatNextDayAsNewDay"]==2 ? "selected="selected"" : "");?> >New Day</option>  
</select>
<span style="float: right; padding-right: 10px;">Treat Next Day as </span>&nbsp;
<td>O.T. Price:  <input style="width: 50px;text-align:center" type="text" placeholder="+200" name="OTPrice" value=<?$p["OTPrice"];?> /></td>
<td> Charge if FractionThereOf <input type="checkbox" placeholder="" name="FractionThereOf" <?($p["FractionThereOf"]==1 ? "checked" : "");?>/></td>
<td>Lost Fees:  <input style="width: 50px;text-align:center" type="text" placeholder="+200" name="LostPrice" value=<?$p["LostPrice"];?> /></td>
            <br><br>
            </form>
        </fieldset>

            '; 
          }

        }
        else {
          echo mysql_error();
        }

    while($x <= 5) {
        echo "The number is: $x <br>";
        $x++;
    } 

      


  }

?>
