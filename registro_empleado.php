<html>
	<body bgcolor="#00000">
		<font face="tahoma" color="white">
		<h1>REGISTRARME</h1>
		<form action = "registro_empleadoDB.php" method = "POST">
			<p>Nombre:           <input type = "text"      name = "nombreEmp" required></p>
			<p>Apellido Paterno: <input type = "text"      name = "ape_patEmp" required></p>
			<p>Apellido Materno: <input type = "text"      name = "ape_matEmp" required></p>
			<p>Teléfono:         <input type = "text"      name = "telEmp" required></p>
			<p>Celular:          <input type = "text"      name = "celEmp" required></p>
			<p>Email:            <input type = "email"     name = "emailEmp" required></p>
			<p>Usuario:          <input type = "text"      name = "usu" required></p>
			<p>Contraseña:       <input type = "password"  name = "passwordEmp" required></p>
			<p><input type = "submit" value = "Registrar"></p>
		</form>
		</font>	
	</body>
</html>