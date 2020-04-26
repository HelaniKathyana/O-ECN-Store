# PHP MySQL Database

With PHP, you can connect to and manipulate databases.
MySQL is the most popular database system used with PHP.

# PHP Connect to MySQL

Open a Connection to MySQL

<?php
$servername = "localhost";
$username = "username";
$password = "password";

// Create connection
$conn = new mysqli($servername, $username, $password);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";
?>
