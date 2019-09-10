<?php
class DBController {
	private $host = "localhost";
	private $user = "base";
	private $password = "theoreticsinc";
	private $database = "logs";
	private $conn;
	
        function __construct() {
        $this->conn = $this->connectDB();
	}	
		function connectDB() {
			$conn = mysqli_connect($this->host,$this->user,$this->password,$this->database);
			return $conn;
		}
        
        function runQuery($query) {
                $result = mysqli_query($this->conn,$query);
                while($row=mysqli_fetch_assoc($result)) {
                $resultset[] = $row;
                }		
                if(!empty($resultset))
                return $resultset;
	}
}
$db_handle = new DBController();

if (isset($_POST["export_rfex"])) {
    $today = date("d/m/Y"); 
    $from = $_SESSION['from'];
    $until = $_SESSION['until'];

    $query = "SELECT ReceiptNumber, CashierName, EntranceID, ExitID, CardNumber, PlateNumber, ParkerType, Amount, DateTimeIN, DateTimeOUT, HoursParked, MinutesParked, SettlementRef FROM carpark.exit_trans WHERE DATE(DateTimeOUT) BETWEEN '$from' AND '$until' ORDER BY ExitID, DateTimeOUT DESC";
    $productResult = $db_handle->runQuery($query);
    $filename = "Final_exit_report_".$today.".xls";
    header("Content-Type: application/vnd.ms-excel");
    header("Content-Disposition: attachment; filename=\"$filename\"");
    $isPrintHeader = false;
    if (! empty($productResult)) {
        foreach ($productResult as $row) {
            if (! $isPrintHeader) {
                echo implode("\t", array_keys($row)) . "\n";
                $isPrintHeader = true;
            }
            echo implode("\t", array_values($row)) . "\n";
        }
    }
    exit();
}
if (isset($_POST["export_fren"])) {
    $today = date("d/m/Y"); 
    $from = $_SESSION['from'];
    $until = $_SESSION['until'];

    $query = "SELECT * FROM carpark.entrance WHERE DATE(TimeIN) BETWEEN '$from' AND '$until' GROUP BY EntranceID, TimeIN ORDER BY EntranceID, TimeIN DESC";
    $productResult = $db_handle->runQuery($query);
    $filename = "Cashier_Accountability_report_".$today.".xls";
    header("Content-Type: application/vnd.ms-excel");
    header("Content-Disposition: attachment; filename=\"$filename\"");
    $isPrintHeader = false;
    if (! empty($productResult)) {
        foreach ($productResult as $row) {
            if (! $isPrintHeader) {
                echo implode("\t", array_keys($row)) . "\n";
                $isPrintHeader = true;
            }
            echo implode("\t", array_values($row)) . "\n";
        }
    }
    exit();
}
if (isset($_POST["export_acctblty"])) {
    $today = date("d/m/Y"); 
    $from = $_SESSION['from'];
    $until = $_SESSION['until'];

    $query = "SELECT * FROM colltrain.main WHERE DATE(logoutStamp) BETWEEN '$from' AND '$until'";
    $productResult = $db_handle->runQuery($query);
    $filename = "Cashier_Accountability_report_".$today.".xls";
    header("Content-Type: application/vnd.ms-excel");
    header("Content-Disposition: attachment; filename=\"$filename\"");
    $isPrintHeader = false;
    if (! empty($productResult)) {
        foreach ($productResult as $row) {
            if (! $isPrintHeader) {
                echo implode("\t", array_keys($row)) . "\n";
                $isPrintHeader = true;
            }
            echo implode("\t", array_values($row)) . "\n";
        }
    }
    exit();
}

