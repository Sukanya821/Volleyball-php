<?php
require('connect.php');

// รับค่าจากฟอร์ม
$Rank_id    = isset($_REQUEST['Rank_id']) ? $_REQUEST['Rank_id'] : '';
$Total_Score = isset($_REQUEST['Total_Score']) ? $_REQUEST['Total_Score'] : '';
$Team_id    = isset($_REQUEST['Team_id']) ? $_REQUEST['Team_id'] : '';

// ตรวจสอบค่าที่ได้รับ
if (empty($Rank_id) || empty($Total_Score)  || empty($Team_id)) {
    die("Error: All fields are required.");
}

// เริ่มต้นการทำงานเป็น transaction
mysqli_begin_transaction($conn);

try {
    // เพิ่มข้อมูลในตาราง team
    $sql_team = "
        INSERT INTO volleyball.team (Team_id)
        VALUES ('$Team_id');
    ";
    if (!mysqli_query($conn, $sql_team)) {
        throw new Exception("Error inserting into team: " . mysqli_error($conn));
    }

    // เพิ่มข้อมูลในตาราง rank โดยใช้ Team_id ที่ได้รับจากฟอร์ม
    $sql_rank = "
        INSERT INTO volleyball.rank (Rank_id, Total_Score, Team_id)
        VALUES ('$Rank_id', '$Total_Score', '$Team_id');
    ";
    if (!mysqli_query($conn, $sql_rank)) {
        throw new Exception("Error inserting into rank: " . mysqli_error($conn));
    }

    // ยืนยันการทำงาน (commit)
    mysqli_commit($conn);
    echo "New records inserted successfully";

} catch (Exception $e) {
    // ยกเลิกการทำงานหากเกิดข้อผิดพลาด (rollback)
    mysqli_rollback($conn);
    echo "Failed to insert records: " . $e->getMessage();
}

mysqli_close($conn); // ปิดการเชื่อมต่อฐานข้อมูล
?>
