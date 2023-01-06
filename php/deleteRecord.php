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
  <title>Delete a record of a table</title>
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


  //Delete Data
  try {
    $sql = "DELETE FROM $dbname.Player WHERE PlayerID = :pid";
    $stmnt = $conn->prepare($sql);
    $stmnt->bindParam(':pid', $_POST['pid']);
    $stmnt->execute();
    echo "<b>Record Deleted Successfully 👍</b><p>";
  } catch (PDOException $err) {
    echo "<p style:'color:red'>Record Delete Failed👎 :"
      . $err->getMessage() . "</p>\r\n";
  }

  //Close the connection
  unset($conn);

  echo "<a href=' ../index.html'>Back to the Homepage</a>";

  ?>
</body>

</html>