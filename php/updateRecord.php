<!--2022/11/27
    Seulah Lee 
    CSIS 2300 002 Database 1 
    Prof. Saeed Mirjalili
    Step 6 
-->

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Update a record of a table</title>
  <link rel="stylesheet" href="../css/style.css">
</head>

<body>

  <?php
  $servername = "localhost";
  $dbname = "KickBaseDB";
  $username = "root";
  $password = "";

  //MySQL server connection
  try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", "$username", "$password");
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    // sets the error mode of PHP engine to Exception to display all the errors
    echo "<b> Connection is Successful 😊 </b></p>";
    //displays success message in HTML code in green

  } catch (PDOException $err) {
    echo "<p style='color:red'> Connection Failed 😣: "
      . $err->getMessage() . "</p>\r\n";
    //displays the error message in HTML code in red
  }


  //Update Data
  try {
    $sql = "UPDATE $dbname.Player
    SET FName = :fn, LName = :ln, ShirtNumber = :sn, TeamName = :tn 
    WHERE PlayerID = :pid";

    $stmnt = $conn->prepare($sql);
    $stmnt->bindParam(':pid', $_POST['pid']);
    $stmnt->bindParam(':fn', $_POST['fn']);
    $stmnt->bindParam(':ln', $_POST['ln']);
    $stmnt->bindParam(':sn', $_POST['sn']);
    $stmnt->bindParam(':tn', $_POST['tn']);
    $stmnt->execute();

    echo "<b>Record Updated Successfully 👍</b><p>";
  } catch (PDOException $err) {
    echo "<p style:'color:red'>Record Update Failed👎 :"
      . $err->getMessage() . "</p>\r\n";
  }

  //Close the connection
  unset($conn);

  echo "<a href='../index.html'>Back to the Homepage</a>";

  ?>
</body>

</html>