<?php
include '../conee.php';
$nombre1= $_POST["nombre1"];
$nombre2= $_POST["nombre2"];
$apellido1= $_POST["apellido1"];
$apellido2= $_POST["apellido2"];
$identificacion= $_POST["identificacion"];
$edad= $_POST["edad"];
$direccion= $_POST["direccion"];
$id_tike= $_POST["id_tike"];



$insertar=  "INSERT INTO pasajeros(nombre1, nombre2, apellido1, apellido2, identificacion, edad, direccion, id_tike) VALUES ('$nombre1', '$nombre2', '$apellido1', '$apellido2', '$identificacion', '$edad', '$direccion', '$id_tike')"; 

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