<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Magdalena Chodak</title>
    <link rel="stylesheet" href="dane.css">
</head>
<body>
    <div class="container">
        <div class="a item">
            <h1>Magdalena Chodak</h1>
        </div>
        <div class="b">
            <ol>
                    <h2><a href="index.php">Gatunki:</a></h2>
            <li><h3>FANTASY</h3>
                    <ul><a href="FantasySerial.php">Serial</a></ul>
                    <ul><a href="FantasyFilm.html">Film<a></ul>
            </li>

            <li><h3>KOMEDIA</h3>
                    <ul><a href="KomediaSerial.php">Serial</a></ul>
                    <ul><a href="KomediaFilm.html">Film</a></ul>
            </li>

        </ol>
        </div>
        <div class="c">
                <p>W przykładach z seriali komediowych nie mogłoby zabraknąć:
                    <p>-"Przyjaciół"</p>
                    <p>-"Biura"</p>
                    <p>-"Rick i Morty"</p>
                </p>
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQjN7_2jmy6ELueb5SyRMg93wXiEo6WQNLZuN_kBV1YrzY_QGh4&usqp=CAU">
        <div class="tabela">
        <?php
$servername="127.0.0.1";
$username="root";
$password="";
$dbname="chodak";

$conn=new mysqli($servername,$username,$password,$dbname);

echo("<table class='tab'>");
$result=$conn->query("SELECT * FROM serialekomedia");
echo("<tr>
<th>ID</th>
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
        </div>
            </div>
    </div>
</body>
</html>
