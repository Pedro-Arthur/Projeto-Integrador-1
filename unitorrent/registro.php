<?php
	session_start();
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Registro - UniTorrent</title>
	<meta name="UniTorrent é um site de torrent focado em download de filmes que possui uma enorme diversidade" content="">
	<meta name="author" content="">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<link rel="stylesheet" href="./css/carousel.css">
	<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
	<link rel="icon" href="img/favicon.ico" type="image/x-icon">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/v4-shims.min.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
			<a class="navbar-brand" href="index.html">Uni Torrent</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item">
						<a class="nav-link" href="index.html">Home</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="contato.html">Contato</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="cadastro.html">Cadastro</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="sobre.html">Sobre</a>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							Conteúdo
						</a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="pages/acao.html">Ação</a>
							<a class="dropdown-item" href="pages/aventura.html">Aventura</a>
							<a class="dropdown-item" href="pages/terror.html">Terror</a>
							<a class="dropdown-item" href="pages/drama.html">Drama</a>
							<a class="dropdown-item" href="pages/comedia.html">Comédia</a>
							<a class="dropdown-item" href="pages/lancamentos.html">Lançamentos</a>
						</div>
					</li>
				</ul>
				<form class="form-inline mt-2 mt-md-0" action="pesquisa.php" method="post">
					<input class="form-control mr-sm-2" type="text" name="pesquisa" placeholder="Pesquisar" aria-label="Pesquisar" minlength="2" required>
					<input name="SendPesq" class="btn btn-outline-success my-2 my-sm-0" type="submit" value="Pesquisar">
				</form>
			</div>
		</nav>
	</header>

	<div class="container mt-5">
		<div class="card">
			<div class="card-header">
				Registro de filmes
			</div>
			<div class="card-body">
				<?php
				if(isset($_SESSION['msg'])){
					echo $_SESSION['msg'];
					unset($_SESSION['msg']);
				}
				?>
				<form method="post" action="validation/valida_registro.php" enctype="multipart/form-data">
					<div class="form-group">
						<label for="exampleInputEmail1">Nome</label>
						<input type="text" class="form-control" name="nome" placeholder="Nome do filme" required>
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Lançamento</label>
						<input type="text" class="form-control" name="lancamento" placeholder="Lançamento do filme" required>
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Direção</label>
						<input type="text" class="form-control" name="direcao" placeholder="Direção do filme" required>
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Produção</label>
						<input type="text" class="form-control" name="producao" placeholder="Produção do filme" required>
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Duração</label>
						<input type="text" class="form-control" name="duracao" placeholder="Duração do filme" required>
					</div>
					<div class="form-group">
						<label for="exampleFormControlFile1">Escolha uma imagem do filme</label>
						<input type="file" name="imagem" class="form-control-file" id="exampleFormControlFile1">
					</div>
					<input type="submit" name="SendCadImg" class="btn btn-primary" value="Registrar">
				</form>
			</div>
		</div>
	</div>
	
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/46a40cdd8f.js" crossorigin="anonymous"></script>

	<footer class="container border-top mt-5 py-5">
		<div class="row">
			<div class="col-12 col-md">
				<h4><span class="fa fa-plane"></span></h4>
				<p class="text-muted">&copy 2020 UniTorrent - Todos os direitos reservados</p>
			</div>
			<div class="col-6 col-md">
				<h4>About</h4>
				<ul class="list-unstyled">
					<li><a href="index.html" class="text-muted">Home</a></li>
					<li><a href="contato.html" class="text-muted">Contato</a></li>
					<li><a href="cadastro.html" class="text-muted">Cadastro</a></li>
					<li><a href="sobre.html" class="text-muted">Sobre</a></li>
				</ul>
			</div>
			<div class="col-6 col-md">
				<h4>Categories</h4>
				<ul class="list-unstyled">
					<li><a href="pages/acao.html" class="text-muted">Ação</a></li>
					<li><a href="pages/aventura.html" class="text-muted">Aventura</a></li>
					<li><a href="pages/terror.html" class="text-muted">Terror</a></li>
					<li><a href="pages/drama.html" class="text-muted">Drama</a></li>
					<li><a href="pages/comedia.html" class="text-muted">Comédia</a></li>
					<li><a href="pages/lancamentos.html" class="text-muted">Lançamentos</a></li>
				</ul>
			</div>
			<div class="col-6 col-md">
				<h4>Follow Us</h4>
				<a href="#" class="text-muted"><span class="fab fa-twitter"></span></a>
				<a href="#" class="text-muted"><span class="fab fa-facebook"></span></a>
				<a href="#" class="text-muted"><span class="fab fa-youtube"></span></a>
				<a href="#" class="text-muted"><span class="fab fa-linkedin"></span></a>
				<a href="#" class="text-muted"><span class="fab fa-instagram"></span></a>
			</div>
		</div>
	</footer>

</body>
</html>