if (isset($_POST["export_frept"])) {
    $today = date("d/m/Y"); 
    $from = $_SESSION['from'];
    $until = $_SESSION['until'];
    $timefrom = $_SESSION['timefrom'];
    $timeuntil = $_SESSION['timeuntil'];
    $sterminal = $_SESSION['sterminal'];

    $query = "SELECT ReceiptNumber, CashierName, EntranceID, ExitID, CardNumber, PlateNumber, ParkerType, Amount, DateTimeIN, DateTimeOUT, HoursParked, MinutesParked, SettlementRef, SettlementName, SettlementAddr, SettlementTIN, SettlementBusStyle FROM carpark.exit_trans WHERE DATE(DateTimeOUT) BETWEEN '$from $timefrom' AND '$until $timeuntil' AND ExitID = '".$sterminal."' GROUP BY ExitID, DateTimeOUT ORDER BY ExitID, DateTimeOUT DESC";
    $productResult = $db_handle->runQuery($query);
    $filename = "Final_exit_perTerminal_report_".$today.".xls";
    header("Content-Type: application/vnd.ms-excel");
    header("Content-Disposition: attachment; filename=\"$filename\"");
    $isPrintHeader = false;
    if (! empty($productResult)) {
        foreach ($productResult as $row) {
            if (! $isPrintHeader) {
                echo implode("\t", array_keys($row)) . "\n";
                $isPrintHeader = true;
            }
            echo implode("\t", array_values($row)) . "\n";
        }
    }
    exit();
}

if (isset($_POST["export_offbir"])) {
    $today = date("d/m/Y"); 
    $from = $_SESSION['from'];
    $until = $_SESSION['until'];

    $query = "SELECT DATE(datetimeOut) as datetimeOut, LPAD(MIN(beginOR),12,0) as beginOR, LPAD(MAX(endOR),12,0) as endOR, ROUND(SUM(todaysale),2) AS todaysale, ROUND(SUM(vatablesale),2) as vatablesale, ROUND(SUM(12vat),2) as vat12, ROUND(MIN(oldGrand),2) as oldGrand, ROUND(MAX(newGrand),2) as newGrand, SUM(discounts) as discounts, ABS(SUM(voids)) as voids FROM zread.main WHERE DATE(DateTimeOUT) BETWEEN '$from' AND '$until' ORDER BY terminalnum, datetimeOut DESC";

    $query = "SELECT DATE(datetimeOut) as datetimeOut, LPAD(MIN(beginOR),12,0) as beginOR, LPAD(MAX(endOR),12,0) as endOR, ROUND(MIN(newGrossTotal),2) as Grand_Accumulating_Sales_Ending, ROUND(MIN(oldGrossTotal),2) as Grand_Accumulating_Sales_Beginning,  ROUND(SUM(newGrossTotal) - SUM(oldGrossTotal),2) AS Gross_Sales_for_the_Day, '0' as Sales_Issued_w_Manual_SI_OR, ROUND(SUM(newGrossTotal) - SUM(oldGrossTotal),2) AS Gross_Sales_for_POS, ROUND(SUM(vatablesale),2) as VATable_Sales, ROUND(SUM(12vat),2) as vat12, ROUND(SUM(vatExempt)) as vatExempt, '0' as Zero_Rated_Sales, SUM(discounts) as Special_Discounts, SUM(discounts) as Total_Deductions, ROUND(SUM(12vat),2) as VAT_Payable, ROUND(SUM(newGrossTotal) - SUM(oldGrossTotal)- SUM(discounts) - SUM(12vat),2) AS Total_Net_Sales FROM zread.main WHERE DATE(DateTimeOUT) BETWEEN '$from' AND '$until' ORDER BY terminalnum, datetimeOut DESC";

    $productResult = $db_handle->runQuery($query);
    $filename = "BIR Sales Summary_report_".$today.".xls";
    header("Content-Type: application/vnd.ms-excel");
    header("Content-Disposition: attachment; filename=\"$filename\"");
    $isPrintHeader = false;
    if (! empty($productResult)) {
        foreach ($productResult as $row) {
            if (! $isPrintHeader) {
                echo implode("\t", array_keys($row)) . "\n";
                $isPrintHeader = true;
            }
            echo implode("\t", array_values($row)) . "\n";
        }
    }
    exit();
}
?>