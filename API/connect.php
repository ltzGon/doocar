<?php
$db_name = "doocar";
$db_user = "root";
$db_pass = "";
//บนคอม
$db_host = "localhost";
//บนemulator


$con = mysqli_connect($db_host, $db_user, $db_pass, $db_name);

if ($con->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

