-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07/10/2023 às 23:30
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bdsitefael`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cadastro`
--

CREATE TABLE `cadastro` (
  `nomefantasia` varchar(120) NOT NULL,
  `cnpj` int(15) NOT NULL,
  `telefone` int(11) NOT NULL,
  `email` varchar(120) NOT NULL,
  `senha` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cadastro`
--

INSERT INTO `cadastro` (`nomefantasia`, `cnpj`, `telefone`, `email`, `senha`) VALUES
('eqwqeqwe', 2147483647, 2147483647, 'gleidson.clube@gmail.com', 2147483647),
('ESTILO ESTILO', 2147483647, 2147483647, 'gleidson.clube@gmail.com', 12345678),
('', 0, 0, '', 0),
('', 0, 0, '', 0),
('', 0, 0, '', 0),
('', 0, 0, '', 0),
('', 0, 0, '', 0),
('', 0, 0, '', 0),
('', 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `nomeproduto` varchar(70) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `quantidade` decimal(4,0) NOT NULL,
  `valor` int(10) NOT NULL,
  `id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`nomeproduto`, `marca`, `quantidade`, `valor`, `id`) VALUES
('arroz', 'arroz', 100, 100, 1),
('Carne', 'Friboi', 100, 50, 2),
('Macarrão', 'macarrão', 30, 7, 3),
('sal', 'sal', 10, 3, 5),
('sal', 'sal', 10, 3, 6),
('oleo de cozinha', 'sinha', 10, 8, 7),
('oleo de cozinha', 'sinha', 10, 8, 8);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `nome` varchar(50) DEFAULT NULL,
  `sobrenome` varchar(100) DEFAULT NULL,
  `telefone` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`nome`, `sobrenome`, `telefone`, `email`, `senha`) VALUES
('Ellison', 'Pereira', 2147483647, 'ellison@gmail.com', 909090),
('FERNANDO', 'LOPES', 2147483647, 'fernando@gmail.com', 1234),
('LUCAS', 'LOPES', 2147483647, 'lucas@gmail.com', 1234),
('Marcos', 'Santos', 909090909, 'marcos@gmail.com', 1234),
('Marta', 'Souza', 2147483647, 'marta@gmail.com', 1234),
('Mateus', 'Gomes', 909090909, 'mateus@gmail.com', 12345678),
('Silvia', 'Santos', 2147483647, 'silvia@gmail.com', 1234);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
