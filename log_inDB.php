<?php
	//Jalamos los textos de la pagina pasada
	$username = $_POST["username"];
	$Userpassword = $_POST["password"];

	//Hcaemos la conexion con la DB
	include "conf.php";
	if(mysqli_connect_errno($con)){
		echo "No se pudo conectar a la base de datos";
		exit;
	}

	$query = "SELECT * FROM empleado WHERE Usuario = '$username' AND Password = '$Userpassword'";
	echo $query;
	$resultado = mysqli_query($con,$query);
	$row = mysqli_fetch_array($resultado);
	//Si el query arrojo algun resultado
	if($row){
		echo "<script>";
		echo "alert(\"Bienvenido\")";
		echo "</script>";
		header("Location: paquetes_del_dia.php");
	} else{
		echo "<script>";
		echo "alert(\"No Iniciaste sesion\")";
		echo "</script>";
	}

?>