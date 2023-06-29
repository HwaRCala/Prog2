<?php
require 'db_conn.php';

if(isset($_POST['accion']) == 'UPD'){
	
	if(isset($_POST['id_pmr'])) {
		
		$id_pmr = $_POST['id_pmr'];
		$pmr = $_POST['pmr'];
		$direccion = $_POST['direccion'];
		$ident_dispositivo = $_POST['ident_dispositivo'];
		$ident_operadora = $_POST['ident_operadora'];
		$ident_sim = $_POST['ident_sim'];
		
		

		if (mysqli_query($conexion, "UPDATE pmr 
								SET pmr = '$pmr',
									direccion = '$direccion', 
									ident_sim = '$ident_sim', 
									ident_dispositivo = '$ident_dispositivo', 
									ident_operadora = '$ident_operadora'
								WHERE id_pmr = '$id_pmr'")) {

			echo "<html><head><script>alert('PMR Modificado!');</script></head></html>";
			echo "<meta http-equiv='refresh' content='0; url=bm.php'>";
		} else {
			echo "<html><head><script>alert('ERROR! El PMR no se modificó!');</script></head></html>";
			echo "<meta http-equiv='refresh' content='0; url=bm.php'>";
		}
	
	}
}
?>