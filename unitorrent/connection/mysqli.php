<?php
	$servidor = "localhost";
	$usuario = "root";
	$senha = "";
	$dbname = "unitorrent";

	$conn = mysqli_connect($servidor, $usuario, $senha, $dbname);

	if (mysqli_connect_errno()){
		die ('Houve o seguinte erro: '.mysqli_connect_errno());
		exit();
	}
?>