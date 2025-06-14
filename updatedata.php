<?php
require('connect.php');

// Get values from the form
$Team_id    = $_REQUEST['Team_id'];
$Team_name  = isset($_POST['Team_name']) ? $_POST['Team_name'] : '';
$Coach      = isset($_POST['Coach']) ? $_POST['Coach'] : '';
$Home_city  = isset($_POST['Home_city']) ? $_POST['Home_city'] : '';

// Validate that all required fields are present
if (empty($Team_name) || empty($Coach) || empty($Home_city)) {
    die("Error: All fields are required.");
}

// Build the SQL query for updating the team
$sql = "
    UPDATE volleyball.team
    SET Team_name = '" . $Team_name . "',  
        Coach = '" . $Coach . "', 
        Home_city = '" . $Home_city . "' 
    WHERE Team_id = " . $Team_id . ";
";

// Execute the query
$objQuery = mysqli_query($conn, $sql);

// Display the result of the query
if ($objQuery) {
    echo "Record for Team ID " . $Team_id . " was updated successfully.";
} else {
    echo "Error: " . mysqli_error($conn);
}

mysqli_close($conn); // Close the database connection
echo "<br><br>";
echo "--- END ---";
?>
