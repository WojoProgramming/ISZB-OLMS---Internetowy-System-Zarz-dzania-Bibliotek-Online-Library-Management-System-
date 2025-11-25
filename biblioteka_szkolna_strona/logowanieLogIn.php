<?php
session_start();
require("db_connect.php");

if ($_SERVER["REQUEST_METHOD"] === "POST") {

    $login = $_POST["login"] ?? '';
    $haslo = $_POST["password"] ?? '';

    if (empty($login) || empty($haslo)) {
        echo '<script>alert("Uzupełnij wszystkie pola!");</script>';
    } else {

        $sql = "SELECT * FROM dane WHERE login = '$login'";
        $result = $conn->query($sql);

        if ($result->num_rows === 1) {
            $row = $result->fetch_assoc();

            if (password_verify($haslo, $row["haslo"])) {

                $_SESSION["logged_in"] = true;
                $_SESSION["user"] = $login;

                echo '<script>alert("Zalogowano!"); window.location.href="index.html";</script>';
                exit();

            } else {
                echo '<script>alert("Błędne hasło!");</script>';
            }

        } else {
            echo '<script>alert("Nie znaleziono użytkownika!");</script>';
        }
    }
}
?>

<!DOCTYPE HTML>
<html lang="pl">
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="style.css">
<title>Logowanie się</title>
</head>
<body>

<div class="container">
    <header><h1><b>Logowanie</b></h1></header>

    <section class="form">
        <fieldset>
        <div class = "form-container">
        <form method="POST" action="">
            <label>Login:</label><br>
            <input type="text" name="login"><br>

            <label>Hasło:</label><br>
            <input type="password" name="password"><br><br>

            <input type="submit" value="Zaloguj">
        </form>

        <p><b>Nie masz konta?</b></p>
        <a href="logowanieSignIn.php">Zarejestruj się</a>
        </div>
        </fieldset>
    </section>

</div>

</body>
</html>
