<?php
// Realizar la conexión a la base de datos MySQL
$conexion = mysqli_connect("localhost", "root", "", "monitoreo_pmr");

// Verificar la conexión
if (!$conexion) {
    die("Conexión fallida: " . mysqli_connect_error());
}

// Obtener los datos de los PMR inactivos desde la base de datos
$sql = "SELECT * FROM pmr_inactivos";
$resultado = mysqli_query($conexion, $sql);

// Mostrar los datos en una tabla
echo "<h1>Vista de PMR Inactivos</h1>";
echo "<table>";
echo "<tr><th>Modelo</th><th>Numero de Serie</th><th>SIM</th><th>Operadora</th></tr>";
while ($row = mysqli_fetch_assoc($resultado)) {
    echo "<tr>";
    echo "<td>".$row["modelo"]."</td>";
    echo "<td>".$row["numero_serie"]."</td>";
    echo "<td>".$row["sim"]."</td>";
    echo "<td>".$row["operadora"]."</td>";
    echo "</tr>";
}
echo "</table>";

// Cerrar la conexión a la base de datos
mysqli_close($conexion);
?>