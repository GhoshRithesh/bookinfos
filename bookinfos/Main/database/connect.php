<?php

$host = 'localhost';
$user = 'book';
$pass = 'book1234';
$db_name = 'bookinfos';

$conn = new MySQLi($host, $user, $pass, $db_name);

if ($conn->connect_error) {
    die('Database connection error: ' . $conn->connect_error);
}