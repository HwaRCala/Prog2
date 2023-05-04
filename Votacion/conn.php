<?php
$servername = "localhost";
$username = "username";
$password = "password";
$dbname = "myDB";

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexión
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// Verificar si el DNI ya existe en la base de datos
$dni = $_POST["dni"];
$sql = "SELECT * FROM formulario WHERE dni = $dni";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
  echo "Ya existe un formulario con este DNI";
  exit;
}

// Insertar los datos del formulario en la base de datos
$nombre = $_POST["nombre"];
$apellido = $_POST["apellido"];
$empresa = $_POST["empresa"];
$curso = $_POST["curso"];

$sql = "INSERT INTO formulario (nombre, apellido, dni, empresa, curso)
VALUES ('$nombre', '$apellido', $dni, '$empresa', '$curso')";

if ($conn->query($sql) === TRUE) {
  echo "Formulario enviado correctamente";
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>