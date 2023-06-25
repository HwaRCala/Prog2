<?php
require 'db_conn.php';

if(isset($_POST['accion']) == 'UPD'){
	
	if(isset($_POST['nombre']) && isset($_POST['apellido']) && isset($_POST['depto']) && isset($_POST['email'])){
		
		$fecha	= date("Y-m-d");

		$id = $_POST['id_empleado'];
		$nombre = $_POST['nombre'];
		$apellido = $_POST['apellido'];
		$depto = $_POST['depto'];
		$email = $_POST['email'];

		/*echo 'nombre: '. $nombre;
		echo 'apellido: '. $apellido;
		echo 'depto: '. $depto;
		echo 'email: '. $email;
		echo 'fecha: '. $fecha;
		exit();*/
		
		
		if (mysqli_query($con, "UPDATE empleado 
								SET nombre = '$nombre', 
									apellido = '$apellido', 
									id_departamento = $depto, 
									email = '$email', 
									fecha = '$fecha'
								where id_empleado = '$id' 
								")) {

			echo "<html><head><script>alert('empleado modificado');</script></head></html>";
			echo "<meta http-equiv='refresh' content='0; url=index.php'>";
		} else {
			echo "<html><head><script>alert('ERROR! El borrado no se completo');</script></head></html>";
			echo "<meta http-equiv='refresh' content='0; url=index.php'>";
		}
		
	}
}
?>