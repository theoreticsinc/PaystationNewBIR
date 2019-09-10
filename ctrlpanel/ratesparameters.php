<?php 
include'config/paramsdb.php';
include'config/ptypesdb.php';
include'config/functions.php';
include'config/main_function.php';

?>
<!DOCTYPE html>
<head>
<title>Sentinel Audit PC</title>
<!--title-->
    <link rel="shortcut icon" href="../img/icon.png" >
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link href="bower_components/bootstrap/dist/css/bootstrap.css" rel="stylesheet">
    <link href="bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">
    <link href="bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet">
    <link href="bower_components/bootstrap-social/bootstrap-social.css" rel="stylesheet">
    <link href="bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
     <link rel="stylesheet" href="dist/css/skins/skin-green.css">
    <link rel="stylesheet" href="dist/css/ionicons.min.css">
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
    <link rel="stylesheet" href="dist/css/input.css">
<?php 
  if(isset($_POST['btn-update']))
  {
    updateparams($dbcon);
  }
  if(isset($_POST['btn-load'])) 
  {
    $_SESSION["tableName"]=$_POST['tableName'];
//    echo $_POST['tableName'];
  }
?>
<script type = "text/javascript" 
         src = "https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

      <script type = "text/javascript">
         $(document).ready(
          function(){
            $('#tableName').on('change', function (e) {
              var optionSelected = $("option:selected", this);
              var valueSelected = this.value;
              //alert(optionSelected.text());
              $tableName = optionSelected.text();
              $( "#selectType" ).submit();
              //$("#content").hide().fadeIn('fast');
            });
          });
      </script> 
</head>
<body  class="hold-transition skin-green sidebar-mini" >
  <div class="wrapper">
	
<style type="text/css">
#idletimeout { background:#CC5100; border:3px solid #FF6500; color:#fff; font-family:arial, sans-serif; text-align:center; font-size:12px; padding:10px; position:relative; top:0px; left:0; right:0; z-index:100000; display:none; }
#idletimeout a { color:#fff; font-weight:bold }
#idletimeout span { font-weight:bold }
</style>

<div id="idletimeout">
  You will be logged out in <span><!-- countdown place holder --></span>&nbsp;seconds due to inactivity. 
  <a id="idletimeout-resume" href="#">(Click here to continue using this page)</a>.
</div>
<script type="text/javascript">

