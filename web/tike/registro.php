<?php
include '../conee.php';
$codigo= $_POST["codigo"];

$insertar=  "INSERT INTO tike(codigo) VALUES ('$codigo')"; 

$resultado= mysqli_query($conexion, $insertar); 
if (!$resultado) {
	echo "error al registrarse";
}else{
	echo '<script>
	alert("el usuario ya esta registrado")
	</script>'; 
	header("location:../index.html");	
	exit;
}
	//echo "conductora registrado exitosamente"; 




mysqli_close($conexion);