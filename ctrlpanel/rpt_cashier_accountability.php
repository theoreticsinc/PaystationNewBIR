<?php 
//Landscape Report
include'config/db.php';
include'config/functions.php';
include'config/main_function.php';
include'config/DBController.php';

$totalVolume = 0;
$totalAmount = 0;

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
</head>

<body  class="hold-transition skin-green sidebar-mini">
  <div class="wrapper">
	
<style type="text/css">
@font-face {
    font-family: Header;
    src: url(Fonts/Walkway.ttf);
    
}
@font-face {
    font-family: Data;
    src: url(Fonts/ArialNarrow.ttf);
}
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
#CA_Header {
    font-family: Header;
    font-size: larger;
    text-align: center;
}
#CA_Data{
    font-family: Data;
    font-size: small;
    text-align: center;
}

@media print {
  #printPageButton {
    display: none;
  }
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
          <h1><button id="sbutton" name="sbutton"><i class="fa fa-calendar"> </i></button> 
          Cashier Accountability Report</h1>
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
            $query = "SELECT x.ParkerType, p.ptypename, SUM(Amount) As Revenue, COUNT(x.ParkerType) As Volume FROM carpark.exit_trans x INNER JOIN parkertypes.main p ON x.ParkerType=p.ParkerType WHERE DATE(DateTimeOUT) BETWEEN '$from' AND '$until' GROUP BY ParkerType";
            //echo $query;
            $cash = getdata_inner_join($query); //query for getting the results
            $_SESSION['from'] = $from;
            $_SESSION['until'] = $until;
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
          
          <table class="table table-border">
            <tr>
              <td><b>Machine Generated</b></td>
            </tr>
            <tr>
              <td><b>PARKER TYPE:</b></td>
              <td><b>COUNT<br></b></td>
              <td><b>COLLECTION<br></b></td>
              
            </tr>
            <?php if(!empty($cash)):?>
            <?php foreach ($cash as $key => $value):?>
             <tr>
              <td><?php echo $value->ptypename?></td>
              <td><?php echo $value->Volume?></td>
              <td><?php echo $value->Revenue.".00"?></td>
              
            </tr>
            <?php 
              $amt = $value->Revenue;
              
              $totalAmount = $totalAmount + $amt;
              $vol = $value->Volume;
              
              $totalVolume = $totalVolume + $vol;
              ?>
            <?php endforeach;?>
          <?php else:?>
          There are no records on the database
        <?php endif;?>
        <tr><td></td></tr>
        <tr>
          <td><b>Total:</b></td>
          <td><?php 
                echo $totalVolume;
                ?></td>
          <td><?php 
                echo $totalAmount.".00";
                ?></td>
          <td>
            
          </td>
        </tr>
          </table>
        <?php 
            $pquery = "SELECT * FROM parkertypes.main ORDER BY ptypeID";
            //$ptypes = getdata_inner_join($pquery); 
        ?>
          
          <?php 
          
            $from = filter($_GET['from']);//POST from date
            $until = filter($_GET['until']);//POST from Date
            $aquery = "SELECT * FROM colltrain.main WHERE DATE(logoutStamp) BETWEEN '$from' AND '$until'";
            //echo $query;
            //$acc = getdata_inner_join($aquery); 

          ?>
          <b>Cashier Accountability</b>
          <table id="CA_Table" class="table table-border">
            <tr>
              <td></td>
            </tr>
            <tr id="CA_Header">
              <td><b>Exit ID</b></td>
              <td><b>Cashier<br>Code</b></td>
              <td><b>Cashier<br>Name</b></td>
              <td><b>Collection<br></b></td>
              <td><b>Cards<br>Used</b></td>
              <td><b>Ext'd<br>Vol</b></td>
              <td><b>Ext'd<br>Amt</b></td>
              <td><b>Ovrnght<br>Vol</b></td>
              <td><b>Ovrnght<br>Amt</b></td>
              <?php
                $result2 = $conn2->query($pquery);
                if (!$result2) {echo 'Could not run query: ' . mysql_error();}
                if ($result2->num_rows > 0) {
                    while($row2 = $result2->fetch_assoc()) {
              ?>
                <td><b><?php echo $row2["ptypename"]."<br> Amt";?></b></td>
              <?php   
                    }
                } 
              ?>
              
            </tr>
            <tr>
            <?php

                $result = $conn1->query($aquery);
                if (!$result) {
                    echo 'Could not run query: ' . mysql_error();
                }
                if ($result->num_rows > 0) {
                    // output data of each row
                    while($row = $result->fetch_assoc()) {

              ?>
<tr id="CA_Data">

              <td><?php echo $row["SentinelID"]?></td>
              <td><?php echo $row["userCode"]?></td>
              <td><?php echo $row["userName"]?></td>
              <td><?php echo $row["totalAmount"].".00"?></td>
              <td><?php echo $row["carServed"]?></td>
              <td><?php echo $row["extendedCount"]?></td>
              <td><?php echo $row["extendedAmount"]?></td>
              <td><?php echo $row["overnightCount"]?></td>
              <td><?php echo $row["overnightAmount"]?></td>

              <?php
                $result2 = $conn2->query($pquery);
                if (!$result2) {echo 'Could not run query: ' . mysql_error();}
                if ($result2->num_rows > 0) {
                    while($row2 = $result2->fetch_assoc()) {
              ?>
                <td><?php echo $row[strtolower($row2["ptypename"])."Amount"];?></td>
              <?php   
                    }
                } 
              ?>


</tr>

              <?php   
                    }
                } else {
                    echo "0 results";
                }
              ?>


             </tr>
            <?php 
              //$amt = $value->totalAmount;
              
              //$totalAmount = $totalAmount + $amt;
              //$vol = $value->carServed;
              
              //$totalVolume = $totalVolume + $vol;
              ?>

        <tr><td></td></tr>

          </table>

          <div class="btn">
            <form action="" method="post">
                  <button type="submit" id="export_acctblty"
                    name='export_acctblty' value="Export to Excel"
                    class="btn btn-info"><span class="glyphicon glyphicon-circle-arrow-down"></span> Export to Excel</button>
            </form>
          </div>
          <!-- Exporting
          <a href="excel.php?from=<?php echo $_GET['from']?>&until=<?php echo $_GET['until']?>" id = "printPageButton" class="btn btn-danger"> Export to Excel/CSV</a>-->
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
    <script src=".dist/js/jquery.idletimeout.js" type="text/javascript"></script>

