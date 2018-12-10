<?php
	//Jalamos los textos de la pagina pasada
	$nombreEmple= $_POST["nombreEmp"];
	$ape_patEmple= $_POST["ape_patEmp"];
	$ape_matEmple= $_POST["ape_matEmp"];
	$telEmpe=$_POST["telEmp"];
	$celEmpe=$_POST["celEmp"];
	$emailEmpe=$_POST["emailEmp"];
	$usuarioEmpe = $_POST["usu"];
	$passwordEmpe = $_POST["passwordEmp"];

	//Hcaemos la conexion con la DB
	include "conf.php";
	if(mysqli_connect_errno($con)){
		echo "No se pudo conectar a la base de datos";
		exit;
	}

	$query = "call add_empleado('$nombreEmple','$ape_patEmple','$ape_matEmple','$telEmpe','$celEmpe','$emailEmpe','$usuarioEmpe','$passwordEmpe');";
	echo $query;
	$resultado = mysqli_query($con,$query);

		echo "<script>";
		echo "alert(\"Se ha registrado correctamente\");";
		echo "window.location.href = \"log_in.php\";";
		echo "</script>";
		//header("Location: log_in.php");

?>