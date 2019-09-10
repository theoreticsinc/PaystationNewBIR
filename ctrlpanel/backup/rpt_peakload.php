<?php 
//Landscape Report
include'config/db.php';
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
    <link rel="stylesheet" href="dist/css/skins/bluetable.css">
    <link rel="stylesheet" href="dist/css/skins/skin-green.css">
    <link rel="stylesheet" href="dist/css/ionicons.min.css">
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
    <script src="jquery-ui/jquery-3.3.1.min.js"></script>
</head>

<body  class="hold-transition skin-green sidebar-mini">
  <div class="wrapper">
  
<style type="text/css">
#idletimeout { background:#CC5100; border:3px solid #FF6500; color:#fff; font-family:arial, sans-serif; text-align:center; font-size:12px; padding:10px; position:relative; top:0px; left:0; right:0; z-index:100000; display:none; }
#idletimeout a { color:#fff; font-weight:bold }
#idletimeout span { font-weight:bold }
.txtfield
{
  width:50%;
  height:34px;
}
.txt{
  width:25%;
  height:34px;
}
@media print {
  #printPageButton {
    display: none;
  }
}
#smallTable td{
   padding: 1px;
   border: 1px solid black;
}
</style>

<div id="idletimeout">
  You will be logged out in <span><!-- countdown place holder --></span>&nbsp;seconds due to inactivity. 
  <a id="idletimeout-resume" href="#">(Click here to continue using this page)</a>.
