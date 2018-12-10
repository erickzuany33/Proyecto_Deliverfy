<?php
	//Jalamos los textos de la pagina pasada
	$nombreClie= $_POST["nombreCli"];
	$ape_patClie= $_POST["ape_patCli"];
	$ape_matClie= $_POST["ape_matCli"];
	$telClie=$_POST["telCli"];
	$celClie=$_POST["celCli"];
	$emailClie=$_POST["emailCli"];
	$calleClie = $_POST["calleCli"];
	$num_extClie = $_POST["num_extCli"];
	$num_intClie = $_POST["num_intCli"];
	$colClie= $_POST["colCli"];
	$cpClie= $_POST["cpCli"];
	$refClie= $_POST["refCli"];

	//Hcaemos la conexion con la DB
	include "conf.php";
	if(mysqli_connect_errno($con)){
		echo "No se pudo conectar a la base de datos";
		exit;
	}

	$query = "call deliverfy.add_cliente_direccion('$nombreClie','$ape_patClie','$ape_matClie','$telClie','$celClie','$emailClie','$calleClie', '$num_extClie', '$num_intClie','$colClie','$cpClie','$refClie');";
	echo $query;
	$resultado = mysqli_query($con,$query);

		echo "<script>";
		echo "alert(\"Se ha registrado correctamente\");";
		echo "window.location.href = \"Cliente_registrado.php\";";
		echo "</script>";
		//header("Location: log_in.php");

?>