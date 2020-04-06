<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "wtproj";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
$conn1 = mysqli_connect($servername, $username, $password, "smartshopping");
// Check connection
if (mysqli_connect_errno()) {
    die("Connection failed: ".mysqli_connect_errno());
}

$sql = "SELECT * FROM items";

$result= mysqli_query($conn1,$sql);


if ($result) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        $str = "INSERT INTO item VALUES (".$row['itemid'].",'".$row['name']."','".$row['brand']."','".$row['gender']."','".$row['path']."',".$row['price'].",'".$row['category']."','".$row['color']."')";
        echo $str;
//        echo $row['gender'].",".$row['name']."<br>";
        //$result1 = mysqli_query($conn,$str);
        header('location:getproducts.php');
    }
} else {
    echo "0 results";
}
$conn->close();
?>
