<?php
//$host = "localhost";
//$host = "127.0.0.1";
$host = "172.18.0.3";
$user = "root";
$pass = "secret";
$db = "testapp";
try {
    $conn = new PDO("mysql:host=$host;dbname=$db;charset=utf8", $user, $pass);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
 
    echo '<strong>Database UP!</strong>';
} catch(PDOException $e) {
    echo "<strong>Database connection failed: </strong>" . $e->getMessage();
}
?>