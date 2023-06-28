<?php


require 'db_conn.php';


// Consulta SQL
$sql = "SELECT p.pmr, p.direccion, o.operadora, d.numero_serie
        FROM pmr p
        JOIN dispositivo d ON p.ident_dispositivo = d.id_dispositivo
        JOIN sim s ON p.ident_sim = s.id_sim
        JOIN operadora o ON s.empresa = o.id_operadora
        WHERE p.pmr = '222'";

$result = $conexion->query($sql);

if ($result->num_rows > 0) {
    // Imprimir los resultados
    echo "<table><tr><th>PMR</th><th>Dirección</th><th>Operadora</th><th>Número de Serie</th></tr>";
    while ($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["pmr"] . "</td><td>" . $row["direccion"] . "</td><td>" . $row["operadora"] . "</td><td>" . $row["numero_serie"] . "</td></tr>";
    }
    echo "</table>";
} else {
    echo "No se encontraron resultados.";
}

// Cerrar la conexión
$conexion->close();
?>