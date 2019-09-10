<?php 
//Landscape Report
include'config/db.php';
include'config/functions.php';
include'config/main_function.php';

if(isset($_GET['from'])){
  $from = filter($_GET['from']);
}
if(isset($_GET['until'])){
  $until = filter($_GET['until']);
}

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
    <script src="jquery-ui/jquery-3.3.1.min.js"></script>
<script>
$(document).ready(function(){
  document.getElementById("from").value = <?php echo '"'.$from.'"';?>;
  document.getElementById("until").value = <?php echo '"'.$until.'"';?>;
});
$(window).on("load", function (e) {
  $( "#loader" ).hide();
})
</script>
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
.loader {
  border: 16px solid #f3f3f3; /* Light grey */
  border-top: 16px solid #3498db; /* Blue */
  border-bottom: 16px solid blue;
  border-radius: 50%;
  width: 120px;
  height: 120px;
  animation: spin 2s linear infinite;
}
@keyframes spin {
  0% { transform: rotate(0deg); }
  100% { transform: rotate(360deg); }
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
        <?php $tquery = "SELECT name, location FROM terminals.exit_terminals";
        ?>


        <!-- Main content -->
        <section class="content">
          <div class="container" style="background:white; padding:10px;margin:10px;width:98%;">
          <h1><button id="sbutton" name="sbutton"><i class="fa fa-calendar"> </i></button> Sales  Report</h1>
          <div id="parameters" name="parameters">
          <div id = "printPageButton">
          <p>In this section you can now search reports from the system.</p>
          </div>
          <form method="get">
          <table>
            <tr>
          <td style="padding: 25px"><h3 id="printout">Date Filter</h3>

          <input type="hidden" name="reports" class="btn btn-primary" value="1">
          From: <input type="date" id="from" name="from" style="width: 200px"><br>
          Until : <input type="date" id="until" name="until" style="width: 200px"></td>
          <td><h3>Terminal ID:</h3> <select id="selectedterminal" name="selectedterminal" style="width: 200px">
              <?php
                $result0 = $conn2->query($tquery);
                if (!$result0) {echo 'Could not run query: ' . mysql_error();}
                if ($result0->num_rows > 0) {
                    while($row0 = $result0->fetch_assoc()) {
              ?>
      
                <?php echo "<option value=".$row0["name"].">".$row0["location"]."</option>";?>
                
              <?php   
                    }
                } 
              ?>
                </select>
          </td>
          <td style="padding: 25px"><button class="btn btn-danger" id="searchbtn1" name="searchbtn1" value="Generate" onclick="submit_form()"><i class="fa fa-check"></i> Generate</button></td>
          </tr>
          </table>
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
              $sterminal = $_GET['selectedterminal'];  
              $sql1 = "SELECT parkertype, ptypename FROM parkertypes.main";
              //$query = "SELECT ParkerType, SUM(Amount) As Revenue, COUNT(ParkerType) As Volume FROM carpark.exit_trans WHERE DATE(DateTimeIN) BETWEEN '$from' AND '$until' GROUP BY ParkerType";
            //Debugging Only
            //echo $sql1;
            $types = getdata_inner_join($sql1); //query for getting the results
            $types2 = $types;
            //echo $types2;
            //$query1 = "SELECT * FROM cash INNER JOIN exit_tbl on cash.cashierName = exit_tbl.CashierName WHERE DATE(loginDate) BETWEEN '$from' AND '$until'";
            //$list = getdata_inner_join($query1);//query for getting the results
          ?>
          
          <!-- Search for list of employee-->
          <h2><?php echo "TERMINAL: ".$sterminal;?><br></h2>
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
          
          <table class="table table-border">
            <tr>
              <td><b>Machine Generated </b></td>
            </tr>
            <tr>
              <td style="vertical-align: middle;"><div id="loader" class="loader"></div></td>
            </tr>
            <td></td>
            <?php if(!empty($types)):?>
            <?php foreach ($types as $key => $value):
                $n = (string)$value->ptypename;?>
              <td><?php echo $n;?></td>
            <?php endforeach;?>
            <tr>
            <td>REVENUE</td>
              <?php $totalAmount = 0;
              $from = filter($_GET['from']);//POST from date
              $until = filter($_GET['until']);//POST from Date
              $sterminal = $_GET['selectedterminal'];  
              foreach ($types as $key => $value):
              $p = "";
              $p = (string)$value->parkertype;
              ?>
              <?php
               $query = "SELECT x.ParkerType, SUM(Amount) As Revenue FROM carpark.exit_trans x INNER JOIN parkertypes.main p ON x.ParkerType=p.ParkerType WHERE '".$p."'=x.ParkerType AND DATE(DateTimeOUT) BETWEEN '$from' AND '$until' AND x.ExitID = '".$sterminal."'  GROUP BY ParkerType";
              //echo $query;
              $rev = getdata_inner_join($query); //query for getting the results
              //echo $rev;
              if (is_array($rev)) {
              foreach ($rev as $key => $val):

                ?>
              <td><?php 
              $amt = $val->Revenue;
              echo $amt;
              $totalAmount = $totalAmount + $amt;
              ?></td>
              <?php endforeach;}
              else {?>
              <td>0</td>
              <?php }?>
              <?php endforeach;?>
          </tr>
          <tr>
            <td>VOLUME</td>
              <?php $totalVolume = 0;
              $from = filter($_GET['from']);//POST from date
              $until = filter($_GET['until']);//POST from Date

              foreach ($types2 as $key => $value):
              $p = "";
              $p = (string)$value->parkertype;
              ?>
              <?php
               $query = "SELECT x.ParkerType, COUNT(x.ParkerType) As Volume FROM carpark.exit_trans x INNER JOIN parkertypes.main p ON x.ParkerType=p.ParkerType WHERE '".$p."'=x.ParkerType AND DATE(DateTimeOUT) BETWEEN '$from' AND '$until'  AND x.ExitID = '".$sterminal."'  GROUP BY ParkerType";
              //echo $query;
              $rev = getdata_inner_join($query); //query for getting the results
              //echo $rev;
              if (is_array($rev)) {
              foreach ($rev as $key => $val):

                ?>
              <td><?php 
              $vol = $val->Volume; 
              echo $vol; 
              $totalVolume = $totalVolume + $vol;
              ?></td>
              <?php endforeach;}
              else {?>
              <td>0</td>
              <?php }?>
              <?php endforeach;?>
          </tr>
          <?php else:?>
          There are no records on the database
        <?php endif;?>
        <tr><td></td></tr>
        <tr>
          <td><b>Total Revenue:</td></td>
          <td><?php 
                echo $totalAmount;
                ?></td>
          <td>
          <td id=totalVol" name="totalVol"><b>Total Volume:</td></td>
          <td><?php 
                echo $totalVolume;
                ?></td>
          <td>
          </td>
          <td>
            
          </td>
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

