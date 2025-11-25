<?php
session_start();

if (!isset($_SESSION["logged_in"]) || $_SESSION["logged_in"] !== true) {
    echo '<script>alert("Brak dostępu. Zaloguj się najpierw."); window.location.href="index.html";</script>';
    exit();
}
?>
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
        <h1 ><b>Wyszukiwarka</b></h1>
    </header>
    <section class="form">
        <form method="POST" action="">
            <label>Dane które chcesz otrzymać:</label>
            <select name="wybor">
                <option value="blank"></option>
                <option value="czytelnicy">Czytelnicy</option>
                <option value="ksiazki">Książki</option>
                <option value="wypozyczenia">Wypożyczenia w ostatnim czasie</option>
                <option value="zwrocone">Zwrócone książki</option>
                <option value="niezwrocone">Niezwrócone książki</option>
            </select>
            <input type="submit" value="Sprawdź">
        </form>
        <form method="get">
        <label>Wyszukiwanie tytułu:</label>
        <input type="text" name="fraza" placeholder="Szukaj tytułu...">
        <button type="submit">Szukaj</button>
        </form>
    </section>

    <section class="answer">

<?php
if ($_SERVER["REQUEST_METHOD"] === "POST") {

    $wybor = $_POST["wybor"];

    if ($wybor == "czytelnicy") {

        $sql = "SELECT * FROM czytelnicy";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            echo "<h2>Lista czytelników</h2><br/>";
            echo "<table border='1' cellpadding='8'>
                <tr>
                    <th>ID</th>
                    <th>IMIĘ</th>
                    <th>NAZWISKO</th>
                    <th>KLASA</th>
                </tr>";

            while ($row = $result->fetch_assoc()) {
                echo "<tr>
                        <td>{$row['id']}</td>
                        <td>{$row['imie']}</td>
                        <td>{$row['nazwisko']}</td>
                        <td>{$row['klasa']}</td>
                      </tr>";
            }

            echo "</table>";
        } else {
            echo "Brak danych w bazie!";
        }
    }

    else if ($wybor == "ksiazki") {

        $sql = "SELECT * FROM ksiazki";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            echo "<h2>Lista książek</h2><br/>";
            echo "<table border='1' cellpadding='8'>
                <tr>
                    <th>ID</th>
                    <th>TYTUŁ</th>
                    <th>AUTOR</th>
                    <th>GATUNEK</th>
                    <th>STATUS</th>
                </tr>";

            while ($row = $result->fetch_assoc()) {
                echo "<tr>
                    <td>{$row['id']}</td>
                    <td>{$row['tytul']}</td>
                    <td>{$row['autor']}</td>
                    <td>{$row['gatunek']}</td>
                    <td>" . ($row['status'] == 1 ? "wypożyczona" : "dostępna") . "</td>
                </tr>";
            }

            echo "</table>";
        } else {
            echo "Brak danych w bazie!";
        }
    }

    else if ($wybor == "wypozyczenia") {

        $sql = "SELECT * FROM wypozyczenia";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            echo "<h2>Lista wypożyczeń w ostatnim czasie</h2><br/>";
            echo "<table border='1' cellpadding='8'>
                <tr>
                    <th>ID</th>
                    <th>ID CZYTELNIKA</th>
                    <th>ID KSIĄŻKI</th>
                    <th>DATA WYPOŻYCZENIA</th>
                    <th>DATA ZWROTU</th>
                </tr>";

            while ($row = $result->fetch_assoc()) {
                echo "<tr>
                    <td>{$row['id']}</td>
                    <td>{$row['id_czytelnika']}</td>
                    <td>{$row['id_ksiazki']}</td>
                    <td>{$row['data_wypozyczenia']}</td>
                    <td>{$row['data_zwrotu']}</td>
                </tr>";
            }

            echo "</table>";
        } else {
            echo "Brak danych w bazie!";
        }
    }

    else if ($wybor == "zwrocone") {

        $sql = "SELECT 
                c.id AS cid,
                c.imie AS cimie,
                c.nazwisko AS cnazwisko,
                c.klasa AS cklasa,
                k.tytul AS ktytul,
                k.autor AS kautor,
                w.data_wypozyczenia AS wdata,
                w.data_zwrotu AS wzwrot
                FROM wypozyczenia w
                JOIN czytelnicy c ON c.id = w.id_czytelnika
                JOIN ksiazki k ON k.id = w.id_ksiazki
                WHERE w.data_zwrotu IS NOT NULL";

        $result = $conn->query($sql);

        echo "<h2>Lista zwróconych książek</h2><br/>";

        if ($result->num_rows > 0) {
            echo "<table border='1' cellpadding='8'>
                <tr>
                    <th>ID</th>
                    <th>IMIĘ</th>
                    <th>NAZWISKO</th>
                    <th>KLASA</th>
                    <th>TYTUŁ</th>
                    <th>AUTOR</th>
                    <th>DATA WYPOŻYCZENIA</th>
                    <th>DATA ZWROTU</th>
                </tr>";

            while ($row = $result->fetch_assoc()) {
                echo "<tr>
                    <td>{$row['cid']}</td>
                    <td>{$row['cimie']}</td>
                    <td>{$row['cnazwisko']}</td>
                    <td>{$row['cklasa']}</td>
                    <td>{$row['ktytul']}</td>
                    <td>{$row['kautor']}</td>
                    <td>{$row['wdata']}</td>
                    <td>{$row['wzwrot']}</td>
                </tr>";
            }

            echo "</table>";
        } else {
            echo "Brak danych w bazie!";
        }
    }

    else if ($wybor == "niezwrocone") {

        $sql = "SELECT 
                c.id AS cid,
                c.imie AS cimie,
                c.nazwisko AS cnazwisko,
                c.klasa AS cklasa,
                k.tytul AS ktytul,
                k.autor AS kautor,
                w.data_wypozyczenia AS wdata
                FROM wypozyczenia w
                JOIN czytelnicy c ON c.id = w.id_czytelnika
                JOIN ksiazki k ON k.id = w.id_ksiazki
                WHERE w.data_zwrotu IS NULL";

        $result = $conn->query($sql);

        echo "<h2>Lista niezwróconych książek</h2><br/>";

        if ($result->num_rows > 0) {
            echo "<table border='1' cellpadding='8'>
                <tr>
                    <th>ID</th>
                    <th>IMIĘ</th>
                    <th>NAZWISKO</th>
                    <th>KLASA</th>
                    <th>TYTUŁ</th>
                    <th>AUTOR</th>
                    <th>DATA WYPOŻYCZENIA</th>
                </tr>";

            while ($row = $result->fetch_assoc()) {
                echo "<tr>
                    <td>{$row['cid']}</td>
                    <td>{$row['cimie']}</td>
                    <td>{$row['cnazwisko']}</td>
                    <td>{$row['cklasa']}</td>
                    <td>{$row['ktytul']}</td>
                    <td>{$row['kautor']}</td>
                    <td>{$row['wdata']}</td>
                </tr>";
            }

            echo "</table>";
        } else {
            echo "Brak danych w bazie!";
        }
    }
    
}
$fraza = $_GET['fraza'] ?? '';

$sql = "
SELECT *
FROM ksiazki
WHERE ksiazki.tytul LIKE '%$fraza%'";

$result = $conn->query($sql);

if ($result->num_rows > 0) 
    {
        echo "<h2>Lista książek</h2>";
        echo "<table border='1' cellpadding='8'>
            <tr>
                <th>id</th>
                <th>TYTUŁ</th>
                <th>AUTOR</th>
                <th>GATUNEK</th>
                <th>STATUS</th>
            </tr>";
        while($row = $result->fetch_assoc()) {
            echo "<tr>
                    <td>{$row['id']}</td>
                    <td>{$row['tytul']}</td>
                    <td>{$row['autor']}</td>
                    <td>{$row['gatunek']}</td>
                    <td>" . ($row['status'] == 1 ? "wypożyczona" : "dostępna") . "</td>
                </tr>";
        }
        echo "</table>";
    } 
else 
    {
    echo "Brak danych w bazie.";
    }

$conn->close();
?>

    </section>
</div>

</body>
</html>