</div>

 <header class="main-header">

        <!-- Logo -->
        <a href="#" class="logo">
          <!-- mini logo for sidebar mini 50x50 pixels -->
          
          <!-- logo for regular state and mobile devices -->
          <span class="logo-lg" style="padding-top:13px;"><img src="dist/img/logo.png" alt="theoretics" class="img-responsive"></span>
        </a>
        <nav class="navbar navbar-static-top" role="navigation">
      <?php $navbar = include 'navbar.php';echo $navbar;?>
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
        


        <!-- Main content -->
        <section class="content">
          <div class="container" style="background:white; padding:10px;margin:10px;width:98%;">
          <h1><button id="sbutton" name="sbutton"><i class="fa fa-calendar"> </i></button> Peakload Report</h1>
          <div id="parameters" name="parameters">
          <div id = "printPageButton">
          <p>In this section you can now search reports from the system.</p>
          </div>
          
          <p></p>
          <h3>Date Filter</h3>
          <form method="get">
          <input type="hidden" name="reports" class="btn btn-primary" value="1">
          From: <input type="date" name="from" class="txtfield"> <p></p>
          Until: <input type="date" name="until" class="txtfield">
          <p></p>
          <button class="btn btn-danger" id="searchbtn1" name="searchbtn1" value="Generate" onclick="submit_form()"><i class="fa fa-check"></i> Generate</button>
          </form>
          </div>
          
          <!-- End Search-->

          
          <?php 
          if(isset($_GET['searchbtn1'])){
            echo ('<script>
              $( "#sbutton" ).on( "click", function( event ) {
                $("#parameters").toggle(1500);
                $("#printPageButton").toggle(800);
              });
              $("#printPageButton").toggle(800);
              $("#parameters").toggle(1500);</script>');
            $from = filter($_GET['from']);//POST from date
            $until = filter($_GET['until']);//POST from Date
            $query19 = "SELECT COUNT(DateTimeOUT) as count, ParkerType, HOUR(DateTimeOUT) as hour, DateTimeOUT FROM carpark.exit_trans WHERE DATE(DateTimeOUT) BETWEEN '$from' AND '$until' GROUP BY DateTimeOUT, ParkerType ORDER BY HOUR(DateTimeOUT), DateTimeOUT" ;
            $ext19 = getdata_inner_join($query19); //query for getting the results

              //$query = "SELECT ParkerType, SUM(Amount) As Revenue, COUNT(ParkerType) As Volume FROM carpark.exit_trans WHERE DATE(DateTimeIN) BETWEEN '$from' AND '$until' GROUP BY ParkerType";
            //Debugging Only
            //echo $query19;

            //echo $types2;
            //$query1 = "SELECT * FROM cash INNER JOIN exit_tbl on cash.cashierName = exit_tbl.CashierName WHERE DATE(loginDate) BETWEEN '$from' AND '$until'";
            //$list = getdata_inner_join($query1);//query for getting the results
          ?>
          
          <!-- Search for list of employee-->
          <b>Reporting Period</b>
          <table class="table table-border">
            <tr>
              <td>Start Date:</td>
              <td><?php echo $from;?></td>
              <td>Date Printed:</td>
              <td><?php echo date("Y-m-d");?></td>
            </tr>
            <tr>
              <td>End Date:</td>
              <td><?php echo $until;?></td>
            </tr>
          </table>
          <b>Peakload (per hour)</b>
          <table class="blueTable">
          <tr>
            <th> </th>
              <th>5AM</th>
              <th>6AM</th>
              <th>7AM</th>
              <th>8AM</th>
              <th>9AM</th>
              <th>10AM</th>
              <th>11AM</th>
              <th>12AM</th>
              <th>1PM</th>
              <th>2PM</th>
              <th>3PM</th>
              <th>4PM</th>
              <th>5PM</th>
              <th>6PM</th>
              <th>7PM</th>
              <th>8PM</th>
              <th>9PM</th>
              <th>10PM</th>
              <th>11PM</th>
              <th>12AM</th>
              <th>1AM</th>
              <th>2AM</th>
              <th>3AM</th>
              <th>4AM</th>              
          </tr>
          
              <?php $ret = array(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
                    
                    $vip = array(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

                    $mtr = array(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
                    
                    $grc = array(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
                    
                    $snr = array(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
                    
                    $qcs = array(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
                    
                    $del = array(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

                    $tot = array(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

                    
              if(!empty($ext19)):?>
              <?php foreach ($ext19 as $key => $value):?>
                <?php 
                if ($value->ParkerType == 'R'):
                  $val = $value->count;
                  if ($value->hour == '5') : $ret[0] = isset($ret[0]) ? $ret[0] + $val : $val;endif;
                  if ($value->hour == '6') : $ret[1] = isset($ret[1]) ? $ret[1] + $val : $val;endif;
                  if ($value->hour == '7') : $ret[2] = isset($ret[2]) ? $ret[2] + $val : $val;endif;
                  if ($value->hour == '8') : $ret[3] = isset($ret[3]) ? $ret[3] + $val : $val;endif;
                  if ($value->hour == '9') : $ret[4] = isset($ret[4]) ? $ret[4] + $val : $val;endif;
                  if ($value->hour == '10') : $ret[5] = isset($ret[5]) ? $ret[5] + $val : $val;endif;
                  if ($value->hour == '11') : $ret[6] = isset($ret[6]) ? $ret[6] + $val : $val;endif;
                  if ($value->hour == '12') : $ret[7] = isset($ret[7]) ? $ret[7] + $val : $val;endif;
                  if ($value->hour == '13') : $ret[8] = isset($ret[8]) ? $ret[8] + $val : $val;endif;
                  if ($value->hour == '14') : $ret[9] = isset($ret[9]) ? $ret[9] + $val : $val;endif;
                  if ($value->hour == '15') : $ret[10] = isset($ret[10]) ? $ret[10] + $val : $val;endif;
                  if ($value->hour == '16') : $ret[11] = isset($ret[11]) ? $ret[11] + $val : $val;endif;
                  if ($value->hour == '17') : $ret[12] = isset($ret[12]) ? $ret[12] + $val : $val;endif;
                  if ($value->hour == '18') : $ret[13] = isset($ret[13]) ? $ret[13] + $val : $val;endif;
                  if ($value->hour == '19') : $ret[14] = isset($ret[14]) ? $ret[14] + $val : $val;endif;
                  if ($value->hour == '20') : $ret[15] = isset($ret[15]) ? $ret[15] + $val : $val;endif;
                  if ($value->hour == '21') : $ret[16] = isset($ret[16]) ? $ret[16] + $val : $val;endif;
                  if ($value->hour == '22') : $ret[17] = isset($ret[17]) ? $ret[17] + $val : $val;endif;
                  if ($value->hour == '23') : $ret[18] = isset($ret[18]) ? $ret[18] + $val : $val;endif;
                  if ($value->hour == '0') : $ret[19] = isset($ret[19]) ? $ret[19] + $val : $val;endif;
                  if ($value->hour == '1') : $ret[20] = isset($ret[20]) ? $ret[20] + $val : $val;endif;
                  if ($value->hour == '2') : $ret[21] = isset($ret[21]) ? $ret[21] + $val : $val;endif;
                  if ($value->hour == '3') : $ret[22] = isset($ret[22]) ? $ret[22] + $val : $val;endif;
                  if ($value->hour == '4') : $ret[23] = isset($ret[23]) ? $ret[23] + $val : $val;endif;
                 endif;
                if ($value->ParkerType == 'V'):
                  $val = $value->count;
                  if ($value->hour == '5') : $vip[0] = isset($vip[0]) ? $vip[0] + $val : $val;endif;
                  if ($value->hour == '6') : $vip[1] = isset($vip[1]) ? $vip[1] + $val : $val;endif;
                  if ($value->hour == '7') : $vip[2] = isset($vip[2]) ? $vip[2] + $val : $val;endif;
                  if ($value->hour == '8') : $vip[3] = isset($vip[3]) ? $vip[3] + $val : $val;endif;
                  if ($value->hour == '9') : $vip[4] = isset($vip[4]) ? $vip[4] + $val : $val;endif;
                  if ($value->hour == '10') : $vip[5] = isset($vip[5]) ? $vip[5] + $val : $val;endif;
                  if ($value->hour == '11') : $vip[6] = isset($vip[6]) ? $vip[6] + $val : $val;endif;
                  if ($value->hour == '12') : $vip[7] = isset($vip[7]) ? $vip[7] + $val : $val;endif;
                  if ($value->hour == '13') : $vip[8] = isset($vip[8]) ? $vip[8] + $val : $val;endif;
                  if ($value->hour == '14') : $vip[9] = isset($vip[9]) ? $vip[9] + $val : $val;endif;
                  if ($value->hour == '15') : $vip[10] = isset($vip[10]) ? $vip[10] + $val : $val;endif;
                  if ($value->hour == '16') : $vip[11] = isset($vip[11]) ? $vip[11] + $val : $val;endif;
                  if ($value->hour == '17') : $vip[12] = isset($vip[12]) ? $vip[12] + $val : $val;endif;
                  if ($value->hour == '18') : $vip[13] = isset($vip[13]) ? $vip[13] + $val : $val;endif;
                  if ($value->hour == '19') : $vip[14] = isset($vip[14]) ? $vip[14] + $val : $val;endif;
                  if ($value->hour == '20') : $vip[15] = isset($vip[15]) ? $vip[15] + $val : $val;endif;
                  if ($value->hour == '21') : $vip[16] = isset($vip[16]) ? $vip[16] + $val : $val;endif;
                  if ($value->hour == '22') : $vip[17] = isset($vip[17]) ? $vip[17] + $val : $val;endif;
                  if ($value->hour == '23') : $vip[18] = isset($vip[18]) ? $vip[18] + $val : $val;endif;
                  if ($value->hour == '0') : $vip[19] = isset($vip[19]) ? $vip[19] + $val : $val;endif;
                  if ($value->hour == '1') : $vip[20] = isset($vip[20]) ? $vip[20] + $val : $val;endif;
                  if ($value->hour == '2') : $vip[21] = isset($vip[21]) ? $vip[21] + $val : $val;endif;
                  if ($value->hour == '3') : $vip[22] = isset($vip[22]) ? $vip[22] + $val : $val;endif;
                  if ($value->hour == '4') : $vip[23] = isset($vip[23]) ? $vip[23] + $val : $val;endif;
                 endif;
                if ($value->ParkerType == 'M'):
                  $val = $value->count;
                  if ($value->hour == '5') : $mtr[0] = isset($mtr[0]) ? $mtr[0] + $val : $val;endif;
                  if ($value->hour == '6') : $mtr[1] = isset($mtr[1]) ? $mtr[1] + $val : $val;endif;
                  if ($value->hour == '7') : $mtr[2] = isset($mtr[2]) ? $mtr[2] + $val : $val;endif;
                  if ($value->hour == '8') : $mtr[3] = isset($mtr[3]) ? $mtr[3] + $val : $val;endif;
                  if ($value->hour == '9') : $mtr[4] = isset($mtr[4]) ? $mtr[4] + $val : $val;endif;
                  if ($value->hour == '10') : $mtr[5] = isset($mtr[5]) ? $mtr[5] + $val : $val;endif;
                  if ($value->hour == '11') : $mtr[6] = isset($mtr[6]) ? $mtr[6] + $val : $val;endif;
                  if ($value->hour == '12') : $mtr[7] = isset($mtr[7]) ? $mtr[7] + $val : $val;endif;
                  if ($value->hour == '13') : $mtr[8] = isset($mtr[8]) ? $mtr[8] + $val : $val;endif;
                  if ($value->hour == '14') : $mtr[9] = isset($mtr[9]) ? $mtr[9] + $val : $val;endif;
                  if ($value->hour == '15') : $mtr[10] = isset($mtr[10]) ? $mtr[10] + $val : $val;endif;
                  if ($value->hour == '16') : $mtr[11] = isset($mtr[11]) ? $mtr[11] + $val : $val;endif;
                  if ($value->hour == '17') : $mtr[12] = isset($mtr[12]) ? $mtr[12] + $val : $val;endif;
                  if ($value->hour == '18') : $mtr[13] = isset($mtr[13]) ? $mtr[13] + $val : $val;endif;
                  if ($value->hour == '19') : $mtr[14] = isset($mtr[14]) ? $mtr[14] + $val : $val;endif;
                  if ($value->hour == '20') : $mtr[15] = isset($mtr[15]) ? $mtr[15] + $val : $val;endif;
                  if ($value->hour == '21') : $mtr[16] = isset($mtr[16]) ? $mtr[16] + $val : $val;endif;
                  if ($value->hour == '22') : $mtr[17] = isset($mtr[17]) ? $mtr[17] + $val : $val;endif;
                  if ($value->hour == '23') : $mtr[18] = isset($mtr[18]) ? $mtr[18] + $val : $val;endif;
                  if ($value->hour == '0') : $mtr[19] = isset($mtr[19]) ? $mtr[19] + $val : $val;endif;
                  if ($value->hour == '1') : $mtr[20] = isset($mtr[20]) ? $mtr[20] + $val : $val;endif;
                  if ($value->hour == '2') : $mtr[21] = isset($mtr[21]) ? $mtr[21] + $val : $val;endif;
                  if ($value->hour == '3') : $mtr[22] = isset($mtr[22]) ? $mtr[22] + $val : $val;endif;
                  if ($value->hour == '4') : $mtr[23] = isset($mtr[23]) ? $mtr[23] + $val : $val;endif;
                 endif;

                if ($value->ParkerType == 'G'):
                  $val = $value->count;
                  if ($value->hour == '5') : $grc[0] = isset($grc[0]) ? $grc[0] + $val : $val;endif;
                  if ($value->hour == '6') : $grc[1] = isset($grc[1]) ? $grc[1] + $val : $val;endif;
                  if ($value->hour == '7') : $grc[2] = isset($grc[2]) ? $grc[2] + $val : $val;endif;
                  if ($value->hour == '8') : $grc[3] = isset($grc[3]) ? $grc[3] + $val : $val;endif;
                  if ($value->hour == '9') : $grc[4] = isset($grc[4]) ? $grc[4] + $val : $val;endif;
                  if ($value->hour == '10') : $grc[5] = isset($grc[5]) ? $grc[5] + $val : $val;endif;
                  if ($value->hour == '11') : $grc[6] = isset($grc[6]) ? $grc[6] + $val : $val;endif;
                  if ($value->hour == '12') : $grc[7] = isset($grc[7]) ? $grc[7] + $val : $val;endif;
                  if ($value->hour == '13') : $grc[8] = isset($grc[8]) ? $grc[8] + $val : $val;endif;
                  if ($value->hour == '14') : $grc[9] = isset($grc[9]) ? $grc[9] + $val : $val;endif;
                  if ($value->hour == '15') : $grc[10] = isset($grc[10]) ? $grc[10] + $val : $val;endif;
                  if ($value->hour == '16') : $grc[11] = isset($grc[11]) ? $grc[11] + $val : $val;endif;
                  if ($value->hour == '17') : $grc[12] = isset($grc[12]) ? $grc[12] + $val : $val;endif;
                  if ($value->hour == '18') : $grc[13] = isset($grc[13]) ? $grc[13] + $val : $val;endif;
                  if ($value->hour == '19') : $grc[14] = isset($grc[14]) ? $grc[14] + $val : $val;endif;
                  if ($value->hour == '20') : $grc[15] = isset($grc[15]) ? $grc[15] + $val : $val;endif;
                  if ($value->hour == '21') : $grc[16] = isset($grc[16]) ? $grc[16] + $val : $val;endif;
                  if ($value->hour == '22') : $grc[17] = isset($grc[17]) ? $grc[17] + $val : $val;endif;
                  if ($value->hour == '23') : $grc[18] = isset($grc[18]) ? $grc[18] + $val : $val;endif;
                  if ($value->hour == '0') : $grc[19] = isset($grc[19]) ? $grc[19] + $val : $val;endif;
                  if ($value->hour == '1') : $grc[20] = isset($grc[20]) ? $grc[20] + $val : $val;endif;
                  if ($value->hour == '2') : $grc[21] = isset($grc[21]) ? $grc[21] + $val : $val;endif;
                  if ($value->hour == '3') : $grc[22] = isset($grc[22]) ? $grc[22] + $val : $val;endif;
                  if ($value->hour == '4') : $grc[23] = isset($grc[23]) ? $grc[23] + $val : $val;endif;
                 endif;

                if ($value->ParkerType == 'Q'):
                  $val = $value->count;
                  if ($value->hour == '5') : $qcs[0] = isset($qcs[0]) ? $qcs[0] + $val : $val;endif;
                  if ($value->hour == '6') : $qcs[1] = isset($qcs[1]) ? $qcs[1] + $val : $val;endif;
                  if ($value->hour == '7') : $qcs[2] = isset($qcs[2]) ? $qcs[2] + $val : $val;endif;
                  if ($value->hour == '8') : $qcs[3] = isset($qcs[3]) ? $qcs[3] + $val : $val;endif;
                  if ($value->hour == '9') : $qcs[4] = isset($qcs[4]) ? $qcs[4] + $val : $val;endif;
                  if ($value->hour == '10') : $qcs[5] = isset($qcs[5]) ? $qcs[5] + $val : $val;endif;
                  if ($value->hour == '11') : $qcs[6] = isset($qcs[6]) ? $qcs[6] + $val : $val;endif;
                  if ($value->hour == '12') : $qcs[7] = isset($qcs[7]) ? $qcs[7] + $val : $val;endif;
                  if ($value->hour == '13') : $qcs[8] = isset($qcs[8]) ? $qcs[8] + $val : $val;endif;
                  if ($value->hour == '14') : $qcs[9] = isset($qcs[9]) ? $qcs[9] + $val : $val;endif;
                  if ($value->hour == '15') : $qcs[10] = isset($qcs[10]) ? $qcs[10] + $val : $val;endif;
                  if ($value->hour == '16') : $qcs[11] = isset($qcs[11]) ? $qcs[11] + $val : $val;endif;
                  if ($value->hour == '17') : $qcs[12] = isset($qcs[12]) ? $qcs[12] + $val : $val;endif;
                  if ($value->hour == '18') : $qcs[13] = isset($qcs[13]) ? $qcs[13] + $val : $val;endif;
                  if ($value->hour == '19') : $qcs[14] = isset($qcs[14]) ? $qcs[14] + $val : $val;endif;
                  if ($value->hour == '20') : $qcs[15] = isset($qcs[15]) ? $qcs[15] + $val : $val;endif;
                  if ($value->hour == '21') : $qcs[16] = isset($qcs[16]) ? $qcs[16] + $val : $val;endif;
                  if ($value->hour == '22') : $qcs[17] = isset($qcs[17]) ? $qcs[17] + $val : $val;endif;
                  if ($value->hour == '23') : $qcs[18] = isset($qcs[18]) ? $qcs[18] + $val : $val;endif;
                  if ($value->hour == '0') : $qcs[19] = isset($qcs[19]) ? $qcs[19] + $val : $val;endif;
                  if ($value->hour == '1') : $qcs[20] = isset($qcs[20]) ? $qcs[20] + $val : $val;endif;
                  if ($value->hour == '2') : $qcs[21] = isset($qcs[21]) ? $qcs[21] + $val : $val;endif;
                  if ($value->hour == '3') : $qcs[22] = isset($qcs[22]) ? $qcs[22] + $val : $val;endif;
                  if ($value->hour == '4') : $qcs[23] = isset($qcs[23]) ? $qcs[23] + $val : $val;endif;
                 endif;

                if ($value->ParkerType == 'NQ'):
                  $val = $value->count;
                  if ($value->hour == '5') : $snr[0] = isset($snr[0]) ? $snr[0] + $val : $val;endif;
                  if ($value->hour == '6') : $snr[1] = isset($snr[1]) ? $snr[1] + $val : $val;endif;
                  if ($value->hour == '7') : $snr[2] = isset($snr[2]) ? $snr[2] + $val : $val;endif;
                  if ($value->hour == '8') : $snr[3] = isset($snr[3]) ? $snr[3] + $val : $val;endif;
                  if ($value->hour == '9') : $snr[4] = isset($snr[4]) ? $snr[4] + $val : $val;endif;
                  if ($value->hour == '10') : $snr[5] = isset($snr[5]) ? $snr[5] + $val : $val;endif;
                  if ($value->hour == '11') : $snr[6] = isset($snr[6]) ? $snr[6] + $val : $val;endif;
                  if ($value->hour == '12') : $snr[7] = isset($snr[7]) ? $snr[7] + $val : $val;endif;
                  if ($value->hour == '13') : $snr[8] = isset($snr[8]) ? $snr[8] + $val : $val;endif;
                  if ($value->hour == '14') : $snr[9] = isset($snr[9]) ? $snr[9] + $val : $val;endif;
                  if ($value->hour == '15') : $snr[10] = isset($snr[10]) ? $snr[10] + $val : $val;endif;
                  if ($value->hour == '16') : $snr[11] = isset($snr[11]) ? $snr[11] + $val : $val;endif;
                  if ($value->hour == '17') : $snr[12] = isset($snr[12]) ? $snr[12] + $val : $val;endif;
                  if ($value->hour == '18') : $snr[13] = isset($snr[13]) ? $snr[13] + $val : $val;endif;
                  if ($value->hour == '19') : $snr[14] = isset($snr[14]) ? $snr[14] + $val : $val;endif;
                  if ($value->hour == '20') : $snr[15] = isset($snr[15]) ? $snr[15] + $val : $val;endif;
                  if ($value->hour == '21') : $snr[16] = isset($snr[16]) ? $snr[16] + $val : $val;endif;
                  if ($value->hour == '22') : $snr[17] = isset($snr[17]) ? $snr[17] + $val : $val;endif;
                  if ($value->hour == '23') : $snr[18] = isset($snr[18]) ? $snr[18] + $val : $val;endif;
                  if ($value->hour == '0') : $snr[19] = isset($snr[19]) ? $snr[19] + $val : $val;endif;
                  if ($value->hour == '1') : $snr[20] = isset($snr[20]) ? $snr[20] + $val : $val;endif;
                  if ($value->hour == '2') : $snr[21] = isset($snr[21]) ? $snr[21] + $val : $val;endif;
                  if ($value->hour == '3') : $snr[22] = isset($snr[22]) ? $snr[22] + $val : $val;endif;
                  if ($value->hour == '4') : $snr[23] = isset($snr[23]) ? $snr[23] + $val : $val;endif;
                 endif;


                if ($value->ParkerType == 'D'):
                  $val = $value->count;
                  if ($value->hour == '5') : $del[0] = isset($del[0]) ? $del[0] + $val : $val;endif;
                  if ($value->hour == '6') : $del[1] = isset($del[1]) ? $del[1] + $val : $val;endif;
                  if ($value->hour == '7') : $del[2] = isset($del[2]) ? $del[2] + $val : $val;endif;
                  if ($value->hour == '8') : $del[3] = isset($del[3]) ? $del[3] + $val : $val;endif;
                  if ($value->hour == '9') : $del[4] = isset($del[4]) ? $del[4] + $val : $val;endif;
                  if ($value->hour == '10') : $del[5] = isset($del[5]) ? $del[5] + $val : $val;endif;
                  if ($value->hour == '11') : $del[6] = isset($del[6]) ? $del[6] + $val : $val;endif;
                  if ($value->hour == '12') : $del[7] = isset($del[7]) ? $del[7] + $val : $val;endif;
                  if ($value->hour == '13') : $del[8] = isset($del[8]) ? $del[8] + $val : $val;endif;
                  if ($value->hour == '14') : $del[9] = isset($del[9]) ? $del[9] + $val : $val;endif;
                  if ($value->hour == '15') : $del[10] = isset($del[10]) ? $del[10] + $val : $val;endif;
                  if ($value->hour == '16') : $del[11] = isset($del[11]) ? $del[11] + $val : $val;endif;
                  if ($value->hour == '17') : $del[12] = isset($del[12]) ? $del[12] + $val : $val;endif;
                  if ($value->hour == '18') : $del[13] = isset($del[13]) ? $del[13] + $val : $val;endif;
                  if ($value->hour == '19') : $del[14] = isset($del[14]) ? $del[14] + $val : $val;endif;
                  if ($value->hour == '20') : $del[15] = isset($del[15]) ? $del[15] + $val : $val;endif;
                  if ($value->hour == '21') : $del[16] = isset($del[16]) ? $del[16] + $val : $val;endif;
                  if ($value->hour == '22') : $del[17] = isset($del[17]) ? $del[17] + $val : $val;endif;
                  if ($value->hour == '23') : $del[18] = isset($del[18]) ? $del[18] + $val : $val;endif;
                  if ($value->hour == '0') : $del[19] = isset($del[19]) ? $del[19] + $val : $val;endif;
                  if ($value->hour == '1') : $del[20] = isset($del[20]) ? $del[20] + $val : $val;endif;
                  if ($value->hour == '2') : $del[21] = isset($del[21]) ? $del[21] + $val : $val;endif;
                  if ($value->hour == '3') : $del[22] = isset($del[22]) ? $del[22] + $val : $val;endif;
                  if ($value->hour == '4') : $del[23] = isset($del[23]) ? $del[23] + $val : $val;endif;
                 endif;

                 ?>
                 
                <?php endforeach;
                for ($x = 0; $x <= 23; $x++) {    
                  $tot[$x] = $ret[$x] + $mtr[$x] + $vip[$x] + $qcs[$x] + $snr[$x] + $del[$x] + $grc[$x];
                } ?>

              <?php else:?>
                <td>0</td>
              <?php endif;?>

          <tr>
                <td>Retail</td>
                <?php  foreach ($ret as $i => $value) {
                  if($i != 24)
                    echo "<td>".($ret[$i])."</td>";
                }?>
          </tr>
          <tr>
                <td>VIP</td>
                <?php  foreach ($vip as $i => $value) {
                  if($i != 24)
                    echo "<td>".($vip[$i])."</td>";
                }?>
          </tr>
          <tr>
                <td>Motorcycle</td>
                <?php  foreach ($mtr as $i => $value) {
                  if($i != 24)
                    echo "<td>".($mtr[$i])."</td>";
                }?>
          </tr>
          <tr>
                <td>Grace Period</td>
                <?php  foreach ($grc as $i => $value) {
                  if($i != 24)
                    echo "<td>".($grc[$i])."</td>";
                }?>
          </tr>
          
          <tr>
                <td>QC Senior</td>
                <?php  foreach ($qcs as $i => $value) {
                  if($i != 24)
                    echo "<td>".($qcs[$i])."</td>";
                }?>
          </tr>
          
          <tr>
                <td>Non QC Senior</td>
                <?php  foreach ($snr as $i => $value) {
                  if($i != 24)
                    echo "<td>".($snr[$i])."</td>";
                }?>
          </tr>
                    
          <tr>
                <td>Delivery</td>
                <?php  foreach ($del as $i => $value) {
                  if($i != 24)
                    echo "<td>".($del[$i])."</td>";
                }?>
          </tr>
          
        <tr><td></td></tr>
        <tr>
          <td><b>Total Volume:</td></td>
                <?php  foreach ($tot as $i => $value) {
                  if($i != 24)
                    echo "<td>".($tot[$i])."</td>";
                }?>
          
        </tr>
          </table>
          <!-- Exporting-->
          <a href="excel.php?from=<?php echo $_GET['from']?>&until=<?php echo $_GET['until']?>" id = "printPageButton" class="btn btn-danger"><span class="glyphicon glyphicon-circle-arrow-down"></span> Export to Excel/CSV</a>
          <a href="" id = "printPageButton" onClick="window.print();" class="btn btn-primary"><span class="glyphicon glyphicon-paperclip"></span> Export to PDF file</a>
          <!--- End of exporting-->
<?php 
}
?>

         
          
          
          </div>      
        </section><!-- /.content -->
    </div><!-- /.content-wrapper -->
<!-- Main Footer -->
   <footer class="main-footer" id = "printPageButton">
        <!-- To the right -->
        <div class="pull-right hidden-xs">
          Theoretics Inc
        </div>
        <!-- Default to the left -->
        <strong>Copyright &copy; 2018 <a href="#">Theoretics Inc</a>.</strong> All rights reserved.
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
    <script src=".dist/js/jquery.idletimeout.js" type="text/javascript"></script>

