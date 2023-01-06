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
  <title>Create a Table</title>
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
    echo "<b> Connection is Successful 😊</b></p>";
    //displays success message in HTML code in green

  } catch (PDOException $err) {
    echo "<p style='color:red'> Connection Failed 😣: "
      . $err->getMessage() . "</p>\r\n";
    //displays the error message in HTML code in red
  }

  //Create a Table 
  $sql = "CREATE TABLE Player (
    PlayerID INT AUTO_INCREMENT, 
    FName VARCHAR(50) NOT NULL,
    LName VARCHAR(50) NOT NULL,
    ShirtNumber NUMERIC(2),
    DoB DATE,
    TeamName VARCHAR(20),
    PRIMARY KEY (PlayerID)
  );

  ALTER TABLE Player AUTO_INCREMENT=1000;";

  try {
    $conn->exec($sql);
    echo "<b> Table Created Successfully 👍 </b></p>";
  } catch (PDOException $err) {
    echo "<p style='color:red'>Table Creating Failed 👎 : "
      . $err->getMessage() . "</p>\r\n";
  }

  //Close the connection
  unset($conn);

  echo "<a href='../index.html'>Back to the Homepage</a>";

  ?>
</body>

</html>