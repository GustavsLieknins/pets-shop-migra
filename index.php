<?php
$conn = new mysqli('localhost', 'root', 'root' , 'pet_shop');

$query = '';
$fileNumbers = range(2, 7);

foreach ($fileNumbers as $fileNumber) {
    $sqlScript = file(sprintf('000%d_create_database.sql', $fileNumber));

    foreach ($sqlScript as $line) {
        $startWith = substr(trim($line), 0, 2);
        $endWith = substr(trim($line), -1, 1);

        if (empty($line) || $startWith == '--' || $startWith == '/*' || $startWith == '//') {
            continue;
        }

        $query .= $line . "/*<br>*/";
        if ($endWith == ';') {
            mysqli_query($conn, $query) or die('<div>Problem in executing the SQL query <b>,<br><br>' . $query . '</b><br><br>' . $conn->error . '</div>');
            $query = '';
        }
    }
}

echo '<div>SQL files imported successfully</div>';
?>
