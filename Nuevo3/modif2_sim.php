<?php
require 'db_conn.php';

if(isset($_POST['accion']) && $_POST['accion'] == 'UPD') {
    if(isset($_POST['id_sim'])) {
        $id_sim = $_POST['id_sim'];
        $sim = $_POST['sim'];

        if (mysqli_query($conexion, "UPDATE sim 
                                SET sim = '$sim'
                                WHERE id_sim = '$id_sim'")) {

            echo "<html><head><script>alert('SIM Modificado!');</script></head></html>";
            echo "<meta http-equiv='refresh' content='0; url=bm_dispositivo.php'>";
        } else {
            echo "<html><head><script>alert('ERROR! El SIM no se modificó!');</script></head></html>";
            echo "<meta http-equiv='refresh' content='0; url=bm_dispositivo.php'>";
        }
	
	}
}
?>