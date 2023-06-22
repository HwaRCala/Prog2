<?php
// Realizar la conexión a la base de datos MySQL
$conexion = mysqli_connect("localhost", "root", "", "monitoreo_pmr");

// Verificar la conexión
if (!$conexion) {
    die("Conexión fallida: " . mysqli_connect_error());
}
    
     // Verificar si se recibieron los datos del formulario de modificación
     if (isset($_POST['submit'])) {
        $pmr_nuevo = $_POST['pmr'];
        $direccion_nueva = $_POST['direccion'];
        $sim_nuevo = $_POST['sim'];
        $dispositivo_nuevo = $_POST['dispositivo'];
        $estado_nuevo = $_POST['estado'];
    
        // Actualizar los datos del PMR en la base de datos
        $sql_update = "UPDATE pmr SET pmr = '$pmr_nuevo', direccion = '$direccion_nueva', ident_sim = '$sim_nuevo', ident_dispositivo = '$dispositivo_nuevo', estado = '$estado_nuevo' WHERE id_pmr = '$id_pmr'";
    
        if ($conexion->query($sql_update) === TRUE) {
            echo "PMR modificado correctamente";
        } else {
            echo "Error al modificar PMR: " . $conexion->error;
        }
    }
// Cerrar la conexión a la base de datos
mysqli_close($conexion);
?>
