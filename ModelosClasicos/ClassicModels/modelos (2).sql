-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-04-2018 a las 18:11:10
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `modelos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `idCliente` int(11) NOT NULL,
  `nombreCliente` varchar(60) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `ciudad` varchar(11) NOT NULL,
  `empleadoEnlace` int(11) DEFAULT NULL,
  `limiteCredito` decimal(10,2) DEFAULT NULL,
  `SaldoActual` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`idCliente`, `nombreCliente`, `telefono`, `direccion`, `ciudad`, `empleadoEnlace`, `limiteCredito`, `SaldoActual`) VALUES
(103, 'Atelier graphique', '40.32.2555', '54, rue Royale', 'Nantes', 1370, '21000.00', NULL),
(112, 'Signal Gift Stores', '7025551838', '8489 Strong St.', 'Las Vegas', 1166, '71800.00', NULL),
(114, 'Australian Collectors, Co.', '03 9520 4555', '636 St Kilda Road', 'Melbourne', 1611, '117300.00', NULL),
(119, 'La Rochelle Gifts', '40.67.8555', '67, rue des Cinquante Otages', 'Nantes', 1370, '118200.00', NULL),
(121, 'Baane Mini Imports', '07-98 9555', 'Erling Skakkes gate 78', 'Stavern', 1504, '81700.00', NULL),
(124, 'Mini Gifts Distributors Ltd.', '4155551450', '5677 Strong St.', 'San Rafael', 1165, '210500.00', NULL),
(125, 'Havel & Zbyszek Co', '(26) 642-7555', 'ul. Filtrowa 68', 'Warszawa', NULL, '0.00', NULL),
(128, 'Blauer See Auto, Co.', '+49 69 66 90 2555', 'Lyonerstr. 34', 'Frankfurt', 1504, '59700.00', NULL),
(129, 'Mini Wheels Co.', '6505555787', '5557 North Pendale Street', 'San Francis', 1165, '64600.00', NULL),
(131, 'Land of Toys Inc.', '2125557818', '897 Long Airport Avenue', 'NYC', 1323, '114900.00', NULL),
(141, 'Euro+ Shopping Channel', '(91) 555 94 44', 'C/ Moralzarzal, 86', 'Madrid', 1370, '227600.00', NULL),
(144, 'Volvo Model Replicas, Co', '0921-12 3555', 'Berguvsvägen  8', 'Luleå', 1504, '53100.00', NULL),
(145, 'Danish Wholesale Imports', '31 12 3555', 'Vinbæltet 34', 'Kobenhavn', 1401, '83400.00', NULL),
(146, 'Saveley & Henriot, Co.', '78.32.5555', '2, rue du Commerce', 'Lyon', 1337, '123900.00', NULL),
(148, 'Dragon Souveniers, Ltd.', '+65 221 7555', 'Bronz Sok.', 'Singapore', 1621, '103800.00', NULL),
(151, 'Muscle Machine Inc', '2125557413', '4092 Furth Circle', 'NYC', 1286, '138500.00', NULL),
(157, 'Diecast Classics Inc.', '2155551555', '7586 Pompton St.', 'Allentown', 1216, '100600.00', NULL),
(161, 'Technics Stores Inc.', '6505556809', '9408 Furth Circle', 'Burlingame', 1165, '84600.00', NULL),
(166, 'Handji Gifts& Co', '+65 224 1555', '106 Linden Road Sandown', 'Singapore', 1612, '97900.00', NULL),
(167, 'Herkku Gifts', '+47 2267 3215', 'Brehmen St. 121', 'Bergen', 1504, '96800.00', NULL),
(168, 'American Souvenirs Inc', '2035557845', '149 Spinnaker Dr.', 'New Haven', 1286, '0.00', NULL),
(169, 'Porto Imports Co.', '(1) 356-5555', 'Estrada da saúde n. 58', 'Lisboa', NULL, '0.00', NULL),
(171, 'Daedalus Designs Imports', '20.16.1555', '184, chaussée de Tournai', 'Lille', 1370, '82900.00', NULL),
(172, 'La Corne D''abondance, Co.', '(1) 42.34.2555', '265, boulevard Charonne', 'Paris', 1337, '84300.00', NULL),
(173, 'Cambridge Collectables Co.', '6175555555', '4658 Baden Av.', 'Cambridge', 1188, '43400.00', NULL),
(175, 'Gift Depot Inc.', '2035552570', '25593 South Bay Ln.', 'Bridgewater', 1323, '84300.00', NULL),
(177, 'Osaka Souveniers Co.', '+81 06 6342 5555', '1-6-20 Dojima', 'Kita-ku', 1621, '81200.00', NULL),
(181, 'Vitachrome Inc.', '2125551500', '2678 Kingston Rd.', 'NYC', 1286, '76400.00', NULL),
(186, 'Toys of Finland, Co.', '90-224 8555', 'Keskuskatu 45', 'Helsinki', 1501, '96500.00', NULL),
(187, 'AV Stores, Co.', '(171) 555-1555', 'Fauntleroy Circus', 'Manchester', 1501, '136800.00', NULL),
(189, 'Clover Collections, Co.', '+353 1862 1555', '25 Maiden Lane', 'Dublin', 1504, '69400.00', NULL),
(198, 'Auto-Moto Classics Inc.', '6175558428', '16780 Pompton St.', 'Brickhaven', 1216, '23000.00', NULL),
(201, 'UK Collectables, Ltd.', '(171) 555-2282', '12, Berkeley Gardens Blvd', 'Liverpool', 1501, '92700.00', NULL),
(202, 'Canadian Gift Exchange Network', '(604) 555-3392', '1900 Oak St.', 'Vancouver', 1323, '90300.00', NULL),
(204, 'Online Mini Collectables', '6175557555', '7635 Spinnaker Dr.', 'Brickhaven', 1188, '68700.00', NULL),
(205, 'Toys4GrownUps.com', '6265557265', '78934 Hillside Dr.', 'Pasadena', 1166, '90700.00', NULL),
(206, 'Asian Shopping Network, Co', '+612 9411 1555', 'Suntec Tower Three', 'Singapore', NULL, '0.00', NULL),
(209, 'Mini Caravy', '88.60.1555', '24, place Kléber', 'Strasbourg', 1370, '53800.00', NULL),
(211, 'King Kong Collectables, Co.', '+852 2251 1555', 'Bank of China Tower', 'Central Hon', 1621, '58600.00', NULL),
(216, 'Enaco Distributors', '(93) 203 4555', 'Rambla de Cataluña, 23', 'Barcelona', 1702, '60300.00', NULL),
(219, 'Boards & Toys Co.', '3105552373', '4097 Douglas Av.', 'Glendale', 1166, '11000.00', NULL),
(223, 'Natürlich Autos', '0372-555188', 'Taucherstraße 10', 'Cunewalde', NULL, '0.00', NULL),
(227, 'Heintze Collectables', '86 21 3555', 'Smagsloget 45', 'Århus', 1401, '120800.00', NULL),
(233, 'Québec Home Shopping Network', '(514) 555-8054', '43 rue St. Laurent', 'Montréal', 1286, '48700.00', NULL),
(237, 'ANG Resellers', '(91) 745 6555', 'Gran Vía, 1', 'Madrid', NULL, '0.00', NULL),
(239, 'Collectable Mini Designs Co.', '7605558146', '361 Furth Circle', 'San Diego', 1166, '105000.00', NULL),
(240, 'giftsbymail.co.uk', '(198) 555-8888', 'Garden House', 'Cowes', 1501, '93900.00', NULL),
(242, 'Alpha Cognac', '61.77.6555', '1 rue Alsace-Lorraine', 'Toulouse', 1370, '61100.00', NULL),
(247, 'Messner Shopping Network', '069-0555984', 'Magazinweg 7', 'Frankfurt', NULL, '0.00', NULL),
(249, 'Amica Models & Co.', '011-4988555', 'Via Monte Bianco 34', 'Torino', 1401, '113000.00', NULL),
(250, 'Lyon Souveniers', '+33 1 46 62 7555', '27 rue du Colonel Pierre Avia', 'Paris', 1337, '68100.00', NULL),
(256, 'Auto Associés & Cie.', '30.59.8555', '67, avenue de l''Europe', 'Versailles', 1370, '77900.00', NULL),
(259, 'Toms Spezialitäten, Ltd', '0221-5554327', 'Mehrheimerstr. 369', 'Köln', 1504, '120400.00', NULL),
(260, 'Royal Canadian Collectables, Ltd.', '(604) 555-4555', '23 Tsawassen Blvd.', 'Tsawassen', 1323, '89600.00', NULL),
(273, 'Franken Gifts, Co', '089-0877555', 'Berliner Platz 43', 'München', NULL, '0.00', NULL),
(276, 'Anna''s Decorations, Ltd', '02 9936 8555', '201 Miller Street', 'North Sydne', 1611, '107800.00', NULL),
(278, 'Rovelli Gifts', '035-640555', 'Via Ludovico il Moro 22', 'Bergamo', 1401, '119600.00', NULL),
(282, 'Souveniers And Things Co.', '+61 2 9495 8555', 'Monitor Money Building', 'Chatswood', 1611, '93300.00', NULL),
(286, 'Marta''s Replicas Co.', '6175558555', '39323 Spinnaker Dr.', 'Cambridge', 1216, '123700.00', NULL),
(293, 'BG&E Collectables', '+41 26 425 50 01', 'Rte des Arsenaux 41 ', 'Fribourg', NULL, '0.00', NULL),
(298, 'Vida Sport, Ltd', '0897-034555', 'Grenzacherweg 237', 'Genève', 1702, '141300.00', NULL),
(299, 'Norway Gifts By Mail, Co.', '+47 2212 1555', 'Drammensveien 126A', 'Oslo', 1504, '95100.00', NULL),
(303, 'Schuyler Imports', '+31 20 491 9555', 'Kingsfordweg 151', 'Amsterdam', NULL, '0.00', NULL),
(307, 'Der Hund Imports', '030-0074555', 'Obere Str. 57', 'Berlin', NULL, '0.00', NULL),
(311, 'Oulu Toy Supplies, Inc.', '981-443655', 'Torikatu 38', 'Oulu', 1501, '90500.00', NULL),
(314, 'Petit Auto', '(02) 5554 67', 'Rue Joseph-Bens 532', 'Bruxelles', 1401, '79900.00', NULL),
(319, 'Mini Classics', '9145554562', '3758 North Pendale Street', 'White Plain', 1323, '102700.00', NULL),
(320, 'Mini Creations Ltd.', '5085559555', '4575 Hillside Dr.', 'New Bedford', 1188, '94500.00', NULL),
(321, 'Corporate Gift Ideas Co.', '6505551386', '7734 Strong St.', 'San Francis', 1165, '105000.00', NULL),
(323, 'Down Under Souveniers, Inc', '+64 9 312 5555', '162-164 Grafton Road', 'Auckland  ', 1612, '88000.00', NULL),
(324, 'Stylish Desk Decors, Co.', '(171) 555-0297', '35 King George', 'London', 1501, '77000.00', NULL),
(328, 'Tekni Collectables Inc.', '2015559350', '7476 Moss Rd.', 'Newark', 1323, '43000.00', NULL),
(333, 'Australian Gift Network, Co', '61-7-3844-6555', '31 Duncan St. West End', 'South Brisb', 1611, '51600.00', NULL),
(334, 'Suominen Souveniers', '+358 9 8045 555', 'Software Engineering Center', 'Espoo', 1501, '98800.00', NULL),
(335, 'Cramer Spezialitäten, Ltd', '0555-09555', 'Maubelstr. 90', 'Brandenburg', NULL, '0.00', NULL),
(339, 'Classic Gift Ideas, Inc', '2155554695', '782 First Street', 'Philadelphi', 1188, '81100.00', NULL),
(344, 'CAF Imports', '+34 913 728 555', 'Merchants House', 'Madrid', 1702, '59600.00', NULL),
(347, 'Men ''R'' US Retailers, Ltd.', '2155554369', '6047 Douglas Av.', 'Los Angeles', 1166, '57700.00', NULL),
(348, 'Asian Treasures, Inc.', '2967 555', '8 Johnstown Road', 'Cork', NULL, '0.00', NULL),
(350, 'Marseille Mini Autos', '91.24.4555', '12, rue des Bouchers', 'Marseille', 1337, '65000.00', NULL),
(353, 'Reims Collectables', '26.47.1555', '59 rue de l''Abbaye', 'Reims', 1337, '81100.00', NULL),
(356, 'SAR Distributors, Co', '+27 21 550 3555', '1250 Pretorius Street', 'Hatfield', NULL, '0.00', NULL),
(357, 'GiftsForHim.com', '64-9-3763555', '199 Great North Road', 'Auckland', 1612, '77700.00', NULL),
(361, 'Kommission Auto', '0251-555259', 'Luisenstr. 48', 'Münster', NULL, '0.00', NULL),
(362, 'Gifts4AllAges.com', '6175559555', '8616 Spinnaker Dr.', 'Boston', 1216, '41900.00', NULL),
(363, 'Online Diecast Creations Co.', '6035558647', '2304 Long Airport Avenue', 'Nashua', 1216, '114200.00', NULL),
(369, 'Lisboa Souveniers, Inc', '(1) 354-2555', 'Jardim das rosas n. 32', 'Lisboa', NULL, '0.00', NULL),
(376, 'Precious Collectables', '0452-076555', 'Hauptstr. 29', 'Bern', 1702, '0.00', NULL),
(379, 'Collectables For Less Inc.', '6175558555', '7825 Douglas Av.', 'Brickhaven', 1188, '70700.00', NULL),
(381, 'Royale Belge', '(071) 23 67 2555', 'Boulevard Tirou, 255', 'Charleroi', 1401, '23500.00', NULL),
(382, 'Salzburg Collectables', '6562-9555', 'Geislweg 14', 'Salzburg', 1401, '71700.00', NULL),
(385, 'Cruz & Sons Co.', '+63 2 555 3587', '15 McCallum Street', 'Makati City', 1621, '81500.00', NULL),
(386, 'L''ordine Souveniers', '0522-556555', 'Strada Provinciale 124', 'Reggio Emil', 1401, '121400.00', NULL),
(398, 'Tokyo Collectables, Ltd', '+81 3 3584 0555', '2-2-8 Roppongi', 'Minato-ku', 1621, '94400.00', NULL),
(406, 'Auto Canal+ Petit', '(1) 47.55.6555', '25, rue Lauriston', 'Paris', 1337, '95000.00', NULL),
(409, 'Stuttgart Collectable Exchange', '0711-555361', 'Adenauerallee 900', 'Stuttgart', NULL, '0.00', NULL),
(412, 'Extreme Desk Decorations, Ltd', '04 499 9555', '101 Lambton Quay', 'Wellington', 1612, '86800.00', NULL),
(415, 'Bavarian Collectables Imports, Co.', ' +49 89 61 08 9555', 'Hansastr. 15', 'Munich', 1504, '77000.00', NULL),
(424, 'Classic Legends Inc.', '2125558493', '5905 Pompton St.', 'NYC', 1286, '67500.00', NULL),
(443, 'Feuer Online Stores, Inc', '0342-555176', 'Heerstr. 22', 'Leipzig', NULL, '0.00', NULL),
(447, 'Gift Ideas Corp.', '2035554407', '2440 Pompton St.', 'Glendale', 1323, '49700.00', NULL),
(448, 'Scandinavian Gift Ideas', '0695-34 6555', 'Åkergatan 24', 'Bräcke', 1504, '116400.00', NULL),
(450, 'The Sharp Gifts Warehouse', '4085553659', '3086 Ingle Ln.', 'San Jose', 1165, '77600.00', NULL),
(452, 'Mini Auto Werke', '7675-3555', 'Kirchgasse 6', 'Graz', 1401, '45300.00', NULL),
(455, 'Super Scale Inc.', '2035559545', '567 North Pendale Street', 'New Haven', 1286, '95400.00', NULL),
(456, 'Microscale Inc.', '2125551957', '5290 North Pendale Street', 'NYC', 1286, '39800.00', NULL),
(458, 'Corrida Auto Replicas, Ltd', '(91) 555 22 82', 'C/ Araquil, 67', 'Madrid', 1702, '104600.00', NULL),
(459, 'Warburg Exchange', '0241-039123', 'Walserweg 21', 'Aachen', NULL, '0.00', NULL),
(462, 'FunGiftIdeas.com', '5085552555', '1785 First Street', 'New Bedford', 1216, '85800.00', NULL),
(465, 'Anton Designs, Ltd.', '+34 913 728555', 'c/ Gobelas, 19-1 Urb. La Florida', 'Madrid', NULL, '0.00', NULL),
(471, 'Australian Collectables, Ltd', '61-9-3844-6555', '7 Allen Street', 'Glen Waverl', 1611, '60300.00', NULL),
(473, 'Frau da Collezione', '+39 022515555', '20093 Cologno Monzese', 'Milan', 1401, '34800.00', NULL),
(475, 'West Coast Collectables Co.', '3105553722', '3675 Furth Circle', 'Burbank', 1166, '55400.00', NULL),
(477, 'Mit Vergnügen & Co.', '0621-08555', 'Forsterstr. 57', 'Mannheim', NULL, '0.00', NULL),
(480, 'Kremlin Collectables, Co.', '+7 812 293 0521', '2 Pobedy Square', 'Saint Peter', NULL, '0.00', NULL),
(481, 'Raanan Stores, Inc', '+ 972 9 959 8555', '3 Hagalim Blv.', 'Herzlia', NULL, '0.00', NULL),
(484, 'Iberia Gift Imports, Corp.', '(95) 555 82 82', 'C/ Romero, 33', 'Sevilla', 1702, '65700.00', NULL),
(486, 'Motor Mint Distributors Inc.', '2155559857', '11328 Douglas Av.', 'Philadelphi', 1323, '72600.00', NULL),
(487, 'Signal Collectibles Ltd.', '4155554312', '2793 Furth Circle', 'Brisbane', 1165, '60300.00', NULL),
(489, 'Double Decker Gift Stores, Ltd', '(171) 555-7555', '120 Hanover Sq.', 'London', 1501, '43300.00', NULL),
(495, 'Diecast Collectables', '6175552555', '6251 Ingle Ln.', 'Boston', 1188, '85100.00', NULL),
(496, 'Kelly''s Gift Shop', '+64 9 5555500', 'Arenales 1938 3''A''', 'Auckland  ', 1612, '110000.00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallespedido`
--

