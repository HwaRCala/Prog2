<?php
require "db_conn.php";
?>

<html lang="en">

<head>
    <title>mi pagina de conexion</title>
</head>

<body class="">

    <div class="">
        <div class="">
            <div class=""><i class=""></i></div>
                <div class="" data-postfix="" data-duration="1500" data-delay="0">
                <h4>Departamento</h4><br>
                <?php
                    $query = "select * from departamento";

                    //echo $query;
                    $result = mysqli_query($con, $query);

                    if (mysqli_affected_rows($con) != 0) {
                        while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
                            echo $row["nombre"] . "<br>";
                        }
                    }else{
                        echo "sin datos";
                    }
                    ?>
            </div>
        </div>
    </div>
</body>

</html>
