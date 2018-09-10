-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 09-Set-2018 às 16:02
-- Versão do servidor: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `multiapp`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

DROP TABLE IF EXISTS `alunos`;
CREATE TABLE IF NOT EXISTS `alunos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `cartao_cidadao` int(11) NOT NULL,
  `sexo` varchar(100) NOT NULL,
  `morada` varchar(200) NOT NULL,
  `nacionalidade` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telemovel` int(9) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`id`, `nome`, `cartao_cidadao`, `sexo`, `morada`, `nacionalidade`, `email`, `telemovel`, `created_at`, `updated_at`) VALUES
(4, 'José Eduardo de Almeida Aleixo', 11223213, 'Masculinado', 'Rua do José Almedina', 'Portuguesa', 'e_a_leixo@gmail.com', 9889781, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Rui Almeida', 13132343, 'Masculino', 'Av-Ruido.companhia', 'Portuguesa', 'aleale@gmail.com', 919132229, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'mbcbjzsc', 4484648, 'Masculino', 'zxchzkxhc', 'zxmcbzjzxj', 'xzkhcj@skdjfs.pt', 54646849, '2018-09-07 02:45:49', '2018-09-07 02:45:49'),
(8, 'mbcbjzsc', 4484648, 'Masculino', 'zxchzkxhc', 'zxmcbzjzxj', 'xzkhcj@skdjfs.pt', 54646849, '2018-09-07 02:47:02', '2018-09-07 02:47:02');

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno_ano`
--

DROP TABLE IF EXISTS `aluno_ano`;
CREATE TABLE IF NOT EXISTS `aluno_ano` (
  `aluno_id` int(11) NOT NULL,
  `ano_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`aluno_id`,`ano_id`),
  KEY `ano_id` (`ano_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `aluno_ano`
--

INSERT INTO `aluno_ano` (`aluno_id`, `ano_id`, `created_at`, `updated_at`) VALUES
(8, 5, '2018-09-07 02:47:02', '2018-09-07 02:47:02'),
(8, 6, '2018-09-07 02:47:02', '2018-09-07 02:47:02');

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno_disciplina`
--

DROP TABLE IF EXISTS `aluno_disciplina`;
CREATE TABLE IF NOT EXISTS `aluno_disciplina` (
  `aluno_id` int(11) NOT NULL,
  `disciplina_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`aluno_id`,`disciplina_id`),
  KEY `aluno_id` (`aluno_id`),
  KEY `disciplina_id` (`disciplina_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `aluno_disciplina`
--

INSERT INTO `aluno_disciplina` (`aluno_id`, `disciplina_id`, `created_at`, `updated_at`) VALUES
(8, 1, '2018-09-07 02:47:02', '2018-09-07 02:47:02'),
(8, 2, '2018-09-07 02:47:02', '2018-09-07 02:47:02');

-- --------------------------------------------------------

--
-- Estrutura da tabela `anos`
--

DROP TABLE IF EXISTS `anos`;
CREATE TABLE IF NOT EXISTS `anos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `anos`
--

INSERT INTO `anos` (`id`, `nome`, `created_at`, `updated_at`) VALUES
(5, '2º Ano', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, '3ª Ano', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, '1º Ano', '2018-09-07 20:17:32', '2018-09-07 20:17:32'),
(10, 'ze ze', '2018-09-08 04:15:34', '2018-09-08 04:15:34');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ano_disciplina`
--

DROP TABLE IF EXISTS `ano_disciplina`;
CREATE TABLE IF NOT EXISTS `ano_disciplina` (
  `ano_id` int(11) NOT NULL,
  `disciplina_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`ano_id`,`disciplina_id`),
  KEY `ano_id` (`ano_id`),
  KEY `disciplina_id` (`disciplina_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ano_disciplina`
--

INSERT INTO `ano_disciplina` (`ano_id`, `disciplina_id`, `created_at`, `updated_at`) VALUES
(6, 6, '2018-09-08 01:56:29', '2018-09-08 01:56:29'),
(7, 5, '2018-09-08 01:33:33', '2018-09-08 01:33:33');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ano_estagio`
--

DROP TABLE IF EXISTS `ano_estagio`;
CREATE TABLE IF NOT EXISTS `ano_estagio` (
  `ano_id` int(11) NOT NULL,
  `estagio_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`ano_id`,`estagio_id`),
  KEY `ano_id` (`ano_id`),
  KEY `estagio_id` (`estagio_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ano_estagio`
--

INSERT INTO `ano_estagio` (`ano_id`, `estagio_id`, `created_at`, `updated_at`) VALUES
(5, 1, '2018-08-28 14:18:18', '2018-08-28 14:18:18'),
(5, 2, '2018-08-28 14:28:18', '2018-08-28 14:28:18'),
(5, 4, '2018-09-07 03:05:20', '2018-09-07 03:05:20'),
(6, 3, '2018-08-28 14:30:51', '2018-08-28 14:30:51'),
(6, 4, '2018-09-07 03:05:20', '2018-09-07 03:05:20');

-- --------------------------------------------------------

--
-- Estrutura da tabela `avisos`
--

DROP TABLE IF EXISTS `avisos`;
CREATE TABLE IF NOT EXISTS `avisos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `assunto` text NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `avisos`
--

INSERT INTO `avisos` (`id`, `titulo`, `assunto`, `created_at`, `updated_at`) VALUES
(1, 'epoca especial\r\n', 'Dia 12 Setembro das 9h até a 13h', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'sjbsvdhfsd', 'sdiugfusf', '2018-09-07 03:02:11', '2018-09-07 03:02:11'),
(3, '1234124', '124124', '2018-09-08 04:03:10', '2018-09-08 04:03:10');

-- --------------------------------------------------------

--
-- Estrutura da tabela `aviso_ano`
--

DROP TABLE IF EXISTS `aviso_ano`;
CREATE TABLE IF NOT EXISTS `aviso_ano` (
  `aviso_id` int(11) NOT NULL,
  `ano_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`aviso_id`,`ano_id`),
  KEY `aviso_id` (`aviso_id`),
  KEY `ano_id` (`ano_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `aviso_ano`
--

INSERT INTO `aviso_ano` (`aviso_id`, `ano_id`, `created_at`, `updated_at`) VALUES
(2, 5, '2018-09-07 03:02:11', '2018-09-07 03:02:11'),
(2, 6, '2018-09-07 03:02:11', '2018-09-07 03:02:11'),
(3, 7, '2018-09-08 04:03:10', '2018-09-08 04:03:10');

-- --------------------------------------------------------

--
-- Estrutura da tabela `aviso_disciplina`
--

DROP TABLE IF EXISTS `aviso_disciplina`;
CREATE TABLE IF NOT EXISTS `aviso_disciplina` (
  `aviso_id` int(11) NOT NULL,
  `disciplina_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`aviso_id`,`disciplina_id`),
  KEY `aviso_id` (`aviso_id`),
  KEY `disciplina_id` (`disciplina_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `aviso_disciplina`
--

INSERT INTO `aviso_disciplina` (`aviso_id`, `disciplina_id`, `created_at`, `updated_at`) VALUES
(2, 3, '2018-09-07 03:02:11', '2018-09-07 03:02:11'),
(2, 4, '2018-09-07 03:02:11', '2018-09-07 03:02:11'),
(3, 2, '2018-09-08 04:03:10', '2018-09-08 04:03:10');

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplinas`
--

DROP TABLE IF EXISTS `disciplinas`;
CREATE TABLE IF NOT EXISTS `disciplinas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `ects` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `disciplinas`
--

INSERT INTO `disciplinas` (`id`, `nome`, `ects`, `created_at`, `updated_at`) VALUES
(1, 'Introdução á Programação', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Programação I', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Programação II', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Programação III', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Som', 4, '2018-09-08 01:33:33', '2018-09-08 01:33:33'),
(6, '3d', 7, '2018-09-08 01:56:29', '2018-09-08 01:56:29');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estagios`
--

DROP TABLE IF EXISTS `estagios`;
CREATE TABLE IF NOT EXISTS `estagios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `area` varchar(100) NOT NULL,
  `empresa` varchar(100) NOT NULL,
  `horas` int(11) NOT NULL,
  `contacto` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `estagios`
--

INSERT INTO `estagios` (`id`, `area`, `empresa`, `horas`, `contacto`, `created_at`, `updated_at`) VALUES
(1, '12313', '1231313', 12, 12333333, '2018-08-28 14:18:18', '2018-09-08 22:31:41'),
(2, '13', 'wew32', 11, 6346323, '2018-08-28 14:28:18', '2018-08-28 14:28:18'),
(3, 'PC', 'Samsung', 33, 2342, '2018-08-28 14:30:50', '2018-08-28 14:30:50'),
(4, 'mvhv', 'hvhcc', 420, 5464646, '2018-09-07 03:05:20', '2018-09-07 03:05:20');

-- --------------------------------------------------------

--
-- Estrutura da tabela `horarios`
--

DROP TABLE IF EXISTS `horarios`;
CREATE TABLE IF NOT EXISTS `horarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dia` varchar(100) NOT NULL,
  `inicio` time NOT NULL,
  `fim` time NOT NULL,
  `sala` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `horarios`
--

INSERT INTO `horarios` (`id`, `dia`, `inicio`, `fim`, `sala`, `created_at`, `updated_at`) VALUES
(1, 'Quarta-feira', '15:56:00', '20:59:00', '5', '2018-09-07 03:02:58', '2018-09-08 22:32:32'),
(2, 'Quarta-feira', '15:25:00', '20:25:00', '7', '2018-09-07 03:04:31', '2018-09-07 03:04:31'),
(3, 'Sexta-feira', '04:21:00', '06:04:00', '2', '2018-09-08 21:30:32', '2018-09-08 21:30:52'),
(4, 'Sexta-feira', '06:05:00', '03:03:00', '8', '2018-09-08 22:32:49', '2018-09-08 22:32:49');

-- --------------------------------------------------------

--
-- Estrutura da tabela `horario_disciplina`
--

DROP TABLE IF EXISTS `horario_disciplina`;
CREATE TABLE IF NOT EXISTS `horario_disciplina` (
  `horario_id` int(11) NOT NULL,
  `disciplina_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`horario_id`,`disciplina_id`),
  KEY `horario_id` (`horario_id`),
  KEY `disciplina_id` (`disciplina_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `horario_disciplina`
--

INSERT INTO `horario_disciplina` (`horario_id`, `disciplina_id`, `created_at`, `updated_at`) VALUES
(2, 2, '2018-09-07 03:04:32', '2018-09-07 03:04:32'),
(2, 3, '2018-09-07 03:04:32', '2018-09-07 03:04:32'),
(3, 5, '2018-09-08 21:30:32', '2018-09-08 21:30:32'),
(4, 5, '2018-09-08 22:32:49', '2018-09-08 22:32:49');

-- --------------------------------------------------------

--
-- Estrutura da tabela `professores`
--

DROP TABLE IF EXISTS `professores`;
CREATE TABLE IF NOT EXISTS `professores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `professores`
--

INSERT INTO `professores` (`id`, `nome`, `email`, `created_at`, `updated_at`) VALUES
(1, 'ytyd', 'sdjfjsgfsh@lol.pt', '2018-09-07 02:47:46', '2018-09-08 20:51:19'),
(2, 'andré', 'edasdasd@gmail.com', '2018-09-08 02:51:52', '2018-09-08 02:51:52'),
(3, '123', 'andre.andre@gmail.com', '2018-09-08 20:51:36', '2018-09-08 20:51:36'),
(4, 'dqqdq', 'dqdqddqdq@pt', '2018-09-08 22:33:53', '2018-09-08 22:33:53');

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor_disciplina`
--

DROP TABLE IF EXISTS `professor_disciplina`;
CREATE TABLE IF NOT EXISTS `professor_disciplina` (
  `professor_id` int(11) NOT NULL,
  `disciplina_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`professor_id`,`disciplina_id`),
  KEY `professor_id` (`professor_id`),
  KEY `disciplina_id` (`disciplina_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `professor_disciplina`
--

INSERT INTO `professor_disciplina` (`professor_id`, `disciplina_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-09-07 02:47:46', '2018-09-07 02:47:46'),
(1, 4, '2018-09-07 02:47:46', '2018-09-07 02:47:46'),
(2, 5, '2018-09-08 02:51:52', '2018-09-08 02:51:52'),
(3, 4, '2018-09-08 20:51:36', '2018-09-08 20:51:36'),
(3, 5, '2018-09-08 20:51:36', '2018-09-08 20:51:36'),
(4, 3, '2018-09-08 22:33:53', '2018-09-08 22:33:53');

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `aluno_ano`
--
ALTER TABLE `aluno_ano`
  ADD CONSTRAINT `aluno_ano_ibfk_1` FOREIGN KEY (`aluno_id`) REFERENCES `alunos` (`id`),
  ADD CONSTRAINT `aluno_ano_ibfk_2` FOREIGN KEY (`ano_id`) REFERENCES `anos` (`id`);

--
-- Limitadores para a tabela `aluno_disciplina`
--
ALTER TABLE `aluno_disciplina`
  ADD CONSTRAINT `aluno_disciplina_ibfk_1` FOREIGN KEY (`aluno_id`) REFERENCES `alunos` (`id`),
  ADD CONSTRAINT `aluno_disciplina_ibfk_2` FOREIGN KEY (`disciplina_id`) REFERENCES `disciplinas` (`id`);

--
-- Limitadores para a tabela `ano_disciplina`
--
ALTER TABLE `ano_disciplina`
  ADD CONSTRAINT `ano_disciplina_ibfk_1` FOREIGN KEY (`ano_id`) REFERENCES `anos` (`id`),
  ADD CONSTRAINT `ano_disciplina_ibfk_2` FOREIGN KEY (`disciplina_id`) REFERENCES `disciplinas` (`id`);

--
-- Limitadores para a tabela `ano_estagio`
--
ALTER TABLE `ano_estagio`
  ADD CONSTRAINT `ano_estagio_ibfk_1` FOREIGN KEY (`ano_id`) REFERENCES `anos` (`id`),
  ADD CONSTRAINT `ano_estagio_ibfk_2` FOREIGN KEY (`estagio_id`) REFERENCES `estagios` (`id`);

--
-- Limitadores para a tabela `aviso_ano`
--
ALTER TABLE `aviso_ano`
  ADD CONSTRAINT `aviso_ano_ibfk_1` FOREIGN KEY (`aviso_id`) REFERENCES `avisos` (`id`),
  ADD CONSTRAINT `aviso_ano_ibfk_2` FOREIGN KEY (`ano_id`) REFERENCES `anos` (`id`);

--
-- Limitadores para a tabela `aviso_disciplina`
--
ALTER TABLE `aviso_disciplina`
  ADD CONSTRAINT `aviso_disciplina_ibfk_1` FOREIGN KEY (`disciplina_id`) REFERENCES `disciplinas` (`id`),
  ADD CONSTRAINT `aviso_disciplina_ibfk_2` FOREIGN KEY (`aviso_id`) REFERENCES `avisos` (`id`);

--
-- Limitadores para a tabela `horario_disciplina`
--
ALTER TABLE `horario_disciplina`
  ADD CONSTRAINT `horario_disciplina_ibfk_1` FOREIGN KEY (`horario_id`) REFERENCES `horarios` (`id`),
  ADD CONSTRAINT `horario_disciplina_ibfk_2` FOREIGN KEY (`disciplina_id`) REFERENCES `disciplinas` (`id`);

--
-- Limitadores para a tabela `professor_disciplina`
--
ALTER TABLE `professor_disciplina`
  ADD CONSTRAINT `professor_disciplina_ibfk_1` FOREIGN KEY (`professor_id`) REFERENCES `professores` (`id`),
  ADD CONSTRAINT `professor_disciplina_ibfk_2` FOREIGN KEY (`disciplina_id`) REFERENCES `disciplinas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