CREATE TABLE `detallespedido` (
  `idPedido` int(11) NOT NULL,
  `codProducto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precioUnitario` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detallespedido`
--

INSERT INTO `detallespedido` (`idPedido`, `codProducto`, `cantidad`, `precioUnitario`) VALUES
(10101, 29, 25, '108.06'),
(10101, 33, 26, '167.06'),
(10101, 61, 45, '32.53'),
(10101, 64, 46, '44.35'),
(10102, 19, 39, '95.55'),
(10102, 20, 41, '43.13'),
(10103, 2, 26, '214.30'),
(10103, 6, 42, '119.67'),
(10103, 9, 27, '121.64'),
(10103, 17, 35, '94.50'),
(10103, 30, 22, '58.34'),
(10103, 35, 27, '92.19'),
(10103, 36, 35, '61.84'),
(10103, 38, 25, '86.92'),
(10103, 44, 46, '86.31'),
(10103, 52, 36, '98.07'),
(10103, 53, 41, '40.75'),
(10103, 65, 36, '107.34'),
(10103, 82, 25, '88.62'),
(10103, 85, 31, '92.46'),
(10103, 90, 45, '63.35'),
(10426, 2, 1, '98.58'),
(10426, 79, 5, '29.34'),
(10427, 19, 1, '60.62'),
(10427, 19, 1, '60.62'),
(10428, 22, 5, '77.27'),
(10428, 60, 5, '66.74'),
(10429, 7, 5, '95.34'),
(10429, 30, 2, '24.92'),
(10430, 2, 1, '98.58'),
(10430, 2, 1, '98.58'),
(10431, 8, 1, '95.59'),
(10431, 8, 1, '95.59'),
(10432, 2, 1, '98.58'),
(10432, 2, 1, '98.58'),
(10432, 2, 1, '98.58'),
(10433, 2, 1, '98.58'),
(10433, 2, 1, '98.58'),
(10433, 2, 1, '98.58'),
(10435, 2, 1, '98.58'),
(10435, 2, 1, '98.58'),
(10437, 11, 3, '89.14'),
(10437, 22, 2, '77.27'),
(10438, 2, 2, '98.58'),
(10439, 2, 4, '98.58'),
(10439, 11, 2, '89.14'),
(10440, 2, 3, '98.58'),
(10440, 8, 1, '95.59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `idEmpleado` int(11) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `telOficina` varchar(20) NOT NULL,
  `correoE` varchar(20) NOT NULL,
  `idOficina` int(11) NOT NULL,
  `idJefe` int(11) DEFAULT NULL,
  `cargo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`idEmpleado`, `apellido`, `nombre`, `telOficina`, `correoE`, `idOficina`, `idJefe`, `cargo`) VALUES
