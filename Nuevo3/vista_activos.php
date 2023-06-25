<?php
// Realizar la conexión a la base de datos MySQL
$conexion = mysqli_connect("localhost", "root", "", "monitoreo_pmr");

// Verificar la conexión
if (!$conexion) {
    die("Conexión fallida: " . mysqli_connect_error());
}

// Obtener los datos de los PMR activos desde la base de datos
$sql = "SELECT * FROM pmr_activos";
$resultado = mysqli_query($conexion, $sql);

// Mostrar los datos en una tabla
echo "<h1>Vista de PMR Activos</h1>";
echo "<table>";
echo "<tr><th>PMR</th><th>Dirección</th><th>OPERADORA</th><th>ID Dispositivo</th></tr>";
while ($row = mysqli_fetch_assoc($resultado)) {
    echo "<tr>";
    echo "<td>".$row["pmr"]."</td>";
    echo "<td>".$row["direccion"]."</td>";
    echo "<td>".$row["operadora"]."</td>";
    echo "<td>".$row["numero_serie"]."</td>";
    echo "</tr>";
}
echo "</table>";

// Cerrar la conexión a la base de datos
mysqli_close($conexion);
?>