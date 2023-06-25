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
                    <div class="col-sm-8"><h2>Nuevo <b>PMR</b></h2></div>
                    <div class="col-sm-4">
                        </br><a href="index.php" class="btn btn-info add-new"><i class="fa fa-arrow-left"></i> volver</a>
                    </div>
                </div>
            </div>

		<div class="row">
			<form method="POST" action="alta.php">
				<div class="col-md-6">
					<label>PMR</label>
					<input type="text" name="pmr" id="pmr" class='form-control' maxlength="100" required>
				</div>
				<div class="col-md-6">
					<label>Dirección:</label>
					<input type="text" name="direccion" id="direccion" class='form-control' maxlength="100">
				</div>
				<div class="col-md-6">
					<label>Empresa</label>
					<select name="operadora" id="operadora" class='form-control'>
							<option value="">-- seleccione --</option>
							<?php 
							
								$query= "select * from operadora";

								$result = mysqli_query($con, $query);

								if (mysqli_affected_rows($con) != 0 ) {
									while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
										echo "<option value=". $row['id_operadora'] .">" . $row['id_operadora'] . "</option>";
									}								
								}
							
							?>
					</select>
					</div>
				<div class="col-md-6">
					<label>Dispositivo:</label>
					<input type="dispositivo" name="dispositivo" id="dispositivo" class='form-control' maxlength="64">
				
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

if(isset($_POST['pmr']) && isset($_POST['direccion']) && isset($_POST['operadora']) && isset($_POST['numero_serie'])){
	
	$pmr = $_POST['pmr'];
	$direccion = $_POST['direccion'];
	$operadora = $_POST['operadora'];
	$numero_serie = $_POST['numero_serie'];


	if (mysqli_query($con, "INSERT into pmr_activo (pmr, direccion, operadora, numero_serie) VALUES
							 ('$pmr','$direccion',$operadora,'$numero_serie')")) {

		echo "<html><head><script>alert('datos del empleado guardados');</script></head></html>";
		echo "<meta http-equiv='refresh' content='0; url=index.php'>";
	} else {
		echo "<html><head><script>alert('ERROR! El guardado no se completo');</script></head></html>";
		echo "<meta http-equiv='refresh' content='0; url=index.php'>";
	}
	
}

?>