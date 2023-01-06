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
  <title>Connect to a Database</title>
  <link rel="stylesheet" href="../css/style.css">
</head>

<body>

  <?php
  $servername = "localhost"; // the database server is running on my computer, not a remote compute on network or on the internet
  $username = "root"; // default admin account to access the DBMS
  $password = ""; // default password empty

  /* Running MySQL server with a default setting (user 'root' no password)
    If the connection is successful the code within try-block is executed, 
    if any error occurs while running the code in try-block,   
    the code in catch-block is executed. */

  try {
    $conn = new PDO("mysql:host=$servername", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    //sets the error mode of PHP engine to Exception to display all the errors
    echo "<b>Connection is Successful 😊 </b></p>";
    //displays success message in HTML code in green

  } catch (PDOException $err) {
    echo "<p style='color:red'> Connection Failed 😣: "
      . $err->getMessage() . "</p>\r\n";
    //displays the error message in HTML code in red
  }

  //Always close the connection, when not needed anymore.
  unset($conn);

  echo "<a href=' ../index.html'>Back to the Homepage</a>";
  ?>

</body>

</html>