<html>  
  
<head>  
    <title>User Detail Report</title>  
</head>  
  
<body>  
    <table border="1">  
        <tr>  
            <th>Sr NO.</th>  
            <th width="120">User Name</th>  
            <th>Password</th>  
        </tr>  
        <?php  
$conn = new mysqli('localhost', 'root', '');   
mysqli_select_db($conn, 'carpark');   
  
$sql = mysqli_query($conn,"SELECT `ur_Id`,`ur_username`,`ur_password` FROM `tbl_user` WHERE ur_Id = '1'");  
  
  
while($data = mysqli_fetch_row($sql)){  
echo '  
<tr>  
<td>'.$data[0].'</td>  
<td>'.$data[1].'</td>  
<td>'.$data[2].'</td>  
</tr>  
';  
}  
?>  
    </table> <a href="UserReport_Export.php"> Export To Excel </a> </body>  
  
</html>  