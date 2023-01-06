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
  <title>Insert Data Into a Databse</title>
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

  //Insert Data
  try {
    $sql = "INSERT INTO Player (FName, LName, ShirtNumber, DoB, TeamName)
    VALUES (:fn, :ln, :sn, :bd, :tn);";
    // all the variable names must start with a colon (:)

    //execute directly vs prepare statment
    //https://www.w3schools.com/php/php_mysql_prepared_statements.asp
    $stmnt = $conn->prepare($sql);
    $stmnt->bindParam(':fn', $_POST['fn']);
    $stmnt->bindParam(':ln', $_POST['ln']);
    $stmnt->bindParam(':sn', $_POST['sn']);
    $stmnt->bindParam(':bd', $_POST['bd']);
    $stmnt->bindParam(':tn', $_POST['tn']);
    // $_POST['fn'] in the exact name of the input element in HTML. 
    // note the single quotes, If you forget to put single quotes, your code does not work.

    $stmnt->execute();

    echo "<b> Data Insertion Successful 👍</b></p>";
  } catch (PDOException $err) {
    echo "<p style='color:red'> Data Insertion Failed 👎 : "
      . $err->getMessage() . "</p>\r\n";
  }

  //Close the connection
  unset($conn);

  echo "<a href='../insertData.html'>Insert More Values</a> <br />";

  echo "<a href='../index.html'>Back to the Homepage</a>";

  ?>

</body>

</html>