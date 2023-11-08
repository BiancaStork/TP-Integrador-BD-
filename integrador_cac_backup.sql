-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.2.0 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para integrador_cac
CREATE DATABASE IF NOT EXISTS `integrador_cac` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `integrador_cac`;

-- Volcando estructura para tabla integrador_cac.oradores
CREATE TABLE IF NOT EXISTS `oradores` (
  `id_oradores` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `apellido` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `mail` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tema` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `fecha_alta` timestamp NOT NULL DEFAULT (now()),
  PRIMARY KEY (`id_oradores`),
  CONSTRAINT `constraint_mail` CHECK ((`mail` like _utf8mb4'%@%.%'))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Trabajo Práctico Integrador Base de Datos\r\nSe deberá crear una base de datos llamada “integrador_cac” y crear la siguiente tabla llamada “oradores”:';

-- Volcando datos para la tabla integrador_cac.oradores: ~10 rows (aproximadamente)
INSERT INTO `oradores` (`id_oradores`, `nombre`, `apellido`, `mail`, `tema`, `fecha_alta`) VALUES
	(1, 'Patricia', 'Lebsack', 'julianne.OConner@kory.org', 'HTML', '2023-11-05 20:23:13'),
	(2, 'Steve', 'Jobs', 'steve@email.com', 'Javascript - React', '2023-11-05 20:32:25'),
	(3, 'Bill', 'Gates', 'bill_gates@mail.com', 'Javascript - React', '2023-11-05 20:33:23'),
	(4, 'Ada', 'Lovelace', 'ada.lov@email.com', 'Negocios- Startup', '2023-11-05 20:34:03'),
	(5, 'Leanne', 'Graham', 'Sincere@april.biz', 'GitHub', '2023-11-07 23:20:58'),
	(6, 'Ervin', 'Howell', 'Shanna@melissa.tv', 'CSS + Boostrap', '2023-11-07 23:22:29'),
	(7, 'Clementine', 'Bauch', 'nathan@yesenia.net', 'CSS + Tailwind', '2023-11-08 00:57:24'),
	(8, 'Chelsey', 'Dietrich', 'chelsey_dietr@annie.ca', 'Web Services', '2023-11-08 01:01:12'),
	(9, 'Dennis', 'Schulist', 'schulist_dennis@jasper.info', 'Docker', '2023-11-08 01:02:42'),
	(10, 'Kurtis', 'Weissnat', 'Telly.Hoeger@billy.biz', 'Web Services', '2023-11-08 01:03:52');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
