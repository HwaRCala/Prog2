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
                    <div class="col-sm-8"><h2>Alta <b>Dispositivo</b></h2></div>
                    <div class="col-sm-4">
                        </br><a href="index.html" class="btn btn-info add-new"><i class="fa fa-arrow-left"></i> volver</a>
                    </div>
                </div>
            </div>

		<div class="row">
			<form method="POST" action="alta_dispositivo.php">
				<div class="col-md-6">
					<label>Número de Serie:</label>
					<input type="text" name="numero_serie" id="numero_serie" class='form-control' maxlength="100" required>
				</div>
				<div class="col-md-6">
					<label>Modelo:</label>
					<input type="text" name="modelo" id="modelo" class='form-control' maxlength="100">
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

if(isset($_POST['numero_serie']) && isset($_POST['modelo'])){
	
	$numero_serie = $_POST['numero_serie'];
	$modelo = $_POST['modelo'];

	

	if (mysqli_query($conexion, "INSERT into dispositivo (numero_serie,modelo) VALUES
							 ('$numero_serie','$modelo')")) {

		echo "<html><head><script>alert('Datos del DISPOSITIVO Guardados');</script></head></html>";
		echo "<meta http-equiv='refresh' content='0; url=index.html'>";
	} else {
		echo "<html><head><script>alert('ERROR! El guardado no se completo');</script></head></html>";
		echo "<meta http-equiv='refresh' content='0; url=index.html'>";
	}
	
	
}

?>