<?php
	$dns = "mysql:host=localhost;dbname=unitorrent";
	$usuario = "root";
	$senha = "";

	try{
		$conn = new PDO($dns, $usuario, $senha);
	} 
	catch (PDOException $ex){
		echo "Houve o seguinte erro: " . $ex->getMessage();
	}
?>