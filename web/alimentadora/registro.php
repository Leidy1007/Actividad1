<?php
include '../conee.php';
$matricula= $_POST["matricula"];
$modelo= $_POST["modelo"];





$insertar=  "INSERT INTO alimentadora(matricula, modelo) VALUES ('$matricula', '$modelo')"; 

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