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
.alert {
    padding: 20px;
    background-color: #f44336;
    color: white;
}

.closebtn {
    margin-left: 15px;
    color: white;
    font-weight: bold;
    float: right;
    font-size: 22px;
    line-height: 20px;
    cursor: pointer;
    transition: 0.3s;
}

.closebtn:hover {
    color: black;
}
</style>
<div id="idletimeout">
  You will be logged out in <span><!-- countdown place holder --></span>&nbsp;seconds due to inactivity. 
  <a id="idletimeout-resume" href="#">(Click here to continue using this page)</a>.
</div>

 <header class="main-header">

        <!-- Logo -->
        <a href="index.php" class="logo">
          <!-- mini logo for sidebar mini 50x50 pixels -->
          
          <!-- logo for regular state and mobile devices -->
          <span class="logo-lg" style="padding-top:13px;"><img src="dist/img/logo2.png" alt="olivares" class="img-responsive"></span>
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
 
            <li><a href="#"><i class="fa fa-dashboard"></i> <span>Home</span></a></li>

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
          <h1>
            Dashboard
          </h1>
          
        </section>

        <!-- Main content -->
        <section class="content">
        <div class="panel-group" id="accordion">
  <div class="panel panel-default">
    <div class="panel-heading" style="background:rgba(41,58,74,.95);color:white;">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
         PARKING PARAMETERS INPUT
        </a>
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse in">
      <div class="panel-body">
       <!-- start components-->
              <div class="row">
                <div class="col-md-4">
                  <img src="dist/img/gg50.JPG" align="left"><br><a href="ratesparameters.php" 
                  style="font-size:14px;">Rates Parameters</a>
                </div>
                <div class="col-md-4">
                  <img src="dist/img/vehicle.png" align="left"><br><a href="addnewparker.php" 
                  style="font-size:14px;">Add New Parker Types</a>
                </div>
                <div class="col-md-4">
                  <img src="dist/img/gg10.jpg" align="left"><br><a href="addnewcashiers.php" 
                  style="font-size:14px;">Add New Cashiers</a>
                </div>
                <div class="col-md-4"></div>
                <div class="col-md-4"></div>
              </div>

              <!-- end components -->
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
                  <a href="rpt_sales.php" target="sales_rpt" 
                  style="font-size:14px;"><img src="dist/img/sales.png" align="left" width="50" height="50"><br>Sales Report</a>
                </div>
                <div class="col-md-3">
                   <a href="rpt_vehiclecount.php" target="vcount_rpt" 
                  style="font-size:14px;"><img src="dist/img/vehicle.png" align="left" width="50" height="50"><br>Vehicle Count </a>
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
                  <a href="rpt_final_entrance.php" target="entrance_rpt" 
                  style="font-size:14px;"><img src="dist/img/carparktrans.png" align="left" width="50" height="50"><br>Daily Entrance Transaction</a>
                </div>
                <div class="col-md-3">
                  <a href="rpt_final_exit.php" target="exit_rpt" 
                  style="font-size:14px;"><img src="dist/img/carparktrans.png" align="left" width="50" height="50"><br>Daily Exit Transaction</a>
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
                  <a href="rpt_peakload.php" target="peakload_rpt" 
                  style="font-size:14px;"><img src="dist/img/peak.png" align="left" width="50" height="50"><br>Peak-load Report</a>
                </div>
                <div class="col-md-3">
                  <a target="accountability_rpt" href="rpt_cashier_accountability.php" 
                  style="font-size:14px;"><img src="dist/img/cash.png" align="left" width="50" height="50"><br>Cash Accountability</a>
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
    <script src=".dist/js/jquery.idletimeout.js" type="text/javascript"></script>

