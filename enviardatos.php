<?php

include ("conx.php");

   $conexion->set_charset('utf8');

if (!isset($_POST['nombre']) || !isset($_POST['correo']) || !isset($_POST['telefono']) || !isset($_POST['colegio']) || !isset($_POST['carrera']) || !isset($_POST['aptitudes']) || !isset($_POST['intereses'])) {
		echo "denegado";
		return;
	}

$carrerae='';
	
	if($_POST['carrera'] == "Otra"){
		$carrerae = $_POST['otro'];
	}else{
		$carrerae = $_POST['carrera'];
	}


	$rn=1;
	$fechaActual = date('Y-m-d H:i:s');
	$comando = "INSERT INTO test (fecha,nombre,correo,telefono,colegio,carrera,aptitud,interes) VALUES ('".$fechaActual."','".$_POST['nombre']."','".$_POST['correo']."','".$_POST['telefono']."','".$_POST['colegio']."','".$carrerae."','".$_POST['aptitudes']."','".$_POST['intereses']."')";


	mysqli_query($conexion,$comando) or die($rn=0);


	if ($rn == 1) {
		 header('location:confirmacion.php');
	}else{
		echo "Ha ocurrido un error";
	}


?>