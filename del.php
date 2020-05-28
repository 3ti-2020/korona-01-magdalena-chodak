<?php
$servername="127.0.0.1";
$username="root";
$password="";
$dbname="library";

$conn=new mysqli($servername,$username,$password,$dbname);

$sql="DELETE from autorzy where id_autor= " .$_POST['id_to_delete'];
// $sql="DELETE tytul from tytuly where id_tytul= " .$_POST['id_to_delete'];
// $sql="DELETE ISBN from tytuly where id_tytul= " .$_POST['id_to_delete'];



echo("$sql");
mysqli_query($conn,$sql );
header("Location: index_tab.php");

?>