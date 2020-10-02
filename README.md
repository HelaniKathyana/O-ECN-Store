# PHP MySQL Database

With PHP, you can connect to and manipulate databases.
MySQL is the most popular database system used with PHP.
MySQL is structured query language developed by Microsoft for dealing with databases. Here are some advantages of MySQL:

##Data Security: 
MySQL is globally renowned for being the most secure and reliable database management system used in popular web applications including WordPress, Drupal, Joomla, Facebook and Twitter.

##High Performance: 
MySQL features a distinct storage-engine framework that facilitates system administrators to configure the MySQL database server for a flawless performance.

##Round-the-Clock Up-time: 
MySQL comes with the assurance of 24×7 up-time and offers a wide range of high-availability solutions, including specialized cluster servers and master/slave replication configurations.

##The Flexibility of Open Source: 
All the fears and worries that arise in an open-source solution can be brought to an end with MySQL’s round-the-clock support and enterprise indemnification. The secure processing and trusted software of MySQL combine to provide effective transactions for large-volume projects. It makes maintenance, debugging and upgrades fast and easy while enhancing the end-user experience.


# PHP Connect to MySQL

=Open a Connection to MySQL=

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
