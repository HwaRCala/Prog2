<?php
require 'db_conn.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="css/custom.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
    <div class="container">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-8"><h2>Nuevo <b>empleado</b></h2></div>
                    <div class="col-sm-4">
                        </br><a href="index.php" class="btn btn-info add-new"><i class="fa fa-arrow-left"></i> volver</a>
                    </div>
                </div>
            </div>

		<div class="row">
			<form method="POST" action="alta.php">
				<div class="col-md-6">
					<label>Nombre:</label>
					<input type="text" name="nombre" id="nombre" class='form-control' maxlength="100" required>
				</div>
				<div class="col-md-6">
					<label>Apellido:</label>
					<input type="text" name="apellido" id="apellido" class='form-control' maxlength="100">
				</div>
				<div class="col-md-6">
					<label>Departamento</label>
					<select name="depto" id="depto" class='form-control'>
							<option value="">-- seleccione --</option>
							<?php 
							
								$query= "select * from departamento";

								$result = mysqli_query($con, $query);

								if (mysqli_affected_rows($con) != 0 ) {
									while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
										echo "<option value=". $row['id'] .">" . $row['nombre'] . "</option>";
									}								
								}
							
							?>
					</select>

				</div>
				<div class="col-md-6">
					<label>Email:</label>
					<input type="email" name="email" id="email" class='form-control' maxlength="64">
				
				</div>
				
				<div class="col-md-12 pull-right">
				<hr>
					<button type="submit" class="btn btn-success">Guardar datos</button>
				</div>
				</form>
			</div>
        </div>
    </div>     
</body>
</html>

<?php

if(isset($_POST['nombre']) && isset($_POST['apellido']) && isset($_POST['depto']) && isset($_POST['email'])){
	
	//require 'db_conn.php';

	$fecha	= date("Y-m-d");

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
	
	
	//echo "query:" . "INSERT into empleado (nombre, apellido, id_departamento, email, fecha) VALUES
	//						 ('$nombre','$apellido',$depto,'$email', '$fecha' )";
	//exit();

	if (mysqli_query($con, "INSERT into empleado (nombre, apellido, id_departamento, email, fecha) VALUES
							 ('$nombre','$apellido',$depto,'$email', '$fecha' )")) {

		echo "<html><head><script>alert('datos del empleado guardados');</script></head></html>";
		echo "<meta http-equiv='refresh' content='0; url=index.php'>";
	} else {
		echo "<html><head><script>alert('ERROR! El guardado no se completo');</script></head></html>";
		echo "<meta http-equiv='refresh' content='0; url=index.php'>";
	}
	
}

?>