function jsFunction1(){
  var myselect1 = document.getElementById("rateType1");
  
  var succeedingRate1 = document.getElementById("succRate1");
  
  //alert(myselect.options[myselect.selectedIndex].value);
    if (0== myselect1.options[myselect1.selectedIndex].value) {
      succeedingRate1.innerHTML = '&nbsp; Every: <input type="text" id="EveryNthHour" name="EveryNthHour" class="input-style" value="0" />00H <input type="text" id="NthHourRate" name="NthHourRate" class="input-style" value="+200" />';  
    } else if (1== myselect1.options[myselect1.selectedIndex].value) {
      succeedingRate1.innerHTML = '&nbsp; Succeeding Rate:<input type="text" name="succeedingRate1" class="input-style" value="+10" />';  
    } else {
      succeedingRate1.innerHTML = ''; 
    }
  }
  function jsFunction2(){
  var myselect2 = document.getElementById("rateType2");
  
  var succeedingRate2 = document.getElementById("succRate2");
  //alert(myselect.options[myselect.selectedIndex].value);
    if (0== myselect2.options[myselect2.selectedIndex].value) {
      succeedingRate2.innerHTML = '&nbsp; Every: <input type="text" id="EveryNthHour" name="EveryNthHour" class="input-style" value="0" />00H <input type="text" id="NthHourRate" name="NthHourRate" class="input-style" value="+200" />';  
    } else if (1== myselect2.options[myselect2.selectedIndex].value) {
      succeedingRate2.innerHTML = '&nbsp; Succeeding Rate:<input type="text" name="succeedingRate2" class="input-style" value="+0" />';  
    }
    else {
      succeedingRate2.innerHTML = ''; 
    }
  }
  function jsFunction3(){
  var myselect3 = document.getElementById("rateType3");

  var succeedingRate3 = document.getElementById("succRate3");
  //alert(myselect.options[myselect.selectedIndex].value);
    if (0== myselect3.options[myselect3.selectedIndex].value) {
      succeedingRate3.innerHTML = '&nbsp; Every: <input type="text" id="EveryNthHour" name="EveryNthHour" class="input-style" value="0" />00H <input type="text" id="NthHourRate" name="NthHourRate" class="input-style" value="+200" />';  
    } else if (1== myselect3.options[myselect3.selectedIndex].value) {
      succeedingRate3.innerHTML = '&nbsp; Succeeding Rate:<input type="text" name="succeedingRate3" class="input-style" value="+0" />';  
    }
    else {
      succeedingRate3.innerHTML = ''; 
    }
  
  }
  function jsFunction4(){
  var myselect4 = document.getElementById("rateType4");

  var succeedingRate4 = document.getElementById("succRate4");
  //alert(myselect.options[myselect.selectedIndex].value);
    if (0== myselect4.options[myselect4.selectedIndex].value) {
      succeedingRate4.innerHTML = '&nbsp; Every: <input type="text" id="EveryNthHour" name="EveryNthHour" class="input-style" value="0" />00H <input type="text" id="NthHourRate" name="NthHourRate" class="input-style" value="+200" />';  
    } else if (1== myselect4.options[myselect4.selectedIndex].value) {
      succeedingRate4.innerHTML = '&nbsp; Succeeding Rate:<input type="text" name="succeedingRate4" class="input-style" value="+0" />';  
    }
    else {
      succeedingRate4.innerHTML = ''; 
    }

  }
  function jsFunction5(){
  var myselect5 = document.getElementById("rateType5");

  var succeedingRate5 = document.getElementById("succRate5");
  //alert(myselect.options[myselect.selectedIndex].value);
    if (0== myselect5.options[myselect5.selectedIndex].value) {
      succeedingRate5.innerHTML = '&nbsp; Every: <input type="text" id="EveryNthHour" name="EveryNthHour" class="input-style" value="0" />00H <input type="text" id="NthHourRate" name="NthHourRate" class="input-style" value="+200" />';  
    } else if (1== myselect5.options[myselect5.selectedIndex].value) {
      succeedingRate5.innerHTML = '&nbsp; Succeeding Rate:<input type="text" name="succeedingRate5" class="input-style" value="+0" />';  
    }
    else {
      succeedingRate5.innerHTML = ''; 
    }
  
  }
  function jsFunction6(){
  var myselect6 = document.getElementById("rateType6");

  var succeedingRate6 = document.getElementById("succRate6");
  //alert(myselect.options[myselect.selectedIndex].value);
    if (0== myselect6.options[myselect6.selectedIndex].value) {
      succeedingRate6.innerHTML = '&nbsp; Every: <input type="text" id="EveryNthHour" name="EveryNthHour" class="input-style" value="0" />00H <input type="text" id="NthHourRate" name="NthHourRate" class="input-style" value="+200" />';  
    } else if (1== myselect6.options[myselect6.selectedIndex].value) {
      succeedingRate6.innerHTML = '&nbsp; Succeeding Rate:<input type="text" name="succeedingRate6" class="input-style" value="+0" />';  
    }
    else {
      succeedingRate6.innerHTML = ''; 
    }
  }
</script>
 <header class="main-header">

        <!-- Logo -->
        <a href="index.php" class="logo">
          <!-- mini logo for sidebar mini 50x50 pixels -->
          
          <!-- logo for regular state and mobile devices -->
          <span class="logo-lg" style="padding-top:13px;"><img src="dist/img/logo2.png" alt="Theoretics" class="img-responsive"></span>
        </a>

        <!-- Header Navbar -->
        <nav class="navbar navbar-static-top" role="navigation">
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
          </a>
          <!-- Navbar Right Menu -->
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">

              <!-- User Account Menu -->
              <li>
               <!--
                <form class="navbar-form navbar-left" role="search">
                  <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search" style="background:#333;">
                  </div>
                </form>
                -->
              </li>
              <li>
              <a href=""><span class="glyphicon glyphicon-globe"></span></a>
              </li>
              <li class="dropdown user user-menu">
                 
                <!-- Menu Toggle Button -->
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <!-- The user image in the navbar-->
                  <img src="dist/img/avatar5.png" class="user-image" alt="User Image">
                  <!-- hidden-xs hides the username on small devices so only the image appears. -->
                  <span class="hidden-xs">Hi User</span>
                </a>
                <ul class="dropdown-menu">
                  <!-- The user image in the menu -->
                  <li class="user-header">
                   
                    <img src="dist/img/avatar5.png" class="profile-user-img img-circle" alt="User Image">
                    <p>Juan Dela Cruz    
                    </p>

                  </li>
                  <li class="user-footer">
                    <div class="pull-left">
                      <a href="#" class="btn btn-default btn-flat">Profile</a>
                    </div>

                    <div class="pull-right">
                      <a href="#" class="btn btn-default btn-flat">Sign out</a>
                    </div>
                  </li>
                </ul>
              </li>
            </ul>
          </div>
        </nav>
      </header>
      <!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">

        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar Menu -->
          <ul class="sidebar-menu" id="nav">
            <li class="header">Navigation</li>
 
            <li><a href="index.php"><i class="fa fa-dashboard"></i> <span>Home</span></a></li>

            <li><a href="reports.php"><i class="fa fa-calendar"></i> <span>Reports</span></a></li>
            <li><a href="#"><i class="fa fa-folder"></i> <span>Dashboard</span></a></li>
            
            <li class="treeview">
              <a href="#"><i class="fa fa-cog"></i> <span>User Manager</span> <i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
                <li><a href="#"><i class="fa fa-user"></i> <span>Users</span></a></li>
                <li><a href="#"><i class="fa fa-history"></i> <span>Log History</span></a></li>              
              </ul>
            </li> 
            

             <li><a href="#"><i class="fa fa-cogs"></i> <span>System Settings</span></a></li>

          </ul><!-- /.sidebar-menu -->
        </section>
        <!-- /.sidebar -->
      </aside>
