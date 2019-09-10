<?php  
  
$conn = new mysqli('localhost', 'root', '');  
mysqli_select_db($conn, 'carpark');  
  
$setSql = "SELECT `ur_Id`,`ur_username`,`ur_password` FROM `tbl_user` WHERE `ur_Id`= '1'";  
$setRec = mysqli_query($conn, $setSql);  
  
$columnHeader1 = '';
$columnHeader2 = '';    
$columnHeader1 .= "Sr NO";
$columnHeader2 .= "Sr NO1";
  
$setData = '';  
  
while ($rec = mysqli_fetch_row($setRec)) {  
    $rowData = '';  
    foreach ($rec as $value) {  
        $value = '"' . $value . '"' . "\t";  
        $rowData .= $value;  
    }  
    $setData .= trim($rowData) . "\n" . "\n";  
}  
  
  
header("Content-type: application/octet-stream");  
header("Content-Disposition: attachment; filename=User_Detail_Reoprt.xls");  
header("Pragma: no-cache");  
header("Expires: 0");  
  
echo ucwords($columnHeader1) . "\n" . $setData . "\n";
echo ucwords($columnHeader2);  
  
?>  