<?php 
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
     <link rel="stylesheet" href="dist/css/skins/skin-green.css">
    <link rel="stylesheet" href="dist/css/ionicons.min.css">
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
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
                <form class="navbar-form navbar-left" role="search">
                <div class="form-group">
                  <input type="text" class="form-control" placeholder="Search" style="background:#333;">
                </div>
        
                </form>
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
        


        <!-- Main content -->
        <section class="content">
          <div class="container" style="background:white; padding:10px;margin:10px;width:98%;">
            <div id = "printPageButton">
          <h1><i class="fa fa-calendar"> </i> Reports</h1>
          <p>In this section you can now search reports from the system.</p>
          
        </div>
          <p></p>
          <h3>Date Filter</h3>
          <form method="get">
          <input type="hidden" name="reports" class="btn btn-primary" value="1">
          From: <input type="date" name="from" class="txtfield"> <p></p>
          Until: <input type="date" name="until" class="txtfield">
          <p></p>
          <button class="btn btn-danger" name="searchbtn1" value="Generate"><i class="fa fa-check"></i> Generate</button>
          </form>
          
          
          <!-- End Search-->

          
          <?php 
          if(isset($_GET['searchbtn1'])){
             $from = filter($_GET['from']);//POST from date
            $until = filter($_GET['until']);//POST from Date
            $query = "SELECT cash.cashierName, cashierCode, COUNT(CardNumber) as CardNumber FROM cash INNER JOIN exit_tbl on cash.cashierName = exit_tbl.CashierName WHERE DATE(loginDate) BETWEEN '$from' AND '$until' GROUP BY cash.cashierName";
            $cash = getdata_inner_join($query); //query for getting the results

            $query1 = "SELECT * FROM cash INNER JOIN exit_tbl on cash.cashierName = exit_tbl.CashierName WHERE DATE(loginDate) BETWEEN '$from' AND '$until'";
            $list = getdata_inner_join($query1);//query for getting the results
          ?>
          
          <!-- Search for list of employee-->
          <b>CASH AND CARD ACCOUNTABILITY</b>
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
              <td><b>TERMINAL ID:</b></td>
            </tr>
            <TR>
              <td><b>TRANSACTION DATE:</b></td>
            </TR>
             <tr>
             
              <td><b>Parker Type</b></td>
              <td><b>COUNT</b></td>
              <td><b>COLLECTION</b></td>
            </tr>
            <tr>
              <td>Retail Parker</td>
              <td>
                <?php 
                $query = "SELECT COUNT(ParkerType) as total_r FROM cash INNER JOIN exit_tbl on cash.cashierName = exit_tbl.CashierName 
                WHERE DATE(loginDate) BETWEEN '$from' AND '$until' AND ParkerType = 'R'";
                $retail = single_inner_join($query);//query for getting the results

                echo $retail['total_r'];
                ?>
              </td>
              <td>
                <?php 
                $query = "SELECT COUNT(ParkerType) as total_r, Amount FROM cash INNER JOIN exit_tbl on cash.cashierName = exit_tbl.CashierName 
                WHERE DATE(loginDate) BETWEEN '$from' AND '$until' AND ParkerType = 'R'";
                $retail = single_inner_join($query);//query for getting the results
                $total1 = $retail['total_r'] * $retail['Amount'];
                echo $total1;
                ?>
              </td>
            </tr>
            <tr>
              <td>VIP parker</td>
              <td>
                 <?php 
                $query = "SELECT COUNT(ParkerType) as total_v FROM cash INNER JOIN exit_tbl on cash.cashierName = exit_tbl.CashierName 
                WHERE DATE(loginDate) BETWEEN '$from' AND '$until' AND ParkerType = 'V'";
                $vip = single_inner_join($query);//query for getting the results

                echo $vip['total_v'];
                ?>
              </td>
              <td>
                <?php 
                $query = "SELECT COUNT(ParkerType) as total_v, Amount FROM cash INNER JOIN exit_tbl on cash.cashierName = exit_tbl.CashierName 
                WHERE DATE(loginDate) BETWEEN '$from' AND '$until' AND ParkerType = 'V'";
                $vip = single_inner_join($query);//query for getting the results
                $total2 = $vip['total_v'] * $vip['Amount'];
                echo $total2;
                ?>
              </td>
            </tr>
            <tr>
              <td>Motorcycles</td>
              <td>
                 <?php 
                $query = "SELECT COUNT(ParkerType) as total_m FROM cash INNER JOIN exit_tbl on cash.cashierName = exit_tbl.CashierName 
                WHERE DATE(loginDate) BETWEEN '$from' AND '$until' AND ParkerType = 'M'";
                $motor = single_inner_join($query);//query for getting the results

                echo $motor['total_m'];
                ?>
              </td>
              <td>
                <?php 
                $query = "SELECT COUNT(ParkerType) as total_m, Amount FROM cash INNER JOIN exit_tbl on cash.cashierName = exit_tbl.CashierName 
                WHERE DATE(loginDate) BETWEEN '$from' AND '$until' AND ParkerType = 'V'";
                $motor = single_inner_join($query);//query for getting the results
                $total3 = $motor['total_m'] * $motor['Amount'];
                echo $total3;
                ?>
              </td>
            </tr>
            <tr>
              <td>Delivery Van</td>
              <td>
                 <?php 
                $query = "SELECT COUNT(ParkerType) as total_d FROM cash INNER JOIN exit_tbl on cash.cashierName = exit_tbl.CashierName 
                WHERE DATE(loginDate) BETWEEN '$from' AND '$until' AND ParkerType = 'D'";
                $delivery = single_inner_join($query);//query for getting the results

                echo $delivery['total_d'];
                ?>
              </td>
              <td>
                <?php 
                $query = "SELECT COUNT(ParkerType) as total_d, Amount FROM cash INNER JOIN exit_tbl on cash.cashierName = exit_tbl.CashierName 
                WHERE DATE(loginDate) BETWEEN '$from' AND '$until' AND ParkerType = 'V'";
                $delivery = single_inner_join($query);//query for getting the results
                $total4 = $delivery['total_d'] * $delivery['Amount'];
                echo $total4;
                ?>
              </td>
            </tr>
            <tr>
              <td><strong>TOTAL:</strong> </td>
              <td>
                <?php $total_park =$retail['total_r'] +  $delivery['total_d'] + $motor['total_m'] + $vip['total_v']; echo $total_park;?>
              </td>
              <td>
                <?php $total_collection =$total1 + $total2+ $total3 + $total4;  echo $total_collection; //total?>

              </td>
            </tr>
            
            
          </table>

          <table class="table table-border">
            <tr>
              <td><b>Cashier Accountability</b></td>
            </tr>
            <tr>
              <td><b>Cashier Code</b></td>
              <td><b>Cashier Name</b></td>
              <td><b>Collection</b></td>
              <td><b>Card Used</b></td>
            </tr>
            <?php if(!empty($cash)):?>
            <?php foreach ($cash as $key => $value):?>
             <tr>
              <td><?php echo $value->cashierCode?></td>
              <td><?php echo $value->cashierName?></td>
              <td>
                <?php 
                $query = "SELECT SUM(Amount) as Amount FROM cash INNER JOIN exit_tbl on cash.cashierName = exit_tbl.CashierName 
                WHERE DATE(loginDate) BETWEEN '$from' AND '$until' AND cash.CashierName = '".$value->cashierName."' GROUP BY cash.cashierName";
                $collection = single_inner_join($query);//query for getting the results
                echo $collection['Amount'];
                ?>
              </td>
              <td><?php echo $value->CardNumber?></td>
            </tr>
            <?php endforeach;?>
          <?php else:?>
          There are no records on the database
        <?php endif;?>
        <tr>
          <td><b>Total:</td></td>
          <td></td>
          <td>
            <?php 
                $query = "SELECT SUM(Amount) as Amount FROM cash INNER JOIN exit_tbl on cash.cashierName = exit_tbl.CashierName 
                WHERE DATE(loginDate) BETWEEN '$from' AND '$until'";
                $collection = single_inner_join($query);//query for getting the results
                echo $collection['Amount'];
            ?>
          </td>
          <td>
            <?php 
                $query = "SELECT COUNT(CardNumber) as CardNumber FROM cash INNER JOIN exit_tbl on cash.cashierName = exit_tbl.CashierName 
                WHERE DATE(loginDate) BETWEEN '$from' AND '$until'";
                $collection = single_inner_join($query);//query for getting the results
                echo $collection['CardNumber'];
            ?>
          </td>
        </tr>
          </table>
          <!-- Exporting-->
          <a href="test.php?from=<?php echo $_GET['from']?>&until=<?php echo $_GET['until']?>" id = "printPageButton" class="btn btn-danger"><span class="glyphicon glyphicon-circle-arrow-down"></span> Export to Excel/CSV</a>
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
          Company Name
        </div>
        <!-- Default to the left -->
        <strong>Copyright &copy; 2018 <a href="#">Company Name</a>.</strong> All rights reserved.
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

