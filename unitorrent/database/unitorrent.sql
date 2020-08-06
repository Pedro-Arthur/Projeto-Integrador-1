-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12-Jun-2020 às 19:35
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `unitorrent`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro`
--

CREATE TABLE `cadastro` (
  `id` int(11) NOT NULL,
  `nome` varchar(535) NOT NULL,
  `apelido` varchar(535) NOT NULL,
  `telefone` int(11) NOT NULL,
  `email` varchar(535) NOT NULL,
  `senha` varchar(535) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cadastro`
--

INSERT INTO `cadastro` (`id`, `nome`, `apelido`, `telefone`, `email`, `senha`) VALUES
(1, 'Pedro', 'Pedrão', 123456, 'pedro@gmail.com', 'd3ce9efea6244baa7bf718f12dd0c331'),
(2, 'Marcos', 'Marcão', 654654, 'marcos@gmail.com', 'c4c62424df7c11291eab30691047315d'),
(3, 'Lucas', 'Lucão', 7895465, 'lucas@gmail.com', '1308dfed71297a652cc42a390e211489'),
(4, 'Gabriel', 'Gabrielzinho', 1254565, 'gabriel@gmail.com', '8833f1325fb6341757b30f6de91487a5');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--

CREATE TABLE `contato` (
  `id` int(11) NOT NULL,
  `nome` varchar(535) NOT NULL,
  `email` varchar(535) NOT NULL,
  `assunto` varchar(535) NOT NULL,
  `mensagem` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `contato`
--

INSERT INTO `contato` (`id`, `nome`, `email`, `assunto`, `mensagem`) VALUES
(1, 'Pedro', 'pedro@gmail.com', 'Dúvida', 'Como faço para baixar filmes?'),
(2, 'Lucas', 'lucas@gmail.com', 'Erro', 'Não consigo cadastrar.'),
(3, 'Gustavo', 'gustavo@hotmail.com', 'Ajuda', 'Onde encontro os lançamentos?'),
(4, 'João', 'joao@outlook.com', 'Download', 'Meu download está dando erro.'),
(5, 'Marcos', 'marcos@gmail.com', 'Help', 'Preciso de ajuda.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `filmes`
--

CREATE TABLE `filmes` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) NOT NULL,
  `lancamento` varchar(220) NOT NULL,
  `direcao` varchar(220) NOT NULL,
  `producao` varchar(220) NOT NULL,
  `duracao` varchar(220) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `filmes`
--

INSERT INTO `filmes` (`id`, `nome`, `lancamento`, `direcao`, `producao`, `duracao`) VALUES
(1, 'Deadpool 2', '17 de maio de 2018', 'David Leitch', 'Marvel Entertainment', '2h 14min'),
(2, 'Velozes e Furiosos 7', '2 de abril de 2015', 'James Wan', 'Original Film', '2h 20min'),
(3, 'Pantera Negra', '29 de janeiro de 2018', 'Ryan Coogler', 'Marvel Studios', '2h 15min'),
(4, 'Matrix', '29 de março de 1999', 'Lilly Wachowski e Lana Wachowski', 'Warner Bros Pictures', '2h 30min'),
(5, 'Tropa de Elite', '12 de outubro de 2007', 'José Padilha', 'Universal Pictures', '1h 58min'),
(6, 'Venom', '1 de outubro de 2018', 'Ruben Fleischer', 'Columbia Pictures', '2h 20min'),
(7, 'Rambo: Até O Fim', '19 de setembro de 2019', 'Adrian Grunberg', 'Millennium Media', '1h 39min'),
(8, 'Vingadores', '11 de abril de 2012', 'Joss Whedon', 'Marvel Studios', '2h 23min'),
(9, 'Os Mercenários', '13 de agosto de 2010', 'Sylvester Stallone', 'Millennium Films', '1h 53min'),
(10, 'Cidade De Deus', '30 de agosto de 2002', 'Fernando Meirelles', 'Lumière Brasil', '2h 15min'),
(11, 'As Aventuras De Tintin', '23 de outubro de 2011', 'Steven Spielberg', 'Peter Jackson', '1h 47min'),
(12, 'Star Wars: O Despertar Da Força', '2 de abril de 2015', 'J. J. Abrams', 'Kathleen Kennedy', '2h 15min'),
(13, 'Jurassic Park', '29 de janeiro de 2018', 'Steven Spielberg', 'Gerald R. Molen', '2h 09min'),
(14, 'Hobbit', '13 de dezembro de 2013', 'Peter Jackson', 'Carolynne Cunningham', '3h 07min'),
(15, 'Up - Altas Aventuras', '29 de maio de 2009', 'Pete Docter', 'Jonas Rivera', '1h 36min'),
(16, 'King Kong', '16 de dezembro de 2005', 'Peter Jackson', 'Jan Blenkin', '3h 21min'),
(17, 'Star Wars: A Ascensão Skywalker', '19 de setembro de 2019', 'J. J. Abrams', 'Kathleen Kennedy', '2h 22m'),
(18, 'As Aventuras De Pi', '21 de dezembro de 2012', 'Ang Martel', 'Ang Lee', '2h 07min'),
(19, 'Mogli: O Menino Lobo', '14 de abril de 2016', 'Jon Favreau', 'Brighan Taylor', '1h 51min'),
(20, 'Até O Fim', '30 de agosto de 2002', 'Robert Redford', 'Justin Nappi', '1h 47min'),
(21, 'Invocacão Do Mal 2', '9 de junho de 2016', 'James Wan', 'Peter Safran', '2h 14min'),
(22, 'A Freira', '6 de setembro de 2018', '6 de setembro de 2018', 'Peter Safran', '1h 36min'),
(23, 'IT: Capitulo 2', '5 de setembro de 2019', 'Andy Muschietti', 'Barbara Muschietti', '2h 50min'),
(24, 'Annabelle 3', '27 de junho de 2019', 'Gary Dauberman', 'Peter Safran', '1h 46min'),
(25, 'A Maldição Da Chorona', '18 de abril de 2019', 'Michael Chaves', 'Gary Dauberman', '1h 33min'),
(26, 'Quando As Luzes Se Apagam', '18 de agosto de 2016', 'David F. Sandberg', 'Lawrence Grey', '1h 21min'),
(27, 'Sobrenatural', '18 de janeiro de 2018', 'Adam Robitel', 'Jasom Blum', '1h 43min'),
(28, 'Terror Em Silent Hill', '18 de agosto de 2016', 'Christophe Gans', 'Samuel Hadida', '2h 12min'),
(29, 'Resindet Evil: Afterlife', '17 de setembro de 2010', 'Paul W. S. Anderson', 'Paul W. S. Anderson', ' 1h 40min'),
(30, 'Skinwalkeres', '10 de agosto de 2007', 'James Isaac', 'Dom Carmody', '1h 50min'),
(31, 'Pulp Fiction', '18 de fevereiro de 1995', 'Quentin Tarantino', 'Quentin Tarantino', '2h 34min'),
(32, 'Poderoso Chefão', '7 de julho de 1972', 'Francis Ford Coppola', 'Paramount Pictures, Alfran Productions', '2h 55min'),
(33, 'Interstelar', '6 de novembro de 2014', 'Christopher Nolan', 'Christopher Nolan', '2h 49min'),
(34, 'Gladiador', '19 de maio de 2000', 'Ridley Scott', 'Universal Pictures', '2h 35min'),
(35, 'Coringa', '3 de outubro de 2019', 'Todd Phillips', 'Warner Bros. Pictures', '2h 2min'),
(36, 'Ciquenta Tons De Cinza', '2 de fevereiro de 2015', 'Sam Taylor-Johnson', 'Michael de Luca', '2h 09min'),
(37, 'A Espera De Um Milagre', '10 de dezembro de 1999', 'Frank Darabont', 'Frank Darabont e David Valdes', '3h 09min'),
(38, 'A Procura Da Felicidade', '15 de Dezembro de 2006', 'Gabriele Muccino', 'Will Smith e Todd Black', '1h 57min'),
(39, 'Titanic', '16 de janeiro de 1998', 'James Cameron', 'James Cameron e Jon Landau', '3h 15min'),
(40, 'O Porteiro Da Noite', '11 de abril de 1974', 'Lilian Cavani', 'Esa De Simone', '2h 02min'),
(41, 'Se Beber Não Case', '21 de agosto de 2009', 'Todd Phillips', 'Legendary Pictures', '1h 48min'),
(42, 'Até Que A Sorte Nos Separe', '5 de outubro de 2012', 'Roberto Santucci', 'Paris Filmes', '1h 44min'),
(43, 'Debi e Loide', '27 de fevereiro de 1995', 'Peter Farrelly', 'Motion Picture', '1h 53min'),
(44, 'Gente Grande', '24 de setembro de 2010', 'Dennis Dugan', 'Happy Madison Productions', '1h 42min'),
(45, 'O Pequenino', '13 de julho de 2006', 'Keenen Ivory Wayans', 'Revolution Studios', '1h 38min'),
(46, 'Os Normais', '24 de outubro de 2003', 'José Alvarenga Júnior', 'Globo Filmes', '1h 50min'),
(47, 'Perfeita É A Mãe', '11 de agosto de 2016', 'Jon Lucas, Scott Moore', 'STX Entertainment', '1h 40min'),
(48, 'Minha Mãe É Uma Peça', '21 de junho de 2013', 'André Pellenz', 'Downtown Filmes', ' 1h 25min'),
(49, 'Anjos Da Lei', '4 de maio de 2012', 'Phil Lord,Chris Miller', 'Relativity Media', '1h 50min'),
(50, 'O Auto Da Compadecida', '10 de setembro de 2000', 'Guel Arraes', 'Lereby Produções', '1h 44min'),
(51, 'Ameaça Profunda', '9 de janeiro de 2020', 'William Eubank', '20th Century Studios', '1h 35min'),
(52, 'Adoráveis Mulheres', '9 de janeiro de 2020', 'Greta Gerwig', 'Sony Pictures', '2h 15min'),
(53, 'O Farol', '2 de janeiro de 2020', 'Robert Eggers', 'New Regency Pictures', '1h 50min'),
(54, 'Sonic', '14 de fevereiro de 2020', 'Jeff Fowler', 'Sega Sammy Group', '1h 40min'),
(55, 'O Homem Invisível', '27 de fevereiro de 2020', 'Leigh Whannell', 'Blumhouse Productions', '2h 05min'),
(56, 'Dois Irmãos', '5 de março de 2020', 'Dan Scanlon', 'Walter Disney Pictures', '1h 42min'),
(57, 'Bloodshot', '12 de março de 2020', 'David S. F. Wilson', 'Columbia Pictures', '1h 49min'),
(58, 'A Maldição Do Espelho', '6 de fevereiro de 2020', 'Aleksandr Domogarov, Jr.', 'Paris Filmes', '1h 30min'),
(59, 'A Ilha Da Fantasia', '13 de fevereiro de 2020', 'Jeff Wadlow', 'Sony Pictures', '1h 48min'),
(60, 'Luta Por Justiça', '27 de fevereiro de 2020', 'Destin Cretton', 'Broad Green Pictures', '2h 17min');

-- --------------------------------------------------------

--
-- Estrutura da tabela `registro`
--

CREATE TABLE `registro` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) NOT NULL,
  `lancamento` varchar(220) NOT NULL,
  `direcao` varchar(220) NOT NULL,
  `producao` varchar(220) NOT NULL,
  `duracao` varchar(220) NOT NULL,
  `imagem` varchar(220) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `registro`
--

INSERT INTO `registro` (`id`, `nome`, `lancamento`, `direcao`, `producao`, `duracao`, `imagem`) VALUES
(1, '300', '9 de dezembro de 2006', 'Zack Snyder', 'Legendary Pictures', '1h 57min', '300.jpg');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cadastro`
--
ALTER TABLE `cadastro`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `contato`
--
ALTER TABLE `contato`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `filmes`
--
ALTER TABLE `filmes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastro`
--
ALTER TABLE `cadastro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `contato`
--
ALTER TABLE `contato`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `filmes`
--
ALTER TABLE `filmes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de tabela `registro`
--
ALTER TABLE `registro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
