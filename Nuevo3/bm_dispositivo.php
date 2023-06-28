<?php  
require 'db_conn.php';

$query = "SELECT * FROM `dispositivo` ORDER BY `numero_serie` ASC";

$result  = mysqli_query($conexion, $query);

?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Acciones de PMR</title>
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
                    <div class="col-sm-8"><h2>Listado de  <b>Dispositivos</b></h2></div>
                    <div class="col-sm-4">
                        </br><a href="index.html" class="btn btn-info"><i class="fa fa-plus"></i> Volver</a>
                    </div>
                </div>
            </div>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <td>Dispositivo</td>
						<td>Modelo</td>
                        <th colspan=2>Acciones</th>
                    </tr>
                </thead>

				<?php 
					if (mysqli_affected_rows($conexion) != 0) {
						while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
					?>
						<tr>
							<td><?php echo $row["numero_serie"]?></td>
							<td><?php echo $row["modelo"]?></td>
							<td align=center><a href='baja_dispositivo.php?numero_serie=<?php echo $row["numero_serie"]?>'>BAJA</td>
							<td align=center><a href='modif_dispo.php?id_dispositivo=<?php echo $row["id_dispositivo"]?>'>MODIFICACION</td>
						</tr>
						<?php   
						}
					}else{
					?>
					<tr>
						<td colspan=100% align=center>sin datos</td>
					</tr>
					<?php
					}

				 ?>
                 
                <tbody>    
                          
                </tbody>
            </table>
        </div>
    </div>     
</body>
</html>