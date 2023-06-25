<?php  
require 'db_conn.php';

$query = "select * from empleado";

$result  = mysqli_query($con, $query);

?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Listado de Datos</title>
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
                    <div class="col-sm-8"><h2>Listado de  <b>empleados</b></h2></div>
                    <div class="col-sm-4">
                        </br><a href="alta.php" class="btn btn-info add-new"><i class="fa fa-plus"></i> Agregar empleado</a>
                    </div>
                </div>
            </div>
            <table class="table table-bordered">
                <thead>
                    <tr>
                         <td>ID Empleado</td>
						<td>Nombre</td>
						<td>Apellido</td>
						<td>Email</td>
                        <th colspan=2>Acciones</th>
                    </tr>
                </thead>

				<?php 
					if (mysqli_affected_rows($con) != 0) {
						while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
					?>
						<tr>
							<td><?php echo $row["id_empleado"]?></td>
							<td><?php echo $row["nombre"]?></td>
							<td><?php echo $row["apellido"]?></td>
							<td><?php echo $row["email"]?></td>
							<td align=center><a href='baja.php?id_empleado=<?php echo $row["id_empleado"]?>'>BAJA</td>
							<td align=center><a href='modif.php?id_empleado=<?php echo $row["id_empleado"]?>'>MODIFICACION</td>
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