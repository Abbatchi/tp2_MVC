-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 04, 2017 at 02:12 
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tp4`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `birthDate` date NOT NULL,
  `adress` text NOT NULL,
  `zipCode` varchar(5) NOT NULL,
  `phoneNumber` varchar(12) NOT NULL,
  `maritalSituation` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `lastName`, `birthDate`, `adress`, `zipCode`, `phoneNumber`, `maritalSituation`) VALUES
(1, 'Mickael', 'Picael', '2000-04-11', 'Rue de Formation', '03000', '666-66-66', 2),
(2, 'Martin', 'Degust', '1954-04-12', 'Rue des Cons', '03800', '555-55-55', 5),
(3, 'Pickael', 'Micaellos', '2001-04-11', 'Rue de Pormation', '03000', '494-33-11', 4),
(4, 'Partin', 'Pegust', '1989-04-12', 'Rue des Cons', '03810', '511-55-55', 3),
(5, 'sdsdsd', 'dsgsg', '0000-00-00', 'werqweretr', 'etewt', 'fsdfsdf', 5),
(6, 'sdsdsd', 'dsgsg', '0000-00-00', 'werqweretr', 'etewt', 'fsdfsdf', 5),
(7, 'dfdsfsd', 'fsdfsdf', '0000-00-00', 'sdfsdfs', 'dfsdf', '', 2),
(8, 'dfdsfsd', 'fsdfsdf', '0000-00-00', 'sdfsdfs', 'dfsdf', '', 2),
(9, 'Martin', 'Partin', '0000-00-00', 'rue', '04040', '123123123', 2);

-- --------------------------------------------------------

--
-- Table structure for table `credits`
--

CREATE TABLE `credits` (
  `id` int(11) NOT NULL,
  `organisme` varchar(50) NOT NULL,
  `montant` decimal(10,2) NOT NULL,
  `clients_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `credits`
--

INSERT INTO `credits` (`id`, `organisme`, `montant`, `clients_id`) VALUES
(1, 'Banque Bobulaire', '890.00', 1),
(2, 'Panque Gobulaire', '501.00', 1),
(3, 'Credit-Bobulaire', '631.00', 3),
(4, 'Credit-Gobulaire', '100.54', 4),
(5, 'Banque Babuin', '1000.00', 9),
(6, 'dsds', '0.00', 9),
(7, 'Banque Babuine', '1000.20', 2),
(8, 'Banque Babuine', '1000.00', 2),
(9, 'Banque Babuine', '1000.00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `statusmaritals`
--

CREATE TABLE `statusmaritals` (
  `id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statusmaritals`
--

INSERT INTO `statusmaritals` (`id`, `status`) VALUES
(1, 'Célibataire'),
(2, 'Concubinage'),
(3, 'Divorcé'),
(4, 'Marié'),
(5, 'Veuf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credits`
--
ALTER TABLE `credits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statusmaritals`
--
ALTER TABLE `statusmaritals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `credits`
--
ALTER TABLE `credits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `statusmaritals`
--
ALTER TABLE `statusmaritals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
