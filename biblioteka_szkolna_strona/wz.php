<?php
session_start();
require("db_connect.php");

if (!isset($_SESSION["logged_in"]) || $_SESSION["logged_in"] !== true) {
    echo '<script>alert("Brak dostępu — zaloguj się."); window.location.href="index.html";</script>';
    exit();
}

$typ = $_GET['typ'] ?? '';
?>

<!DOCTYPE HTML>
<html lang="pl">
<head>
<meta charset="utf-8">
<title>Wypożyczenia i zwroty</title>
<link rel="stylesheet" href="styleDodawanieIWZ.css">
</head>

<body>

<header>
    <h1>Wypożyczenia i zwroty</h1>
</header>

<main>

    <form class="topForm" method="GET" action="">
        <label>Wybierz akcję:</label>
        <select name="typ" onchange="this.form.submit()">
            <option value="">-- wybierz --</option>
            <option value="wypozyczenia" <?= $typ=="wypozyczenia"?"selected":"" ?>>Wypożyczenie</option>
            <option value="zwroty" <?= $typ=="zwroty"?"selected":"" ?>>Zwrot</option>
        </select>
    </form>

    <section class="content">
    <hr>

<?php if ($typ == "wypozyczenia"): ?>

<?php
$ks = $conn->query("SELECT * FROM ksiazki");
?>

<h2>Wybierz książkę do wypożyczenia</h2>

<form method="POST" action="">
    <select name="ksiazka">
        <?php while($row = $ks->fetch_assoc()): ?>
            <?php $status = $row['status']==1 ? "wypożyczona" : "dostępna"; ?>
            <option value="<?= $row['id'] ?>">
                <?= $row['tytul'] ?> – <?= $row['autor'] ?> (<?= $status ?>)
            </option>
        <?php endwhile; ?>
    </select>
    <input type="submit" name="wybierzKsiazke" value="Dalej">
</form>

<?php
if (isset($_POST["wybierzKsiazke"])) {

    $idk = $_POST["ksiazka"];

    $q = $conn->query("SELECT * FROM ksiazki WHERE id=$idk");
    $k = $q->fetch_assoc();

    if ($k['status'] == 1) {
        echo "<script>alert('Ta książka jest już wypożyczona');</script>";
    } else {

        $czyt = $conn->query("SELECT * FROM czytelnicy");
        ?>

        <h3>Wybierz czytelnika:</h3>
        <form method="POST" action="">
            <input type="hidden" name="ksiazka" value="<?= $idk ?>">
            <select name="czytelnik">
                <?php while($c = $czyt->fetch_assoc()): ?>
                    <option value="<?= $c['id'] ?>">
                        <?= $c['imie'] ?> <?= $c['nazwisko'] ?> (<?= $c['klasa'] ?>)
                    </option>
                <?php endwhile; ?>
            </select>
            <input type="submit" name="wypozycz" value="Wypożycz">
        </form>

        <?php
    }
}

if (isset($_POST["wypozycz"])) {

    $idk = $_POST["ksiazka"];
    $idc = $_POST["czytelnik"];
    $data = date("Y-m-d");

    $conn->query("INSERT INTO wypozyczenia (id_ksiazki, id_czytelnika, data_wypozyczenia) 
                  VALUES ($idk, $idc, '$data')");

    $conn->query("UPDATE ksiazki SET status=1 WHERE id=$idk");

    echo "<script>alert('Wypożyczono pomyślnie!'); window.location.href='wz.php?typ=wypozyczenia';</script>";
    exit();
}
?>

<?php endif; ?>
<?php if ($typ == "zwroty"): ?>

<?php
$ks = $conn->query("
    SELECT k.*, w.data_wypozyczenia, w.id AS id_wyp 
    FROM ksiazki k
    JOIN wypozyczenia w ON w.id_ksiazki = k.id
    WHERE k.status = 1 AND w.data_zwrotu IS NULL
");
?>

<h2>Wybierz książkę do zwrotu</h2>

<?php if ($ks->num_rows == 0): ?>
    <p>Brak książek do zwrotu.</p>
<?php else: ?>

<form method="POST" action="">
    <select name="ksiazka">
        <?php while($row = $ks->fetch_assoc()): ?>
            <option value="<?= $row['id'] ?>">
                <?= $row['tytul'] ?> – <?= $row['autor'] ?>  
                (wypożyczona: <?= $row['data_wypozyczenia'] ?>)
            </option>
        <?php endwhile; ?>
    </select>

    <input type="submit" name="zwrocKsiazke" value="Zwróć">
</form>

<?php endif; ?>


<?php
if (isset($_POST["zwrocKsiazke"])) {

    $idk = $_POST["ksiazka"];
    $data = date("Y-m-d");

    $q = $conn->query("
        SELECT * FROM wypozyczenia 
        WHERE id_ksiazki = $idk AND data_zwrotu IS NULL
        LIMIT 1
    ");

    if ($q->num_rows == 0) {
        echo "<script>alert('Ta książka nie jest wypożyczona.');</script>";
    } else {
        $wyp = $q->fetch_assoc();
        $idWypozyczenia = $wyp['id'];

        $conn->query("
            UPDATE wypozyczenia 
            SET data_zwrotu = '$data' 
            WHERE id = $idWypozyczenia
        ");
        $conn->query("
            UPDATE ksiazki 
            SET status = 0 
            WHERE id = $idk
        ");

        echo "<script>alert('Zwrócono pomyślnie!'); window.location.href='wz.php?typ=zwroty';</script>";
        exit();
    }
}
?>

<?php endif; ?>

    </section>
    </main>
</body>
</html>
