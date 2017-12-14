-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: 13/02/2017 às 09:48
-- Versão do servidor: 5.6.32-78.1
-- Versão do PHP: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de dados: `alvit350_clinica`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `category_stock`
--

CREATE TABLE IF NOT EXISTS `category_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Fazendo dump de dados para tabela `category_stock`
--

INSERT INTO `category_stock` (`id`, `category`) VALUES
(1, 'Veiculos'),
(2, 'Eletrodomésticos'),
(5, 'Móveis'),
(10, 'Informática'),
(11, 'Equipamentos');

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Fazendo dump de dados para tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `stock`
--

CREATE TABLE IF NOT EXISTS `stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` bigint(255) DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `local` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `Invoice` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3969 ;

--
-- Fazendo dump de dados para tabela `stock`
--

INSERT INTO `stock` (`id`, `tag`, `product`, `date`, `image`, `category`, `description`, `note`, `local`, `status`, `Invoice`) VALUES
(3647, 2, 'CPU Maxxtro', '2017-01-19', '2.jpg', '10', 'Modelo capricórnio', NULL, 'Predio 2', 'Ativo', NULL),
(3648, 55, 'CPU Maxxtro', '2017-01-19', '3.jpg', '10', 'Modelo capricórnio', '', 'Predio 2', 'Ativo', NULL),
(3649, 4, 'CPU Maxxtro', '2017-01-19', '4.jpg', '10', 'Modelo libra', NULL, 'Predio 2', 'Ativo', NULL),
(3650, 5, 'CPU Maxxtro', '2017-01-19', '5.jpg', '10', 'Modelo libra', 'Baia quebrada', 'Predio 2', 'Ativo', NULL),
(3651, 6, 'CPU Maxxtro', '2017-01-19', '6.jpg', '10', 'Modelo capricórnio', NULL, 'Predio 2', 'Ativo', NULL),
(3652, 7, 'CPU Maxxtro', '2017-01-19', '7.jpg', '10', 'Modelo libra', NULL, 'Predio 2', 'Ativo', NULL),
(3653, 8, 'CPU Maxxtro', '2017-01-19', '8.jpg', '10', 'Modelo libra', NULL, 'Predio 2', 'Ativo', NULL),
(3654, 9, 'CPU Clone', '2017-01-19', '9.jpg', '10', 'Modelo com tela de display', NULL, 'Predio 2', 'Ativo', NULL),
(3655, 10, 'CPU Maxxtro', '2017-01-19', '10.jpg', '10', 'Modelo peixe', NULL, 'Predio 2', 'Ativo', NULL),
(3656, 11, 'CPU Maxxtro', '2017-01-19', '11.jpg', '10', 'Modelo peixe', NULL, 'Predio 2', 'Ativo', NULL),
(3657, 12, 'CPU Maxxtro', '2017-01-19', '12.jpg', '10', 'Modelo virgem', NULL, 'Predio 2', 'Ativo', NULL),
(3658, 13, 'Monitor lg', '2017-01-19', '13.jpg', '10', 'E1941', NULL, 'Predio 2', 'Ativo', NULL),
(3659, 14, 'Monitor lg', '2017-01-19', '14.jpg', '10', 'E1941', NULL, 'Predio 2', 'Ativo', NULL),
(3660, 15, 'Impressora Hp', '2017-01-19', '15.jpg', '10', 'laserjet 1536dnf', NULL, 'Predio 2', 'Ativo', NULL),
(3661, 16, 'Impressora Hp', '2017-01-19', '16.jpg', '10', 'Deskjet 1000', 'Tampa quebrada', 'Predio 2', 'Ativo', NULL),
(3662, 18, 'Impressora Hp', '2017-01-19', '18.jpg', '10', 'laserjet 1536dnf', NULL, 'Predio 2', 'Ativo', NULL),
(3663, 19, 'Armario Cinza', '2017-01-19', '19.jpg', '5', 'Armario de ferro na cor cinza', '', 'Predio 2', 'Ativo', NULL),
(3664, 20, 'Estante Branca', '2017-01-19', '20.jpg', '5', 'Estante branca de ferro e madeira', NULL, 'Predio 2', 'Ativo', NULL),
(3665, 21, 'Mesa de cozinha', '2017-01-19', '21.jpg', '5', 'Mesa com 6 lugares', NULL, 'Predio 2', 'Ativo', NULL),
(3666, 22, 'Armario azul', '2017-01-19', '22.jpg', '5', 'Armario azul com duas portas', NULL, 'Predio 2', 'Ativo', NULL),
(3667, 23, 'Filtro branco', '2017-01-19', '23.jpg', '5', 'Filtro branco de cozinha', NULL, 'Predio 2', 'Ativo', NULL),
(3668, 24, 'Pia de cozinha', '2017-01-19', '24.jpg', '5', 'Pia com duas portas e 3 gavetas', NULL, 'Predio 2', 'Ativo', NULL),
(3669, 25, 'Microodas', '2017-01-19', '25.jpg', '5', 'Branco', NULL, 'Predio 2', 'Ativo', NULL),
(3670, 26, 'Geladeira', '2017-01-19', '26.jpg', '5', 'Branco', NULL, 'Predio 2', 'Ativo', NULL),
(3671, 27, 'Armario branco', '2017-01-19', '27.jpg', '5', 'Branco com 2 portas', NULL, 'Predio 2', 'Ativo', NULL),
(3672, 28, 'Cadeira', '2017-01-19', '28.jpg', '5', 'Cadeira azul com regulagem de altura', NULL, 'Predio 2', 'Ativo', NULL),
(3673, 29, 'Armario Branco', '2017-01-19', '29.jpg', '5', 'Armario com duas portas', NULL, 'Predio 2', 'Ativo', NULL),
(3674, 30, 'Descanso para os pés', '2017-01-19', '30.jpg', '5', 'Descanso para o pés em madeira', NULL, 'Predio 2', 'Ativo', NULL),
(3675, 31, 'Cadeira de madeira', '2017-01-19', '31.jpg', '5', 'Cadeira de madeira', NULL, 'Predio 2', 'Ativo', NULL),
(3676, 32, 'Banco estofado preto', '2017-01-19', '32.jpg', '5', 'Banco de dois lugares preto', NULL, 'Predio 2', 'Ativo', NULL),
(3677, 33, 'Descanso para os pés', '2017-01-19', '33.jpg', '5', 'Descanso para o pés em madeira', NULL, 'Predio 2', 'Ativo', NULL),
(3678, 34, 'Cadeira de madeira', '2017-01-19', '34.jpg', '5', 'Cadeira de madeira', NULL, 'Predio 2', 'Ativo', NULL),
(3679, 35, 'Cadeira', '2017-01-19', '35.jpg', '5', 'Cadeira Preta', NULL, 'Predio 2', 'Ativo', NULL),
(3680, 36, 'Cadeira', '2017-01-19', '36.jpg', '5', 'Cadeira Preta', NULL, 'Predio 2', 'Ativo', NULL),
(3681, 37, 'Rack para sala', '2017-01-19', '37.jpg', '5', 'Rack para Televisão', NULL, 'Predio 2', 'Ativo', NULL),
(3682, 38, 'Televisão', '2017-01-19', '38.jpg', '5', 'Tevisão lg 32"', NULL, 'Predio 2', 'Ativo', NULL),
(3683, 40, 'Rack para switch', '2017-01-19', '40.jpg', '10', 'Rack para 6 lugares', NULL, 'Predio 2', 'Ativo', NULL),
(3684, 41, 'Roteador', '2017-01-19', '41.jpg', '10', 'Roteador TP-LINK', NULL, 'Predio 2', 'Ativo', NULL),
(3685, 42, 'Switch', '2017-01-19', '42.jpg', '10', 'Switch furukawa', NULL, 'Predio 2', 'Ativo', NULL),
(3686, 43, 'Switch', '2017-01-19', '43.jpg', '10', 'Switch 3Con', NULL, 'Predio 2', 'Ativo', NULL),
(3687, 44, 'Cadeira', '2017-01-20', '44.jpg', '5', 'Cadeira azul com regulagem de altura', NULL, 'Predio 2', 'Ativo', NULL),
(3688, 45, 'Cadeira', '2017-01-20', '45.jpg', '5', 'Cadeira azul com regulagem de altura', NULL, 'Predio 2', 'Ativo', NULL),
(3689, 46, 'Cadeira', '2017-01-20', '46.jpg', '5', 'Cadeira azul com regulagem de altura', NULL, 'Predio 2', 'Ativo', NULL),
(3690, 47, 'Cadeira', '2017-01-20', '47.jpg', '5', 'Cadeira azul com regulagem de altura', NULL, 'Predio 2', 'Ativo', NULL),
(3691, 48, 'Cadeira', '2017-01-20', '48.jpg', '5', 'Cadeira azul com regulagem de altura', NULL, 'Predio 2', 'Ativo', NULL),
(3692, 49, 'Cadeira', '2017-01-20', '49.jpg', '5', 'Cadeira azul com regulagem de altura', NULL, 'Predio 2', 'Ativo', NULL),
(3693, 50, 'Cadeira', '2017-01-20', '50.jpg', '5', 'Cadeira azul com regulagem de altura', NULL, 'Predio 2', 'Ativo', NULL),
(3694, 51, 'Cadeira', '2017-01-20', '51.jpg', '5', 'Cadeira azul com regulagem de altura', NULL, 'Predio 2', 'Ativo', NULL),
(3695, 52, 'Mesa de reunião', '2017-01-20', '52.jpg', '5', 'Mesa marfim grande para reunião', NULL, 'Predio 2', 'Ativo', NULL),
(3696, 53, 'Banco de 4 lugares', '2017-01-20', '53.jpg', '5', 'Banco de 4 lugares estofado preto', NULL, 'Predio 2', 'Ativo', NULL),
(3697, 54, 'Armário', '2017-01-20', '54.jpg', '5', 'Arm?rio de 2 portas marfim', NULL, 'Predio 2', 'Ativo', NULL),
(3698, 55, 'Cafeteira 3 corações', '2017-01-20', '55.jpg', '5', 'Cafeteira vermelha 3 corações', NULL, 'Predio 2', 'Ativo', NULL),
(3699, 56, 'Quadro branco', '2017-01-20', '56.jpg', '5', 'Quadro branco para anotação', NULL, 'Predio 2', 'Ativo', NULL),
(3700, 57, 'Televisão', '2017-01-20', '57.jpg', '5', 'Televisão de 42"', NULL, 'Predio 2', 'Ativo', NULL),
(3701, 58, 'Gaveteiro', '2017-01-20', '58.jpg', '5', 'Gaveteiro de 4 gavetas marfim', NULL, 'Predio 2', 'Ativo', NULL),
(3702, 59, 'Gaveteiro', '2017-01-20', '59.jpg', '5', 'Gaveteiro de 3 gavetas marfim', NULL, 'Predio 2', 'Ativo', NULL),
(3703, 60, 'Mesa', '2017-01-20', '60.jpg', '5', 'Mesa marfim', NULL, 'Predio 2', 'Ativo', NULL),
(3704, 61, 'CPU Maxxtro', '2017-01-20', '61.jpg', '10', 'Modelo libra', NULL, 'Predio 2', 'Ativo', NULL),
(3705, 62, 'Monitor AOC', '2017-01-20', '62.jpg', '10', 'mdf2009', NULL, 'Predio 2', 'Ativo', NULL),
(3706, 63, 'Mesa', '2017-01-20', '63.jpg', '5', 'Mesa marfim', NULL, 'Predio 2', 'Ativo', NULL),
(3707, 64, 'Cadeira', '2017-01-20', '64.jpg', '5', 'Cadeira azul', NULL, 'Predio 2', 'Ativo', NULL),
(3708, 65, 'Mesa', '2017-01-20', '65.jpg', '5', 'Mesa de canto', NULL, 'Predio 2', 'Ativo', NULL),
(3709, 66, 'Mesa', '2017-01-20', '66.jpg', '5', 'Mesa de canto', NULL, 'Predio 2', 'Ativo', NULL),
(3710, 67, 'Cadeira', '2017-01-20', '67.jpg', '5', 'Cadeira preta de escrit?rio', NULL, 'Predio 2', 'Ativo', NULL),
(3711, 68, 'Gaveteiro', '2017-01-20', '68.jpg', '5', 'Gaveteiro de 3 portas marfim', NULL, 'Predio 2', 'Ativo', NULL),
(3712, 69, 'Armario', '2017-01-20', '69.jpg', '5', 'Armario de 2 potas marfim', NULL, 'Predio 2', 'Ativo', NULL),
(3713, 70, 'Amario', '2017-01-20', '70.jpg', '5', 'Armario azul com duas portas', NULL, 'Predio 2', 'Ativo', NULL),
(3714, 71, 'Notebook acer', '2017-01-26', '71.jpg', '10', 'Notebook acer E1-571-6665', NULL, 'Predio 2', 'Ativo', NULL),
(3715, 72, 'Notebook acer', '2017-01-26', '72.jpg', '10', 'Notebook acer E1-571-6665', NULL, 'Predio 2', 'Ativo', NULL),
(3716, 73, 'Notebook acer', '2017-01-26', '73.jpg', '10', 'Notebook acer E1-571-6665', NULL, 'Predio 2', 'Ativo', NULL),
(3717, 74, 'Notebook HP', '2017-01-26', '74.jpg', '10', 'Notebook HP TPN-F112', NULL, 'Predio 2', 'Ativo', NULL),
(3718, 75, 'Mesa', '2017-01-26', '75.jpg', '5', 'Mesa marfim', NULL, 'Clinica', 'Ativo', NULL),
(3719, 76, 'Cadeia', '2017-01-26', '76.jpg', '5', 'Cadeira azul com regulagem de altura', NULL, 'Clinica', 'Ativo', NULL),
(3720, 77, 'CPU', '2017-01-26', '77.jpg', '10', 'Computador dell Optiplex 3040', NULL, 'Clinica', 'Ativo', NULL),
(3721, 78, 'Monitor LG', '2017-01-26', '78.jpg', '10', 'Monitor lg 20m37aa', NULL, 'Clinica', 'Ativo', NULL),
(3722, 79, 'Telefone', '2017-01-26', '79.jpg', '10', 'Telefone calbox grandstream', NULL, 'Clinica', 'Ativo', NULL),
(3723, 80, 'Nobreak', '2017-01-26', '80.jpg', '10', 'Nobreak APC backups 600', NULL, 'Clinica', 'Ativo', NULL),
(3724, 81, 'Televisão LG', '2017-01-26', '81.jpg', '5', 'modelo 24mt470', NULL, 'Clinica', 'Ativo', NULL),
(3725, 82, 'Impressora Hp', '2017-01-26', '82.jpg', '10', 'Impressora Deskjet 1000', NULL, 'Clinica', 'Ativo', NULL),
(3726, 83, 'CPU', '2017-01-26', '83.jpg', '10', 'Computador dell Optiplex 3040', NULL, 'Clinica', 'Ativo', NULL),
(3727, 84, 'Monitor LG', '2017-01-26', '84.jpg', '10', 'Monitor lg 20m37aa', NULL, 'Clinica', 'Ativo', NULL),
(3728, 85, 'Telefone', '2017-01-26', '85.jpg', '10', 'Telefone calbox grandstream', NULL, 'Clinica', 'Ativo', NULL),
(3729, 86, 'Mesa', '2017-01-26', '86.jpg', '5', 'Mesa marfim', NULL, 'Clinica', 'Ativo', NULL),
(3730, 87, 'Nobreak', '2017-01-26', '87.jpg', '10', 'Nobreak APC backups 600', NULL, 'Clinica', 'Ativo', NULL),
(3731, 88, 'Cadeira', '2017-01-26', '88.jpg', '5', 'Cadeira azul com regulagem de altura', NULL, 'Clinica', 'Ativo', NULL),
(3732, 89, 'Poltrona', '2017-01-26', '89.jpg', '5', 'Poltrona de 2 lugares', NULL, 'Clinica', 'Ativo', NULL),
(3733, 90, 'Gaveteiro', '2017-01-26', '90.jpg', '5', 'Gaveteiro com 3 gavetas e 3 baias', NULL, 'Clinica', 'Ativo', NULL),
(3734, 91, 'Maca com armário', '2017-01-26', '91.jpg', '5', 'Maca com armário 6 gavetas e 2 portas', NULL, 'Clinica', 'Ativo', NULL),
(3735, 92, 'Mesa', '2017-01-26', '92.jpg', '5', 'Mesa marfim', NULL, 'Clinica', 'Ativo', NULL),
(3736, 93, 'Notebook acer', '2017-01-26', '93.jpg', '10', 'Notebook acer E1-571-6665', NULL, 'Clinica', 'Ativo', NULL),
(3737, 94, 'Impressora Hp', '2017-01-26', '94.jpg', '10', 'Impressora Deskjet 1000', NULL, 'Clinica', 'Ativo', NULL),
(3738, 95, 'Cadeira', '2017-01-26', '95.jpg', '5', 'Cadeira azul com regulagem de altura', NULL, 'Clinica', 'Ativo', NULL),
(3739, 96, 'Mesa branca', '2017-01-26', '96.jpg', '5', 'Mesa branca de rodinha', NULL, 'Clinica', 'Ativo', NULL),
(3740, 97, 'Cadeira', '2017-01-26', '97.jpg', '5', 'Cadeira azul com regulagem', NULL, 'Clinica', 'Ativo', NULL),
(3741, 98, 'Mesa de rodinha', '2017-01-26', '98.jpg', '5', 'Mesa marfim', NULL, 'Clinica', 'Ativo', NULL),
(3742, 99, 'Maca', '2017-01-26', '99.jpg', '5', 'Maca hospitalar', NULL, 'Clinica', 'Ativo', NULL),
(3743, 100, 'Escada', '2017-01-26', '100.jpg', '5', 'Escada de dois niveis', NULL, 'Clinica', 'Ativo', NULL),
(3744, 101, 'Mesa de rodinha', '2017-01-26', '101.jpg', '5', 'Mesa branca de rodinha', NULL, 'Clinica', 'Ativo', NULL),
(3745, 102, 'Notebook HP', '2017-01-26', '102.jpg', '10', 'Notebook HP TPN-F112', NULL, 'Clinica', 'Ativo', NULL),
(3746, 103, 'Maca', '2017-01-26', '103.jpg', '5', 'Maca hospitalar', NULL, 'Clinica', 'Ativo', NULL),
(3747, 106, 'Maca', '2017-01-26', '106.jpg', '5', 'Maca hospitalar', NULL, 'Clinica', 'Ativo', NULL),
(3748, 107, 'Cadeira', '2017-01-26', '107.jpg', '5', 'Cadeira azul com regulagem', NULL, 'Clinica', 'Ativo', NULL),
(3749, 108, 'Mesa', '2017-01-26', '108.jpg', '5', 'Mesa na cor marfim', NULL, 'Clinica', 'Ativo', NULL),
(3750, 109, 'Cadeira', '2017-01-26', '109.jpg', '5', 'Cadeira azul', NULL, 'Clinica', 'Ativo', NULL),
(3751, 110, 'Monitor LG', '2017-01-26', '110.jpg', '10', 'Monitor lg 20m37aa', NULL, 'Clinica', 'Ativo', NULL),
(3752, 111, 'Impressora Hp', '2017-01-26', '111.jpg', '10', 'Impressora Deskjet 1000', NULL, 'Clinica', 'Ativo', NULL),
(3753, 112, 'Nobreak', '2017-01-26', '112.jpg', '10', 'Nobreak APC backups 600', NULL, 'Clinica', 'Ativo', NULL),
(3754, 113, 'CPU', '2017-01-26', '113.jpg', '10', 'Computador dell Optiplex 3040', NULL, 'Clinica', 'Ativo', NULL),
(3755, 114, 'Cadeira', '2017-01-26', '114.jpg', '5', 'Cadeira azul', NULL, 'Clinica', 'Ativo', NULL),
(3756, 115, 'Cadeira de rodinha', '2017-01-26', '115.jpg', '5', 'Cadeira com apoio para os pés azul', NULL, 'Clinica', 'Ativo', NULL),
(3757, 116, 'Banco de 2 lugares', '2017-01-26', '116.jpg', '5', 'Banco azul de 2 lugares', NULL, 'Clinica', 'Ativo', NULL),
(3758, 117, 'Banco de 2 lugares', '2017-01-26', '117.jpg', '5', 'Banco azul de 2 lugares', NULL, 'Clinica', 'Ativo', NULL),
(3759, 118, 'Banco de 2 lugares', '2017-01-26', '118.jpg', '5', 'Banco azul de 2 lugares', NULL, 'Clinica', 'Ativo', NULL),
(3760, 119, 'Banco de 2 lugares', '2017-01-26', '119.jpg', '5', 'Banco azul de 2 lugares', NULL, 'Clinica', 'Ativo', NULL),
(3761, 120, 'Banco de 2 lugares', '2017-01-26', '120.jpg', '5', 'Banco azul de 2 lugares', NULL, 'Clinica', 'Ativo', NULL),
(3762, 121, 'Banco de 2 lugares', '2017-01-26', '121.jpg', '5', 'Banco azul de 2 lugares', NULL, 'Clinica', 'Ativo', NULL),
(3763, 122, 'Banco de 2 lugares', '2017-01-26', '122.jpg', '5', 'Banco azul de 2 lugares', NULL, 'Clinica', 'Ativo', NULL),
(3764, 123, 'Banco de 2 lugares', '2017-01-26', '123.jpg', '5', 'Banco azul de 2 lugares', NULL, 'Clinica', 'Ativo', NULL),
(3765, 124, 'Banco de 2 lugares', '2017-01-26', '124.jpg', '5', 'Banco azul de 2 lugares', NULL, 'Clinica', 'Ativo', NULL),
(3766, 125, 'Banco de 2 lugares', '2017-01-26', '125.jpg', '5', 'Banco azul de 2 lugares', NULL, 'Clinica', 'Ativo', NULL),
(3767, 126, 'Banco de 2 lugares', '2017-01-26', '126.jpg', '5', 'Banco azul de 2 lugares', NULL, 'Clinica', 'Ativo', NULL),
(3768, 127, 'Banco de 2 lugares', '2017-01-26', '127.jpg', '5', 'Banco azul de 2 lugares', NULL, 'Clinica', 'Ativo', NULL),
(3769, 128, 'Banco de 2 lugares', '2017-01-26', '128.jpg', '5', 'Banco azul de 2 lugares', NULL, 'Clinica', 'Ativo', NULL),
(3770, 129, 'Banco de 2 lugares', '2017-01-26', '129.jpg', '5', 'Banco azul de 2 lugares', NULL, 'Clinica', 'Ativo', NULL),
(3771, 130, 'Banco de 2 lugares', '2017-01-26', '130.jpg', '5', 'Banco azul de 2 lugares', NULL, 'Clinica', 'Ativo', NULL),
(3772, 131, 'Banco de 2 lugares', '2017-01-26', '131.jpg', '5', 'Banco azul de 2 lugares', NULL, 'Clinica', 'Ativo', NULL),
(3773, 132, 'Banco de 2 lugares', '2017-01-26', '132.jpg', '5', 'Banco azul de 2 lugares', NULL, 'Clinica', 'Ativo', NULL),
(3774, 133, 'Banco de 2 lugares', '2017-01-26', '133.jpg', '5', 'Banco azul de 2 lugares', NULL, 'Clinica', 'Ativo', NULL),
(3775, 134, 'Banco de 2 lugares', '2017-01-26', '134.jpg', '5', 'Banco azul de 2 lugares', NULL, 'Clinica', 'Ativo', NULL),
(3776, 135, 'Banco de 2 lugares', '2017-01-26', '135.jpg', '5', 'Banco azul de 2 lugares', NULL, 'Clinica', 'Ativo', NULL),
(3777, 136, 'Cadeira', '2017-01-26', '136.jpg', '5', 'Cadeira azul com regulagem', NULL, 'Clinica', 'Ativo', NULL),
(3778, 137, 'CPU', '2017-01-26', '137.jpg', '10', 'Computador dell Optiplex 3040', NULL, 'Clinica', 'Ativo', NULL),
(3779, 138, 'Monitor LG', '2017-01-26', '138.jpg', '10', 'Monitor lg 20m37aa', NULL, 'Clinica', 'Ativo', NULL),
(3780, 139, 'Mesa para computador', '2017-01-26', '139.jpg', '5', 'Mesa branca para computador', NULL, 'Clinica', 'Ativo', NULL),
(3781, 140, 'Nobreak', '2017-01-26', '140.jpg', '10', 'Nobreak APC backups 600', NULL, 'Clinica', 'Ativo', NULL),
(3782, 141, 'Impressora HP', '2017-01-26', '141.jpg', '10', 'Impressora laserjet p1102q', NULL, 'Clinica', 'Ativo', NULL),
(3783, 142, 'Cadeira', '2017-01-26', '142.jpg', '5', 'Cadeira azul com regulagem', NULL, 'Clinica', 'Ativo', NULL),
(3784, 143, 'Maca', '2017-01-26', '143.jpg', '5', 'Maca hospitalar', NULL, 'Clinica', 'Ativo', NULL),
(3785, 144, 'Mesa', '2017-01-26', '144.jpg', '5', 'Mesa branca', NULL, 'Clinica', 'Ativo', NULL),
(3786, 145, 'Maca com armário', '2017-01-26', '145.jpg', '5', 'Maca com armário 6 gavetas e 2 portas', NULL, 'Clinica', 'Ativo', NULL),
(3787, 146, 'Escada', '2017-01-26', '146.jpg', '5', 'Escada de dois niveis', NULL, 'Clinica', 'Ativo', NULL),
(3788, 147, 'Mesa', '2017-01-26', '147.jpg', '5', 'Mesa marfim', NULL, 'Clinica', 'Ativo', NULL),
(3789, 148, 'Cadeira', '2017-01-26', '148.jpg', '5', 'Cadeira azul com regulagem', NULL, 'Clinica', 'Ativo', NULL),
(3790, 149, 'CPU', '2017-01-26', '149.jpg', '10', 'Computador dell Optiplex 3040', NULL, 'Clinica', 'Ativo', NULL),
(3791, 150, 'Monitor LG', '2017-01-26', '150.jpg', '10', 'Monitor lg 20m37aa', NULL, 'Clinica', 'Ativo', NULL),
(3792, 151, 'Telefone', '2017-01-26', '151.jpg', '10', 'Telefone calbox grandstream', NULL, 'Clinica', 'Ativo', NULL),
(3793, 152, 'Nobreak', '2017-01-26', '152.jpg', '10', 'Nobreak APC backups 600', NULL, 'Clinica', 'Ativo', NULL),
(3794, 153, 'Gaveteiro', '2017-01-26', '153.jpg', '5', 'Gaveteiro com 3 gavetas e 3 baias', NULL, 'Clinica', 'Ativo', NULL),
(3795, 155, 'Maca com armário', '2017-01-26', '155.jpg', '5', 'Maca com armário 6 gavetas e 2 portas', NULL, 'Clinica', 'Ativo', NULL),
(3796, 156, 'Escada', '2017-01-26', '156.jpg', '5', 'Escada de 2 niveis', NULL, 'Clinica', 'Ativo', NULL),
(3797, 157, 'Mesa', '2017-01-26', '157.jpg', '5', 'Mesa marfim', NULL, 'Clinica', 'Ativo', NULL),
(3798, 158, 'Cadeira', '2017-01-26', '158.jpg', '5', 'Cadeira azul com regulagem', NULL, 'Clinica', 'Ativo', NULL),
(3799, 159, 'CPU', '2017-01-26', '159.jpg', '10', 'Computador dell Optiplex 3040', NULL, 'Clinica', 'Ativo', NULL),
(3800, 160, 'Monitor LG', '2017-01-26', '160.jpg', '10', 'Monitor lg 20m37aa', NULL, 'Clinica', 'Ativo', NULL),
(3801, 161, 'Impressora Hp', '2017-01-26', '161.jpg', '10', 'Deskjet 1000', NULL, 'Clinica', 'Ativo', NULL),
(3802, 162, 'Telefone', '2017-01-26', '162.jpg', '10', 'Telefone calbox grandstream', NULL, 'Clinica', 'Ativo', NULL),
(3803, 163, 'Nobreak', '2017-01-26', '163.jpg', '10', 'Nobreak APC backups 600', NULL, 'Clinica', 'Ativo', NULL),
(3804, 164, 'Geladeira', '2017-01-26', '164.jpg', '5', 'Geladeira consul', NULL, 'Clinica', 'Ativo', NULL),
(3805, 165, 'Gaveteiro', '2017-01-26', '165.jpg', '5', 'Gaveteiro de 4 gavetas', NULL, 'Clinica', 'Ativo', NULL),
(3806, 166, 'Armario', '2017-01-26', '166.jpg', '5', 'Armario de 2 portas', NULL, 'Clinica', 'Ativo', NULL),
(3807, 167, 'Escada', '2017-01-26', '167.jpg', '5', 'Escada de 2 niveis', NULL, 'Clinica', 'Ativo', NULL),
(3808, 168, 'Telefone', '2017-01-26', '168.jpg', '10', 'Telefone calbox grandstream', NULL, 'Clinica', 'Ativo', NULL),
(3809, 169, 'Notebook acer', '2017-01-26', '169.jpg', '10', 'Notebook acer E1-571-6665', NULL, 'Clinica', 'Ativo', NULL),
(3810, 170, 'Mesa', '2017-01-26', '170.jpg', '5', 'Mesa branca', NULL, 'Clinica', 'Ativo', NULL),
(3811, 171, 'Gaveteiro', '2017-01-26', '171.jpg', '5', 'Gaveteiro com 3 gavetas e 3 baias', NULL, 'Clinica', 'Ativo', NULL),
(3812, 172, 'Notebook acer', '2017-01-26', '172.jpg', '10', 'Notebook acer E1-571-6665', NULL, 'Clinica', 'Ativo', NULL),
(3813, 173, 'Cadeira estofada', '2017-01-26', '173.jpg', '5', 'cadeira azul estofada', NULL, 'Clinica', 'Ativo', NULL),
(3814, 174, 'Cadeira estofada', '2017-01-26', '174.jpg', '5', 'cadeira azul estofada', NULL, 'Clinica', 'Ativo', NULL),
(3815, 175, 'Cadeira com encosto', '2017-01-26', '175.jpg', '5', 'Cadeira estofada com encosto', NULL, 'Clinica', 'Ativo', NULL),
(3816, 176, 'Cadeira estofada', '2017-01-26', '176.jpg', '5', 'cadeira azul estofada', NULL, 'Clinica', 'Ativo', NULL),
(3817, 177, 'Balança', '2017-01-26', '177.jpg', '11', 'Balança para peso', '', 'Clinica', 'Ativo', NULL),
(3818, 178, 'Balcão azul', '2017-01-26', '178.jpg', '5', 'Balcão azul', NULL, 'Clinica', 'Ativo', NULL),
(3819, 179, 'Telefone', '2017-01-26', '179.jpg', '10', 'Telefone calbox grandstream', NULL, 'Clinica', 'Ativo', NULL),
(3820, 180, 'Cadeira de rodinha', '2017-01-26', '180.jpg', '5', 'Cadeira com apoio para os pés azul', NULL, 'Clinica', 'Ativo', NULL),
(3821, 181, 'Baia', '2017-01-26', '181.jpg', '5', 'Baia para computador 2 lugares', NULL, 'Clinica', 'Ativo', NULL),
(3822, 182, 'Armario', '2017-02-02', '182.jpg', '5', 'Armario de 2 portas', NULL, 'Clinica', 'Ativo', NULL),
(3823, 183, 'Computador Dell', '2017-02-02', '183.jpg', '10', 'Computador dell Optiplex 3040', NULL, 'Clinica', 'Ativo', NULL),
(3824, 184, 'Monitor AOC', '2017-02-02', '184.jpg', '10', 'mdf2009', NULL, 'Clinica', 'Ativo', NULL),
(3825, 185, 'Computador Dell', '2017-02-02', '185.jpg', '10', 'Computador dell Optiplex 3040', NULL, 'Clinica', 'Ativo', NULL),
(3826, 186, 'Monitor AOC', '2017-02-02', '186.jpg', '10', 'mdf2009', NULL, 'Clinica', 'Ativo', NULL),
(3827, 187, 'Computador Dell', '2017-02-02', '187.jpg', '10', 'Computador dell Optiplex 3040', NULL, 'Clinica', 'Ativo', NULL),
(3828, 188, 'Monitor AOC', '2017-02-02', '188.jpg', '10', 'mdf2009', NULL, 'Clinica', 'Ativo', NULL),
(3829, 189, 'Telefone', '2017-02-02', '189.jpg', '10', 'Telefone calbox grandstream', NULL, 'Clinica', 'Ativo', NULL),
(3830, 190, 'Telefone', '2017-02-02', '190.jpg', '10', 'Telefone calbox grandstream', NULL, 'Clinica', 'Ativo', NULL),
(3831, 191, 'Mesa da recepção', '2017-02-02', '191.jpg', '5', 'Mesa de recepção', NULL, 'Clinica', 'Ativo', NULL),
(3832, 192, 'Impressora Hp', '2017-02-02', '192.jpg', '10', 'Laserjet m1132 mfp', NULL, 'Clinica', 'Ativo', NULL),
(3833, 193, 'Notebook Acer', '2017-02-02', '193.jpg', '10', 'Notebook acer E1-571-6665', NULL, 'Clinica', 'Ativo', NULL),
(3834, 194, 'Armario', '2017-02-02', '194.jpg', '5', 'Armario de 2 portas', NULL, 'Clinica', 'Ativo', NULL),
(3835, 195, 'Gaveteiro', '2017-02-02', '195.jpg', '5', 'Gaveteiro de 4 lugares', NULL, 'Clinica', 'Ativo', NULL),
(3836, 196, 'Impressora Hp', '2017-02-02', '196.jpg', '10', 'Laserjet m1132 mfp', NULL, 'Clinica', 'Ativo', NULL),
(3837, 197, 'Notebook', '2017-02-02', '197.jpg', '10', 'Notebook acer E1-571-6665', NULL, 'Clinica', 'Ativo', NULL),
(3838, 198, 'Computador Dell', '2017-02-02', '198.jpg', '10', 'Computador dell Optiplex 3040', NULL, 'Clinica', 'Ativo', NULL),
(3839, 199, 'Monitor AOC', '2017-02-02', '199.jpg', '10', 'mdf2009', NULL, 'Clinica', 'Ativo', NULL),
(3840, 200, 'Gerador de senha', '2017-02-02', '200.jpg', '10', 'Gerador de senha para recepção', NULL, 'Clinica', 'Ativo', NULL),
(3841, 201, 'Filtro de agua', '2017-02-02', '201.jpg', '5', 'Filtro de agua potavel', NULL, 'Clinica', 'Ativo', NULL),
(3842, 202, 'Nextel', '2017-02-02', '202.jpg', '5', 'Nextel Motorola i418', NULL, 'Clinica', 'Ativo', NULL),
(3843, 203, 'Gaveteiro', '2017-02-02', '203.jpg', '5', 'Gaveteiro com 3 gavetas e 3 baias', NULL, 'Clinica', 'Ativo', NULL),
(3844, 204, 'Cadeira', '2017-02-02', '204.jpg', '5', 'Cadeira Preta', NULL, 'Clinica', 'Ativo', NULL),
(3845, 205, 'Maca com armário', '2017-02-02', '205.jpg', '5', 'Maca com armário 6 gavetas e 2 portas', NULL, 'Clinica', 'Ativo', NULL),
(3846, 206, 'Escada', '2017-02-02', '206.jpg', '5', 'Escada de dois niveis', NULL, 'Clinica', 'Ativo', NULL),
(3847, 207, 'Mesa', '2017-02-02', '207.jpg', '5', 'Mesa marfim', NULL, 'Segunda Andar', 'Ativo', NULL),
(3848, 208, 'Impressora Hp', '2017-02-02', '208.jpg', '10', 'Deskjet 1000', NULL, 'Segunda Andar', 'Ativo', NULL),
(3849, 209, 'CPU', '2017-02-02', '209.jpg', '10', 'Computador dell Optiplex 3040', NULL, 'Segunda Andar', 'Ativo', NULL),
(3850, 210, 'Monitor LG', '2017-02-02', '210.jpg', '10', 'Monitor lg 20m37aa', NULL, 'Segunda Andar', 'Ativo', NULL),
(3851, 211, 'Cadeira', '2017-02-02', '211.jpg', '5', 'Cadeira azul com regulagem', NULL, 'Segunda Andar', 'Ativo', NULL),
(3852, 212, 'Telefone', '2017-02-02', '212.jpg', '10', 'Telefone calbox grandstream', NULL, 'Segunda Andar', 'Ativo', NULL),
(3853, 213, 'Nobreak', '2017-02-02', '213.jpg', '10', 'Nobreak APC backups 600', NULL, 'Segunda Andar', 'Ativo', NULL),
(3854, 214, 'Mesa', '2017-02-02', '214.jpg', '5', 'Mesa marfim', NULL, 'Segunda Andar', 'Ativo', NULL),
(3855, 215, 'Armario', '2017-02-02', '215.jpg', '5', 'Armario de 2 portas', NULL, 'Segunda Andar', 'Ativo', NULL),
(3856, 216, 'Cadeira', '2017-02-02', '216.jpg', '5', 'Cadeira azul com estofada', NULL, 'Segunda Andar', 'Ativo', NULL),
(3857, 217, 'Cadeira', '2017-02-02', '217.jpg', '5', 'Cadeira azul com estofada', NULL, 'Segunda Andar', 'Ativo', NULL),
(3858, 218, 'Telefone', '2017-02-02', '218.jpg', '10', 'Telefone calbox grandstream', NULL, 'Segunda Andar', 'Ativo', NULL),
(3859, 219, 'CPU', '2017-02-02', '219.jpg', '10', 'Computador dell Optiplex 3040', NULL, 'Segunda Andar', 'Ativo', NULL),
(3860, 220, 'Telefone', '2017-02-02', '220.jpg', '10', 'Telefone calbox grandstream', NULL, 'Segunda Andar', 'Ativo', NULL),
(3861, 221, 'Monitor LG', '2017-02-02', '221.jpg', '10', 'Monitor lg 20m37aa', NULL, 'Segunda Andar', 'Ativo', NULL),
(3862, 222, 'Cadeira', '2017-02-02', '222.jpg', '5', 'Cadeira preta com regulagem', NULL, 'Segunda Andar', 'Ativo', NULL),
(3863, 223, 'CPU', '2017-02-02', '223.jpg', '10', 'Computador dell Optiplex 3041', NULL, 'Segunda Andar', 'Ativo', NULL),
(3864, 224, 'Telefone', '2017-02-02', '224.jpg', '10', 'Telefone calbox grandstream', NULL, 'Segunda Andar', 'Ativo', NULL),
(3865, 225, 'Monitor LG', '2017-02-02', '225.jpg', '10', 'Monitor lg 20m37aa', NULL, 'Segunda Andar', 'Ativo', NULL),
(3866, 226, 'Cadeira', '2017-02-02', '226.jpg', '5', 'Cadeira preta com regulagem', NULL, 'Segunda Andar', 'Ativo', NULL),
(3867, 227, 'CPU', '2017-02-02', '227.jpg', '10', 'Computador dell Optiplex 3042', NULL, 'Segunda Andar', 'Ativo', NULL),
(3868, 228, 'Telefone', '2017-02-02', '228.jpg', '10', 'Telefone calbox grandstream', NULL, 'Segunda Andar', 'Ativo', NULL),
(3869, 229, 'Monitor LG', '2017-02-02', '229.jpg', '10', 'Monitor lg 20m37aa', NULL, 'Segunda Andar', 'Ativo', NULL),
(3870, 230, 'Cadeira', '2017-02-02', '230.jpg', '5', 'Cadeira preta com regulagem', NULL, 'Segunda Andar', 'Ativo', NULL),
(3871, 231, 'CPU', '2017-02-02', '231.jpg', '10', 'Computador dell Optiplex 3043', NULL, 'Segunda Andar', 'Ativo', NULL),
(3872, 232, 'Telefone', '2017-02-02', '232.jpg', '10', 'Telefone calbox grandstream', NULL, 'Segunda Andar', 'Ativo', NULL),
(3873, 233, 'Monitor LG', '2017-02-02', '233.jpg', '10', 'Monitor lg 20m37aa', NULL, 'Segunda Andar', 'Ativo', NULL),
(3874, 234, 'Cadeira', '2017-02-02', '234.jpg', '5', 'Cadeira preta com regulagem', NULL, 'Segunda Andar', 'Ativo', NULL),
(3875, 235, 'Monitor LG', '2017-02-02', '235.jpg', '10', 'Monitor lg 20m37aa', NULL, 'Segunda Andar', 'Ativo', NULL),
(3876, 236, 'CPU Maxxtro', '2017-02-02', '236.jpg', '10', 'Modelo capricórnio', NULL, 'Segunda Andar', 'Ativo', NULL),
(3877, 237, 'CPU Maxxtro', '2017-02-02', '237.jpg', '10', 'Modelo capricórnio', NULL, 'Segunda Andar', 'Ativo', NULL),
(3878, 238, 'Modulo de bateria', '2017-02-02', '238.jpg', '10', 'Bateria NHS', NULL, 'Segunda Andar', 'Ativo', NULL),
(3879, 239, 'Modulo de bateria', '2017-02-02', '239.jpg', '10', 'Bateria NHS', NULL, 'Segunda Andar', 'Ativo', NULL),
(3880, 240, 'Modulo de bateria', '2017-02-02', '240.jpg', '10', 'Bateria NHS', NULL, 'Segunda Andar', 'Ativo', NULL),
(3881, 241, 'Nobreak', '2017-02-02', '241.jpg', '10', 'Nobreak APC backups 600', NULL, 'Segunda Andar', 'Ativo', NULL),
(3882, 242, 'Nobreak', '2017-02-02', '242.jpg', '10', 'Nobreak APC backups 600', NULL, 'Segunda Andar', 'Ativo', NULL),
(3883, 243, 'Nobreak', '2017-02-02', '243.jpg', '10', 'Nobreak SMS', NULL, 'Segunda Andar', 'Ativo', NULL),
(3884, 244, 'Computador HP', '2017-02-02', '244.jpg', '10', 'Proliant ml110 gen9', NULL, 'Segunda Andar', 'Ativo', NULL),
(3885, 245, 'Roteador', '2017-02-02', '245.jpg', '10', 'Sophos sg 115', NULL, 'Segunda Andar', 'Ativo', NULL),
(3886, 246, 'Intelbras', '2017-02-02', '246.jpg', '10', 'hocvi', NULL, 'Segunda Andar', 'Ativo', NULL),
(3887, 247, 'Monitor AOC', '2017-02-02', '247.jpg', '10', 'mdf2009', NULL, 'Segunda Andar', 'Ativo', NULL),
(3888, 248, 'Cadeira', '2017-02-02', '248.jpg', '5', 'Cadeira preta com regulagem', NULL, 'Segunda Andar', 'Ativo', NULL),
(3889, 249, 'Cadeira', '2017-02-02', '249.jpg', '5', 'Cadeira azul com regulagem de altura', NULL, 'Segunda Andar', 'Ativo', NULL),
(3890, 250, 'CPU', '2017-02-02', '250.jpg', '10', 'Computador dell Optiplex 3040', NULL, 'Segunda Andar', 'Ativo', NULL),
(3891, 251, 'Monitor LG', '2017-02-02', '251.jpg', '10', 'Monitor lg 20m37aa', NULL, 'Segunda Andar', 'Ativo', NULL),
(3892, 252, 'Telefone', '2017-02-02', '252.jpg', '10', 'Telefone calbox grandstream', NULL, 'Segunda Andar', 'Ativo', NULL),
(3893, 253, 'Mesa com 2 niveis', '2017-02-02', '253.jpg', '5', 'Mesa para computador com 2 niveis', NULL, 'Segunda Andar', 'Ativo', NULL),
(3894, 254, 'Mesa com 2 niveis', '2017-02-02', '254.jpg', '5', 'Mesa para computador com 2 niveis', NULL, 'Segunda Andar', 'Ativo', NULL),
(3895, 255, 'Impressora hp', '2017-02-02', '255.jpg', '10', 'Officejet 7612', NULL, 'Segunda Andar', 'Ativo', NULL),
(3896, 256, 'Rack', '2017-02-02', '256.jpg', '10', 'Rack de informatica com 2 niveis', NULL, 'Segunda Andar', 'Ativo', NULL),
(3897, 257, 'Monitor LG', '2017-02-02', '257.jpg', '10', 'Monitor lg 20m37aa', NULL, 'Segunda Andar', 'Ativo', NULL),
(3898, 258, 'Baia', '2017-02-02', '258.jpg', '5', 'Baia de 6 lugares', NULL, 'Segunda Andar', 'Ativo', NULL),
(3899, 259, 'Televisão', '2017-02-02', '259.jpg', '10', 'Televisão Sharp', NULL, 'Segunda Andar', 'Ativo', NULL),
(3900, 260, 'Mesa com 2 niveis', '2017-02-02', '260.jpg', '5', 'Mesa para computador com 2 niveis', NULL, 'Segunda Andar', 'Ativo', NULL),
(3901, 261, 'Mesa com 2 niveis', '2017-02-02', '261.jpg', '5', 'Mesa para computador com 2 niveis', NULL, 'Segunda Andar', 'Ativo', NULL),
(3902, 262, 'Cadeira', '2017-02-02', '262.jpg', '5', 'Cadeira azul com regulagem de altura', NULL, 'Segunda Andar', 'Ativo', NULL),
(3903, 263, 'Monitor LG', '2017-02-02', '263.jpg', '10', 'Monitor lg 20m37aa', NULL, 'Segunda Andar', 'Ativo', NULL),
(3904, 264, 'CPU', '2017-02-02', '264.jpg', '10', 'Computador dell Optiplex 3040', NULL, 'Segunda Andar', 'Ativo', NULL),
(3905, 265, 'Telefone', '2017-02-02', '265.jpg', '10', 'Telefone calbox grandstream', NULL, 'Segunda Andar', 'Ativo', NULL),
(3906, 266, 'Impressora Hp', '2017-02-02', '266.jpg', '10', 'Laserjet m1132 mfp', NULL, 'Segunda Andar', 'Ativo', NULL),
(3907, 267, 'Gaveteiro', '2017-02-02', '267.jpg', '5', 'Gaveteiro de 3 gavetas', NULL, 'Segunda Andar', 'Ativo', NULL),
(3908, 268, 'Cadeira', '2017-02-02', '268.jpg', '5', 'Cadeira azul com regulagem de altura', NULL, 'Segunda Andar', 'Ativo', NULL),
(3909, 269, 'Mesa com 2 niveis', '2017-02-02', '269.jpg', '5', 'Mesa para computador com 2 niveis', NULL, 'Segunda Andar', 'Ativo', NULL),
(3910, 270, 'Mesa com 2 niveis', '2017-02-02', '270.jpg', '5', 'Mesa para computador com 2 niveis', NULL, 'Segunda Andar', 'Ativo', NULL),
(3911, 271, 'Mesa com 2 niveis', '2017-02-02', '271.jpg', '5', 'Mesa para computador com 2 niveis', NULL, 'Segunda Andar', 'Ativo', NULL),
(3912, 272, 'Mesa com 2 niveis', '2017-02-02', '272.jpg', '5', 'Mesa para computador com 2 niveis', NULL, 'Segunda Andar', 'Ativo', NULL),
(3913, 273, 'Nextel', '2017-02-02', '273.jpg', '10', 'Nextel Motorola i418', NULL, 'Segunda Andar', 'Ativo', NULL),
(3914, 274, 'CPU', '2017-02-02', '274.jpg', '10', 'Computador dell Optiplex 3040', NULL, 'Segunda Andar', 'Ativo', NULL),
(3915, 275, 'Monitor LG', '2017-02-02', '275.jpg', '10', 'Monitor lg 20m37aa', NULL, 'Segunda Andar', 'Ativo', NULL),
(3916, 276, 'Telefone', '2017-02-02', '276.jpg', '10', 'Telefone calbox grandstream', NULL, 'Segunda Andar', 'Ativo', NULL),
(3917, 277, 'Mesa', '2017-02-02', '277.jpg', '5', 'Mesa marfim', NULL, 'Segunda Andar', 'Ativo', NULL),
(3918, 278, 'Armario azul', '2017-02-02', '278.jpg', '5', 'Armario azul com duas portas', NULL, 'Segunda Andar', 'Ativo', NULL),
(3919, 279, 'Filtro de agua', '2017-02-03', '279.jpg', '5', 'Filtro de agua lbell', NULL, 'Segunda Andar', 'Ativo', NULL),
(3920, 280, 'Ar condicionado', '2017-02-03', '280.jpg', '5', 'Ar condicionado da LG', NULL, 'Segunda Andar', 'Ativo', NULL),
(3921, 281, 'Ar condicionado', '2017-02-03', '281.jpg', '5', 'Ar condicionado da LG', NULL, 'Segunda Andar', 'Ativo', NULL),
(3922, 283, 'Ar condicionado', '2017-02-03', '283.jpg', '5', 'Ar condicionado da LG', NULL, 'Segunda Andar', 'Ativo', NULL),
(3923, 284, 'Ar condicionado', '2017-02-03', '284.jpg', '5', 'Ar condicionado da LG', NULL, 'Segunda Andar', 'Ativo', NULL),
(3924, 285, 'Televisão', '2017-02-03', '285.jpg', '10', 'Televisão Sansung recepção', NULL, 'Clinica', 'Ativo', NULL),
(3925, 286, 'Ar condicionado', '2017-02-03', '286.jpg', '5', 'Ar condicionado Carrier', NULL, 'Clinica', 'Ativo', NULL),
(3926, 287, 'Televisão', '2017-02-03', '287.jpg', '10', 'Televisão Sansung', NULL, 'Clinica', 'Ativo', NULL),
(3927, 288, 'Ar condicionado', '2017-02-03', '288.jpg', '5', 'Ar condicionado Sansung', NULL, 'Clinica', 'Ativo', NULL),
(3928, 289, 'Ar condicionado', '2017-02-03', '289.jpg', '5', 'Ar condicionado da LG', NULL, 'Clinica', 'Ativo', NULL),
(3929, 290, 'Ar condicionado', '2017-02-03', '290.jpg', '5', 'Ar condicionado Sansung', NULL, 'Clinica', 'Ativo', NULL),
(3930, 291, 'Ar condicionado', '2017-02-03', '291.jpg', '5', 'Ar condicionado Carrier', NULL, 'Clinica', 'Ativo', NULL),
(3931, 292, 'Ar condicionado', '2017-02-03', '292.jpg', '5', 'Ar condicionado Carrier', NULL, 'Clinica', 'Ativo', NULL),
(3932, 293, 'Ar condicionado', '2017-02-03', '293.jpg', '5', 'Ar condicionado Carrier', NULL, 'Clinica', 'Ativo', NULL),
(3933, 294, 'Ar condicionado', '2017-02-03', '294.jpg', '5', 'Ar condicionado Consul', NULL, 'Clinica', 'Ativo', NULL),
(3934, 295, 'Ar condicionado', '2017-02-03', '295.jpg', '5', 'Ar condicionado Consul', NULL, 'Clinica', 'Ativo', NULL),
(3935, 296, 'Ar condicionado', '2017-02-03', '296.jpg', '5', 'Ar condicionado Carrier', NULL, 'Clinica', 'Ativo', NULL),
(3936, 297, 'Ar condicionado', '2017-02-03', '297.jpg', '5', 'Ar condicionado Carrier', NULL, 'Clinica', 'Ativo', NULL),
(3937, 298, 'Ar condicionado', '2017-02-03', '298.jpg', '5', 'Ar condicionado Carrier', NULL, 'Clinica', 'Ativo', NULL),
(3938, 299, 'Ar condicionado', '2017-02-03', '299.jpg', '5', 'Ar condicionado Spring', NULL, 'Clinica', 'Ativo', NULL),
(3939, 300, 'Ar condicionado', '2017-02-03', '300.jpg', '5', 'Ar condicionado Spring', NULL, 'Clinica', 'Ativo', NULL),
(3940, 301, 'Ar condicionado', '2017-02-03', '301.jpg', '5', 'Ar condicionado Carrier', NULL, 'Clinica', 'Ativo', NULL),
(3941, 302, 'Ar condicionado', '2017-02-03', '302.jpg', '5', 'Ar condicionado Sansung', NULL, 'Clinica', 'Ativo', NULL),
(3942, 303, 'Ar condicionado', '2017-02-03', '303.jpg', '5', 'Ar condicionado Spring', NULL, 'Predio 2', 'Ativo', NULL),
(3943, 304, 'Ar condicionado', '2017-02-03', '304.jpg', '5', 'Ar condicionado da LG', NULL, 'Predio 2', 'Ativo', NULL),
(3944, 305, 'Telefone', '2017-02-03', '305.jpg', '10', 'Telefone calbox grandstream', NULL, 'Predio 2', 'Ativo', NULL),
(3945, 306, 'Telefone', '2017-02-03', '306.jpg', '10', 'Telefone calbox grandstream', NULL, 'Predio 2', 'Ativo', NULL),
(3946, 307, 'Notebook dell', '2017-02-03', '307.jpg', '10', 'Modelo latitude 3470', NULL, 'Predio 2', 'Ativo', NULL),
(3947, 308, 'Nextel Motorola', '2017-02-03', '308.jpg', '10', 'Nextel Motorola i418', NULL, 'Predio 2', 'Ativo', NULL),
(3948, 309, 'Nextel Motorola', '2017-02-03', '309.jpg', '10', 'Nextel Motorola i418', NULL, 'Predio 2', 'Ativo', NULL),
(3949, 310, 'Nextel Motorola', '2017-02-03', '310.jpg', '10', 'Nextel Motorola i418', NULL, 'Predio 2', 'Ativo', NULL),
(3950, 311, 'Tablet', '2017-02-03', '311.jpg', '10', 'Tablet Sansung', NULL, 'Predio 2', 'Ativo', NULL),
(3951, 312, 'Modem', '2017-02-03', '312.jpg', '10', 'Vivo com Wifi', NULL, 'Predio 2', 'Ativo', NULL),
(3952, 313, 'Roteador', '2017-02-03', '313.jpg', '10', 'Roteador Dlink', NULL, 'Predio 2', 'Ativo', NULL),
(3953, 314, 'Roteador dlink', '2017-02-03', '314.jpg', '10', 'Roteador Dlink', NULL, 'Predio 2', 'Ativo', NULL),
(3954, 315, 'Roteador dlink', '2017-02-03', '315.jpg', '10', 'Roteador Dlink', 'Sem antena', 'Predio 2', 'Ativo', NULL),
(3955, 316, 'Telefone', '2017-02-03', '316.jpg', '10', 'Telefone calbox grandstream', NULL, 'Predio 2', 'Ativo', NULL),
(3956, 317, 'Celular', '2017-02-03', '317.jpg', '10', 'Sansung', NULL, 'Segunda Andar', 'Ativo', NULL),
(3957, 318, 'Nextel Motorola', '2017-02-03', '318.jpg', '10', 'Nextel Motorola i418', NULL, 'Segunda Andar', 'Ativo', NULL),
(3958, 319, 'Telefone', '2017-02-03', '319.jpg', '10', 'ibratele', NULL, 'Segunda Andar', 'Ativo', NULL),
(3959, 320, 'Headphone', '2017-02-03', '320.jpg', '10', 'Intelbras', NULL, 'Segunda Andar', 'Ativo', NULL),
(3960, 321, 'Ar condicionado', '2017-02-03', '321.jpg', '5', 'Ar condicionado Carrier', NULL, 'Clinica', 'Ativo', NULL),
(3966, 1, 'CPU Maxxtro ', '19-01-2017', 'img_589c7e2dbfa45.jpg', '10', 'Modelo capricórnio', '', 'Predio 2', 'Ativo', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Fazendo dump de dados para tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Megamed', 'sistema@megamed.com.br', '$2y$10$t/yIoh0199WbbjrXD0A3weBEkjqad7pkQgwph6wfZ246gNRWrmYH2', 'wnzrNuMTdd8zejpJpkxKt0Xp4gv8AzIOl9A1SfDzBjfZIx8Eo62dKvevBpHA', '2017-02-09 13:23:10', '2017-02-13 13:30:51');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
