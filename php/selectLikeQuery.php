<!--2022/11/28
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
  <title>Display Record of a table</title>
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

  try {

    $sql =
      "SELECT  PlayerID, FName, LName, ShirtNumber, DoB, TeamName 
      FROM Player WHERE LName LIKE '$_POST[ln]%'";
    $stmnt = $conn->prepare($sql);

    $stmnt->execute();

    $row = $stmnt->fetch();  // fetches the first row of the table
    if ($row) {
      echo '<table>';
      echo '<tr> <th>Player ID</th> <th>First Name</th> <th>Last Name</th>
        <th>Birth Date</th> <th>Shirt Number</th> <th>Team</th> </tr>';
      do {
        echo "<tr><td>$row[PlayerID]</td><td>$row[FName]</td><td>$row[LName]</td>
          <td>$row[DoB]</td><td>$row[ShirtNumber]</td> <td>$row[TeamName]</td></tr>";
      } while ($row = $stmnt->fetch());
      // fetches another row from the query result, until we reach to the end of the result
      echo '</table>';
    } else {
      echo "<p style='color:red'> No Record Found!</p>";
    }
  } catch (PDOException $err) {
    echo "<p style='color:red'>Record Retrieval Failed: " . $err->getMessage() . "</p>\r\n";
  }


  // Close the connection
  unset($conn);

  echo "<a href='../index.html'>Back to the Homepage</a>";

  ?>

</body>

</html>