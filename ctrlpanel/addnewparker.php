<?php 
//Landscape Report
include'config/db.php';
include'config/parkersdb.php';
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
    <script src="jquery-ui/jquery-3.3.1.min.js"></script>
<?php
function add($a,$b){
  $c=$a+$b;
  return $c;
}
?>
<script type="text/javascript">
function getOutput() {
  var phpadd = <?php add(1,2);?> //call the php add function
  alert(phpadd);
</script>
<?php 
  if(isset($_POST['btn-add']))
  {
    addparker();
  }

  if(isset($_POST['btn-update']))
  {
    $sql_update = "UPDATE parkertypes.main SET ";
    if ($dbcon->query($sql_update) === TRUE) {
        //debug_to_console("Record updated successfully");
        echo '<script language="javascript">';
        echo 'alert("List Updated Successfully")';
        echo '</script>';
    } else {
        //debug_to_console("Error updating record: " . $dbcon->error);
        echo '<script language="javascript">';
        echo 'alert("Error updating Parker Types")';
        echo '</script>';
    }
  }

?>
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
          <h1><button id="sbutton" name="sbutton"><i class="fa fa-check"> </i></button> Parker Types</h1>
          <div id="parameters" name="parameters">
          <div id = "printPageButton">
          <p>In this section you can now search reports from the system.</p>
          </div>
          
          
          </div>
          
          <!-- End Search-->

          
          <?php 
            
            $sql1 = "SELECT * FROM parkertypes.main";
            $p = getdata_inner_join($sql1);
          ?>
<form action="" method="POST">
          <table class="table table-border">
            <tr>
              <td><b>PARKER TYPES</b></td>
            </tr>
            <tr>
              <td><b>Code Type</b></td>
              <td><b>Parker Type Name</b></td>
              <td><b>Description<br></b></td>
              <td><b>ACTIVE<br></b></td>
              
            </tr>
          <?php if(!empty($p)):?>
            <?php foreach ($p as $key => $value):?>
             <tr>
              <td><?php echo $value->parkertype?></td>
              <td><?php echo $value->ptypename?></td>
              <td><?php echo $value->ptypedesc?></td>
              <td><input id=<?php echo $value->parkertype?> type="checkbox" placeholder="" name=<?php echo $value->parkertype?> <?php echo ($value->ACTIVE==1 ? 'checked' : '');?>/></td>
              
            <?php endforeach;?>
          <?php else:?>
            There are no records on the database
          <?php endif;?>
          <tr><td></td></tr>
          </table>
</form>
          </div>      
        </section><!-- /.content -->

        <div class="output">
        </div>

        <section class="content2">
  <div class="panel-group" id="accordion">
      <div class="panel panel-default">
        <div class="panel-heading" style="background:rgba(41,58,74,.95);color:white;">
          <h4 class="panel-title">
            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
             Add New Parker Type
            </a>
          </h4>
        </div>
            
        <div id="collapseOne" class="panel-collapse collapse in">
      <div class="panel-body">

          <!-- start components-->

          <fieldset>
<form enctype="multipart/form-data"  action="" method="POST">
            <legend></legend>
<table>
  
<tr>

<td>Name </td><td><input style="width: 250px;text-align:left;" type="text" name="ptypename" placeholder="Name Must be One Word Only"  required="" /></td>
      
</tr>

<tr>

<td>TR Type </td><td><input style="width: 250px;text-align:left;" type="text" name="parkertype" placeholder="Type must have maximum of 2 Characters Only"  required="" /></td>
      
</tr>

<tr>

<td>Description </td><td><input style="width: 250px;text-align:left" type="text" name="ptypedesc"/></td>
      
</tr>

<tr>

<td>Image </td><td><input style="width: 250px;text-align:left" type="file" name="btnimage" id="btnimage"/> * Acts as the button on the interface</td>
      
</tr>

<tr>

<td>Active </td><td><input style="width: 250px;text-align:left" type="checkbox" name="active"/></td>
      
</tr>

<tr>

<td>No. of Receipts </td><td><input style="width: 250px;text-align:left" type="text" name="numOfReceipts" placeholder="Enter 1 or 2 Only"  required="" /> </td>
      
</tr>
<tr>

<td>Discounted </td><td><input style="width: 250px;text-align:left" type="checkbox" name="Discounted"/></td>
      
</tr>
<tr>

<td>Discount Percentage </td><td><input style="width: 250px;text-align:left" type="text" name="DiscountPercentage" placeholder="Enter a number from 0 to 100 Only"  required="" /></td>
      
</tr>
<tr>

<td> </td><td style="text-align: right"><button type="submit" class="btn btn-default" name="btn-add" id="btn-add">Add New</button></td>

</tr>

</table>


<br><br>
            </form>
        </fieldset>

<!-- end components -->
            


      </div>
    </div>
  </div>



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

