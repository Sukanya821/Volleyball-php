<?php /* *** No Copyright for Education (Free to Use and Edit) *** * /
PHP 7.1.1 | MySQL 5.7.17 | phpMyAdmin 4.6.6 | by appserv-win32-8.6.0.exe
Created by Mr.Earn SURIYACHAY | ComSci | KMUTNB | Bangkok | Apr 2018 
ปรับปรุงโดย ผศ.ดร.สุธิตา ชูสว่าง PSU | Oct 2023 */ ?>
<?php

// connect.php เป็น file สำหรับเชื่อมต่อฐานข้อมูล

$servername = 'localhost';
$username = 'root';
//$password = '1q2w3e4r@QWER';
$password = '';
$dbname = 'volleyball';

//opens a new connection to the MySQL server
$conn = mysqli_connect($servername, $username, $password, $dbname);

//แสดงผลการ connect กับ MySQL server
if (!$conn) {
	die("Connection : failed (เชื่อมต่อฐานข้อมูล ไม่ สำเร็จ)" . mysqli_connect_error());
} else {
	echo "Connection : OK (เชื่อมต่อฐานข้อมูลสำเร็จ)";
}

//เว้นบรรทัด
echo "<br/>"; 

//กำหนดการแสดงผลภาษาไทย
mysqli_set_charset($conn,'utf8'); 

// ปิดฐานข้อมูล
// mysqli_close($conn); 
?>