<!-- /navigation -->
    <div class="content-wrapper">
        

 <section class="content-header">
          <h1>Dashboard</h1>
 </section>



        <!-- Main content -->
<section class="content" id="content">
  <div class="panel-group" id="accordion">
      <div class="panel panel-default">
        <div class="panel-heading" style="background:rgba(41,58,74,.95);color:white;">
          

          <h4 class="panel-title">
            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
            <p id="pageTitle" name="pageTitle"> RATE PARAMETERS </p>
            </a>
          </h4>

        </div>
<?php 

$db_server2 = "localhost"; // server 127.0.0.1
$db_user2 = "base"; // databe user name
$db_pass2 = "theoreticsinc"; //password
$db_name2 = "ratesparam"; //database name 

$dbcon2 = new mysqli($db_server2,$db_user2,$db_pass2,$db_name2);
if ($dbcon2->connect_error) 
{
    die("Connection failed: " . $dbcon2->connect_error);
}

    $sql = "SELECT * FROM types WHERE ACTIVE = '1'";

    //debug_to_console($sql);

    $result = $dbcon2->query($sql);
    if ($result) {
    $select= '<form id="selectType" name="selectType" action="" method="POST" style="padding: 15px;">
    Select Rate Type : 
    <select id="tableName" name="tableName" style="color: black; padding: 5px">';
        $active = "";
        while($row = $result->fetch_array()) {
            //echo $row["ptypename"];

        if(isset($_POST['tableName'])) {
            //$select.='<option value="'.$row['typename'].'" '.$row['typename'] == $_POST['tableName'] ? 'selected="selected"' : '>'.$row['typename'].'</option>';
          $select.='<option value="'.$row['typename'].'"';
          $select.= $row['typename'] == $_POST['tableName'] ? 'selected="selected">' : '>';
          $select.= $row['typedesc'];
        } else {
          $select.='<option value="'.$row['typename'].'">'.$row['typedesc'].'</option>';
        }
      }
      $select.='</select>&nbsp;&nbsp;';
      //$select.='<input type="checkbox" placeholder="" name="ACTIVE" />'; 
      
      
    }
    echo "" . $select;
    echo '</form>';
    //echo '<input type="checkbox" placeholder="" name="ACTIVE" checked/>';
    //echo $row["ACTIVE"]==1 ? "checked" : "unchecked" .'/>';
?>

            
        <div id="collapseOne" class="panel-collapse collapse in">
      <div class="panel-body">

<?php 

    //getAllPtypes();

