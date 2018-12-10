<html>
	<body>
		<body bgcolor="#00000">
		<font face="tahoma" color="white">
			<h1>REGISTRAR</h1>
		<form action = "registro_clienteDB.php" method = "POST">
			<p>Nombre:           <input type = "text"      name = "nombreCli" required></p>
			<p>Apellido Paterno: <input type = "text"      name = "ape_patCli" required></p>
			<p>Apellido Materno: <input type = "text"      name = "ape_matCli" required></p>
			<p>Teléfono:         <input type = "text"      name = "telCli" required></p>
			<p>Celular:          <input type = "text"      name = "celCli" required></p>
			<p>Email:            <input type = "email"     name = "emailCli" required></p>
			<p>Calle:          <input type = "text"      name = "calleCli" required></p>
			<p>Número exterior:       <input type = "text"  name = "num_extCli"></p>
			<p>Número interior:       <input type = "text"  name = "num_intCli" required></p>
			<p>Colonia:       <input type = "text"  name = "colCli" required></p>
			<p>C.P:       <input type = "text"  name = "cpCli" required></p>
			<p>Referencia:       <input type = "text"  name = "refCli" required></p>
			
			<p><input type = "submit" value = "Registrar"></p>
		</form>
	</body>
</html>