(1002, 'Murphy', 'Diane', 'x5800', 'dmurphy@classicmodel', 1, NULL, 0),
(1056, 'Patterson', 'Mary', 'x4611', 'mpatterso@classicmod', 1, 1002, 0),
(1076, 'Firrelli', 'Jeff', 'x9273', 'jfirrelli@classicmod', 1, 1002, 0),
(1088, 'Patterson', 'William', 'x4871', 'wpatterson@classicmo', 6, 1056, 0),
(1102, 'Bondur', 'Gerard', 'x5408', 'gbondur@classicmodel', 4, 1056, 0),
(1143, 'Bow', 'Anthony', 'x5428', 'abow@classicmodelcar', 1, 1056, 0),
(1165, 'Jennings', 'Leslie', 'x3291', 'ljennings@classicmod', 1, 1143, 0),
(1166, 'Thompson', 'Leslie', 'x4065', 'lthompson@classicmod', 1, 1143, 0),
(1188, 'Firrelli', 'Julie', 'x2173', 'jfirrelli@classicmod', 2, 1143, 0),
(1216, 'Patterson', 'Steve', 'x4334', 'spatterson@classicmo', 2, 1143, 0),
(1286, 'Tseng', 'Foon Yue', 'x2248', 'ftseng@classicmodelc', 3, 1143, 0),
(1323, 'Vanauf', 'George', 'x4102', 'gvanauf@classicmodel', 3, 1143, 0),
(1337, 'Bondur', 'Loui', 'x6493', 'lbondur@classicmodel', 4, 1102, 0),
(1370, 'Hernandez', 'Gerard', 'x2028', 'ghernande@classicmod', 4, 1102, 0),
(1401, 'Castillo', 'Pamela', 'x2759', 'pcastillo@classicmod', 4, 1102, 0),
(1501, 'Bott', 'Larry', 'x2311', 'lbott@classicmodelca', 7, 1102, 0),
(1504, 'Jones', 'Barry', 'x102', 'bjones@classicmodelc', 7, 1102, 0),
(1611, 'Fixter', 'Andy', 'x101', 'afixter@classicmodel', 6, 1088, 0),
(1612, 'Marsh', 'Peter', 'x102', 'pmarsh@classicmodelc', 6, 1088, 0),
(1619, 'King', 'Tom', 'x103', 'tking@classicmodelca', 6, 1088, 0),
(1621, 'Nishi', 'Mami', 'x101', 'mnishi@classicmodelc', 5, 1056, 0),
(1625, 'Kato', 'Yoshimi', 'x102', 'ykato@classicmodelca', 5, 1621, 0),
(1702, 'Gerard', 'Martin', 'x2312', 'mgerard@classicmodel', 4, 1102, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gruposproductos`
--

CREATE TABLE `gruposproductos` (
  `codGrupo` int(11) NOT NULL,
  `nombreGrupo` varchar(50) NOT NULL,
  `descripcionGrupo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `gruposproductos`
--

INSERT INTO `gruposproductos` (`codGrupo`, `nombreGrupo`, `descripcionGrupo`) VALUES
(1, 'Classic Cars', 'Attention car enthusiasts: Make your wildest car o'),
(2, 'Motorcycles', 'Our motorcycles are state of the art replicas of c'),
(3, 'Planes', 'Unique, diecast airplane and helicopter replicas s'),
(4, 'Ships', 'The perfect holiday or anniversary gift for execut'),
(5, 'Trains', 'Model trains are a rewarding hobby for enthusiasts'),
(6, 'Trucks and Buses', 'The Truck and Bus models are realistic replicas of'),
(7, 'Vintage Cars', 'Our Vintage Car models realistically portray autom');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oficinas`
--

CREATE TABLE `oficinas` (
  `idOficina` int(11) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `pais` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `oficinas`
--

INSERT INTO `oficinas` (`idOficina`, `ciudad`, `telefono`, `direccion`, `pais`) VALUES
(1, 'San Francisco', '+1 650 219 4782', '100 Market Street', 'USA'),
(2, 'Boston', '+1 215 837 0825', '1550 Court Place', 'USA'),
(3, 'NYC', '+1 212 555 3000', '523 East 53rd Street', 'USA'),
(4, 'Paris', '+33 14 723 4404', '43 Rue Jouffroy D''abbans', 'France'),
(5, 'Tokyo', '+81 33 224 5000', '4-1 Kioicho', 'Japan'),
(6, 'Sydney', '+61 2 9264 2451', '5-11 Wentworth Avenue', 'Australia'),
(7, 'London', '+44 20 7877 2041', '25 Old Broad Street', 'UK');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `idPedido` int(11) NOT NULL,
  `fechaPedido` date NOT NULL,
  `fechaEntrega` date DEFAULT NULL,
  `estado` varchar(100) NOT NULL,
  `comentarios` varchar(200) DEFAULT NULL,
  `idCliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`idPedido`, `fechaPedido`, `fechaEntrega`, `estado`, `comentarios`, `idCliente`) VALUES