$db_server = "localhost"; // server 127.0.0.1
$db_user = "base"; // databe user name
$db_pass = "theoreticsinc"; //password
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

    $sql = "SELECT * FROM main WHERE ACTIVE = '1'";

    //debug_to_console($sql);

    $result = $dbcon2->query($sql);
        if ($result) {
          while($row = $result->fetch_array()) {
            //echo $row["ptypename"];
            if ($row["parkertype"] != "V" && $row["parkertype"] != "G" && $row["parkertype"] != "L") {
?>            
          <!-- start components-->

          <fieldset>
            <form action="" method="POST">
            <legend><?php echo $row["ptypename"];?></legend>
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
          </tr>
          <?php 
          if(isset($_POST['tableName'])) {
            $tableName = $_POST['tableName'];
          } else {
            $tableName = "flatrate";
          }
            $query = "SELECT * FROM " . $tableName . " WHERE trtype = '".$row["parkertype"]."'";
            $p = single_inner_join($query);//query for getting the results
          ?>

        <tr><input type="hidden" value="<?php echo $row["ptypename"];?>" name="name" />
          <td><input type="text" placeholder="15" name="GracePeriod" class="input-style" value=<?php echo $p['GracePeriod'];?> /> mins</td>
          <td> <input type="text" placeholder="" name="HR0" value=<?php echo $p['Hr0'];?> /></td>
          <td> <input type="text" placeholder="" name="HR0+" value=<?php echo $p['Hr0plus'];?> /></td>
          <td> <input type="text" placeholder="" name="HR1" value=<?php echo $p['Hr1'];?> /></td>
          <td> <input type="text" placeholder="" name="HR1+" value=<?php echo $p['Hr1plus'];?> /></td>
          <td> <input type="text" placeholder="" name="HR2" value=<?php echo $p['Hr2'];?> /></td>
          <td> <input type="text" placeholder="" name="HR2+" value=<?php echo $p['Hr2plus'];?> /></td>
          <td> <input type="text" placeholder="" name="HR3" value=<?php echo $p['Hr3'];?> /></td>
          <td> <input type="text" placeholder="" name="HR3+" value=<?php echo $p['Hr3plus'];?> /></td>
          <td> <input type="text" placeholder="" name="HR4" value=<?php echo $p['Hr4'];?> /></td>
          <td> <input type="text" placeholder="" name="HR4+" value=<?php echo $p['Hr4plus'];?> /></td>
          <td> <input type="text" placeholder="" name="HR5" value=<?php echo $p['Hr5'];?> /></td>
          <td> <input type="text" placeholder="" name="HR5+" value=<?php echo $p['Hr5plus'];?> /></td>
          <td> <input type="text" placeholder="" name="HR6" value=<?php echo $p['Hr6'];?> /></td>
          <td> <input type="text" placeholder="" name="HR6+" value=<?php echo $p['Hr6plus'];?> /></td>
          <td> <input type="text" placeholder="" name="HR7" value=<?php echo $p['Hr7'];?> /></td>
          <td> <input type="text" placeholder="" name="HR7+" value=<?php echo $p['Hr7plus'];?> /></td>
          <td> <input type="text" placeholder="" name="HR8" value=<?php echo $p['Hr8'];?> /></td>
          <td> <input type="text" placeholder="" name="HR8+" value=<?php echo $p['Hr8plus'];?> /></td>
          <td> <input type="text" placeholder="" name="HR9" value=<?php echo $p['Hr9'];?> /></td>
          <td> <input type="text" placeholder="" name="HR9+" value=<?php echo $p['Hr9plus'];?> /></td>
          <td> <input type="text" placeholder="" name="HR10" value=<?php echo $p['Hr10'];?> /></td>
          <td> <input type="text" placeholder="" name="HR10+" value=<?php echo $p['Hr10plus'];?> /></td>
          <td> <input type="text" placeholder="" name="HR11" value=<?php echo $p['Hr11'];?> /></td>
          <td> <input type="text" placeholder="" name="HR11+" value=<?php echo $p['Hr11plus'];?> /></td>
          <td> <input type="text" placeholder="" name="HR12" value=<?php echo $p['Hr12'];?> /></td>
          <td> <input type="text" placeholder="" name="HR12+" value=<?php echo $p['Hr12plus'];?> /></td>
        </tr>

        <tr>
          <td>1st Waived</td>
          <td> <input type="checkbox" placeholder="" name="Hr0Waived1st" <?php echo ($p['Hr0Waived1st']==1 ? 'checked' : '');?>/></td>
          <td> <input type="checkbox" placeholder="" name="Hr0plusWaived1st" <?php echo ($p['Hr0plusWaived1st']==1 ? 'checked' : '');?>/></td>
          <td> <input type="checkbox" placeholder="" name="Hr1Waived1st" <?php echo ($p['Hr1Waived1st']==1 ? 'checked' : '');?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr1plusWaived1st" <?php echo ($p['Hr1plusWaived1st']==1 ? 'checked' : '');?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr2Waived1st" <?php echo ($p['Hr2Waived1st']==1 ? 'checked' : '');?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr2plusWaived1st" <?php echo ($p['Hr2plusWaived1st']==1 ? 'checked' : '');?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr3Waived1st" <?php echo ($p['Hr3Waived1st']==1 ? 'checked' : '');?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr3plusWaived1st" <?php echo ($p['Hr3plusWaived1st']==1 ? 'checked' : '');?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr4Waived1st" <?php echo ($p['Hr4Waived1st']==1 ? 'checked' : '');?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr4plusWaived1st" <?php echo ($p['Hr4plusWaived1st']==1 ? 'checked' : '');?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr5Waived1st" <?php echo ($p['Hr5Waived1st']==1 ? 'checked' : '');?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr5plusWaived1st" <?php echo ($p['Hr5plusWaived1st']==1 ? 'checked' : '');?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr6Waived1st" <?php echo ($p['Hr6Waived1st']==1 ? 'checked' : '');?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr6plusWaived1st" <?php echo ($p['Hr6plusWaived1st']==1 ? 'checked' : '');?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr7Waived1st" <?php echo ($p['Hr7Waived1st']==1 ? 'checked' : '');?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr7plusWaived1st" <?php echo ($p['Hr7plusWaived1st']==1 ? 'checked' : '');?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr8Waived1st" <?php echo ($p['Hr8Waived1st']==1 ? 'checked' : '');?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr8plusWaived1st" <?php echo ($p['Hr8plusWaived1st']==1 ? 'checked' : '');?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr9Waived1st" <?php echo ($p['Hr9Waived1st']==1 ? 'checked' : '');?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr9plusWaived1st" <?php echo ($p['Hr9plusWaived1st']==1 ? 'checked' : '');?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr10Waived1st" <?php echo ($p['Hr10Waived1st']==1 ? 'checked' : '');?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr10plusWaived1st" <?php echo ($p['Hr10plusWaived1st']==1 ? 'checked' : '');?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr11Waived1st" <?php echo ($p['Hr11Waived1st']==1 ? 'checked' : '');?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr11plusWaived1st" <?php echo ($p['Hr11plusWaived1st']==1 ? 'checked' : '');?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr12Waived1st" <?php echo ($p['Hr12Waived1st']==1 ? 'checked' : '');?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr12plusWaived1st" <?php echo ($p['Hr12plusWaived1st']==1 ? 'checked' : '');?> /></td>

        <tr>
          <td>Exit G.P.</td>
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
          <td></td>
          <td></td>
          <td>O.T. Cutoff</td>
          </tr>
      <tr>
          <td><input type="text" placeholder="15" name="ExitGracePeriod" class="input-style" value=<?php echo $p['ExitGracePeriod'];?> /> mins</td>
          <td> <input type="text" placeholder="" name="HR13" value=<?php echo $p['Hr13'];?> /></td>
          <td> <input type="text" placeholder="" name="HR13+" value=<?php echo $p['Hr13plus'];?> /></td>
          <td> <input type="text" placeholder="" name="HR14" value=<?php echo $p['Hr14'];?> /></td>
          <td> <input type="text" placeholder="" name="HR14+" value=<?php echo $p['Hr14plus'];?> /></td>
          <td> <input type="text" placeholder="" name="HR15" value=<?php echo $p['Hr15'];?> /></td>
          <td> <input type="text" placeholder="" name="HR15+" value=<?php echo $p['Hr15plus'];?> /></td>
          <td> <input type="text" placeholder="" name="HR16" value=<?php echo $p['Hr16'];?> /></td>
          <td> <input type="text" placeholder="" name="HR16+" value=<?php echo $p['Hr16plus'];?> /></td>
          <td> <input type="text" placeholder="" name="HR17" value=<?php echo $p['Hr17'];?> /></td>
          <td> <input type="text" placeholder="" name="HR17+" value=<?php echo $p['Hr17plus'];?> /></td>
          <td> <input type="text" placeholder="" name="HR18" value=<?php echo $p['Hr18'];?> /></td>
          <td> <input type="text" placeholder="" name="HR18+" value=<?php echo $p['Hr18plus'];?> /></td>
          <td> <input type="text" placeholder="" name="HR19" value=<?php echo $p['Hr19'];?> /></td>
          <td> <input type="text" placeholder="" name="HR19+" value=<?php echo $p['Hr19plus'];?> /></td>
          <td> <input type="text" placeholder="" name="HR20" value=<?php echo $p['Hr20'];?> /></td>
          <td> <input type="text" placeholder="" name="HR20+" value=<?php echo $p['Hr20plus'];?> /></td>
          <td> <input type="text" placeholder="" name="HR21" value=<?php echo $p['Hr21'];?> /></td>
          <td> <input type="text" placeholder="" name="HR21+" value=<?php echo $p['Hr21plus'];?> /></td>
          <td> <input type="text" placeholder="" name="HR22" value=<?php echo $p['Hr22'];?> /></td>
          <td> <input type="text" placeholder="" name="HR22+" value=<?php echo $p['Hr22plus'];?> /></td>
          <td> <input type="text" placeholder="" name="HR23" value=<?php echo $p['Hr23'];?> /></td>
          <td> <input type="text" placeholder="" name="HR23+" value=<?php echo $p['Hr23plus'];?> /></td>
          <td> <input type="text" placeholder="" name="HR24" value=<?php echo $p['Hr24'];?> /></td>
          <td></td>
          <td></td>
          <td><input type="text" placeholder="2" name="OTCutoff" value=<?php echo $p['OTCutoff'];?> />00H</td>
        </tr>

         <tr> 
          <td></td>
          <td> <input type="checkbox" placeholder="" name="Hr13Waived1st" <?php echo ($p['Hr13Waived1st']==1 ? 'checked' : '');?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr13plusWaived1st" <?php echo ($p['Hr13plusWaived1st']==1 ? 'checked' : '');?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr14Waived1st" <?php echo ($p['Hr14Waived1st']==1 ? 'checked' : '');?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr14plusWaived1st" <?php echo ($p['Hr14plusWaived1st']==1 ? 'checked' : '');?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr15Waived1st" <?php echo ($p['Hr15Waived1st']==1 ? 'checked' : '');?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr15plusWaived1st" <?php echo ($p['Hr15plusWaived1st']==1 ? 'checked' : '');?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr16Waived1st" <?php echo ($p['Hr16Waived1st']==1 ? 'checked' : '');?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr16plusWaived1st" <?php echo ($p['Hr16plusWaived1st']==1 ? 'checked' : '');?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr17Waived1st" <?php echo ($p['Hr17Waived1st']==1 ? 'checked' : '');?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr17plusWaived1st" <?php echo ($p['Hr17plusWaived1st']==1 ? 'checked' : '');?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr18Waived1st" <?php echo ($p['Hr18Waived1st']==1 ? 'checked' : '');?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr18plusWaived1st" <?php echo ($p['Hr18plusWaived1st']==1 ? 'checked' : '');?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr19Waived1st" <?php echo ($p['Hr19Waived1st']==1 ? 'checked' : '');?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr19plusWaived1st" <?php echo ($p['Hr19plusWaived1st']==1 ? 'checked' : '');?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr20Waived1st" <?php echo ($p['Hr20Waived1st']==1 ? 'checked' : '');?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr20plusWaived1st" <?php echo ($p['Hr20plusWaived1st']==1 ? 'checked' : '');?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr21Waived1st" <?php echo ($p['Hr21Waived1st']==1 ? 'checked' : '');?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr21plusWaived1st" <?php echo ($p['Hr21plusWaived1st']==1 ? 'checked' : '');?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr22Waived1st" <?php echo ($p['Hr22Waived1st']==1 ? 'checked' : '');?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr22plusWaived1st" <?php echo ($p['Hr22plusWaived1st']==1 ? 'checked' : '');?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr23Waived1st" <?php echo ($p['Hr23Waived1st']==1 ? 'checked' : '');?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr23plusWaived1st" <?php echo ($p['Hr23plusWaived1st']==1 ? 'checked' : '');?> /></td>
          <td> <input type="checkbox" placeholder="" name="Hr24Waived1st" <?php echo ($p['Hr24Waived1st']==1 ? 'checked' : '');?> /></td>
          <td></td>
          <td></td>
          <td> <input type="checkbox" placeholder="" name="OTCutoff1stWaived" <?php echo ($p['OTCutoff1stWaived']==1 ? 'checked' : '');?> /></td>
        </tr>
        

        </table>
<button type="submit" class="btn btn-default" name="btn-update" style="float: right;" id="btn-update">Update</button>
<span id="succRate1" name="succRate1" style="float: right; padding-right: 10px;"><?php echo ($p['TreatNextDayAsNewDay']==0 ? '&nbsp; Every: <input type="text" id="EveryNthHour" name="EveryNthHour" class="input-style" value="'.$p['EveryNthHour'].'" />00H <input type="text" name="NthHourRate" class="input-style" value="'.$p['NthHourRate'].'" /> ' : '');?><?php echo ($p['TreatNextDayAsNewDay']==1 ? '&nbsp; Succeeding Rate:<input type="text" name="succeedingRate1" class="input-style" value="'.$p['SucceedingRate'].'" />' : '');?></span>&nbsp;
<select id="rateType1" name="rateType1" style="float: right; padding-right: 10px;" onchange="jsFunction1()">
  <option value="0" <?php echo ($p['TreatNextDayAsNewDay']==0 ? 'selected="selected"' : '');?> >Every nth Hour after Midnight</option>
  <option value="1" <?php echo ($p['TreatNextDayAsNewDay']==1 ? 'selected="selected"' : '');?> >Continuous Succeeding Rate</option>
  <option value="2" <?php echo ($p['TreatNextDayAsNewDay']==2 ? 'selected="selected"' : '');?> >New Day</option>  
</select>
<span style="float: right; padding-right: 10px;">Treat Next Day as </span>&nbsp;
<td>O.T. Price:  <input style="width: 50px;text-align:center" type="text" placeholder="+200" name="OTPrice" value=<?php echo $p['OTPrice'];?> /></td>
<td> Charge if FractionThereOf <input type="checkbox" placeholder="" name="FractionThereOf" <?php echo ($p['FractionThereOf']==1 ? 'checked' : '');?>/></td>
<td>Lost Fees:  <input style="width: 50px;text-align:center" type="text" placeholder="+200" name="LostPrice" value=<?php echo $p['LostPrice'];?> /></td>
      
<?php              

echo "<br><br>
            </form>
        </fieldset>

<!-- end components -->";
            }
          }
        }

