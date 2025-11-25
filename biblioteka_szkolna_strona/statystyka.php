<!DOCTYPE HTML>
<html lang="pl">
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="style.css">
<title>Wyszukiwarka biblioteki</title>
</head>
<body>

<?php
require("db_connect.php");
?>

<div class="container">
<header>
    <h1><b>Statystyka</b></h1>
</header>
<section class="statystyka">

<?php
$sqlC = "SELECT COUNT(*) AS LiczbaCzytelnikow FROM czytelnicy";
$sqlK = "SELECT COUNT(*) AS LiczbaKsiazek FROM ksiazki";
$sqlW = "SELECT COUNT(*) AS LiczbaWypozyczen FROM wypozyczenia WHERE data_zwrotu IS NULL";
$sqlZ = "SELECT COUNT(*) AS LiczbaZwrotow FROM wypozyczenia WHERE data_zwrotu IS NOT NULL";
$sqlP = "SELECT COUNT(*) AS LiczbaPracownikow FROM dane";

$sqlONW = "
SELECT COUNT(w.id_ksiazki) AS Liczbawypozyczen, 
       c.imie AS cimie, 
       c.nazwisko AS cnazwisko
FROM czytelnicy c
LEFT JOIN wypozyczenia w ON c.id = w.id_czytelnika AND w.data_zwrotu IS NULL
GROUP BY c.id
ORDER BY Liczbawypozyczen DESC
LIMIT 3
";
$sqlMCW = "SELECT COUNT(DISTINCT id_czytelnika) AS LiczbaOsobZCzyms FROM wypozyczenia WHERE data_zwrotu IS NULL";

$sqlNMCW = "
SELECT 
    (SELECT COUNT(*) FROM czytelnicy) -
    (SELECT COUNT(DISTINCT id_czytelnika) FROM wypozyczenia WHERE data_zwrotu IS NULL)
    AS LiczbaOsobBezCzegos
";

$sqlG = "
SELECT COUNT(*) AS LiczbaGatunku,
       gatunek AS NazwaGatunku
FROM ksiazki
GROUP BY gatunek
ORDER BY LiczbaGatunku DESC
LIMIT 3
";

$dC = $conn->query($sqlC)->fetch_assoc();
$dK = $conn->query($sqlK)->fetch_assoc();
$dW = $conn->query($sqlW)->fetch_assoc();
$dZ = $conn->query($sqlZ)->fetch_assoc();
$dP = $conn->query($sqlP)->fetch_assoc();
$dMCW = $conn->query($sqlMCW)->fetch_assoc();
$dNMCW = $conn->query($sqlNMCW)->fetch_assoc();
$listaONW = [];
$wynikONW = $conn->query($sqlONW);
while ($row = $wynikONW->fetch_assoc()) {
    $listaONW[] = $row;
}

$listaG = [];
$wynikG = $conn->query($sqlG);
while ($row = $wynikG->fetch_assoc()) {
    $listaG[] = $row;
}

?>
<br/>
<br/>
<table border="1" cellpadding="8">
<tr>
    <th>Liczba czytelników</th>
    <th>Liczba książek</th>
    <th>Liczba wypożyczeń</th>
    <th>Liczba zwrotów</th>
    <th>Liczba pracowników</th>
    <th>Top 3 osoby z największą liczbą wypożyczeń</th>
    <th>Liczba osób które mają coś wypożyczone</th>
    <th>Liczba osób które nie mają nic wypożyczone</th>
    <th>Najpopularniejsze gatunki (Top 3)</th>
</tr>

<tr>
<td><?= $dC['LiczbaCzytelnikow'] ?></td>
<td><?= $dK['LiczbaKsiazek'] ?></td>
<td><?= $dW['LiczbaWypozyczen'] ?></td>
<td><?= $dZ['LiczbaZwrotow'] ?></td>
<td><?= $dP['LiczbaPracownikow'] ?></td>

<td>
<?php
foreach ($listaONW as $os) {
    echo $os['cimie'] . " " . $os['cnazwisko'] .
         "<br>";
}
?>
</td>

<td><?= $dMCW['LiczbaOsobZCzyms'] ?></td>
<td><?= $dNMCW['LiczbaOsobBezCzegos'] ?></td>

<td>
<?php
foreach ($listaG as $g) {
    echo $g['NazwaGatunku'] . " — " . $g['LiczbaGatunku'] . "<br>";
}
?>
</td>

</tr>
</table>

<?php $conn->close(); ?>

</section>
</div>
</body>
</html>