(10101, '2003-01-09', '2003-01-11', 'Shipped', 'Check on availability.', 128),
(10102, '2003-01-10', '2003-01-14', 'Shipped', NULL, 181),
(10103, '2003-01-29', '2003-02-02', 'Shipped', NULL, 121),
(10104, '2003-01-31', '2003-02-01', 'Shipped', NULL, 141),
(10105, '2003-02-11', '2003-02-12', 'Shipped', NULL, 145),
(10107, '2003-02-24', '2003-02-26', 'Shipped', 'Difficult to negotiate with customer. We need more marketing materials', 131),
(10110, '2003-03-18', '2003-03-20', 'Shipped', NULL, 187),
(10111, '2003-03-25', '2003-03-30', 'Shipped', NULL, 129),
(10112, '2003-03-24', '2003-03-29', 'Shipped', 'Customer requested that ad materials (such as posters, pamphlets) be included in the shippment', 144),
(10113, '2003-03-26', '2003-03-27', 'Shipped', NULL, 124),
(10114, '2003-04-01', '2003-04-02', 'Shipped', NULL, 172),
(10117, '2003-04-16', '2003-04-17', 'Shipped', NULL, 148),
(10120, '2003-04-29', '2003-05-01', 'Shipped', NULL, 114),
(10123, '2003-05-20', '2003-05-22', 'Shipped', NULL, 103),
(10124, '2003-05-21', '2003-05-25', 'Shipped', 'Customer very concerned about the exact color of the models. There is high risk that he may dispute the order because there is a slight color mismatch', 112),
(10125, '2003-05-21', '2003-05-24', 'Shipped', NULL, 114),
(10127, '2003-06-03', '2003-06-06', 'Shipped', 'Customer requested special shippment. The instructions were passed along to the warehouse', 151),
(10128, '2003-06-06', '2003-06-11', 'Shipped', NULL, 141),
(10130, '2003-06-16', '2003-06-21', 'Shipped', NULL, 198),
(10133, '2003-06-27', '2003-07-03', 'Shipped', NULL, 141),
(10135, '2003-07-02', '2003-07-03', 'Shipped', NULL, 124),
(10140, '2003-07-24', '2003-07-30', 'Shipped', NULL, 161),
(10142, '2003-08-08', '2003-08-13', 'Shipped', NULL, 124),
(10150, '2003-09-19', '2003-09-21', 'Shipped', 'They want to reevaluate their terms agreement with Finance.', 148),
(10153, '2003-09-28', '2003-10-03', 'Shipped', NULL, 141),
(10155, '2003-10-06', '2003-10-07', 'Shipped', NULL, 186),
(10156, '2003-10-08', '2003-10-11', 'Shipped', NULL, 141),
(10158, '2003-10-10', '2003-10-15', 'Shipped', NULL, 121),
(10165, '2003-10-22', '2003-12-26', 'Shipped', 'This order was on hold because customers''s credit limit had been exceeded. Order will ship when payment is received', 148),
(10168, '2003-10-28', '2003-11-01', 'Shipped', NULL, 161),
(10172, '2003-11-05', '2003-11-11', 'Shipped', NULL, 175),
(10180, '2003-11-11', '2003-11-14', 'Shipped', NULL, 171),
(10181, '2003-11-12', '2003-11-15', 'Shipped', NULL, 167),
(10182, '2003-11-12', '2003-11-18', 'Shipped', NULL, 124),
(10188, '2003-11-18', '2003-11-24', 'Shipped', NULL, 167),
(10190, '2003-11-19', '2003-11-20', 'Shipped', NULL, 141),
(10194, '2003-11-25', '2003-11-26', 'Shipped', NULL, 146),
(10201, '2003-12-01', '2003-12-02', 'Shipped', NULL, 129),
(10203, '2003-12-02', '2003-12-07', 'Shipped', NULL, 141),
(10204, '2003-12-02', '2003-12-04', 'Shipped', NULL, 151),
(10205, '2003-12-03', '2003-12-07', 'Shipped', ' I need all the information I can get on our competitors.', 141),
(10208, '2004-01-02', '2004-01-04', 'Shipped', NULL, 146),
(10210, '2004-01-12', '2004-01-20', 'Shipped', NULL, 177),
(10212, '2004-01-16', '2004-01-18', 'Shipped', NULL, 141),
(10217, '2004-02-04', '2004-02-06', 'Shipped', NULL, 166),
(10220, '2004-02-12', '2004-02-16', 'Shipped', NULL, 189),
(10223, '2004-02-20', '2004-02-24', 'Shipped', NULL, 114),
(10224, '2004-02-21', '2004-02-26', 'Shipped', 'Customer has worked with some of our vendors in the past and is aware of their MSRP', 171),
(10227, '2004-03-02', '2004-03-08', 'Shipped', NULL, 146),
(10228, '2004-03-10', '2004-03-13', 'Shipped', NULL, 173),
(10229, '2004-03-11', '2004-03-12', 'Shipped', NULL, 124),
(10230, '2004-03-15', '2004-03-20', 'Shipped', 'Customer very concerned about the exact color of the models. There is high risk that he may dispute the order because there is a slight color mismatch', 128),
(10237, '2004-04-05', '2004-04-10', 'Shipped', NULL, 181),
(10238, '2004-04-09', '2004-04-10', 'Shipped', NULL, 145),
(10240, '2004-04-13', '2004-04-20', 'Shipped', NULL, 177),
(10244, '2004-04-29', '2004-05-04', 'Shipped', NULL, 141),
(10246, '2004-05-05', '2004-05-06', 'Shipped', NULL, 141),
(10248, '2004-05-07', NULL, 'Cancelled', 'Order was mistakenly placed. The warehouse noticed the lack of documentation.', 131),
(10249, '2004-05-08', '2004-05-11', 'Shipped', 'Can we deliver the new Ford Mustang models by end-of-quarter?', 173),
(10256, '2004-06-08', '2004-06-10', 'Shipped', NULL, 145),
(10259, '2004-06-15', '2004-06-17', 'Shipped', NULL, 166),
(10262, '2004-06-24', NULL, 'Cancelled', 'This customer found a better offer from one of our competitors. Will call back to renegotiate.', 141),
(10263, '2004-06-28', '2004-07-02', 'Shipped', NULL, 175),
(10267, '2004-07-07', '2004-07-09', 'Shipped', NULL, 151),
(10271, '2004-07-20', '2004-07-23', 'Shipped', NULL, 124),
(10272, '2004-07-20', '2004-07-22', 'Shipped', NULL, 157),
(10275, '2004-07-23', '2004-07-29', 'Shipped', NULL, 119),
(10277, '2004-08-04', '2004-08-05', 'Shipped', NULL, 148),
(10278, '2004-08-06', '2004-08-09', 'Shipped', NULL, 112),
(10279, '2004-08-09', '2004-08-15', 'Shipped', 'Cautious optimism. We have happy customers here, if we can keep them well stocked.  I need all the information I can get on the planned shippments of Porches', 141),
(10281, '2004-08-19', '2004-08-23', 'Shipped', NULL, 157),
(10282, '2004-08-20', '2004-08-22', 'Shipped', NULL, 124),
(10286, '2004-08-28', '2004-09-01', 'Shipped', NULL, 172),
(10288, '2004-09-01', '2004-09-05', 'Shipped', NULL, 166),
(10289, '2004-09-03', '2004-09-04', 'Shipped', 'We need to keep in close contact with their Marketing VP. He is the decision maker for all their purchases.', 167),
(10290, '2004-09-07', '2004-09-13', 'Shipped', NULL, 198),
(10292, '2004-09-08', '2004-09-11', 'Shipped', 'They want to reevaluate their terms agreement with Finance.', 131),
(10297, '2004-09-16', '2004-09-21', 'Shipped', 'We must be cautions with this customer. Their VP of Sales resigned. Company may be heading down.', 189),
(10298, '2004-09-27', '2004-10-01', 'Shipped', NULL, 103),
(10299, '2004-09-30', '2004-10-01', 'Shipped', NULL, 186),
(10300, '2003-10-04', '2003-10-09', 'Shipped', NULL, 128),
(10306, '2004-10-14', '2004-10-17', 'Shipped', NULL, 187),
(10309, '2004-10-15', '2004-10-18', 'Shipped', NULL, 121),
(10311, '2004-10-16', '2004-10-20', 'Shipped', 'Difficult to negotiate with customer. We need more marketing materials', 141),
(10312, '2004-10-21', '2004-10-23', 'Shipped', NULL, 124),
(10315, '2004-10-29', '2004-10-30', 'Shipped', NULL, 119),
(10317, '2004-11-02', '2004-11-08', 'Shipped', NULL, 161),
(10318, '2004-11-02', '2004-11-07', 'Shipped', NULL, 157),
(10320, '2004-11-03', '2004-11-07', 'Shipped', NULL, 144),
(10323, '2004-11-05', '2004-11-09', 'Shipped', NULL, 128),
(10324, '2004-11-05', '2004-11-08', 'Shipped', NULL, 181),
(10325, '2004-11-05', '2004-11-08', 'Shipped', NULL, 121),
(10326, '2004-11-09', '2004-11-10', 'Shipped', NULL, 144),
(10327, '2004-11-10', '2004-11-13', 'Resolved', 'Order was disputed and resolved on 12/1/04. The Sales Manager was involved. Customer claims the scales of the models don''t match what was discussed.', 145),
(10329, '2004-11-15', '2004-11-16', 'Shipped', NULL, 131),
(10332, '2004-11-17', '2004-11-18', 'Shipped', NULL, 187),
(10333, '2004-11-18', '2004-11-20', 'Shipped', NULL, 129),
(10334, '2004-11-19', NULL, 'On Hold', 'The outstaniding balance for this customer exceeds their credit limit. Order will be shipped when a payment is received.', 144),
(10335, '2004-11-19', '2004-11-23', 'Shipped', NULL, 124),
(10336, '2004-11-20', '2004-11-24', 'Shipped', 'Customer requested that DHL is used for this shipping', 172),
(10342, '2004-11-24', '2004-11-29', 'Shipped', NULL, 114),
(10345, '2004-11-25', '2004-11-26', 'Shipped', NULL, 103),
(10346, '2004-11-29', '2004-11-30', 'Shipped', NULL, 112),
(10347, '2004-11-29', '2004-11-30', 'Shipped', 'Can we deliver the new Ford Mustang models by end-of-quarter?', 114),
(10349, '2004-12-01', '2004-12-03', 'Shipped', NULL, 151),
(10350, '2004-12-02', '2004-12-05', 'Shipped', NULL, 141),
(10352, '2004-12-03', '2004-12-09', 'Shipped', NULL, 198),
(10355, '2004-12-07', '2004-12-13', 'Shipped', NULL, 141),
(10357, '2004-12-10', '2004-12-14', 'Shipped', NULL, 124),
(10358, '2004-12-10', '2004-12-16', 'Shipped', 'Customer requested that DHL is used for this shipping', 141),
(10362, '2005-01-05', '2005-01-10', 'Shipped', NULL, 161),
(10368, '2005-01-19', '2005-01-24', 'Shipped', 'Can we renegotiate this one?', 124),
(10371, '2005-01-23', '2005-01-25', 'Shipped', NULL, 124),
(10375, '2005-02-03', '2005-02-06', 'Shipped', NULL, 119),
(10377, '2005-02-09', '2005-02-12', 'Shipped', 'Cautious optimism. We have happy customers here, if we can keep them well stocked.  I need all the information I can get on the planned shippments of Porches', 186),
(10378, '2005-02-10', '2005-02-11', 'Shipped', NULL, 141),
(10379, '2005-02-10', '2005-02-11', 'Shipped', NULL, 141),
(10380, '2005-02-16', '2005-02-18', 'Shipped', NULL, 141),
(10382, '2005-02-17', '2005-02-18', 'Shipped', 'Custom shipping instructions sent to warehouse', 124),
(10383, '2005-02-22', '2005-02-25', 'Shipped', NULL, 141),
(10385, '2005-02-28', '2005-03-01', 'Shipped', NULL, 124),
(10386, '2005-03-01', '2005-03-06', 'Resolved', 'Disputed then Resolved on 3/15/2005. Customer doesn''t like the craftsmaship of the models.', 141),
(10387, '2005-03-02', '2005-03-06', 'Shipped', 'We need to keep in close contact with their Marketing VP. He is the decision maker for all their purchases.', 148),
(10390, '2005-03-04', '2005-03-07', 'Shipped', 'They want to reevaluate their terms agreement with Finance.', 124),
(10394, '2005-03-15', '2005-03-19', 'Shipped', NULL, 141),
(10396, '2005-03-23', '2005-03-28', 'Shipped', NULL, 124),
(10406, '2005-04-15', '2005-04-21', 'Disputed', 'Customer claims container with shipment was damaged during shipping and some items were missing. I am talking to FedEx about this.', 145),
(10409, '2005-04-23', '2005-04-24', 'Shipped', NULL, 166),
(10412, '2005-05-03', '2005-05-05', 'Shipped', NULL, 141),
(10413, '2005-05-05', '2005-05-09', 'Shipped', 'Customer requested that DHL is used for this shipping', 175),
(10417, '2005-05-13', '2005-05-19', 'Disputed', 'Customer doesn''t like the colors and precision of the models.', 141),
(10421, '2005-05-29', NULL, 'In Process', 'Custom shipping instructions were sent to warehouse', 124),
(10422, '2005-05-30', NULL, 'In Process', NULL, 157),
(10424, '2005-05-31', NULL, 'In Process', NULL, 141),
(10425, '2005-05-31', NULL, 'In Process', NULL, 119),
(10426, '0000-00-00', NULL, 'prueba de estado', 'prueba de comentario', 114),
(10427, '0000-00-00', NULL, '', '', 119),
(10428, '0000-00-00', NULL, '', '', 119),
(10429, '0000-00-00', NULL, '', '', 103),
(10430, '0000-00-00', NULL, 'shipped', '', 103),
(10431, '0000-00-00', NULL, '', '', 103),
(10432, '0000-00-00', NULL, '', '', 103),
(10433, '0000-00-00', NULL, '', '', 103),
(10434, '0000-00-00', NULL, '', '', 103),
(10435, '2018-04-25', NULL, '', '', 103),
(10436, '2018-04-25', NULL, 'hola', '', 103),
(10437, '2018-04-25', NULL, 'PRUEBA DE ESTADO', 'PRUEBA DE COMENTARIO', 124),
(10438, '2018-04-27', NULL, '', '', 103),
(10439, '2018-04-27', NULL, 'shipped', 'prueba de comentarios ', 103),
(10440, '2018-04-27', NULL, 'shi', 'holiwi', 103);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `codProducto` int(11) NOT NULL,
  `nombreProducto` varchar(50) NOT NULL,
  `codGrupo` int(11) NOT NULL,
  `descripcionProducto` varchar(100) NOT NULL,
  `cantidadStock` int(11) NOT NULL,
  `precioVenta` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`codProducto`, `nombreProducto`, `codGrupo`, `descripcionProducto`, `cantidadStock`, `precioVenta`) VALUES
