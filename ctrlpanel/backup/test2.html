<?php
include'config/db.php';
include'config/functions.php';
include'config/main_function.php';

$filename = "sample.csv";
$fp = fopen('php://output', 'w');
$from = $_GET['from'];
$until = $_GET['until'];
$query = "SELECT COUNT(ParkerType) as total_r FROM cash INNER JOIN exit_tbl on cash.cashierName = exit_tbl.CashierName 
                WHERE DATE(loginDate) BETWEEN '$from' AND '$until' AND ParkerType = 'R'";
$retail = single_inner_join($query);
$query = "SELECT COUNT(ParkerType) as total_r, Amount FROM cash INNER JOIN exit_tbl on cash.cashierName = exit_tbl.CashierName 
                WHERE DATE(loginDate) BETWEEN '$from' AND '$until' AND ParkerType = 'R'";
$retail = single_inner_join($query);
$total1 = $retail['total_r'] * $retail['Amount'];
 $query = "SELECT COUNT(ParkerType) as total_v FROM cash INNER JOIN exit_tbl on cash.cashierName = exit_tbl.CashierName 
                WHERE DATE(loginDate) BETWEEN '$from' AND '$until' AND ParkerType = 'V'";
                $vip = single_inner_join($query);
$query = "SELECT COUNT(ParkerType) as total_v, Amount FROM cash INNER JOIN exit_tbl on cash.cashierName = exit_tbl.CashierName 
                WHERE DATE(loginDate) BETWEEN '$from' AND '$until' AND ParkerType = 'V'";
                $vip = single_inner_join($query);
                $total2 = $vip['total_v'] * $vip['Amount'];
$query = "SELECT COUNT(ParkerType) as total_m FROM cash INNER JOIN exit_tbl on cash.cashierName = exit_tbl.CashierName 
                WHERE DATE(loginDate) BETWEEN '$from' AND '$until' AND ParkerType = 'M'";
                $motor = single_inner_join($query);
$query = "SELECT COUNT(ParkerType) as total_m, Amount FROM cash INNER JOIN exit_tbl on cash.cashierName = exit_tbl.CashierName 
                WHERE DATE(loginDate) BETWEEN '$from' AND '$until' AND ParkerType = 'V'";
                $motor = single_inner_join($query);
                $total3 = $motor['total_m'] * $motor['Amount'];
$query = "SELECT COUNT(ParkerType) as total_d FROM cash INNER JOIN exit_tbl on cash.cashierName = exit_tbl.CashierName 
                WHERE DATE(loginDate) BETWEEN '$from' AND '$until' AND ParkerType = 'D'";
                $delivery = single_inner_join($query);
 $query = "SELECT COUNT(ParkerType) as total_d, Amount FROM cash INNER JOIN exit_tbl on cash.cashierName = exit_tbl.CashierName 
                WHERE DATE(loginDate) BETWEEN '$from' AND '$until' AND ParkerType = 'V'";
                $delivery = single_inner_join($query);
                $total4 = $delivery['total_d'] * $delivery['Amount'];
$total_park =$retail['total_r'] +  $delivery['total_d'] + $motor['total_m'] + $vip['total_v'];
$total_collection =$total1 + $total2+ $total3 + $total4;
$query = "SELECT SUM(Amount) as Amount FROM cash INNER JOIN exit_tbl on cash.cashierName = exit_tbl.CashierName 
                WHERE DATE(loginDate) BETWEEN '$from' AND '$until'";
$collection1 = single_inner_join($query);
$query = "SELECT COUNT(CardNumber) as CardNumber FROM cash INNER JOIN exit_tbl on cash.cashierName = exit_tbl.CashierName 
                WHERE DATE(loginDate) BETWEEN '$from' AND '$until'";
$collection = single_inner_join($query);


$cash = array("sample"=>"CASH AND CARD ACCOUNTABILITY");
$ds = array("sample"=>"Cashier Accountability");
$header = array("sample"=>"Date Started: ".$_GET['from']."", "sample2"=>"Date End: ".$_GET['until']."", "sample3"=>"Date to print:".date("Y-m-d"));
$retail = array("Retail"=>"Retail Parker","count"=>$retail['total_r'],"collection"=>$total1);
$retail2 = array("Retail"=>"VIP parker","count"=>$vip['total_v'],"collection"=>$total2);
$retail3 = array("Retail"=>"Motorcycles","count"=>$motor['total_m'],"collection"=>$total3);
$retail4 = array("Retail"=>"Delivery Van","count"=>$delivery['total_d'],"collection"=>$total4);

$newline = array("sample"=>"");
$asdasd = array("sample"=>"Cashier Name","asda"=>"Cashier Code","sjdfsdf"=>"Collection","dsf"=>"Card Used");
$dfdf = array("sample"=>"Total","asda"=>"","sjdfsdf"=>$collection1['Amount'],"dsf"=>$collection['CardNumber']);
$newline2 = array("sample"=>"TERMINAL ID:");
$newline3 = array("sample"=>"TRANSACTION DATE:");
$newline4 = array("sample2"=>"Total:","fsd"=>$total_park,"sfs"=>$total_collection);
$f = array("sample"=>"Parker Type","sample2"=>"COUNT","sample3"=>"COLLECTION");
header('Content-type: application/csv');
header('Content-Disposition: attachment; filename='.$filename);
fputcsv($fp, $cash);
fputcsv($fp, $newline);
fputcsv($fp, $header);
fputcsv($fp, $newline);
fputcsv($fp, $newline2);
fputcsv($fp, $newline3);
fputcsv($fp, $newline);
fputcsv($fp, $f);
fputcsv($fp, $retail);
fputcsv($fp, $retail2);
fputcsv($fp, $retail3);
fputcsv($fp, $retail4);
fputcsv($fp, $newline);
fputcsv($fp, $newline4);
fputcsv($fp, $newline);
fputcsv($fp, $ds);
fputcsv($fp, $asdasd);

       
$query = "SELECT cash.cashierName, cashierCode, SUM(Amount) as Amount, COUNT(CardNumber) as CardNumber FROM cash INNER JOIN exit_tbl on cash.cashierName = exit_tbl.CashierName WHERE DATE(loginDate) BETWEEN '$from' AND '$until' GROUP BY cash.cashierName";
$result = $dbcon->query($query);
while($row = $result->fetch_assoc()) {
   
    fputcsv($fp, $row);
}
fputcsv($fp, $newline);
fputcsv($fp, $dfdf);
exit;
?>