<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="styles.css">
    <title>Formulario de Registro</title>
</head>
<body class="body">

<div class="container">
    <h1 class="h1">Registro de Usuario</h1>
    <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
        <label for="nombre">Nombre <span> <em> (requerido)</em></span></label>
        <input type="text" name="nombre" required>

        <label for="apellido1">Apellido<span><em> (requerido)</em></span></label>
        <input type="text" name="apellido1" required>

        <label for="email">Email <span><em> (requerido)</em></span> </label>
        <input type="email" name="email" required>

        <input type="submit" name="submit" value="Registrar">
    </form>
</div>

<?php

$servername = "LOCALHOST";
$username = "root";
$password = "";
$dbname = "Empleados";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
}

if (isset($_POST['submit'])) {
    $nombre = $_POST['nombre'];
    $apellido = $_POST['apellido1'];
    $email = $_POST['email'];

    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        echo '<p style="color: red; text-align: center;">Error: El email no tiene un formato válido.</p>';
    } else {
        $sql = "INSERT INTO PERSONAL (nombre, apellido, email) VALUES ('$nombre', '$apellido','$email')";

        if ($conn->query($sql) === TRUE) {
            $success = "Registro creado con éxito";
            echo '<p style="color: #0000f7; text-align: center; margin-top: 10px;">' . $success . '</p>';
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }

    }
}

$conn->close();
?>
  
</body>
</html>

