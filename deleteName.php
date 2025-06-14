<?php
require('connect.php');

// รับค่าจากฟอร์ม
$delete_Name = isset($_REQUEST['Team_name']) ? $_REQUEST['Team_name'] : ''; // ใช้ Team_name ที่ถูกต้อง

if (empty($delete_Name)) {
    die("Error: Team Name is required.");
}

$sql = "
    DELETE FROM volleyball.team 
    WHERE Team_name LIKE '" . mysqli_real_escape_string($conn, $delete_Name) . "'; 
";

$objQuery = mysqli_query($conn, $sql);

if ($objQuery) {
    echo "Record " . htmlspecialchars($delete_Name) . " was deleted.";
} else {
    echo "Error: Delete failed.";
}

mysqli_close($conn); // ปิดการเชื่อมต่อฐานข้อมูล
echo "<br><br>";
echo "--- END ---";
?>
