<?php

if(isset($_GET['id_empleado'])) {

	require 'db_conn.php';
	$id = $_GET['id_empleado'];
	
	//echo 'query='. "DELETE FROM empleado WHERE id_empleado = $id";
	//exit();

    mysqli_query($con, "DELETE FROM empleado WHERE id_empleado = $id");
    echo "<html><head><script>alert('empleado Eliminado');</script></head></html>";
    echo "<meta http-equiv='refresh' content='0; url=index.php'>";

} else {
    echo "<html><head><script>alert('ERROR! El borrado no se completo');</script></head></html>";
    echo "<meta http-equiv='refresh' content='0; url=index.php'>";
}

mysqli_close($con);

?>