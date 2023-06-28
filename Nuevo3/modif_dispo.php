<?php
require 'db_conn.php';

if(isset($_GET['id_dispositivo'])) {
    
	$id_dispositivo = $_GET['id_dispositivo'];
		
    $query  = "SELECT * from dispositivo WHERE id_dispositivo = '$id_dispositivo'";

    $result = mysqli_query($conexion, $query);
	
    if (mysqli_affected_rows($conexion) == 1) {
        while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
            $id_dispositivo = $row['id_dispositivo'];
            $numero_serie = $row['numero_serie'];
            $modelo = $row['modelo'];
        }
    }	
}
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
                    <div class="col-sm-8"><h2>Editar <b>DISPOSITIVO</b></h2></div>
                    <div class="col-sm-4">
                        
                    </div>
                </div>
            </div>

			<div class="row">
				<form method="POST" action="modif2_dispo.php">
				<input type=hidden name="id_dispositivo" value="<?php echo $id_dispositivo;?>">
				<input type=hidden name="accion" value="UPD">
				<div class="col-md-6">
					<label>Dispositivo:</label>
					<input type="text" name="numero_serie" id="numero_serie" class='form-control' maxlength="100" value="<?php echo $numero_serie;?>">
				</div>
				<div class="col-md-6">
					<label>modelo:</label>
					<input type="text" name="modelo" id="modelo" class='form-control' maxlength="100" value="<?php echo $modelo;?>">
				</div>
				
				<div class="col-md-12 pull-right">
				<hr>
					<a href="bm_dispositivo.php" class="btn btn-info add-new"><i class="fa fa-arrow-left"></i> volver</a>
					<button type="submit" class="btn btn-success">Modificar datos</button>
				</div>
				</form>
			</div>
        </div>
    </div>     
</body>
</html>