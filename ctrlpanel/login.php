<!DOCTYPE html>
<head>
  <?php
session_start();
?>
<title>Login only</title>
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
<style type="text/css">
  .spacing
  {
    padding:5px;
  }
</style>
<body  class="hold-transition skin-green sidebar-mini" style="background:#e4e2e2;">
<div style="padding-top: 25px; background-color: #333;margin-bottom:100px;"></div>
  <div style="width: 100%; margin: 0 auto;">
	
  <!--Login -->
  <div style="background:white; width: 30%;margin: 0 auto; border:#333 solid 1px;padding:20px;">
  <center><img src="../img/logo.png" width="200"></center>
<fieldset>
<form enctype="multipart/form-data"  action="index.php" method="POST">
            <legend></legend>
  <table width="100%">
    <tr>
      <td class="spacing"><b>Username:</b></td>
    </tr>
    <tr>
      <td class="spacing">
        <input type="text" style="width:100%;height: 34px;" placeholder="Username" id="Username" name="Username">
      </td>
    </tr>
    <tr>
      <td class="spacing"><b>Password:</b></td>
    </tr>
    <tr>
      <td class="spacing">
        <input type="password" style="width:100%;height: 34px;" placeholder="Password" name="password" id="password">
      </td>
    </tr>
    
    <tr>
      <td class="spacing">        
        <button type="submit" class="btn btn-default" name="btn-add" id="btn-add" value="Login User">Login</button>
      </td>
    </tr>
  </table>
   </form>
        </fieldset>
  </div>
  <!-- End Login-->

  </div><!--/page-wrapper(content) -->
</body>


