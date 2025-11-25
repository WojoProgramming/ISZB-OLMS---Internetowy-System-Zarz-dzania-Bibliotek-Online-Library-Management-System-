<?php
session_start();
require("db_connect.php");

if (!isset($_SESSION["logged_in"]) || $_SESSION["logged_in"] !== true) {
    echo '<script>alert("Brak dostępu. Zaloguj się najpierw."); window.location.href="index.html";</script>';
    exit();
}

$typ = $_GET['typ'] ?? '';
?>

<!DOCTYPE HTML>
<html lang="pl">
<head>
<meta charset="utf-8">
<title>Dodawanie danych</title>
<link rel="stylesheet" href="styleDodawanieIWZ.css">
</head>

<body>

<header>
    <h1>Dodawanie nowych danych</h1>
</header>

<main>

    <form class="topForm" method="GET" action="">
        <label>Wybierz typ danych:</label>
        <select name="typ" onchange="this.form.submit()">
            <option value="">-- wybierz --</option>
            <option value="czytelnik" <?= $typ=="czytelnik"?"selected":"" ?>>Czytelnik</option>
            <option value="ksiazka" <?= $typ=="ksiazka"?"selected":"" ?>>Książka</option>
        </select>
    </form>

    <section class="content">
        <hr>

<?php
if ($typ === "czytelnik") {

    if ($_SERVER["REQUEST_METHOD"] === "POST" && ($_POST["typ"] ?? '') === "czytelnik") {

        $imie = $_POST["imie"] ?? '';
        $nazwisko = $_POST["nazwisko"] ?? '';
        $klasa = $_POST["klasa"] ?? '';

        if (!empty($imie) && !empty($nazwisko) && !empty($klasa)) {

            $sql = "INSERT INTO `czytelnicy` (`imie`, `nazwisko`, `klasa`) VALUES ('$imie', '$nazwisko', '$klasa')";
            if ($conn->query($sql)) {
                echo '<script>alert("Dodano czytelnika!"); window.location.href="dodawanie.php?typ=czytelnik";</script>';
                exit();
            } else {
                echo "Błąd SQL: " . $conn->error;
            }

        } else {
            echo '<script>alert("Wszystkie pola muszą być uzupełnione!");</script>';
        }
    }
    echo '
    <h2>Dodaj czytelnika</h2>
    <fieldset>
    <form method="POST" action="">
        <input type="hidden" name="typ" value="czytelnik">

        <label>Imię:</label><br>
        <input type="text" name="imie"><br><br>

        <label>Nazwisko:</label><br>
        <input type="text" name="nazwisko"><br><br>

        <label>Klasa:</label><br>
        <input type="text" name="klasa"><br><br>

        <input type="submit" value="Dodaj czytelnika">
        </fieldset>
    </form>
    ';
}

if ($typ === "ksiazka") {

    if ($_SERVER["REQUEST_METHOD"] === "POST" && ($_POST["typ"] ?? '') === "ksiazka") {

        $tytul = $_POST["tytul"] ?? '';
        $autor = $_POST["autor"] ?? '';
        $gatunek = $_POST["gatunek"] ?? '';

        if (!empty($tytul) && !empty($autor) && !empty($gatunek)) {

            $sql = "INSERT INTO `ksiazki` (`tytul`,`autor`,`gatunek`,`status`) 
                    VALUES ('$tytul', '$autor', '$gatunek', 0)";

            if ($conn->query($sql)) {
                echo '<script>alert("Dodano książkę!"); window.location.href="dodawanie.php?typ=ksiazka";</script>';
                exit();
            } else {
                echo "Błąd SQL: " . $conn->error;
            }

        } else {
            echo '<script>alert("Wszystkie pola muszą być uzupełnione!");</script>';
        }
    }

    echo '
    <h2>Dodaj książkę</h2>
    <form method="POST" action="">
    <fieldset>
        <input type="hidden" name="typ" value="ksiazka">

        <label>Tytuł:</label><br>
        <input type="text" name="tytul"><br><br>

        <label>Autor:</label><br>
        <input type="text" name="autor"><br><br>

        <label>Gatunek:</label><br>
        <input type="text" name="gatunek"><br><br>

        <input type="submit" value="Dodaj książkę">
    </fieldset>
    </form>
    ';
}
?>
    </section>
    </main>

</body>
</html>
