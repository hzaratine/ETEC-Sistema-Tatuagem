-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21/10/2026 às 03:32
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `estudio_tatuagem`
--
CREATE DATABASE IF NOT EXISTS `estudio_tatuagem` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `estudio_tatuagem`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `agendamento`
--

CREATE TABLE `agendamento` (
  `idagendamento` int(11) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `idtatuador` int(11) NOT NULL,
  `dataagendamento` date NOT NULL,
  `horaagendamento` time NOT NULL,
  `descricaotatuagem` text DEFAULT NULL,
  `desenhoaprovado` varchar(255) DEFAULT NULL,
  `valortatuagem` decimal(10,2) DEFAULT NULL,
  `status` enum('pendente','confirmado','concluido','cancelado') NOT NULL DEFAULT 'pendente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `agendamento`
--

INSERT INTO `agendamento` (`idagendamento`, `idcliente`, `idtatuador`, `dataagendamento`, `horaagendamento`, `descricaotatuagem`, `desenhoaprovado`, `valortatuagem`, `status`) VALUES
(1, 1, 1, '2025-05-10', '14:00:00', 'Mandala no braço', NULL, 350.00, 'pendente'),
(2, 2, 2, '2025-05-11', '10:00:00', 'Rosa aquarela no ombro', NULL, 200.00, 'pendente'),
(3, 9, 4, '2024-11-20', '13:00:00', 'Leão realista na coxa', NULL, 900.00, 'cancelado'),
(4, 17, 2, '2025-02-25', '14:00:00', 'Olho realista no antebraço', 'desenho_004.png', 500.00, 'concluido'),
(5, 23, 7, '2025-03-20', '11:00:00', 'Relógio com rosas realista', 'desenho_005.png', 650.00, 'concluido'),
(6, 17, 2, '2025-04-10', '10:00:00', 'Paisagem aquarela no ombro', NULL, 450.00, 'cancelado'),
(7, 4, 3, '2025-04-12', '11:00:00', 'Geométrico no antebraço', 'desenho_007.png', 240.00, 'concluido'),
(8, 23, 8, '2025-05-15', '16:00:00', 'Paisagem aquarela no ombro', 'desenho_008.png', 580.00, 'concluido'),
(9, 4, 8, '2025-06-07', '15:00:00', 'Paisagem aquarela no ombro', 'desenho_009.png', 580.00, 'concluido'),
(10, 22, 8, '2025-07-21', '14:00:00', 'Paisagem aquarela no ombro', 'desenho_010.png', 580.00, 'concluido'),
(11, 7, 7, '2025-07-31', '11:00:00', 'Relógio com rosas realista', 'desenho_011.png', 650.00, 'concluido'),
(12, 18, 5, '2025-08-11', '16:00:00', 'Tribal moderno no ombro', 'desenho_012.png', 460.00, 'concluido'),
(13, 17, 7, '2025-08-25', '17:00:00', 'Fechamento de braço blackwork', 'desenho_013.png', 900.00, 'concluido'),
(14, 25, 6, '2025-08-26', '11:00:00', 'Floral em linhas finas na costela', 'desenho_014.png', 260.00, 'concluido'),
(15, 7, 2, '2025-08-26', '15:00:00', 'Retrato realista de cachorro no braço', NULL, 700.00, 'cancelado'),
(16, 11, 7, '2025-09-03', '17:00:00', 'Floral em linhas finas na costela', 'desenho_016.png', 320.00, 'concluido'),
(17, 13, 8, '2025-09-10', '10:00:00', 'Beija-flor aquarela na costela', 'desenho_017.png', 460.00, 'concluido'),
(18, 12, 5, '2025-09-23', '14:00:00', 'Fechamento de braço blackwork', 'desenho_018.png', 1170.00, 'concluido'),
(19, 10, 1, '2025-10-07', '14:00:00', 'Floral em linhas finas na costela', 'desenho_019.png', 420.00, 'concluido'),
(20, 16, 8, '2025-10-17', '10:00:00', 'Relógio com rosas realista', 'desenho_020.png', 840.00, 'concluido'),
(21, 16, 5, '2025-10-28', '11:00:00', 'Andorinhas old school no peito', 'desenho_021.png', 460.00, 'concluido'),
(22, 16, 2, '2025-11-22', '13:00:00', 'Peônia aquarela no antebraço', 'desenho_022.png', 400.00, 'concluido'),
(23, 12, 8, '2025-11-26', '11:00:00', 'Paisagem aquarela no ombro', 'desenho_023.png', 580.00, 'concluido'),
(24, 11, 2, '2025-12-10', '16:00:00', 'Peônia aquarela no antebraço', 'desenho_024.png', 400.00, 'concluido'),
(25, 23, 4, '2025-12-20', '11:00:00', 'Olho realista no antebraço', NULL, 500.00, 'cancelado'),
(26, 15, 7, '2026-02-04', '13:00:00', 'Leão realista na coxa', 'desenho_026.png', 900.00, 'concluido'),
(27, 15, 6, '2026-02-06', '10:00:00', 'Floral em linhas finas na costela', 'desenho_027.png', 260.00, 'concluido'),
(28, 5, 3, '2026-02-19', '11:00:00', 'Tribal moderno no ombro', 'desenho_028.png', 280.00, 'concluido'),
(29, 4, 7, '2026-03-02', '17:00:00', 'Dotwork lua e montanhas na panturrilha', 'desenho_029.png', 380.00, 'concluido'),
(30, 20, 7, '2026-03-10', '16:00:00', 'Olho realista no antebraço', NULL, 500.00, 'cancelado'),
(31, 19, 5, '2026-03-30', '11:00:00', 'Andorinhas old school no peito', 'desenho_031.png', 460.00, 'concluido'),
(32, 25, 6, '2026-04-06', '10:00:00', 'Tribal moderno no ombro', 'desenho_032.png', 280.00, 'concluido'),
(33, 7, 4, '2026-04-07', '11:00:00', 'Borboleta aquarela na panturrilha', 'desenho_033.png', 280.00, 'concluido'),
(34, 12, 5, '2026-04-11', '14:00:00', 'Dotwork lua e montanhas na panturrilha', 'desenho_034.png', 490.00, 'concluido'),
(35, 26, 2, '2026-04-15', '11:00:00', 'Borboleta aquarela na panturrilha', 'desenho_035.png', 280.00, 'concluido'),
(36, 3, 8, '2026-04-15', '13:00:00', 'Olho realista no antebraço', 'desenho_036.png', 650.00, 'concluido'),
(37, 13, 6, '2026-04-30', '15:00:00', 'Geométrico no antebraço', 'desenho_037.png', 240.00, 'concluido'),
(38, 27, 7, '2026-06-15', '10:00:00', 'Relógio com rosas realista', NULL, 650.00, 'cancelado'),
(39, 11, 2, '2026-07-07', '13:00:00', 'Borboleta aquarela na panturrilha', 'desenho_039.png', 280.00, 'concluido'),
(40, 25, 7, '2026-07-16', '11:00:00', 'Geométrico no antebraço', 'desenho_040.png', 300.00, 'concluido'),
(41, 16, 1, '2026-07-27', '15:00:00', 'Olho realista no antebraço', 'desenho_041.png', 650.00, 'concluido'),
(42, 28, 4, '2026-07-28', '11:00:00', 'Paisagem aquarela no ombro', 'desenho_042.png', 450.00, 'concluido'),
(43, 29, 7, '2026-08-15', '16:00:00', 'Retrato realista de cachorro no braço', 'desenho_043.png', 700.00, 'concluido'),
(44, 14, 7, '2026-08-19', '17:00:00', 'Olho realista no antebraço', 'desenho_044.png', 500.00, 'concluido'),
(45, 21, 2, '2026-08-29', '17:00:00', 'Leão realista na coxa', 'desenho_045.png', 900.00, 'concluido'),
(46, 32, 1, '2026-09-05', '16:00:00', 'Retrato realista de cachorro no braço', 'desenho_046.png', 910.00, 'concluido'),
(47, 5, 3, '2026-09-08', '10:00:00', 'Floral em linhas finas na costela', 'desenho_047.png', 260.00, 'concluido'),
(48, 32, 8, '2026-09-19', '17:00:00', 'Retrato realista de cachorro no braço', 'desenho_048.png', 910.00, 'confirmado'),
(49, 14, 8, '2026-09-24', '14:00:00', 'Peônia aquarela no antebraço', NULL, 520.00, 'pendente'),
(50, 23, 2, '2026-10-23', '11:00:00', 'Beija-flor aquarela na costela', 'desenho_050.png', 350.00, 'confirmado'),
(51, 17, 7, '2026-10-28', '17:00:00', 'Geométrico no antebraço', 'desenho_051.png', 300.00, 'confirmado'),
(52, 32, 6, '2026-11-04', '11:00:00', 'Tribal moderno no ombro', 'desenho_052.png', 280.00, 'confirmado');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cpf` char(11) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `datacadastro` date DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `uf` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`idcliente`, `nome`, `cpf`, `telefone`, `datacadastro`, `cidade`, `uf`) VALUES
(1, 'Ana Silva', '44444444444', '11988880001', '2024-01-15', 'São Paulo', 'SP'),
(2, 'Bruno Costa', '55555555555', '31988880002', '2024-03-22', 'Belo Horizonte', 'MG'),
(3, 'Mariana Alves', '01815908327', '11901661318', '2025-02-17', 'Santo André', 'SP'),
(4, 'Felipe Rocha', '39099603088', '62982462819', '2024-05-15', 'Goiânia', 'GO'),
(5, 'Camila Ferreira', '99351819019', '11993786579', '2024-04-24', 'Santo André', 'SP'),
(6, 'Rafael Gomes', '32319487549', '11974911862', '2024-11-11', 'Mauá', 'SP'),
(7, 'Juliana Martins', '60189555980', '11979711471', '2025-05-24', 'São Paulo', 'SP'),
(8, 'Thiago Barbosa', '97465075246', '21991703423', '2025-11-02', 'Rio de Janeiro', 'RJ'),
(9, 'Larissa Cardoso', '27684268490', '51965632122', '2024-04-01', 'Porto Alegre', 'RS'),
(10, 'Gustavo Ribeiro', '79244026830', '19959952890', '2024-01-22', 'Campinas', 'SP'),
(11, 'Beatriz Araújo', '66617603117', '71937215901', '2025-02-14', 'Salvador', 'BA'),
(12, 'Leonardo Teixeira', '15901396235', '11945957117', '2025-07-12', 'Santo André', 'SP'),
(13, 'Fernanda Lopes', '74121547292', '11980385280', '2025-05-15', 'Mauá', 'SP'),
(14, 'Matheus Pereira', '14852538883', '11985393363', '2025-10-29', 'Mauá', 'SP'),
(15, 'Isabela Nunes', '00474395723', '51955131373', '2025-01-08', 'Porto Alegre', 'RS'),
(16, 'Vinícius Carvalho', '90751163732', '51926516761', '2025-10-10', 'Porto Alegre', 'RS'),
(17, 'Patrícia Moreira', '02972997514', '11928820018', '2024-05-19', 'São Paulo', 'SP'),
(18, 'Eduardo Dias', '33043483952', '11954862057', '2025-03-29', 'São Paulo', 'SP'),
(19, 'Aline Monteiro', '82828807282', '11990222791', '2025-03-15', 'Santo André', 'SP'),
(20, 'Rodrigo Freitas', '88871803345', '31940187801', '2025-12-08', 'Belo Horizonte', 'MG'),
(21, 'Carolina Batista', '98347887896', '62938483726', '2025-06-10', 'Goiânia', 'GO'),
(22, 'Diego Almeida', '13613412543', '51924273167', '2024-11-28', 'Porto Alegre', 'RS'),
(23, 'Renata Campos', '68656355155', '19950587706', '2024-06-23', 'Campinas', 'SP'),
(24, 'André Souza', '81131144082', '62924264628', '2024-11-07', 'Goiânia', 'GO'),
(25, 'Vanessa Duarte', '51402614055', '11914193141', '2025-05-30', 'Santo André', 'SP'),
(26, 'Lucas Pinto', '64920831218', '31940234483', '2025-07-29', 'Belo Horizonte', 'MG'),
(27, 'Tatiane Correia', '24504000873', '71983873716', '2025-11-28', 'Salvador', 'BA'),
(28, 'Bruna Machado', '68433532669', '11950201462', '2026-05-13', 'Santo André', 'SP'),
(29, 'Henrique Azevedo', '84934072241', '41947045585', '2026-06-19', 'Curitiba', 'PR'),
(30, 'Natália Vieira', '52056174898', '21933801412', '2024-08-20', 'Rio de Janeiro', 'RJ'),
(31, 'Caio Nascimento', '04431982922', '11965724920', '2025-02-16', 'São Paulo', 'SP'),
(32, 'Priscila Santos', '86828890990', '11931002516', '2026-07-11', 'Santo André', 'SP');

-- --------------------------------------------------------

--
-- Estrutura para tabela `estilo`
--

CREATE TABLE `estilo` (
  `idestilo` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `estilo`
--

INSERT INTO `estilo` (`idestilo`, `descricao`) VALUES
(1, 'Blackwork'),
(2, 'Aquarela'),
(3, 'Realismo'),
(4, 'Old School');

-- --------------------------------------------------------

--
-- Estrutura para tabela `senioridade`
--

CREATE TABLE `senioridade` (
  `idsenioridade` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `senioridade`
--

INSERT INTO `senioridade` (`idsenioridade`, `nome`) VALUES
(1, 'Júnior'),
(2, 'Pleno'),
(3, 'Sênior');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tatuador`
--

CREATE TABLE `tatuador` (
  `idtatuador` int(11) NOT NULL,
  `nometatuador` varchar(100) NOT NULL,
  `cpf` char(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `datacontratacao` date DEFAULT NULL,
  `idsenioridade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tatuador`
--

INSERT INTO `tatuador` (`idtatuador`, `nometatuador`, `cpf`, `email`, `telefone`, `datacontratacao`, `idsenioridade`) VALUES
(1, 'Lucas Mendes', '11111111111', 'lucas@estudio.com', '11999990001', '2020-03-01', 3),
(2, 'Carla Souza', '22222222222', 'carla@estudio.com', '11999990002', '2022-06-15', 2),
(3, 'Pedro Lima', '33333333333', 'pedro@estudio.com', '11999990003', '2024-01-10', 1),
(4, 'Marina Rocha', '78008374080', 'marina@estudio.com', '11999990004', '2021-09-20', 2),
(5, 'Rafael Torres', '71881817482', 'rafael@estudio.com', '11999990005', '2019-02-11', 3),
(6, 'Juliana Prado', '14333776163', 'juliana@estudio.com', '11999990006', '2025-03-03', 1),
(7, 'Diego Ferraz', '74093192596', 'diego@estudio.com', '11999990007', '2023-04-17', 2),
(8, 'Beatriz Nunes', '44992070701', 'beatriz@estudio.com', '11999990008', '2018-08-06', 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tatuador_estilo`
--

CREATE TABLE `tatuador_estilo` (
  `idtatuador` int(11) NOT NULL,
  `idestilo` int(11) NOT NULL,
  `dataestilo` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tatuador_estilo`
--

INSERT INTO `tatuador_estilo` (`idtatuador`, `idestilo`, `dataestilo`) VALUES
(1, 1, '2020-03-01'),
(1, 3, '2021-05-10'),
(2, 2, '2022-06-15'),
(2, 3, '2023-02-20'),
(3, 1, '2025-02-15'),
(3, 4, '2024-01-10'),
(4, 2, '2021-09-20'),
(4, 3, '2022-11-05'),
(5, 1, '2020-07-18'),
(5, 4, '2019-02-11'),
(6, 1, '2025-03-03'),
(7, 1, '2024-06-10'),
(7, 3, '2023-04-17'),
(8, 2, '2018-08-06'),
(8, 3, '2019-10-14');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `tipo` enum('admin','funcionario','cliente') NOT NULL DEFAULT 'funcionario',
  `idcliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nome`, `email`, `senha`, `tipo`, `idcliente`) VALUES
(1, 'Administrador', 'admin@gmail.com', '$2b$12$RY9VqBgwLd7ee0Csw1AfFulLOgk3eQ4WDqz57pb9ziIoraSNTQofa', 'admin', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `agendamento`
--
ALTER TABLE `agendamento`
  ADD PRIMARY KEY (`idagendamento`),
  ADD KEY `idcliente` (`idcliente`),
  ADD KEY `idtatuador` (`idtatuador`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idcliente`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- Índices de tabela `estilo`
--
ALTER TABLE `estilo`
  ADD PRIMARY KEY (`idestilo`);

--
-- Índices de tabela `senioridade`
--
ALTER TABLE `senioridade`
  ADD PRIMARY KEY (`idsenioridade`);

--
-- Índices de tabela `tatuador`
--
ALTER TABLE `tatuador`
  ADD PRIMARY KEY (`idtatuador`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD KEY `idsenioridade` (`idsenioridade`);

--
-- Índices de tabela `tatuador_estilo`
--
ALTER TABLE `tatuador_estilo`
  ADD PRIMARY KEY (`idtatuador`,`idestilo`),
  ADD KEY `idestilo` (`idestilo`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idcliente` (`idcliente`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `agendamento`
--
ALTER TABLE `agendamento`
  MODIFY `idagendamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `estilo`
--
ALTER TABLE `estilo`
  MODIFY `idestilo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `senioridade`
--
ALTER TABLE `senioridade`
  MODIFY `idsenioridade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tatuador`
--
ALTER TABLE `tatuador`
  MODIFY `idtatuador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `agendamento`
--
ALTER TABLE `agendamento`
  ADD CONSTRAINT `agendamento_ibfk_1` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`),
  ADD CONSTRAINT `agendamento_ibfk_2` FOREIGN KEY (`idtatuador`) REFERENCES `tatuador` (`idtatuador`);

--
-- Restrições para tabelas `tatuador`
--
ALTER TABLE `tatuador`
  ADD CONSTRAINT `tatuador_ibfk_1` FOREIGN KEY (`idsenioridade`) REFERENCES `senioridade` (`idsenioridade`);

--
-- Restrições para tabelas `tatuador_estilo`
--
ALTER TABLE `tatuador_estilo`
  ADD CONSTRAINT `tatuador_estilo_ibfk_1` FOREIGN KEY (`idtatuador`) REFERENCES `tatuador` (`idtatuador`),
  ADD CONSTRAINT `tatuador_estilo_ibfk_2` FOREIGN KEY (`idestilo`) REFERENCES `estilo` (`idestilo`);

--
-- Restrições para tabelas `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
