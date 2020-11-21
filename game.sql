-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2020 at 01:39 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `game`
--

-- --------------------------------------------------------

--
-- Table structure for table `comentario`
--

CREATE TABLE `comentario` (
  `ID` int(11) NOT NULL,
  `Contenido` text NOT NULL,
  `id_FK_juego` int(4) NOT NULL,
  `id_FK_user` int(3) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `juego`
--

CREATE TABLE `juego` (
  `ID` int(4) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `juegoEstado` varchar(10) NOT NULL,
  `fechaSalida` date NOT NULL,
  `fechaCracked` date NOT NULL,
  `nombreCrack` varchar(10) NOT NULL,
  `linkDescarga` text NOT NULL,
  `imagen` text NOT NULL,
  `id_FK_User` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `juego`
--

INSERT INTO `juego` (`ID`, `Nombre`, `juegoEstado`, `fechaSalida`, `fechaCracked`, `nombreCrack`, `linkDescarga`, `imagen`, `id_FK_User`) VALUES
(4, 'NFS Heat', 'Cracked', '2019-10-01', '2020-08-08', 'CODEX', 'https://www.gamestorrents.nu/juegos-pc/need-for-speed-heat-1/', 'https://www.gamestorrents.nu/wp-content/uploads/2020/03/need-for-speed-heat-cover-zdi.jpg', 21),
(5, 'Tank Mechanic Simulator', 'Cracked', '2018-04-06', '2019-02-04', 'CODEX', 'https://www.gamestorrents.nu/juegos-pc/tank-mechanic-simulator-1/', 'https://www.gamestorrents.nu/wp-content/uploads/2020/03/co1rda.jpg', 21),
(6, 'Darksiders Genesis', 'Cracked', '2017-08-08', '2019-12-12', 'HOODLUM', 'https://www.gamestorrents.nu/juegos-pc/darksiders-genesis/', 'https://www.gamestorrents.nu/wp-content/uploads/2020/03/co1n1f.jpg', 21),
(7, 'DAHALO', 'Cracked', '2018-08-08', '2019-01-01', 'CODEX', 'https://www.gamestorrents.nu/juegos-pc/dahalo/', 'https://www.gamestorrents.nu/wp-content/uploads/2020/03/descarga-1.jpg', 21),
(8, 'Escape First 3', 'Cracked', '2019-03-23', '2020-03-23', 'GamesT', 'https://www.gamestorrents.nu/juegos-pc/escape-first-3/', 'https://www.gamestorrents.nu/wp-content/uploads/2020/03/co20hj.jpg', 21),
(9, 'HUNTING 2 Simulator', 'Cracked', '2018-08-02', '2020-08-16', 'CODEX', 'https://www.gamestorrents.nu/juegos-pc/hunting-simulator-2-bear-hunter-edition/', 'https://www.gamestorrents.nu/wp-content/uploads/portadas/hunting-simulator-2-poster.png', 21),
(10, 'Fast & Furious Crossroads', 'Cracked', '2020-06-16', '2020-08-16', 'CODEX', 'https://www.gamestorrents.nu/juegos-pc/fast-and-furious-crossroads-deluxe-edition/', 'https://www.gamestorrents.nu/wp-content/uploads/2020/08/pUKOz72dHX1MlE_ICBiJoV8d5-jH5wMci-ikKM_53aY_390x400_1x-0.jpeg', 21),
(11, 'DESINTEGRATION', 'Cracked', '2020-01-01', '2020-08-16', 'CODEX', 'https://www.gamestorrents.nu/juegos-pc/disintegration/', 'https://www.gamestorrents.nu/wp-content/uploads/portadas/disintegration-poster.png', 21),
(12, 'SNOW RUNNER', 'Cracked', '2020-02-02', '2020-08-16', 'CODEX', 'https://www.gamestorrents.nu/juegos-pc/snowrunner-a-mudrunner-game-premium-edition/', 'https://www.gamestorrents.nu/wp-content/uploads/portadas/snowrunner-poster.png', 21);

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `Id_user` int(3) NOT NULL,
  `nickname_user` varchar(35) NOT NULL,
  `nombre_user` varchar(35) NOT NULL,
  `correo_user` varchar(50) NOT NULL,
  `pass_user` varchar(255) NOT NULL,
  `avatar_user` text NOT NULL,
  `sobre_user` text NOT NULL,
  `fb_user` varchar(50) NOT NULL,
  `tw_user` varchar(50) NOT NULL,
  `in_user` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`Id_user`, `nickname_user`, `nombre_user`, `correo_user`, `pass_user`, `avatar_user`, `sobre_user`, `fb_user`, `tw_user`, `in_user`) VALUES
(2, 'alo1', 'sebas', 'alo@correo', '$2y$05$0t50rk4uky3hrmunvj8x8etuF4YuuVlH9ka3UkT6fJdbYSAKEW.8S', '2.png', '', '', '', ''),
(3, 'alo2', 'camilo', 'alo2@correo', '$2y$05$2wofl8z2qzm4itphhqvi5eGJv4y2APr0eSjxd0/EW9PoVL6EfBMU6', '', '', '', '', ''),
(4, 'sam', 'samantha', 'sam@correo', '$2y$05$wqjhnno2f1f450yx486klu9r48WFG/SPAb2YYc/KFScYsAGxmS/0a', '4.png', '', '', '', ''),
(6, 'pepe', 'pepe2', 'pepe<qcorreo', 'pass', 'img', '<l>alks', '', '', ''),
(18, 'skaad', 'daniel', 'skaad@corre', '$2y$05$v46mwstx76ku7t8x058x9u83k/YKyC8IPN0SyXivW9Xi6yCUdf3Oy', '1', '', '', '', ''),
(20, 'skaad102', 'emson daniel', 'skaad102@gmail.com', '$2y$05$l2uq2o6mu5g62kwg24jnnulGRXgxx6CGbewEq53WTcNHN5qxln/ny', './assets/img/avatar/skaad102.png', '<p><em>estudiante sistemas :D</em></p>', '', '', 'skaad102/'),
(21, 'admin', 'admin', 'admin@gmail.com', '$2y$05$428777kxsfromiq4lf1fiuuiQK33dp9NgJFgvdoi0x1xUZJNoSJb2', './assets/img/avatar/admin.png', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_FK_juego` (`id_FK_juego`),
  ADD KEY `id_FK_user` (`id_FK_user`);

--
-- Indexes for table `juego`
--
ALTER TABLE `juego`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_FK_User` (`id_FK_User`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id_user`),
  ADD UNIQUE KEY `nickname_user` (`nickname_user`),
  ADD UNIQUE KEY `correo_user` (`correo_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comentario`
--
ALTER TABLE `comentario`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `juego`
--
ALTER TABLE `juego`
  MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Id_user` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comentario`
--
ALTER TABLE `comentario`
  ADD CONSTRAINT `idjuego` FOREIGN KEY (`id_FK_juego`) REFERENCES `juego` (`ID`),
  ADD CONSTRAINT `usercomen` FOREIGN KEY (`id_FK_user`) REFERENCES `usuario` (`Id_user`);

--
-- Constraints for table `juego`
--
ALTER TABLE `juego`
  ADD CONSTRAINT `userpost` FOREIGN KEY (`id_FK_User`) REFERENCES `usuario` (`Id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
