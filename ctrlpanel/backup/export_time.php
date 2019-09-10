<?php
include'config/db.php';
include'config/functions.php';
include'config/main_function.php';

$filename = "sample.csv";
$fp = fopen('php://output', 'w');
$from = $_GET['from'];
$until = $_GET['until'];

$header = array("sample"=>"Date Started: ".$_GET['from']."", "sample2"=>"Date End: ".$_GET['until']."", "sample3"=>"Date to print:".date("Y-m-d"));
$j = "SELECT COUNT(cashierName) as total FROM entrance WHERE TIME(TimeIN) BETWEEN '6:00' AND '7:00'";
$result1 = single_inner_join($j);
$j = "SELECT COUNT(cashierName) as total FROM exit_tbl WHERE TIME(TimeIN) BETWEEN '6:00' AND '7:00'";
$result_1 = single_inner_join($j);
 $j = "SELECT COUNT(cashierName) as total FROM entrance WHERE TIME(TimeIN) BETWEEN '7:00' AND '8:00'";
 $result2 = single_inner_join($j);
$j = "SELECT COUNT(cashierName) as total FROM exit_tbl WHERE TIME(TimeIN) BETWEEN '7:00' AND '8:00'";
$result_2 = single_inner_join($j);
$j = "SELECT COUNT(cashierName) as total FROM entrance WHERE TIME(TimeIN) BETWEEN '8:00' AND '9:00'";
$result3 = single_inner_join($j);
$j = "SELECT COUNT(cashierName) as total FROM exit_tbl WHERE TIME(TimeIN) BETWEEN '8:00' AND '9:00'";
$result_3 = single_inner_join($j);
$j = "SELECT COUNT(cashierName) as total FROM entrance WHERE TIME(TimeIN) BETWEEN '9:00' AND '10:00'";
$result4 = single_inner_join($j);
$j = "SELECT COUNT(cashierName) as total FROM exit_tbl WHERE TIME(TimeIN) BETWEEN '9:00' AND '10:00'";
$result_4 = single_inner_join($j);
$j = "SELECT COUNT(cashierName) as total FROM entrance WHERE TIME(TimeIN) BETWEEN '10:00' AND '11:00'";
$result5 = single_inner_join($j);
$j = "SELECT COUNT(cashierName) as total FROM exit_tbl WHERE TIME(TimeIN) BETWEEN '10:00' AND '11:00'";
$result_5 = single_inner_join($j);
$j = "SELECT COUNT(cashierName) as total FROM entrance WHERE TIME(TimeIN) BETWEEN '11:00' AND '12:00'";
$result6 = single_inner_join($j);
$j = "SELECT COUNT(cashierName) as total FROM exit_tbl WHERE TIME(TimeIN) BETWEEN '11:00' AND '12:00'";
$result_6 = single_inner_join($j);
$j = "SELECT COUNT(cashierName) as total FROM entrance WHERE TIME(TimeIN) BETWEEN '12:00' AND '13:00'";
$result7 = single_inner_join($j);
$j = "SELECT COUNT(cashierName) as total FROM exit_tbl WHERE TIME(TimeIN) BETWEEN '12:00' AND '13:00'";
$result_7 = single_inner_join($j);
$j = "SELECT COUNT(cashierName) as total FROM entrance WHERE TIME(TimeIN) BETWEEN '13:00' AND '14:00'";
$result8 = single_inner_join($j);
 $j = "SELECT COUNT(cashierName) as total FROM exit_tbl WHERE TIME(TimeIN) BETWEEN '13:00' AND '14:00'";
$result_8 = single_inner_join($j);
$j = "SELECT COUNT(cashierName) as total FROM entrance WHERE TIME(TimeIN) BETWEEN '14:00' AND '15:00'";
$result9 = single_inner_join($j);
$j = "SELECT COUNT(cashierName) as total FROM exit_tbl WHERE TIME(TimeIN) BETWEEN '14:00' AND '15:00'";
$result_9= single_inner_join($j);
 $j = "SELECT COUNT(cashierName) as total FROM entrance WHERE TIME(TimeIN) BETWEEN '15:00' AND '16:00'";
$result10 = single_inner_join($j);
$j = "SELECT COUNT(cashierName) as total FROM exit_tbl WHERE TIME(TimeIN) BETWEEN '15:00' AND '16:00'";
$result_10 = single_inner_join($j);
$j = "SELECT COUNT(cashierName) as total FROM entrance WHERE TIME(TimeIN) BETWEEN '16:00' AND '17:00'";
$result11 = single_inner_join($j);
$j = "SELECT COUNT(cashierName) as total FROM exit_tbl WHERE TIME(TimeIN) BETWEEN '16:00' AND '17:00'";
$result_11 = single_inner_join($j);



$time = array("time"=>"TIME","entrance"=>"ENTRANCE","exit"=>"EXIT");
$time1 = array("time"=>"6:00 - 7:00","entrance"=>$result1['total'],"exit"=>$result_1['total']);
$time2 = array("time"=>"7:00 - 8:00","entrance"=>$result2['total'],"exit"=>$result_2['total']);
$time3 = array("time"=>"8:00 - 9:00","entrance"=>$result3['total'],"exit"=>$result_3['total']);
$time4 = array("time"=>"9:00 - 10:00","entrance"=>$result4['total'],"exit"=>$result_4['total']);
$time5 = array("time"=>"10:00 - 11:00","entrance"=>$result5['total'],"exit"=>$result_5['total']);
$time6 = array("time"=>"11:00 - 12:00","entrance"=>$result6['total'],"exit"=>$result_6['total']);
$time7 = array("time"=>"12:00 - 1:00","entrance"=>$result7['total'],"exit"=>$result_7['total']);
$time8 = array("time"=>"1:00 - 2:00","entrance"=>$result8['total'],"exit"=>$result_8['total']);
$time9 = array("time"=>"2:00 - 3:00","entrance"=>$result9['total'],"exit"=>$result_9['total']);
$time10 = array("time"=>"3:00 - 4:00","entrance"=>$result10['total'],"exit"=>$result_10['total']);
$time11 = array("time"=>"4:00 - 5:00","entrance"=>$result11['total'],"exit"=>$result_11['total']);

$newline = array("sa"=>"");
header('Content-type: application/csv');
header('Content-Disposition: attachment; filename='.$filename);
fputcsv($fp, $header);
fputcsv($fp, $newline);
fputcsv($fp, $time);
fputcsv($fp, $time1);
fputcsv($fp, $time2);
fputcsv($fp, $time3);
fputcsv($fp, $time4);
fputcsv($fp, $time5);
fputcsv($fp, $time6);
fputcsv($fp, $time7);
fputcsv($fp, $time8);
fputcsv($fp, $time9);
fputcsv($fp, $time10);
fputcsv($fp, $time11);



exit;
?>