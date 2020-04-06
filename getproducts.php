<?php
include("connection.php");
extract($_GET);
if($category != "All"){
    $sql="SELECT * FROM item WHERE Category='".$category."'";
}
else{
    $sql="SELECT * FROM item";
}
//echo "console.log(".$sql.")";
//echo $conn->query($sql);
$res="";
$result = $conn->query($sql);
//echo $result;
if($result->num_rows > 0){
    while($row = $result->fetch_assoc()) {
        //echo "id:".$row["IID"].",Name:".$row["Name"].";";
        $res=$res.$row["IID"]."::{Name:".$row["Name"].",Desc:".$row["Description"].",gender:".$row['Gender'].",image:".$row["Image"].",price:".$row["Price"].",category:".$row["Category"].",subcategory:".$row["SubCategory"]."};";
    }
}
else{
    $res="0 results";
}
echo json_encode($res);
?>