<?php
$servername="127.0.0.1";
$username="root";
$password="";
$dbname="library";

$conn=new mysqli($servername,$username,$password,$dbname);

$id_autor=$_POST['id_autor'];
$imie=$_POST['imie'];
$nazwisko=$_POST['nazwisko'];

$sql= "INSERT INTO autorzy (id_autor, imie, nazwisko) values (null, '$imie', '$nazwisko')";

echo("$sql");
mysqli_query($conn, $sql);
header("Location: index_tab.php");


?>