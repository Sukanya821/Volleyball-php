<?php
require('connect.php');

// Retrieve the Team_id from the request
$update_ID = $_REQUEST['Team_id'];
$Team_id = $update_ID;
?>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <title>Update Team Data</title>
        <link rel="stylesheet" href="mystyle.css" type="text/css">
    </head>

    <body>
        <h2>Update Data : Team</h2>

        <form style="width: 33%; margin-left: 33%;" action="updatedata.php?Team_id=<?php echo $Team_id; ?>" method="post" name="Team">
            <table border="1">
                <tr>
                    <td>Team ID:</td>
                    <td><input type="text" name="Team_id" value="<?php echo $Team_id; ?>" disabled></td>
                </tr>
                <tr>
                    <td>Team Name:</td>
                    <td><input type="text" name="Team_name"></td>
                </tr>
                <tr>
                    <td>Coach:</td>
                    <td><input type="text" name="Coach"></td>
                </tr>
                <tr>
                    <td>Home City:</td>
                    <td><input type="text" name="Home_city"></td>
                </tr>
            </table>

            <br>
            <input type="submit" value="Update Data">
        </form>

        <?php
        mysqli_close($conn); // Close the database connection
        echo "<br><br>";
        echo "--- END ---";
        ?>
    </body>
</html>

