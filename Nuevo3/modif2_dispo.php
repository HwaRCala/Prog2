<?php
require 'db_conn.php';

if(isset($_POST['accion']) && $_POST['accion'] == 'UPD') {
    if(isset($_POST['id_dispositivo'])) {
        $id_dispositivo = $_POST['id_dispositivo'];
        $numero_serie = $_POST['numero_serie'];
        $modelo = $_POST['modelo'];

        if (mysqli_query($conexion, "UPDATE dispositivo 
                                SET numero_serie = '$numero_serie',
                                    modelo = '$modelo'
                                WHERE id_dispositivo = '$id_dispositivo'")) {

            echo "<html><head><script>alert('DISPOSITIVO Modificado!');</script></head></html>";
            echo "<meta http-equiv='refresh' content='0; url=bm_dispositivo.php'>";
        } else {
            echo "<html><head><script>alert('ERROR! El DISPOSITIVO no se modificó!');</script></head></html>";
            echo "<meta http-equiv='refresh' content='0; url=bm_dispositivo.php'>";
        }
	
	}
}
?>