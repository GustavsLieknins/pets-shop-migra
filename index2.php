<?php
$conn = new mysqli('localhost', 'root', 'root' , '');

$query = 'CREATE DATABASE IF NOT EXISTS pet_shop
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;     ';


        mysqli_query($conn, $query) or die('<div>Problem in executing the SQL query <b>,<br><br>' . $query . '</b><br><br>' . $conn->error . '</div>');
        $query = '';


echo '<div>SQL files imported successfully</div>';
?>
