<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="dane.css">
</head>
<body>
    <!-- Seriale z gatunku komedia -->
<?php
$servername="127.0.0.1";
$username="root";
$password="";
$dbname="chodak";

$conn=new mysqli($servername,$username,$password,$dbname);

echo("<table class='tab'>");
$result=$conn->query("SELECT * FROM serialekomedia");
echo("<tr>
<th>KomediaID</th>
<th>Tytul</th>
<th>Sezon</th>
<th>Odcinki</th>
</tr>");
while($row=$result->fetch_assoc() ){
    echo("<tr>");
    echo("
    <td>".$row['KomediaID']."</td>
    <td>".$row['KomediaTytul']."</td>
    <td>".$row['KomediaSezon']."</td>
    <td>".$row['KomediaOdcinki']."</td>
     ");
    echo("</tr>");
}
echo("</table>");
?>
<!-- Seriale z gatunku Fantasy -->
<?php
$servername="127.0.0.1";
$username="root";
$password="";
$dbname="chodak";

$conn=new mysqli($servername,$username,$password,$dbname);

echo("<table class='tab'>");
$result=$conn->query("SELECT * FROM serialeFantasy");
echo("<tr>
<th>FantasyID</th>
<th>Tytul</th>
<th>Sezon</th>
<th>Odcinki</th>
</tr>");
while($row=$result->fetch_assoc() ){
    echo("<tr>");
    echo("
    <td>".$row['FantasyID']."</td>
    <td>".$row['FantasyTytul']."</td>
    <td>".$row['FantasySezon']."</td>
    <td>".$row['FantasyOdcinki']."</td>
     ");
    echo("</tr>");
}
echo("</table>");
?>
</body>
</html>
