<?php
// output headers so that the file is downloaded rather than displayed
header('Content-type: text/csv');
header('Content-Disposition: attachment; filename="demo.csv"');
 
// do not cache the file
header('Pragma: no-cache');
header('Expires: 0');
 
require_once __DIR__.'/autoload.php'; // load composer

use Goodby\CSV\Export\Standard\Exporter;
use Goodby\CSV\Export\Standard\ExporterConfig;

use Goodby\CSV\Export\Standard\Collection\PdoCollection;

$pdo = new PDO('mysql:host=localhost;dbname=carpark', 'root', '');

//$pdo->query('CREATE TABLE IF NOT EXISTS user (id INT, `name` VARCHAR(255), email VARCHAR(255))');
//$pdo->query("INSERT INTO user VALUES(1, 'alice', 'alice@example.com')");
//$pdo->query("INSERT INTO user VALUES(2, 'bob', 'bob@example.com')");
//$pdo->query("INSERT INTO user VALUES(3, 'carol', 'carol@example.com')");

$config = new ExporterConfig();
$exporter = new Exporter($config);

$stmt = $pdo->prepare("SELECT name, email FROM user");
$stmt->execute();

$exporter->export('php://output', new PdoCollection($stmt));

