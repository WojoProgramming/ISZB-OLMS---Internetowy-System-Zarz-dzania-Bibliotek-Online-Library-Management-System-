<!DOCTYPE HTML>
<html lang="pl">
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="style.css">
<title>Rejstrowanie się</title>
</head>
<body>

<?php
require("db_connect.php");
?>

<div class="container">
    <header>
        <h1><b>Rejstrowanie się</b></h1>
    </header>
    <section class="form">
        <fieldset class = "Obramowka">
            <form method="POST" action="">
                <label></label>
                <br/>
                <label>Imię:</label>
                <br/>
                <input type="text" name="firstname">
                <br/>
                <label>Nazwisko:</label>
                <br/>
                <input type="text" name="surname">
                <br/>
                <label>Login:</label>
                <br/>
                <input type="text" name="login">
                <br/>
                <label>Email:</label>
                <br/>
                <input type="text" name="email">
                <br/>
                <label>Hasło:</label>
                <br/>
                <input type="password" name="password">
                <br/>
                <label>Kod upoważniający do założenia konta:</label>
                <br/>
                <input type="text" name="code">
                <br/>
                <br/>
                <input type="submit" value="Zarejstruj się">
            </form>
            
        </section>
    </fieldset>

<?php

if ($_SERVER["REQUEST_METHOD"] === "POST") {

    $imie = $_POST["firstname"] ?? '';
    $nazwisko = $_POST["surname"] ?? '';
    $login = $_POST["login"] ?? '';
    $email = $_POST["email"] ?? '';
    $haslo = $_POST["password"] ?? '';
    $code = $_POST["code"] ?? '';

    if (empty($imie) || empty($nazwisko) || empty($login) || empty($email) || empty($haslo) || empty($code))
    {
        echo '<script>alert("Dane nie zostały prawidłowo uzupełnione"); history.back();</script>';
        exit(); 

    }
    else 
    {
        $sql = "SELECT * FROM `kody` where kod = '$code'";
        $result = $conn -> query($sql); 
        if($result -> num_rows>0)
        {
            $hashed_password = password_hash($haslo, PASSWORD_DEFAULT);
             $sql = "INSERT INTO `dane` (`imie`, `nazwisko`, `login`, `haslo`, `email`) 
                VALUES ('$imie', '$nazwisko', '$login', '$hashed_password', '$email')";

            if ($conn->query($sql))    
            {
                $sql = "UPDATE `kody` SET `CzyWykorzystany` = 1 WHERE `kod` = '$code'";
                if(!$conn->query($sql))
                {
                    echo "Błąd: " . $conn->error;
                }
                echo '<script>alert("Konto zostało utworzone pomyślnie"); window.location.href="logowanieLogIn.php";</script>';
            } 
            else 
            {
                echo "Błąd: " . $conn->error;
            }
        }
        

    }
    

    $conn->close();
}
?>

    </section>
</div>

</body>
</html>
