<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="style_tab.css">
</head>
<body>
    <div class="container">
    <div class="tab1">
    <div class="del">
        <form action="del.php" method="POST">
                <input type="text" name="id_to_delete">
                <input type="submit" value="delete">
            </form>
            </div>
<?php
$servername="127.0.0.1";
$username="root";
$password="";
$dbname="library";

$conn=new mysqli($servername,$username,$password,$dbname);

echo("<table class='tab'>");
$result=$conn->query("SELECT * FROM autorzy");
echo("<tr>
<th>id_autor</th>
<th>imie</th>
<th>nazwisko</th>
</tr>");
while($row=$result->fetch_assoc() ){
    echo("<tr>");
    echo("
    <td>".$row['id_autor']."</td>
    <td>".$row['imie']."</td>
    <td>".$row['nazwisko']."</td>
     ");
    echo("</tr>");
}
echo("</table>");
?>


<?php
$servername="127.0.0.1";
$username="root";
$password="";
$dbname="library";

$conn=new mysqli($servername,$username,$password,$dbname);

echo("<table class='tab'>");
$result=$conn->query("SELECT * FROM tytuly");
echo("<tr>
<th>id_tytul</th>
<th>tytul</th>
<th>ISBN</th>
</tr>");
while($row=$result->fetch_assoc() ){
    echo("<tr>");
    echo("
    <td>".$row['id_tytul']."</td>
    <td>".$row['tytul']."</td>
    <td>".$row['ISBN']."</td>
     ");
    echo("</tr>");
}
echo("</table>");
?>
</div>


    <div class="ins">
            <form action="ins.php" method="POST">
            
            <!-- <li><input type="text" class="none" name="id_autor"></li> -->

            <li>IMIE</li>
            <li><input type="text" name="imie"></li>
            <li>NAZWISKO</li>
            <li><input type="text" name="nazwisko"></li>
            


            <input type="submit" value="insert">
            
            </form>
        </div>
<div class="tab2">
<?php
$servername="127.0.0.1";
$username="root";
$password="";
$dbname="library";

$conn=new mysqli($servername,$username,$password,$dbname);

echo("<table class='tab'>");
$result=$conn->query("SELECT imie,nazwisko,tytul,ISBN FROM autorzy, tytuly where id_autor=id_tytul");
echo("<tr>
<th>Imie</th>
<th>Nazwisko</th>
<th>tytul</th>
<th>ISBN</th>
</tr>");
while($row=$result->fetch_assoc() ){
    echo("<tr>");
    echo("
    <td>".$row['imie']."</td>
    <td>".$row['nazwisko']."</td>
    <td>".$row['tytul']."</td>
    <td>".$row['ISBN']."</td>
     ");
    echo("</tr>");
}
echo("</table>");
?>
</div>
</div>
</body>
</html>
