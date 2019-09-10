<?php

define("TEST_DB_NAME", "testdb");

define("DB_SERVER", "localhost");
define("DB_USER", "base");
define("DB_PASS", "theoreticsinc");
define("DB_NAME", "lwsi_dev");

define("USER_TIMEOUT", 10);
define("GUEST_TIMEOUT", 5);
    
class Database {
	public $conn;
	public $testconn;
	
	public function Database() {
		try {
			$this->conn = new PDO("mysql:host=".DB_SERVER.";dbname=".DB_NAME, DB_USER, DB_PASS);
			$this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

			$this->testconn = new PDO("mysql:host=".DB_SERVER.";dbname=".TEST_DB_NAME, DB_USER, DB_PASS);
			$this->testconn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		}
		catch(Exception $e) {
			die("ERROR: " . $e->getMessage());
		}
	}
}

$database = new Database();
?>