(1, '1969 Harley Davidson Ultimate Chopper', 2, 'This replica features working kickstand, front suspension, gear-shift lever, footbrake lever, drive ', 7933, '48.81'),
(2, '1952 Alpine Renault 1300', 1, 'Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening ', 7305, '98.58'),
(3, '1996 Moto Guzzi 1100i', 2, 'Official Moto Guzzi logos and insignias, saddle bags located on side of motorcycle, detailed engine,', 6625, '68.99'),
(4, '2003 Harley-Davidson Eagle Drag Bike', 2, 'Model features, official Harley Davidson logos and insignias, detachable rear wheelie bar, heavy die', 5582, '91.02'),
(5, '1972 Alfa Romeo GTA', 1, 'Features include: Turnable front wheels; steering function; detailed interior; detailed engine; open', 3252, '85.68'),
(6, '1962 LanciaA Delta 16V', 1, 'Features include: Turnable front wheels; steering function; detailed interior; detailed engine; open', 6791, '103.42'),
(7, '1968 Ford Mustang', 1, 'Hood, doors and trunk all open to reveal highly detailed interior features. Steering wheel actually ', 68, '95.34'),
(8, '2001 Ferrari Enzo', 1, 'Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening ', 3619, '95.59'),
(9, '1958 Setra Bus', 6, 'Model features 30 windows, skylights & glare resistant glass, working steering system, original logo', 1579, '77.90'),
(10, '2002 Suzuki XREO', 2, 'Official logos and insignias, saddle bags located on side of motorcycle, detailed engine, working st', 9997, '66.27'),
(11, '1969 Corvair Monza', 1, '1:18 scale die-cast about 10" long doors open, hood opens, trunk opens and wheels roll', 6906, '89.14'),
(12, '1968 Dodge Charger', 1, '1:12 scale model of a 1968 Dodge Charger. Hood, doors and trunk all open to reveal highly detailed i', 9123, '75.16'),
(13, '1969 Ford Falcon', 1, 'Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening ', 1049, '83.05'),
(14, '1970 Plymouth Hemi Cuda', 1, 'Very detailed 1970 Plymouth Cuda model in 1:12 scale. The Cuda is generally accepted as one of the f', 5663, '31.92'),
(15, '1957 Chevy Pickup', 6, '1:12 scale die-cast about 20" long Hood opens, Rubber wheels', 6125, '55.70'),
(16, '1969 Dodge Charger', 1, 'Detailed model of the 1969 Dodge Charger. This model includes finely detailed interior and exterior ', 7323, '58.73'),
(17, '1940 Ford Pickup Truck', 6, 'This model features soft rubber tires, working steering, rubber mud guards, authentic Ford logos, de', 2613, '58.33'),
(18, '1993 Mazda RX-7', 1, 'This model features, opening hood, opening doors, detailed engine, rear spoiler, opening trunk, work', 3975, '83.51'),
(19, '1937 Lincoln Berline', 7, 'Features opening engine cover, doors, trunk, and fuel filler cap. Color black', 8693, '60.62'),
(20, '1936 Mercedes-Benz 500K Special Roadster', 7, 'This 1:18 scale replica is constructed of heavy die-cast metal and has all the features of the origi', 8635, '24.26'),
(21, '1965 Aston Martin DB5', 1, 'Die-cast model of the silver 1965 Aston Martin DB5 in silver. This model includes full wire wheels a', 9042, '65.96'),
(22, '1980s Black Hawk Helicopter', 3, '1:18 scale replica of actual Army''s UH-60L BLACK HAWK Helicopter. 100% hand-assembled. Features rota', 5330, '77.27'),
(23, '1917 Grand Touring Sedan', 7, 'This 1:18 scale replica of the 1917 Grand Touring car has all the features you would expect from mus', 2724, '86.70'),
(24, '1948 Porsche 356-A Roadster', 1, 'This precision die-cast replica features opening doors, superb detail and craftsmanship, working ste', 8826, '53.90'),
(25, '1995 Honda Civic', 1, 'This model features, opening hood, opening doors, detailed engine, rear spoiler, opening trunk, work', 9772, '93.89'),
(26, '1998 Chrysler Plymouth Prowler', 1, 'Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening ', 4724, '101.51'),
(27, '1911 Ford Town Car', 7, 'Features opening hood, opening doors, opening trunk, wide white wall tires, front door arm rests, wo', 540, '33.30'),
(28, '1964 Mercedes Tour Bus', 6, 'Exact replica. 100+ parts. working steering system, original logos', 8258, '74.86'),
(29, '1932 Model A Ford J-Coupe', 7, 'This model features grille-mounted chrome horn, lift-up louvered hood, fold-down rumble seat, workin', 9354, '58.48'),
(30, '1926 Ford Fire Engine', 6, 'Gleaming red handsome appearance. Everything is here the fire hoses, ladder, axes, bells, lanterns, ', 2018, '24.92'),
(31, 'P-51-D Mustang', 3, 'Has retractable wheels and comes with a stand', 992, '49.00'),
(32, '1936 Harley Davidson El Knucklehead', 2, 'Intricately detailed with chrome accents and trim, official die-struck logos and baked enamel finish', 4357, '24.23'),
(33, '1928 Mercedes-Benz SSK', 7, 'This 1:18 replica features grille-mounted chrome horn, lift-up louvered hood, fold-down rumble seat,', 548, '72.56'),
(34, '1999 Indy 500 Monte Carlo SS', 1, 'Features include opening and closing doors. Color: Red', 8164, '56.76'),
(35, '1913 Ford Model T Speedster', 7, 'This 250 part reproduction includes moving handbrakes, clutch, throttle and foot pedals, squeezable ', 4189, '60.78'),
(36, '1934 Ford V8 Coupe', 7, 'Chrome Trim, Chrome Grille, Opening Hood, Opening Doors, Opening Trunk, Detailed Engine, Working Ste', 5649, '34.35'),
(37, '1999 Yamaha Speed Boat', 4, 'Exact replica. Wood and Metal. Many extras including rigging, long boats, pilot house, anchors, etc.', 4259, '51.61'),
(38, '18th Century Vintage Horse Carriage', 7, 'Hand crafted diecast-like metal horse carriage is re-created in about 1:18 scale of antique horse ca', 5992, '60.74'),
(39, '1903 Ford Model A', 7, 'Features opening trunk,  working steering system', 3913, '68.30'),
(40, '1992 Ferrari 360 Spider red', 1, 'his replica features opening doors, superb detail and craftsmanship, working steering system, openin', 8347, '77.90'),
(41, '1985 Toyota Supra', 1, 'This model features soft rubber tires, working steering, rubber mud guards, authentic Ford logos, de', 7733, '57.01'),
(42, 'Collectable Wooden Train', 5, 'Hand crafted wooden toy train set is in about 1:18 scale, 25 inches in total length including 2 addi', 6450, '67.56'),
(43, '1969 Dodge Super Bee', 1, 'This replica features opening doors, superb detail and craftsmanship, working steering system, openi', 1917, '49.05'),
(44, '1917 Maxwell Touring Car', 7, 'Features Gold Trim, Full Size Spare Tire, Chrome Trim, Chrome Grille, Opening Hood, Opening Doors, O', 7913, '57.54'),
(45, '1976 Ford Gran Torino', 1, 'Highly detailed 1976 Ford Gran Torino "Starsky and Hutch" diecast model. Very well constructed and p', 9127, '73.49'),
(46, '1948 Porsche Type 356 Roadster', 1, 'This model features working front and rear suspension on accurately replicated and actuating shock a', 8990, '62.16'),
(47, '1957 Vespa GS150', 2, 'Features rotating wheels , working kick stand. Comes with stand.', 7689, '32.95'),
(48, '1941 Chevrolet Special Deluxe Cabriolet', 7, 'Features opening hood, opening doors, opening trunk, wide white wall tires, front door arm rests, wo', 2378, '64.58'),
(49, '1970 Triumph Spitfire', 1, 'Features include opening and closing doors. Color: White.', 5545, '91.92'),
(50, '1932 Alfa Romeo 8C2300 Spider Sport', 7, 'This 1:18 scale precision die cast replica features the 6 front headlights of the original, plus a d', 6553, '43.26'),
(51, '1904 Buick Runabout', 7, 'Features opening trunk,  working steering system', 8290, '52.66'),
(52, '1940s Ford truck', 6, 'This 1940s Ford Pick-Up truck is re-created in 1:18 scale of original 1940s Ford truck. This antique', 3128, '84.76'),
(53, '1939 Cadillac Limousine', 7, 'Features completely detailed interior including Velvet flocked drapes,deluxe wood grain floor, and a', 6645, '23.14'),
(58, '1997 BMW R 1100 S', 2, 'Detailed scale replica with working suspension and constructed from over 70 parts', 7003, '60.86'),
(60, '1928 British Royal Navy Airplane', 3, 'Official logos and insignias', 3627, '66.74'),
(61, '1939 Chevrolet Deluxe Coupe', 7, 'This 1:24 scale die-cast replica of the 1939 Chevrolet Deluxe Coupe has the same classy look as the ', 7332, '22.57'),
(62, '1960 BSA Gold Star DBD34', 2, 'Detailed scale replica with working suspension and constructed from over 70 parts', 15, '37.32'),
(63, '18th century schooner', 4, 'All wood with canvas sails. Many extras including rigging, long boats, pilot house, anchors, etc. Co', 1898, '82.34'),
(64, '1938 Cadillac V-16 Presidential Limousine', 7, 'This 1:24 scale precision die cast replica of the 1938 Cadillac V-16 Presidential Limousine has all ', 2847, '20.61'),
(65, '1962 Volkswagen Microbus', 6, 'This 1:18 scale die cast replica of the 1962 Microbus is loaded with features: A working steering sy', 2327, '61.34'),
(66, '1982 Ducati 900 Monster', 2, 'Features two-tone paint with chrome accents, superior die-cast detail , rotating wheels , working ki', 6840, '47.10'),
(69, '1900s Vintage Bi-Plane', 3, 'Hand crafted diecast-like metal bi-plane is re-created in about 1:24 scale of antique pioneer airpla', 5942, '34.25'),
(72, '1912 Ford Model T Delivery Wagon', 7, 'This model features chrome trim and grille, opening hood, opening doors, opening trunk, detailed eng', 9173, '46.91'),
(75, '1937 Horch 930V Limousine', 7, 'Features opening hood, opening doors, opening trunk, wide white wall tires, front door arm rests, wo', 2902, '26.30'),
(77, '1940 Ford Delivery Sedan', 7, 'Chrome Trim, Chrome Grille, Opening Hood, Opening Doors, Opening Trunk, Detailed Engine, Working Ste', 6621, '48.64'),
(79, 'Corsair F4U ( Bird Cage)', 3, 'Has retractable wheels and comes with a stand. Official logos and insignias.', 6812, '29.34'),
(80, '1936 Mercedes Benz 500k Roadster', 7, 'This model features grille-mounted chrome horn, lift-up louvered hood, fold-down rumble seat, workin', 2081, '21.75'),
(82, '1936 Chrysler Airflow', 7, 'Features opening trunk,  working steering system. Color dark green.', 4710, '57.46'),
(83, '1900s Vintage Tri-Plane', 3, 'Hand crafted diecast-like metal Triplane is Re-created in about 1:24 scale of antique pioneer airpla', 2756, '36.23'),
(85, '1980’s GM Manhattan Express', 6, 'This 1980’s era new look Manhattan express is still active, running from the Bronx to mid-town Manha', 5099, '53.93'),
(86, '1997 BMW F650 ST', 2, 'Features official die-struck logos and baked enamel finish. Comes with stand.', 178, '66.92'),
(87, '1982 Ducati 996 R', 2, 'Features rotating wheels , working kick stand. Comes with stand.', 9241, '24.14'),
(88, '1954 Greyhound Scenicruiser', 6, 'Model features bi-level seating, 50 windows, skylights & glare resistant glass, working steering sys', 2874, '25.98'),
(89, '1950''s Chicago Surface Lines Streetcar', 5, 'This streetcar is a joy to see. It has 80 separate windows, electric wire guides, detailed interiors', 8601, '26.72'),
(90, '1996 Peterbilt 379 Stake Bed with Outrigger', 6, 'This model features, opening doors, detailed engine, working steering, tinted windows, detailed inte', 814, '33.61'),
(91, '1928 Ford Phaeton Deluxe', 7, 'This model features grille-mounted chrome horn, lift-up louvered hood, fold-down rumble seat, workin', 136, '33.02'),
(92, '1974 Ducati 350 Mk3 Desmo', 2, 'This model features two-tone paint with chrome accents, superior die-cast detail , rotating wheels ,', 3341, '56.13'),
(93, '1930 Buick Marquette Phaeton', 7, 'Features opening trunk,  working steering system', 7062, '27.06'),
(94, 'Diamond T620 Semi-Skirted Tanker', 6, 'This limited edition model is licensed and perfectly scaled for Lionel Trains. The Diamond T620 has ', 1016, '68.29'),
(95, '1962 City of Detroit Streetcar', 5, 'This streetcar is a joy to see. It has 99 separate windows, electric wire guides, detailed interiors', 1645, '37.49'),
(96, '2002 Yamaha YZR M1', 2, 'Features rotating wheels , working kick stand. Comes with stand.', 600, '34.17'),
(97, 'The Schooner Bluenose', 4, 'All wood with canvas sails. Measures 31 1/2 inches in Length, 22 inches High and 4 3/4 inches Wide. ', 1897, '34.00'),
(98, 'American Airlines: B767-300', 3, 'Exact replia with official logos and insignias and retractable wheels', 5841, '51.15'),
(99, 'The Mayflower', 4, 'Measures 31 1/2 inches Long x 25 1/2 inches High x 10 5/8 inches Wide\r\nAll wood with canvas sail. Ex', 737, '43.30'),
(100, 'HMS Bounty', 4, 'Measures 30 inches Long x 27 1/2 inches High x 4 3/4 inches Wide. \r\nMany extras including rigging, l', 3501, '39.83');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idCliente`),
  ADD KEY `empleadoEnlace` (`empleadoEnlace`);

--
-- Indices de la tabla `detallespedido`
--
ALTER TABLE `detallespedido`
  ADD KEY `codProducto` (`codProducto`),
  ADD KEY `idPedido` (`idPedido`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`idEmpleado`),
  ADD KEY `idJefe` (`idJefe`),
  ADD KEY `idOficina` (`idOficina`);

--
-- Indices de la tabla `gruposproductos`
--
ALTER TABLE `gruposproductos`
  ADD PRIMARY KEY (`codGrupo`);

--
-- Indices de la tabla `oficinas`
--
ALTER TABLE `oficinas`
  ADD PRIMARY KEY (`idOficina`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`idPedido`),
  ADD KEY `idCliente` (`idCliente`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`codProducto`),
  ADD KEY `codGrupo` (`codGrupo`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`empleadoEnlace`) REFERENCES `empleados` (`idEmpleado`);

--
-- Filtros para la tabla `detallespedido`
--
ALTER TABLE `detallespedido`
  ADD CONSTRAINT `detallespedido_ibfk_1` FOREIGN KEY (`codProducto`) REFERENCES `productos` (`codProducto`),
  ADD CONSTRAINT `detallespedido_ibfk_2` FOREIGN KEY (`idPedido`) REFERENCES `pedidos` (`idPedido`);

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`idJefe`) REFERENCES `empleados` (`idEmpleado`),
  ADD CONSTRAINT `employees_ibfk_2` FOREIGN KEY (`idOficina`) REFERENCES `oficinas` (`idOficina`);

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`idCliente`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`codGrupo`) REFERENCES `gruposproductos` (`codGrupo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
