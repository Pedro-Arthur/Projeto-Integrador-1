<?php
	session_start();
	
	unset(
		$_SESSION['nome'],
		$_SESSION['apelido'],
		$_SESSION['telefone'],
		$_SESSION['email'],
		$_SESSION['senha']
	);
	
	$_SESSION['logindeslogado'] = "<div class='alert alert-success'>Deslogado com sucesso. <a href='index.html'>Voltar</a></div>";
	header("Location: login.php");
?>