?>


      </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading" style="background:rgba(41,58,74,.95);color:white;">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
           ACCOUNTING REPORTS
        </a>
      </h4>
    </div>

    <div id="collapseTwo" class="panel-collapse collapse in">
      <div class="panel-body">
        <!-- start components-->
              <div class="row">
                <div class="col-md-3">
                  <img src="dist/img/sales.png" align="left" width="50" height="50"><br><a href="" 
                  style="font-size:14px;">Sales Report</a>
                </div>
                <div class="col-md-3">
                   <img src="dist/img/vehicle.png" align="left" width="50" height="50"><br><a href="" 
                  style="font-size:14px;">Vehicle Count </a>
                  </div>

                   <div class="col-md-3">
                  <img src="dist/img/collect.png" align="left" width="50" height="50"><br><a href="" 
                  style="font-size:14px;">Collection Report</a>
                </div>
                <div class="col-md-3">
                  <img src="dist/img/collectors2.png" align="left" width="50" height="50"><br><a href="" 
                  style="font-size:14px;">Collector's Report</a>
                </div>
              </div>
              <!-- end components -->

               <!-- start components-->
              <div class="row">
                <div class="col-md-3">
                  <img src="dist/img/xread.png" align="left" width="50" height="50"><br><a href="" 
                  style="font-size:14px;">X-Reading</a>
                </div>
                <div class="col-md-3">
                   <img src="dist/img/zread.png" align="left" width="50" height="50"><br><a href="" 
                  style="font-size:14px;">Z-Reading</a>
                </div>
                <div class="col-md-3">
                    <img src="dist/img/gg33.JPG" align="left" width="50" height="50"><br><a href="" 
                  style="font-size:14px;">Hours Stay Report</a>
                </div>
                <div class="col-md-3">
                    <img src="dist/img/transaction.png" align="left" width="50" height="50"><br><a href="" 
                  style="font-size:14px;">Transaction Summary</a>
                </div>
              </div>
              <!-- end components -->
            
                  <!-- start components-->
              <div class="row">
                <div class="col-md-3">
                  <img src="dist/img/cashiers.png" align="left" width="50" height="50"><br><a href="" 
                  style="font-size:14px;">Cashier's Collection</a>
                </div>
                <div class="col-md-3">
                   <img src="dist/img/shortage.png" align="left" width="50" height="50"><br><a href="" 
                  style="font-size:14px;">Daily Cashier's Shortages</a>
                  </div>

                   <div class="col-md-3">
                  <img src="dist/img/carparktrans.png" align="left" width="50" height="50"><br><a href="" 
                  style="font-size:14px;">Daily Carpark Transaction</a>
                </div>
                <div class="col-md-3">
                 
                </div>
              </div>
               <!-- end components -->
            
            
        </div>
    </div>
  </div>


  <div class="panel panel-default">
    <div class="panel-heading" style="background:rgba(41,58,74,.95);color:white;">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
          OPERATIONS REPORTS
        </a>
      </h4>
    </div>
    <div id="collapseThree" class="panel-collapse collapse  in">
      <div class="panel-body">
         <!-- start components-->
              <div class="row">
                <div class="col-md-3">
                   <img src="dist/img/peak.png" align="left" width="50" height="50"><br><a href="" 
                  style="font-size:14px;">Peak-load Report</a>
                </div>
                <div class="col-md-3">
                  <img src="dist/img/cash.png" align="left" width="50" height="50"><br><a href="" 
                  style="font-size:14px;">Cash Accountability</a>
                </div>
                <div class="col-md-3">
                  <img src="dist/img/ticket.png" align="left" width="50" height="50"><br><a href="" 
                  style="font-size:14px;">Ticket Tally (per location)</a>
                </div>
                <div class="col-md-3">
                   <img src="dist/img/noexit.png" align="left" width="50" height="50"><br><a href="" 
                  style="font-size:14px;">Parker's with NO EXIT</a>
                </div>
              </div>
              <!-- end components -->

               <!-- start components-->
              <div class="row">
                <div class="col-md-3">
                   <img src="dist/img/parkingstay.png" align="left" width="50" height="50"><br><a href="" 
                  style="font-size:14px;">Duration of Parkers' Stay</a>
                </div>
                <div class="col-md-3">
                  <img src="dist/img/bir.png" align="left" width="50" height="50"><br><a href="" 
                  style="font-size:14px;">BIR Report</a>
                </div>
                <div class="col-md-3">
                  <img src="dist/img/freeparking.png" align="left" width="50" height="50"><br><a href="" 
                  style="font-size:14px;">Free Parking Report</a>
                </div>
                <div class="col-md-3">
                   <img src="dist/img/stayin.png" align="left" width="50" height="50"><br><a href="" 
                  style="font-size:14px;">Stay In Report</a>
                </div>
              </div>
              <!-- end components -->

                <!-- start components-->
              <div class="row">
                <div class="col-md-3">
                   <img src="dist/img/cancel.png" align="left" width="50" height="50"><br><a href="" 
                  style="font-size:14px;">Cancelled Transaction</a>
                </div>
                <div class="col-md-3">
                  <img src="dist/img/vip.png" align="left" width="50" height="50"><br><a href="" 
                  style="font-size:14px;">RFID / VIP Report</a>
                </div>
                <div class="col-md-3">
                  <img src="dist/img/lostcard.png" align="left" width="50" height="50"><br><a href="" 
                  style="font-size:14px;">Lost Card</a>
                </div>
                <div class="col-md-3">
                   <img src="dist/img/overnight.png" align="left" width="50" height="50"><br><a href="" 
                  style="font-size:14px;">Overnight Transaction</a>
                </div>
              </div>
              <!-- end components -->
               <!-- start components-->
              <div class="row">
                <div class="col-md-3">
                   <img src="dist/img/carinjury.png" align="left" width="50" height="50"><br><a href="" 
                  style="font-size:14px;">Car Injury Report</a>
                </div>
                <div class="col-md-3">
                
                </div>
                <div class="col-md-3">
                 
                </div>
                <div class="col-md-3">
                   
                </div>
              </div>
              <!-- end components -->
             
      </div>
    </div>
  </div>

</div>
        </section><!-- /.content -->
    </div><!-- /.content-wrapper -->
<!-- Main Footer -->
   <footer class="main-footer">
        <!-- To the right -->
        <div class="pull-right hidden-xs">
          Theoretics Inc.
        </div>
        <!-- Default to the left -->
        <strong>Copyright &copy; 2017 <a href="#">Theoretics Inc</a>.</strong> All rights reserved.
      </footer>
</div><!--/page-wrapper(content) -->

</body>
    <!-- jQuery -->
    <script src="bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- Metis Menu Plugin JavaScript -->
    <script src="bower_components/metisMenu/dist/metisMenu.js"></script>
    <!-- DataTables JavaScript -->
    <script src="bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
    <script src="bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>
    <!-- Custom Theme JavaScript -->
    <!-- <script src="../dist/js/sb-admin-2.js"></script> -->

    

    <!-- AdminLTE App -->
    <script src="dist/js/app.js"></script>
    <!--idle scripts-->
    <script src="dist/js/jquery.idletimer.js" type="text/javascript"></script>
    <script src="dist/js/jquery.idletimeout.js" type="text/javascript"></script>

