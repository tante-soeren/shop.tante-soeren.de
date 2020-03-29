-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Mar 27, 2020 at 07:45 PM
-- Server version: 10.4.12-MariaDB-1:10.4.12+maria~bionic
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vendure`
--
CREATE DATABASE IF NOT EXISTS `vendure` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `vendure`;

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `fullName` varchar(255) NOT NULL DEFAULT '',
  `company` varchar(255) NOT NULL DEFAULT '',
  `streetLine1` varchar(255) NOT NULL,
  `streetLine2` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `province` varchar(255) NOT NULL DEFAULT '',
  `postalCode` varchar(255) NOT NULL DEFAULT '',
  `phoneNumber` varchar(255) NOT NULL DEFAULT '',
  `defaultShippingAddress` tinyint(4) NOT NULL DEFAULT 0,
  `defaultBillingAddress` tinyint(4) NOT NULL DEFAULT 0,
  `id` int(11) NOT NULL,
  `customerId` int(11) DEFAULT NULL,
  `countryId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`createdAt`, `updatedAt`, `fullName`, `company`, `streetLine1`, `streetLine2`, `city`, `province`, `postalCode`, `phoneNumber`, `defaultShippingAddress`, `defaultBillingAddress`, `id`, `customerId`, `countryId`) VALUES
('2020-03-25 21:59:29.884265', '2020-03-25 21:59:29.000000', 'Hayden Zieme', '', '9584 Judge Harbor', '', 'South Shadberg', 'Bedfordshire', 'RX44 5LD', '', 0, 0, 1, 1, 234),
('2020-03-25 21:59:30.504667', '2020-03-25 21:59:30.000000', 'Trevor Donnelly', '', '80210 Ayden Trail', '', 'Helenafurt', 'West Yorkshire', 'NF6 2ID', '', 0, 0, 2, 2, 234),
('2020-03-25 21:59:31.077174', '2020-03-25 21:59:31.000000', 'Marques Sawayn', '', '10449 Turner Corner', '', 'North Breana', 'Humberside', 'CR9 2XG', '', 0, 0, 3, 3, 234),
('2020-03-25 21:59:31.787221', '2020-03-25 21:59:31.000000', 'Eliezer Kulas', '', '54964 Amaya Lakes', '', 'Leuschketown', 'North Yorkshire', 'NU9 0PW', '', 0, 0, 4, 4, 234),
('2020-03-25 21:59:32.405107', '2020-03-25 21:59:32.000000', 'Stewart Lindgren', '', '335 Moises Shoals', '', 'Port Maryamstad', 'Norfolk', 'JJ72 3XT', '', 0, 0, 5, 5, 234),
('2020-03-25 21:59:32.980040', '2020-03-25 21:59:32.000000', 'Hilario Thompson', '', '9432 Oleta Skyway', '', 'Elishatown', 'Somerset', 'DI55 0XS', '', 0, 0, 6, 6, 234),
('2020-03-25 21:59:33.550218', '2020-03-25 21:59:33.000000', 'Florence Kovacek', '', '79164 Roob Centers', '', 'Nickville', 'West Glamorgan', 'SN1 1AK', '', 0, 0, 7, 7, 234),
('2020-03-25 21:59:34.181544', '2020-03-25 21:59:34.000000', 'Alec Breitenberg', '', '20559 Freeda Land', '', 'Lake Preciousburgh', 'County Tyrone', 'UP34 8TT', '', 0, 0, 8, 8, 234),
('2020-03-25 21:59:34.743716', '2020-03-25 21:59:34.000000', 'Hettie Luettgen', '', '056 Bins Branch', '', 'Port Forrest', 'Lancashire', 'FB2 1TE', '', 0, 0, 9, 9, 234),
('2020-03-25 21:59:35.317424', '2020-03-25 21:59:35.000000', 'Cleta Wehner', '', '170 Batz Ports', '', 'Lake Lemuel', 'Shropshire', 'LI59 1PD', '', 0, 0, 10, 10, 234);

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`createdAt`, `updatedAt`, `firstName`, `lastName`, `emailAddress`, `id`, `userId`) VALUES
('2020-03-25 21:58:59.545658', '2020-03-25 21:58:59.545658', 'Super', 'Admin', 'superadmin', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `asset`
--

CREATE TABLE `asset` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `mimeType` varchar(255) NOT NULL,
  `width` int(11) NOT NULL DEFAULT 0,
  `height` int(11) NOT NULL DEFAULT 0,
  `fileSize` int(11) NOT NULL,
  `source` varchar(255) NOT NULL,
  `preview` varchar(255) NOT NULL,
  `focalPoint` text DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset`
--

INSERT INTO `asset` (`createdAt`, `updatedAt`, `name`, `type`, `mimeType`, `width`, `height`, `fileSize`, `source`, `preview`, `focalPoint`, `id`) VALUES
('2020-03-25 21:59:12.432803', '2020-03-25 21:59:12.432803', 'derick-david-409858-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1600, 1200, 44525, 'source/be/derick-david-409858-unsplash__03.jpg', 'preview/97/derick-david-409858-unsplash__03__preview.jpg', NULL, 1),
('2020-03-25 21:59:13.326769', '2020-03-25 21:59:13.326769', 'kelly-sikkema-685291-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 47714, 'source/6b/kelly-sikkema-685291-unsplash__03.jpg', 'preview/c4/kelly-sikkema-685291-unsplash__03__preview.jpg', NULL, 2),
('2020-03-25 21:59:13.750418', '2020-03-25 21:59:13.750418', 'oscar-ivan-esquivel-arteaga-687447-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1600, 1071, 76870, 'source/95/oscar-ivan-esquivel-arteaga-687447-unsplash__03.jpg', 'preview/37/oscar-ivan-esquivel-arteaga-687447-unsplash__03__preview.jpg', NULL, 3),
('2020-03-25 21:59:13.952250', '2020-03-25 21:59:13.952250', 'daniel-korpai-1302051-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1280, 1600, 201064, 'source/b7/daniel-korpai-1302051-unsplash__03.jpg', 'preview/88/daniel-korpai-1302051-unsplash__03__preview.jpg', NULL, 4),
('2020-03-25 21:59:14.157384', '2020-03-25 21:59:14.157384', 'alexandru-acea-686569-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 71196, 'source/ba/alexandru-acea-686569-unsplash__03.jpg', 'preview/a2/alexandru-acea-686569-unsplash__03__preview.jpg', NULL, 5),
('2020-03-25 21:59:14.518060', '2020-03-25 21:59:14.518060', 'liam-briese-1128307-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 120523, 'source/4b/liam-briese-1128307-unsplash__03.jpg', 'preview/11/liam-briese-1128307-unsplash__03__preview.jpg', NULL, 6),
('2020-03-25 21:59:14.907166', '2020-03-25 21:59:14.907166', 'florian-olivo-1166419-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 73904, 'source/da/florian-olivo-1166419-unsplash__03.jpg', 'preview/b5/florian-olivo-1166419-unsplash__03__preview.jpg', NULL, 7),
('2020-03-25 21:59:15.472932', '2020-03-25 21:59:15.472932', 'vincent-botta-736919-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1600, 1200, 87075, 'source/d2/vincent-botta-736919-unsplash__03.jpg', 'preview/f7/vincent-botta-736919-unsplash__03__preview.jpg', NULL, 8),
('2020-03-25 21:59:16.078316', '2020-03-25 21:59:16.078316', 'juan-gomez-674574-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1600, 1060, 60470, 'source/a7/juan-gomez-674574-unsplash__03.jpg', 'preview/ad/juan-gomez-674574-unsplash__03__preview.jpg', NULL, 9),
('2020-03-25 21:59:16.210174', '2020-03-25 21:59:16.210174', 'thomas-q-1229169-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1600, 1600, 94113, 'source/8a/thomas-q-1229169-unsplash__03.jpg', 'preview/bc/thomas-q-1229169-unsplash__03__preview.jpg', NULL, 10),
('2020-03-25 21:59:16.344948', '2020-03-25 21:59:16.344948', 'adam-birkett-239153-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 17676, 'source/c9/adam-birkett-239153-unsplash__03.jpg', 'preview/00/adam-birkett-239153-unsplash__03__preview.jpg', NULL, 11),
('2020-03-25 21:59:16.542759', '2020-03-25 21:59:16.542759', 'eniko-kis-663725-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 42943, 'source/29/eniko-kis-663725-unsplash__03.jpg', 'preview/0c/eniko-kis-663725-unsplash__03__preview.jpg', NULL, 12),
('2020-03-25 21:59:16.793793', '2020-03-25 21:59:16.793793', 'brandi-redd-104140-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1600, 1110, 91458, 'source/48/brandi-redd-104140-unsplash__03.jpg', 'preview/4f/brandi-redd-104140-unsplash__03__preview.jpg', NULL, 13),
('2020-03-25 21:59:16.993534', '2020-03-25 21:59:16.993534', 'jonathan-talbert-697262-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 103011, 'source/33/jonathan-talbert-697262-unsplash__03.jpg', 'preview/b8/jonathan-talbert-697262-unsplash__03__preview.jpg', NULL, 14),
('2020-03-25 21:59:17.168625', '2020-03-25 21:59:17.168625', 'zoltan-tasi-423051-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 49099, 'source/e7/zoltan-tasi-423051-unsplash__03.jpg', 'preview/a7/zoltan-tasi-423051-unsplash__03__preview.jpg', NULL, 15),
('2020-03-25 21:59:17.346519', '2020-03-25 21:59:17.346519', 'jakob-owens-274337-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 213089, 'source/63/jakob-owens-274337-unsplash__03.jpg', 'preview/ba/jakob-owens-274337-unsplash__03__preview.jpg', NULL, 16),
('2020-03-25 21:59:17.525543', '2020-03-25 21:59:17.525543', 'patrick-brinksma-663044-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 190811, 'source/92/patrick-brinksma-663044-unsplash__03.jpg', 'preview/66/patrick-brinksma-663044-unsplash__03__preview.jpg', NULL, 17),
('2020-03-25 21:59:17.685676', '2020-03-25 21:59:17.685676', 'chuttersnap-324234-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1600, 1068, 118442, 'source/97/chuttersnap-324234-unsplash__03.jpg', 'preview/10/chuttersnap-324234-unsplash__03__preview.jpg', NULL, 18),
('2020-03-25 21:59:17.795543', '2020-03-25 21:59:17.795543', 'robert-shunev-528016-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 36204, 'source/9e/robert-shunev-528016-unsplash__03.jpg', 'preview/bd/robert-shunev-528016-unsplash__03__preview.jpg', NULL, 19),
('2020-03-25 21:59:17.904515', '2020-03-25 21:59:17.904515', 'alexander-andrews-260988-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1050, 1600, 65460, 'source/9a/alexander-andrews-260988-unsplash__03.jpg', 'preview/81/alexander-andrews-260988-unsplash__03__preview.jpg', NULL, 20),
('2020-03-25 21:59:18.082589', '2020-03-25 21:59:18.082589', 'mikkel-bech-748940-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1600, 1130, 62785, 'source/9c/mikkel-bech-748940-unsplash__03.jpg', 'preview/f2/mikkel-bech-748940-unsplash__03__preview.jpg', NULL, 21),
('2020-03-25 21:59:18.343661', '2020-03-25 21:59:18.343661', 'stoica-ionela-530966-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1600, 1600, 50995, 'source/86/stoica-ionela-530966-unsplash__03.jpg', 'preview/18/stoica-ionela-530966-unsplash__03__preview.jpg', NULL, 22),
('2020-03-25 21:59:18.576831', '2020-03-25 21:59:18.576831', 'neonbrand-428982-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1600, 1332, 169677, 'source/7b/neonbrand-428982-unsplash__03.jpg', 'preview/52/neonbrand-428982-unsplash__03__preview.jpg', NULL, 23),
('2020-03-25 21:59:18.725759', '2020-03-25 21:59:18.725759', 'michael-guite-571169-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 240247, 'source/60/michael-guite-571169-unsplash__03.jpg', 'preview/34/michael-guite-571169-unsplash__03__preview.jpg', NULL, 24),
('2020-03-25 21:59:18.854600', '2020-03-25 21:59:18.854600', 'max-tarkhov-737999-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1600, 1280, 192508, 'source/80/max-tarkhov-737999-unsplash__03.jpg', 'preview/46/max-tarkhov-737999-unsplash__03__preview.jpg', NULL, 25),
('2020-03-25 21:59:19.017939', '2020-03-25 21:59:19.017939', 'nik-shuliahin-619349-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1600, 1020, 130437, 'source/fc/nik-shuliahin-619349-unsplash__03.jpg', 'preview/1f/nik-shuliahin-619349-unsplash__03__preview.jpg', NULL, 26),
('2020-03-25 21:59:19.222851', '2020-03-25 21:59:19.222851', 'ben-hershey-574483-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1600, 1070, 77118, 'source/13/ben-hershey-574483-unsplash__03.jpg', 'preview/3f/ben-hershey-574483-unsplash__03__preview.jpg', NULL, 27),
('2020-03-25 21:59:19.381684', '2020-03-25 21:59:19.381684', 'tommy-bebo-600358-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 262335, 'source/3b/tommy-bebo-600358-unsplash__03.jpg', 'preview/a8/tommy-bebo-600358-unsplash__03__preview.jpg', NULL, 28),
('2020-03-25 21:59:19.495700', '2020-03-25 21:59:19.495700', 'chuttersnap-584518-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1600, 1068, 76330, 'source/6d/chuttersnap-584518-unsplash__03.jpg', 'preview/fa/chuttersnap-584518-unsplash__03__preview.jpg', NULL, 29),
('2020-03-25 21:59:20.319488', '2020-03-25 21:59:20.319488', 'imani-clovis-234736-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1600, 1600, 99111, 'source/29/imani-clovis-234736-unsplash__03.jpg', 'preview/79/imani-clovis-234736-unsplash__03__preview.jpg', NULL, 30),
('2020-03-25 21:59:20.838428', '2020-03-25 21:59:20.838428', 'xavier-teo-469050-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1200, 1600, 167599, 'source/dc/xavier-teo-469050-unsplash__03.jpg', 'preview/b4/xavier-teo-469050-unsplash__03__preview.jpg', NULL, 31),
('2020-03-25 21:59:21.326129', '2020-03-25 21:59:21.326129', 'thomas-serer-420833-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1600, 1223, 78999, 'source/77/thomas-serer-420833-unsplash__03.jpg', 'preview/79/thomas-serer-420833-unsplash__03__preview.jpg', NULL, 32),
('2020-03-25 21:59:21.830340', '2020-03-25 21:59:21.830340', 'nikolai-chernichenko-1299748-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 56282, 'source/8f/nikolai-chernichenko-1299748-unsplash__03.jpg', 'preview/89/nikolai-chernichenko-1299748-unsplash__03__preview.jpg', NULL, 33),
('2020-03-25 21:59:22.293968', '2020-03-25 21:59:22.293968', 'mitch-lensink-256007-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 154988, 'source/aa/mitch-lensink-256007-unsplash__03.jpg', 'preview/f5/mitch-lensink-256007-unsplash__03__preview.jpg', NULL, 34),
('2020-03-25 21:59:22.731719', '2020-03-25 21:59:22.731719', 'charles-deluvio-695736-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1600, 1600, 54419, 'source/7f/charles-deluvio-695736-unsplash__03.jpg', 'preview/37/charles-deluvio-695736-unsplash__03__preview.jpg', NULL, 35),
('2020-03-25 21:59:23.006342', '2020-03-25 21:59:23.006342', 'natalia-y-345738-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 900, 1600, 97819, 'source/60/natalia-y-345738-unsplash__03.jpg', 'preview/7e/natalia-y-345738-unsplash__03__preview.jpg', NULL, 36),
('2020-03-25 21:59:23.208244', '2020-03-25 21:59:23.208244', 'alex-rodriguez-santibanez-200278-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 176280, 'source/70/alex-rodriguez-santibanez-200278-unsplash__03.jpg', 'preview/a9/alex-rodriguez-santibanez-200278-unsplash__03__preview.jpg', NULL, 37),
('2020-03-25 21:59:23.309036', '2020-03-25 21:59:23.309036', 'silvia-agrasar-227575-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1600, 1063, 119654, 'source/40/silvia-agrasar-227575-unsplash__03.jpg', 'preview/60/silvia-agrasar-227575-unsplash__03__preview.jpg', NULL, 38),
('2020-03-25 21:59:23.437800', '2020-03-25 21:59:23.437800', 'caleb-george-536388-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1200, 1600, 184968, 'source/22/caleb-george-536388-unsplash__03.jpg', 'preview/68/caleb-george-536388-unsplash__03__preview.jpg', NULL, 39),
('2020-03-25 21:59:23.602990', '2020-03-25 21:59:23.602990', 'annie-spratt-78044-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1115, 1600, 173536, 'source/22/annie-spratt-78044-unsplash__03.jpg', 'preview/7c/annie-spratt-78044-unsplash__03__preview.jpg', NULL, 40),
('2020-03-25 21:59:23.730417', '2020-03-25 21:59:23.730417', 'zoltan-kovacs-642412-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 72752, 'source/a5/zoltan-kovacs-642412-unsplash__03.jpg', 'preview/d6/zoltan-kovacs-642412-unsplash__03__preview.jpg', NULL, 41),
('2020-03-25 21:59:23.873006', '2020-03-25 21:59:23.873006', 'mark-tegethoff-667351-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1600, 1200, 79857, 'source/31/mark-tegethoff-667351-unsplash__03.jpg', 'preview/74/mark-tegethoff-667351-unsplash__03__preview.jpg', NULL, 42),
('2020-03-25 21:59:24.019803', '2020-03-25 21:59:24.019803', 'vincent-liu-525429-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 77358, 'source/43/vincent-liu-525429-unsplash__03.jpg', 'preview/7f/vincent-liu-525429-unsplash__03__preview.jpg', NULL, 43),
('2020-03-25 21:59:24.248926', '2020-03-25 21:59:24.248926', 'neslihan-gunaydin-3493-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 152486, 'source/d7/neslihan-gunaydin-3493-unsplash__03.jpg', 'preview/2b/neslihan-gunaydin-3493-unsplash__03__preview.jpg', NULL, 44),
('2020-03-25 21:59:24.366259', '2020-03-25 21:59:24.366259', 'florian-klauer-14840-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 800, 1200, 17149, 'source/80/florian-klauer-14840-unsplash__03.jpg', 'preview/f5/florian-klauer-14840-unsplash__03__preview.jpg', NULL, 45),
('2020-03-25 21:59:24.464278', '2020-03-25 21:59:24.464278', 'nathan-fertig-249917-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 113855, 'source/4f/nathan-fertig-249917-unsplash__03.jpg', 'preview/3f/nathan-fertig-249917-unsplash__03__preview.jpg', NULL, 46),
('2020-03-25 21:59:24.578006', '2020-03-25 21:59:24.578006', 'paul-weaver-1120584-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 65612, 'source/fe/paul-weaver-1120584-unsplash__03.jpg', 'preview/db/paul-weaver-1120584-unsplash__03__preview.jpg', NULL, 47),
('2020-03-25 21:59:24.722355', '2020-03-25 21:59:24.722355', 'pierre-chatel-innocenti-483198-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 32036, 'source/77/pierre-chatel-innocenti-483198-unsplash__03.jpg', 'preview/38/pierre-chatel-innocenti-483198-unsplash__03__preview.jpg', NULL, 48),
('2020-03-25 21:59:24.853407', '2020-03-25 21:59:24.853407', 'abel-y-costa-716024-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 103392, 'source/cf/abel-y-costa-716024-unsplash__03.jpg', 'preview/a3/abel-y-costa-716024-unsplash__03__preview.jpg', NULL, 49),
('2020-03-25 21:59:25.004575', '2020-03-25 21:59:25.004575', 'kari-shea-398668-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1048, 1500, 181352, 'source/f4/kari-shea-398668-unsplash__03.jpg', 'preview/62/kari-shea-398668-unsplash__03__preview.jpg', NULL, 50),
('2020-03-25 21:59:25.158992', '2020-03-25 21:59:25.158992', 'andres-jasso-220776-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1600, 1104, 100927, 'source/95/andres-jasso-220776-unsplash__03.jpg', 'preview/98/andres-jasso-220776-unsplash__03__preview.jpg', NULL, 51),
('2020-03-25 21:59:25.282760', '2020-03-25 21:59:25.282760', 'ruslan-bardash-351288-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 47113, 'source/5c/ruslan-bardash-351288-unsplash__03.jpg', 'preview/a4/ruslan-bardash-351288-unsplash__03__preview.jpg', NULL, 52),
('2020-03-25 21:59:25.362099', '2020-03-25 21:59:25.362099', 'benjamin-voros-310026-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1200, 1600, 218391, 'source/82/benjamin-voros-310026-unsplash__03.jpg', 'preview/60/benjamin-voros-310026-unsplash__03__preview.jpg', NULL, 53),
('2020-03-25 21:59:25.487227', '2020-03-25 21:59:25.487227', 'jean-philippe-delberghe-1400011-unsplash__03.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 64529, 'source/d8/jean-philippe-delberghe-1400011-unsplash__03.jpg', 'preview/dd/jean-philippe-delberghe-1400011-unsplash__03__preview.jpg', NULL, 54);

-- --------------------------------------------------------

--
-- Table structure for table `channel`
--

CREATE TABLE `channel` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `code` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `defaultLanguageCode` varchar(255) NOT NULL,
  `currencyCode` varchar(255) NOT NULL,
  `pricesIncludeTax` tinyint(4) NOT NULL,
  `id` int(11) NOT NULL,
  `defaultTaxZoneId` int(11) DEFAULT NULL,
  `defaultShippingZoneId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `channel`
--

INSERT INTO `channel` (`createdAt`, `updatedAt`, `code`, `token`, `defaultLanguageCode`, `currencyCode`, `pricesIncludeTax`, `id`, `defaultTaxZoneId`, `defaultShippingZoneId`) VALUES
('2020-03-25 21:58:58.942918', '2020-03-25 21:59:12.000000', '__default_channel__', '56jz1wqrk3q5ka3nogr', 'en', 'USD', 0, 1, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE `collection` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `isRoot` tinyint(4) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL,
  `isPrivate` tinyint(4) NOT NULL DEFAULT 0,
  `filters` text NOT NULL,
  `id` int(11) NOT NULL,
  `featuredAssetId` int(11) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collection`
--

INSERT INTO `collection` (`createdAt`, `updatedAt`, `isRoot`, `position`, `isPrivate`, `filters`, `id`, `featuredAssetId`, `parentId`) VALUES
('2020-03-25 21:59:26.039414', '2020-03-25 21:59:26.039414', 1, 0, 0, '[]', 1, NULL, NULL),
('2020-03-25 21:59:26.101799', '2020-03-25 21:59:26.101799', 0, 1, 0, '[{\"code\":\"facet-value-filter\",\"description\":[{\"languageCode\":\"en\",\"value\":\"Filter by FacetValues\"}],\"args\":[{\"name\":\"facetValueIds\",\"type\":\"facetValueIds\",\"value\":\"[1]\"},{\"name\":\"containsAny\",\"type\":\"boolean\",\"value\":\"false\"}]}]', 2, 16, 1),
('2020-03-25 21:59:26.368902', '2020-03-25 21:59:26.368902', 0, 1, 0, '[{\"code\":\"facet-value-filter\",\"description\":[{\"languageCode\":\"en\",\"value\":\"Filter by FacetValues\"}],\"args\":[{\"name\":\"facetValueIds\",\"type\":\"facetValueIds\",\"value\":\"[2]\"},{\"name\":\"containsAny\",\"type\":\"boolean\",\"value\":\"false\"}]}]', 3, 5, 2),
('2020-03-25 21:59:26.806273', '2020-03-25 21:59:26.806273', 0, 2, 0, '[{\"code\":\"facet-value-filter\",\"description\":[{\"languageCode\":\"en\",\"value\":\"Filter by FacetValues\"}],\"args\":[{\"name\":\"facetValueIds\",\"type\":\"facetValueIds\",\"value\":\"[9]\"},{\"name\":\"containsAny\",\"type\":\"boolean\",\"value\":\"false\"}]}]', 4, 12, 2),
('2020-03-25 21:59:27.269625', '2020-03-25 21:59:27.269625', 0, 2, 0, '[{\"code\":\"facet-value-filter\",\"description\":[{\"languageCode\":\"en\",\"value\":\"Filter by FacetValues\"}],\"args\":[{\"name\":\"facetValueIds\",\"type\":\"facetValueIds\",\"value\":\"[30]\"},{\"name\":\"containsAny\",\"type\":\"boolean\",\"value\":\"false\"}]}]', 5, 47, 1),
('2020-03-25 21:59:27.393855', '2020-03-25 21:59:27.393855', 0, 1, 0, '[{\"code\":\"facet-value-filter\",\"description\":[{\"languageCode\":\"en\",\"value\":\"Filter by FacetValues\"}],\"args\":[{\"name\":\"facetValueIds\",\"type\":\"facetValueIds\",\"value\":\"[34]\"},{\"name\":\"containsAny\",\"type\":\"boolean\",\"value\":\"false\"}]}]', 6, 46, 5),
('2020-03-25 21:59:27.678308', '2020-03-25 21:59:27.678308', 0, 2, 0, '[{\"code\":\"facet-value-filter\",\"description\":[{\"languageCode\":\"en\",\"value\":\"Filter by FacetValues\"}],\"args\":[{\"name\":\"facetValueIds\",\"type\":\"facetValueIds\",\"value\":\"[31]\"},{\"name\":\"containsAny\",\"type\":\"boolean\",\"value\":\"false\"}]}]', 7, 37, 5),
('2020-03-25 21:59:27.884255', '2020-03-25 21:59:27.884255', 0, 3, 0, '[{\"code\":\"facet-value-filter\",\"description\":[{\"languageCode\":\"en\",\"value\":\"Filter by FacetValues\"}],\"args\":[{\"name\":\"facetValueIds\",\"type\":\"facetValueIds\",\"value\":\"[17]\"},{\"name\":\"containsAny\",\"type\":\"boolean\",\"value\":\"false\"}]}]', 8, 24, 1),
('2020-03-25 21:59:28.105660', '2020-03-25 21:59:28.105660', 0, 1, 0, '[{\"code\":\"facet-value-filter\",\"description\":[{\"languageCode\":\"en\",\"value\":\"Filter by FacetValues\"}],\"args\":[{\"name\":\"facetValueIds\",\"type\":\"facetValueIds\",\"value\":\"[18]\"},{\"name\":\"containsAny\",\"type\":\"boolean\",\"value\":\"false\"}]}]', 9, 23, 8),
('2020-03-25 21:59:28.400090', '2020-03-25 21:59:28.400090', 0, 2, 0, '[{\"code\":\"facet-value-filter\",\"description\":[{\"languageCode\":\"en\",\"value\":\"Filter by FacetValues\"}],\"args\":[{\"name\":\"facetValueIds\",\"type\":\"facetValueIds\",\"value\":\"[23]\"},{\"name\":\"containsAny\",\"type\":\"boolean\",\"value\":\"false\"}]}]', 10, 32, 8);

-- --------------------------------------------------------

--
-- Table structure for table `collection_asset`
--

CREATE TABLE `collection_asset` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `assetId` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `collectionId` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collection_asset`
--

INSERT INTO `collection_asset` (`createdAt`, `updatedAt`, `assetId`, `position`, `collectionId`, `id`) VALUES
('2020-03-25 21:59:26.151086', '2020-03-25 21:59:26.151086', 16, 0, 2, 1),
('2020-03-25 21:59:26.401153', '2020-03-25 21:59:26.401153', 5, 0, 3, 2),
('2020-03-25 21:59:26.856204', '2020-03-25 21:59:26.856204', 12, 0, 4, 3),
('2020-03-25 21:59:27.284594', '2020-03-25 21:59:27.284594', 47, 0, 5, 4),
('2020-03-25 21:59:27.434453', '2020-03-25 21:59:27.434453', 46, 0, 6, 5),
('2020-03-25 21:59:27.707790', '2020-03-25 21:59:27.707790', 37, 0, 7, 6),
('2020-03-25 21:59:27.905592', '2020-03-25 21:59:27.905592', 24, 0, 8, 7),
('2020-03-25 21:59:28.145414', '2020-03-25 21:59:28.145414', 23, 0, 9, 8),
('2020-03-25 21:59:28.419908', '2020-03-25 21:59:28.419908', 32, 0, 10, 9);

-- --------------------------------------------------------

--
-- Table structure for table `collection_channels_channel`
--

CREATE TABLE `collection_channels_channel` (
  `collectionId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collection_channels_channel`
--

INSERT INTO `collection_channels_channel` (`collectionId`, `channelId`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `collection_product_variants_product_variant`
--

CREATE TABLE `collection_product_variants_product_variant` (
  `collectionId` int(11) NOT NULL,
  `productVariantId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collection_product_variants_product_variant`
--

INSERT INTO `collection_product_variants_product_variant` (`collectionId`, `productVariantId`) VALUES
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(2, 29),
(2, 30),
(2, 31),
(2, 32),
(2, 33),
(2, 34),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(3, 15),
(3, 16),
(3, 17),
(3, 18),
(3, 19),
(3, 20),
(3, 21),
(3, 22),
(3, 23),
(3, 24),
(3, 25),
(4, 26),
(4, 27),
(4, 28),
(4, 29),
(4, 30),
(4, 31),
(4, 32),
(4, 33),
(4, 34),
(5, 67),
(5, 68),
(5, 69),
(5, 70),
(5, 71),
(5, 72),
(5, 73),
(5, 74),
(5, 75),
(5, 76),
(5, 77),
(5, 78),
(5, 79),
(5, 80),
(5, 81),
(5, 82),
(5, 83),
(5, 84),
(5, 85),
(5, 86),
(5, 87),
(5, 88),
(6, 75),
(6, 77),
(6, 78),
(6, 79),
(6, 80),
(6, 81),
(6, 82),
(6, 83),
(6, 84),
(6, 85),
(6, 86),
(6, 87),
(6, 88),
(7, 67),
(7, 68),
(7, 69),
(7, 70),
(7, 71),
(7, 72),
(7, 73),
(7, 74),
(7, 76),
(8, 35),
(8, 36),
(8, 37),
(8, 38),
(8, 39),
(8, 40),
(8, 41),
(8, 42),
(8, 43),
(8, 44),
(8, 45),
(8, 46),
(8, 47),
(8, 48),
(8, 49),
(8, 50),
(8, 51),
(8, 52),
(8, 53),
(8, 54),
(8, 55),
(8, 56),
(8, 57),
(8, 58),
(8, 59),
(8, 60),
(8, 61),
(8, 62),
(8, 63),
(8, 64),
(8, 65),
(8, 66),
(9, 35),
(9, 36),
(9, 37),
(9, 38),
(9, 39),
(9, 40),
(9, 41),
(9, 42),
(10, 43),
(10, 44),
(10, 45),
(10, 46),
(10, 47),
(10, 48),
(10, 49),
(10, 50),
(10, 51),
(10, 52),
(10, 53),
(10, 54),
(10, 55),
(10, 56),
(10, 57),
(10, 58),
(10, 59),
(10, 60),
(10, 61),
(10, 62),
(10, 63),
(10, 64),
(10, 65),
(10, 66);

-- --------------------------------------------------------

--
-- Table structure for table `collection_translation`
--

CREATE TABLE `collection_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collection_translation`
--

INSERT INTO `collection_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `description`, `id`, `baseId`) VALUES
('2020-03-25 21:59:25.978799', '2020-03-25 21:59:26.000000', 'en', 'Electronics', '', 1, 2),
('2020-03-25 21:59:26.011931', '2020-03-25 21:59:26.000000', 'en', '__root_collection__', 'The root of the Collection tree.', 2, 1),
('2020-03-25 21:59:26.278268', '2020-03-25 21:59:26.000000', 'en', 'Computers', '', 3, 3),
('2020-03-25 21:59:26.564425', '2020-03-25 21:59:26.000000', 'en', 'Camera & Photo', '', 4, 4),
('2020-03-25 21:59:26.966413', '2020-03-25 21:59:27.000000', 'en', 'Home & Garden', '', 5, 5),
('2020-03-25 21:59:27.309844', '2020-03-25 21:59:27.000000', 'en', 'Furniture', '', 6, 6),
('2020-03-25 21:59:27.463264', '2020-03-25 21:59:27.000000', 'en', 'Plants', '', 7, 7),
('2020-03-25 21:59:27.746554', '2020-03-25 21:59:27.000000', 'en', 'Sports & Outdoor', '', 8, 8),
('2020-03-25 21:59:27.949254', '2020-03-25 21:59:28.000000', 'en', 'Equipment', '', 9, 9),
('2020-03-25 21:59:28.279182', '2020-03-25 21:59:28.000000', 'en', 'Footwear', '', 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `code` varchar(255) NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`createdAt`, `updatedAt`, `code`, `enabled`, `id`) VALUES
('2020-03-25 21:58:59.760994', '2020-03-25 21:58:59.760994', 'AF', 1, 1),
('2020-03-25 21:58:59.948597', '2020-03-25 21:58:59.948597', 'AX', 1, 2),
('2020-03-25 21:59:00.052268', '2020-03-25 21:59:00.052268', 'AL', 1, 3),
('2020-03-25 21:59:00.103944', '2020-03-25 21:59:00.103944', 'DZ', 1, 4),
('2020-03-25 21:59:00.212444', '2020-03-25 21:59:00.212444', 'AS', 1, 5),
('2020-03-25 21:59:00.296131', '2020-03-25 21:59:00.296131', 'AD', 1, 6),
('2020-03-25 21:59:00.354705', '2020-03-25 21:59:00.354705', 'AO', 1, 7),
('2020-03-25 21:59:00.402382', '2020-03-25 21:59:00.402382', 'AI', 1, 8),
('2020-03-25 21:59:00.512015', '2020-03-25 21:59:00.512015', 'AG', 1, 9),
('2020-03-25 21:59:00.554926', '2020-03-25 21:59:00.554926', 'AR', 1, 10),
('2020-03-25 21:59:00.598198', '2020-03-25 21:59:00.598198', 'AM', 1, 11),
('2020-03-25 21:59:00.645041', '2020-03-25 21:59:00.645041', 'AW', 1, 12),
('2020-03-25 21:59:00.681700', '2020-03-25 21:59:00.681700', 'AU', 1, 13),
('2020-03-25 21:59:00.717264', '2020-03-25 21:59:00.717264', 'AT', 1, 14),
('2020-03-25 21:59:00.753463', '2020-03-25 21:59:00.753463', 'AZ', 1, 15),
('2020-03-25 21:59:00.811842', '2020-03-25 21:59:00.811842', 'BS', 1, 16),
('2020-03-25 21:59:00.849433', '2020-03-25 21:59:00.849433', 'BH', 1, 17),
('2020-03-25 21:59:00.884812', '2020-03-25 21:59:00.884812', 'BD', 1, 18),
('2020-03-25 21:59:00.919708', '2020-03-25 21:59:00.919708', 'BB', 1, 19),
('2020-03-25 21:59:00.956762', '2020-03-25 21:59:00.956762', 'BY', 1, 20),
('2020-03-25 21:59:00.995692', '2020-03-25 21:59:00.995692', 'BE', 1, 21),
('2020-03-25 21:59:01.035984', '2020-03-25 21:59:01.035984', 'BZ', 1, 22),
('2020-03-25 21:59:01.075670', '2020-03-25 21:59:01.075670', 'BJ', 1, 23),
('2020-03-25 21:59:01.119084', '2020-03-25 21:59:01.119084', 'BM', 1, 24),
('2020-03-25 21:59:01.163418', '2020-03-25 21:59:01.163418', 'BT', 1, 25),
('2020-03-25 21:59:01.205836', '2020-03-25 21:59:01.205836', 'BO', 1, 26),
('2020-03-25 21:59:01.249191', '2020-03-25 21:59:01.249191', 'BQ', 1, 27),
('2020-03-25 21:59:01.302171', '2020-03-25 21:59:01.302171', 'BA', 1, 28),
('2020-03-25 21:59:01.346452', '2020-03-25 21:59:01.346452', 'BW', 1, 29),
('2020-03-25 21:59:01.384179', '2020-03-25 21:59:01.384179', 'BV', 1, 30),
('2020-03-25 21:59:01.427631', '2020-03-25 21:59:01.427631', 'BR', 1, 31),
('2020-03-25 21:59:01.471295', '2020-03-25 21:59:01.471295', 'IO', 1, 32),
('2020-03-25 21:59:01.517722', '2020-03-25 21:59:01.517722', 'BN', 1, 33),
('2020-03-25 21:59:01.557536', '2020-03-25 21:59:01.557536', 'BG', 1, 34),
('2020-03-25 21:59:01.595839', '2020-03-25 21:59:01.595839', 'BF', 1, 35),
('2020-03-25 21:59:01.635748', '2020-03-25 21:59:01.635748', 'BI', 1, 36),
('2020-03-25 21:59:01.673235', '2020-03-25 21:59:01.673235', 'CV', 1, 37),
('2020-03-25 21:59:01.711689', '2020-03-25 21:59:01.711689', 'KH', 1, 38),
('2020-03-25 21:59:01.753958', '2020-03-25 21:59:01.753958', 'CM', 1, 39),
('2020-03-25 21:59:01.796243', '2020-03-25 21:59:01.796243', 'CA', 1, 40),
('2020-03-25 21:59:01.849129', '2020-03-25 21:59:01.849129', 'KY', 1, 41),
('2020-03-25 21:59:01.885554', '2020-03-25 21:59:01.885554', 'CF', 1, 42),
('2020-03-25 21:59:01.924178', '2020-03-25 21:59:01.924178', 'TD', 1, 43),
('2020-03-25 21:59:01.969379', '2020-03-25 21:59:01.969379', 'CL', 1, 44),
('2020-03-25 21:59:02.009676', '2020-03-25 21:59:02.009676', 'CN', 1, 45),
('2020-03-25 21:59:02.047303', '2020-03-25 21:59:02.047303', 'CX', 1, 46),
('2020-03-25 21:59:02.093681', '2020-03-25 21:59:02.093681', 'CC', 1, 47),
('2020-03-25 21:59:02.138585', '2020-03-25 21:59:02.138585', 'CO', 1, 48),
('2020-03-25 21:59:02.196434', '2020-03-25 21:59:02.196434', 'KM', 1, 49),
('2020-03-25 21:59:02.232748', '2020-03-25 21:59:02.232748', 'CG', 1, 50),
('2020-03-25 21:59:02.269947', '2020-03-25 21:59:02.269947', 'CD', 1, 51),
('2020-03-25 21:59:02.312605', '2020-03-25 21:59:02.312605', 'CK', 1, 52),
('2020-03-25 21:59:02.354321', '2020-03-25 21:59:02.354321', 'CR', 1, 53),
('2020-03-25 21:59:02.392632', '2020-03-25 21:59:02.392632', 'CI', 1, 54),
('2020-03-25 21:59:02.433472', '2020-03-25 21:59:02.433472', 'HR', 1, 55),
('2020-03-25 21:59:02.480849', '2020-03-25 21:59:02.480849', 'CU', 1, 56),
('2020-03-25 21:59:02.531188', '2020-03-25 21:59:02.531188', 'CW', 1, 57),
('2020-03-25 21:59:02.571244', '2020-03-25 21:59:02.571244', 'CY', 1, 58),
('2020-03-25 21:59:02.604992', '2020-03-25 21:59:02.604992', 'CZ', 1, 59),
('2020-03-25 21:59:02.640546', '2020-03-25 21:59:02.640546', 'DK', 1, 60),
('2020-03-25 21:59:02.684237', '2020-03-25 21:59:02.684237', 'DJ', 1, 61),
('2020-03-25 21:59:02.722739', '2020-03-25 21:59:02.722739', 'DM', 1, 62),
('2020-03-25 21:59:02.760813', '2020-03-25 21:59:02.760813', 'DO', 1, 63),
('2020-03-25 21:59:02.795890', '2020-03-25 21:59:02.795890', 'EC', 1, 64),
('2020-03-25 21:59:02.861932', '2020-03-25 21:59:02.861932', 'EG', 1, 65),
('2020-03-25 21:59:02.899011', '2020-03-25 21:59:02.899011', 'SV', 1, 66),
('2020-03-25 21:59:02.939089', '2020-03-25 21:59:02.939089', 'GQ', 1, 67),
('2020-03-25 21:59:02.975141', '2020-03-25 21:59:02.975141', 'ER', 1, 68),
('2020-03-25 21:59:03.010303', '2020-03-25 21:59:03.010303', 'EE', 1, 69),
('2020-03-25 21:59:03.048560', '2020-03-25 21:59:03.048560', 'SZ', 1, 70),
('2020-03-25 21:59:03.083284', '2020-03-25 21:59:03.083284', 'ET', 1, 71),
('2020-03-25 21:59:03.122616', '2020-03-25 21:59:03.122616', 'FK', 1, 72),
('2020-03-25 21:59:03.167364', '2020-03-25 21:59:03.167364', 'FO', 1, 73),
('2020-03-25 21:59:03.213975', '2020-03-25 21:59:03.213975', 'FJ', 1, 74),
('2020-03-25 21:59:03.250562', '2020-03-25 21:59:03.250562', 'FI', 1, 75),
('2020-03-25 21:59:03.286388', '2020-03-25 21:59:03.286388', 'FR', 1, 76),
('2020-03-25 21:59:03.342840', '2020-03-25 21:59:03.342840', 'GF', 1, 77),
('2020-03-25 21:59:03.383490', '2020-03-25 21:59:03.383490', 'PF', 1, 78),
('2020-03-25 21:59:03.422480', '2020-03-25 21:59:03.422480', 'TF', 1, 79),
('2020-03-25 21:59:03.464808', '2020-03-25 21:59:03.464808', 'GA', 1, 80),
('2020-03-25 21:59:03.505401', '2020-03-25 21:59:03.505401', 'GM', 1, 81),
('2020-03-25 21:59:03.548851', '2020-03-25 21:59:03.548851', 'GE', 1, 82),
('2020-03-25 21:59:03.585787', '2020-03-25 21:59:03.585787', 'DE', 1, 83),
('2020-03-25 21:59:03.620510', '2020-03-25 21:59:03.620510', 'GH', 1, 84),
('2020-03-25 21:59:03.655548', '2020-03-25 21:59:03.655548', 'GI', 1, 85),
('2020-03-25 21:59:03.698070', '2020-03-25 21:59:03.698070', 'GR', 1, 86),
('2020-03-25 21:59:03.735056', '2020-03-25 21:59:03.735056', 'GL', 1, 87),
('2020-03-25 21:59:03.771367', '2020-03-25 21:59:03.771367', 'GD', 1, 88),
('2020-03-25 21:59:03.806508', '2020-03-25 21:59:03.806508', 'GP', 1, 89),
('2020-03-25 21:59:03.857101', '2020-03-25 21:59:03.857101', 'GU', 1, 90),
('2020-03-25 21:59:03.891023', '2020-03-25 21:59:03.891023', 'GT', 1, 91),
('2020-03-25 21:59:03.929464', '2020-03-25 21:59:03.929464', 'GG', 1, 92),
('2020-03-25 21:59:03.969600', '2020-03-25 21:59:03.969600', 'GN', 1, 93),
('2020-03-25 21:59:04.006710', '2020-03-25 21:59:04.006710', 'GW', 1, 94),
('2020-03-25 21:59:04.048561', '2020-03-25 21:59:04.048561', 'GY', 1, 95),
('2020-03-25 21:59:04.089024', '2020-03-25 21:59:04.089024', 'HT', 1, 96),
('2020-03-25 21:59:04.124651', '2020-03-25 21:59:04.124651', 'HM', 1, 97),
('2020-03-25 21:59:04.173280', '2020-03-25 21:59:04.173280', 'VA', 1, 98),
('2020-03-25 21:59:04.211428', '2020-03-25 21:59:04.211428', 'HN', 1, 99),
('2020-03-25 21:59:04.249090', '2020-03-25 21:59:04.249090', 'HK', 1, 100),
('2020-03-25 21:59:04.282782', '2020-03-25 21:59:04.282782', 'HU', 1, 101),
('2020-03-25 21:59:04.331951', '2020-03-25 21:59:04.331951', 'IS', 1, 102),
('2020-03-25 21:59:04.373663', '2020-03-25 21:59:04.373663', 'IN', 1, 103),
('2020-03-25 21:59:04.414708', '2020-03-25 21:59:04.414708', 'ID', 1, 104),
('2020-03-25 21:59:04.461579', '2020-03-25 21:59:04.461579', 'IR', 1, 105),
('2020-03-25 21:59:04.497811', '2020-03-25 21:59:04.497811', 'IQ', 1, 106),
('2020-03-25 21:59:04.534053', '2020-03-25 21:59:04.534053', 'IE', 1, 107),
('2020-03-25 21:59:04.572735', '2020-03-25 21:59:04.572735', 'IM', 1, 108),
('2020-03-25 21:59:04.608779', '2020-03-25 21:59:04.608779', 'IL', 1, 109),
('2020-03-25 21:59:04.645082', '2020-03-25 21:59:04.645082', 'IT', 1, 110),
('2020-03-25 21:59:04.681140', '2020-03-25 21:59:04.681140', 'JM', 1, 111),
('2020-03-25 21:59:04.716347', '2020-03-25 21:59:04.716347', 'JP', 1, 112),
('2020-03-25 21:59:04.752478', '2020-03-25 21:59:04.752478', 'JE', 1, 113),
('2020-03-25 21:59:04.788249', '2020-03-25 21:59:04.788249', 'JO', 1, 114),
('2020-03-25 21:59:04.838405', '2020-03-25 21:59:04.838405', 'KZ', 1, 115),
('2020-03-25 21:59:04.883741', '2020-03-25 21:59:04.883741', 'KE', 1, 116),
('2020-03-25 21:59:04.918864', '2020-03-25 21:59:04.918864', 'KI', 1, 117),
('2020-03-25 21:59:04.954592', '2020-03-25 21:59:04.954592', 'KP', 1, 118),
('2020-03-25 21:59:05.001431', '2020-03-25 21:59:05.001431', 'KR', 1, 119),
('2020-03-25 21:59:05.044168', '2020-03-25 21:59:05.044168', 'KW', 1, 120),
('2020-03-25 21:59:05.081866', '2020-03-25 21:59:05.081866', 'KG', 1, 121),
('2020-03-25 21:59:05.114786', '2020-03-25 21:59:05.114786', 'LA', 1, 122),
('2020-03-25 21:59:05.193152', '2020-03-25 21:59:05.193152', 'LV', 1, 123),
('2020-03-25 21:59:05.239149', '2020-03-25 21:59:05.239149', 'LB', 1, 124),
('2020-03-25 21:59:05.279273', '2020-03-25 21:59:05.279273', 'LS', 1, 125),
('2020-03-25 21:59:05.338508', '2020-03-25 21:59:05.338508', 'LR', 1, 126),
('2020-03-25 21:59:05.365966', '2020-03-25 21:59:05.365966', 'LY', 1, 127),
('2020-03-25 21:59:05.388247', '2020-03-25 21:59:05.388247', 'LI', 1, 128),
('2020-03-25 21:59:05.414720', '2020-03-25 21:59:05.414720', 'LT', 1, 129),
('2020-03-25 21:59:05.438019', '2020-03-25 21:59:05.438019', 'LU', 1, 130),
('2020-03-25 21:59:05.472523', '2020-03-25 21:59:05.472523', 'MO', 1, 131),
('2020-03-25 21:59:05.502500', '2020-03-25 21:59:05.502500', 'MK', 1, 132),
('2020-03-25 21:59:05.524284', '2020-03-25 21:59:05.524284', 'MG', 1, 133),
('2020-03-25 21:59:05.545543', '2020-03-25 21:59:05.545543', 'MW', 1, 134),
('2020-03-25 21:59:05.575104', '2020-03-25 21:59:05.575104', 'MY', 1, 135),
('2020-03-25 21:59:05.610031', '2020-03-25 21:59:05.610031', 'MV', 1, 136),
('2020-03-25 21:59:05.661594', '2020-03-25 21:59:05.661594', 'ML', 1, 137),
('2020-03-25 21:59:05.698591', '2020-03-25 21:59:05.698591', 'MT', 1, 138),
('2020-03-25 21:59:05.734298', '2020-03-25 21:59:05.734298', 'MH', 1, 139),
('2020-03-25 21:59:05.770714', '2020-03-25 21:59:05.770714', 'MQ', 1, 140),
('2020-03-25 21:59:05.805752', '2020-03-25 21:59:05.805752', 'MR', 1, 141),
('2020-03-25 21:59:05.842427', '2020-03-25 21:59:05.842427', 'MU', 1, 142),
('2020-03-25 21:59:05.880972', '2020-03-25 21:59:05.880972', 'YT', 1, 143),
('2020-03-25 21:59:05.915222', '2020-03-25 21:59:05.915222', 'MX', 1, 144),
('2020-03-25 21:59:05.951002', '2020-03-25 21:59:05.951002', 'FM', 1, 145),
('2020-03-25 21:59:05.986798', '2020-03-25 21:59:05.986798', 'MD', 1, 146),
('2020-03-25 21:59:06.021109', '2020-03-25 21:59:06.021109', 'MC', 1, 147),
('2020-03-25 21:59:06.055361', '2020-03-25 21:59:06.055361', 'MN', 1, 148),
('2020-03-25 21:59:06.103047', '2020-03-25 21:59:06.103047', 'ME', 1, 149),
('2020-03-25 21:59:06.140353', '2020-03-25 21:59:06.140353', 'MS', 1, 150),
('2020-03-25 21:59:06.184516', '2020-03-25 21:59:06.184516', 'MA', 1, 151),
('2020-03-25 21:59:06.222368', '2020-03-25 21:59:06.222368', 'MZ', 1, 152),
('2020-03-25 21:59:06.259089', '2020-03-25 21:59:06.259089', 'MM', 1, 153),
('2020-03-25 21:59:06.293716', '2020-03-25 21:59:06.293716', 'NA', 1, 154),
('2020-03-25 21:59:06.354467', '2020-03-25 21:59:06.354467', 'NR', 1, 155),
('2020-03-25 21:59:06.397778', '2020-03-25 21:59:06.397778', 'NP', 1, 156),
('2020-03-25 21:59:06.437641', '2020-03-25 21:59:06.437641', 'NL', 1, 157),
('2020-03-25 21:59:06.475166', '2020-03-25 21:59:06.475166', 'NC', 1, 158),
('2020-03-25 21:59:06.512186', '2020-03-25 21:59:06.512186', 'NZ', 1, 159),
('2020-03-25 21:59:06.546880', '2020-03-25 21:59:06.546880', 'NI', 1, 160),
('2020-03-25 21:59:06.582114', '2020-03-25 21:59:06.582114', 'NE', 1, 161),
('2020-03-25 21:59:06.616736', '2020-03-25 21:59:06.616736', 'NG', 1, 162),
('2020-03-25 21:59:06.650990', '2020-03-25 21:59:06.650990', 'NU', 1, 163),
('2020-03-25 21:59:06.684409', '2020-03-25 21:59:06.684409', 'NF', 1, 164),
('2020-03-25 21:59:06.716562', '2020-03-25 21:59:06.716562', 'MP', 1, 165),
('2020-03-25 21:59:06.754418', '2020-03-25 21:59:06.754418', 'NO', 1, 166),
('2020-03-25 21:59:06.796509', '2020-03-25 21:59:06.796509', 'OM', 1, 167),
('2020-03-25 21:59:06.832836', '2020-03-25 21:59:06.832836', 'PK', 1, 168),
('2020-03-25 21:59:06.878352', '2020-03-25 21:59:06.878352', 'PW', 1, 169),
('2020-03-25 21:59:06.910588', '2020-03-25 21:59:06.910588', 'PS', 1, 170),
('2020-03-25 21:59:06.944714', '2020-03-25 21:59:06.944714', 'PA', 1, 171),
('2020-03-25 21:59:06.984776', '2020-03-25 21:59:06.984776', 'PG', 1, 172),
('2020-03-25 21:59:07.022862', '2020-03-25 21:59:07.022862', 'PY', 1, 173),
('2020-03-25 21:59:07.061220', '2020-03-25 21:59:07.061220', 'PE', 1, 174),
('2020-03-25 21:59:07.103329', '2020-03-25 21:59:07.103329', 'PH', 1, 175),
('2020-03-25 21:59:07.140834', '2020-03-25 21:59:07.140834', 'PN', 1, 176),
('2020-03-25 21:59:07.184645', '2020-03-25 21:59:07.184645', 'PL', 1, 177),
('2020-03-25 21:59:07.227847', '2020-03-25 21:59:07.227847', 'PT', 1, 178),
('2020-03-25 21:59:07.260906', '2020-03-25 21:59:07.260906', 'PR', 1, 179),
('2020-03-25 21:59:07.299862', '2020-03-25 21:59:07.299862', 'QA', 1, 180),
('2020-03-25 21:59:07.359666', '2020-03-25 21:59:07.359666', 'RE', 1, 181),
('2020-03-25 21:59:07.393934', '2020-03-25 21:59:07.393934', 'RO', 1, 182),
('2020-03-25 21:59:07.435381', '2020-03-25 21:59:07.435381', 'RU', 1, 183),
('2020-03-25 21:59:07.473595', '2020-03-25 21:59:07.473595', 'RW', 1, 184),
('2020-03-25 21:59:07.511800', '2020-03-25 21:59:07.511800', 'BL', 1, 185),
('2020-03-25 21:59:07.587527', '2020-03-25 21:59:07.587527', 'SH', 1, 186),
('2020-03-25 21:59:07.661121', '2020-03-25 21:59:07.661121', 'KN', 1, 187),
('2020-03-25 21:59:07.738041', '2020-03-25 21:59:07.738041', 'LC', 1, 188),
('2020-03-25 21:59:07.819418', '2020-03-25 21:59:07.819418', 'MF', 1, 189),
('2020-03-25 21:59:07.897697', '2020-03-25 21:59:07.897697', 'PM', 1, 190),
('2020-03-25 21:59:07.989389', '2020-03-25 21:59:07.989389', 'VC', 1, 191),
('2020-03-25 21:59:08.052157', '2020-03-25 21:59:08.052157', 'WS', 1, 192),
('2020-03-25 21:59:08.120719', '2020-03-25 21:59:08.120719', 'SM', 1, 193),
('2020-03-25 21:59:08.187336', '2020-03-25 21:59:08.187336', 'ST', 1, 194),
('2020-03-25 21:59:08.237611', '2020-03-25 21:59:08.237611', 'SA', 1, 195),
('2020-03-25 21:59:08.326038', '2020-03-25 21:59:08.326038', 'SN', 1, 196),
('2020-03-25 21:59:08.369536', '2020-03-25 21:59:08.369536', 'RS', 1, 197),
('2020-03-25 21:59:08.440546', '2020-03-25 21:59:08.440546', 'SC', 1, 198),
('2020-03-25 21:59:08.487333', '2020-03-25 21:59:08.487333', 'SL', 1, 199),
('2020-03-25 21:59:08.539621', '2020-03-25 21:59:08.539621', 'SG', 1, 200),
('2020-03-25 21:59:08.572209', '2020-03-25 21:59:08.572209', 'SX', 1, 201),
('2020-03-25 21:59:08.604443', '2020-03-25 21:59:08.604443', 'SK', 1, 202),
('2020-03-25 21:59:08.643150', '2020-03-25 21:59:08.643150', 'SI', 1, 203),
('2020-03-25 21:59:08.695983', '2020-03-25 21:59:08.695983', 'SB', 1, 204),
('2020-03-25 21:59:08.745843', '2020-03-25 21:59:08.745843', 'SO', 1, 205),
('2020-03-25 21:59:08.785651', '2020-03-25 21:59:08.785651', 'ZA', 1, 206),
('2020-03-25 21:59:08.843980', '2020-03-25 21:59:08.843980', 'GS', 1, 207),
('2020-03-25 21:59:08.905393', '2020-03-25 21:59:08.905393', 'SS', 1, 208),
('2020-03-25 21:59:08.941821', '2020-03-25 21:59:08.941821', 'ES', 1, 209),
('2020-03-25 21:59:08.981029', '2020-03-25 21:59:08.981029', 'LK', 1, 210),
('2020-03-25 21:59:09.018868', '2020-03-25 21:59:09.018868', 'SD', 1, 211),
('2020-03-25 21:59:09.059195', '2020-03-25 21:59:09.059195', 'SR', 1, 212),
('2020-03-25 21:59:09.096562', '2020-03-25 21:59:09.096562', 'SJ', 1, 213),
('2020-03-25 21:59:09.139105', '2020-03-25 21:59:09.139105', 'SE', 1, 214),
('2020-03-25 21:59:09.186198', '2020-03-25 21:59:09.186198', 'CH', 1, 215),
('2020-03-25 21:59:09.223654', '2020-03-25 21:59:09.223654', 'SY', 1, 216),
('2020-03-25 21:59:09.267261', '2020-03-25 21:59:09.267261', 'TW', 1, 217),
('2020-03-25 21:59:09.301776', '2020-03-25 21:59:09.301776', 'TJ', 1, 218),
('2020-03-25 21:59:09.365995', '2020-03-25 21:59:09.365995', 'TZ', 1, 219),
('2020-03-25 21:59:09.404411', '2020-03-25 21:59:09.404411', 'TH', 1, 220),
('2020-03-25 21:59:09.451266', '2020-03-25 21:59:09.451266', 'TL', 1, 221),
('2020-03-25 21:59:09.483926', '2020-03-25 21:59:09.483926', 'TG', 1, 222),
('2020-03-25 21:59:09.517503', '2020-03-25 21:59:09.517503', 'TK', 1, 223),
('2020-03-25 21:59:09.552972', '2020-03-25 21:59:09.552972', 'TO', 1, 224),
('2020-03-25 21:59:09.588101', '2020-03-25 21:59:09.588101', 'TT', 1, 225),
('2020-03-25 21:59:09.620378', '2020-03-25 21:59:09.620378', 'TN', 1, 226),
('2020-03-25 21:59:09.654177', '2020-03-25 21:59:09.654177', 'TR', 1, 227),
('2020-03-25 21:59:09.691959', '2020-03-25 21:59:09.691959', 'TM', 1, 228),
('2020-03-25 21:59:09.730485', '2020-03-25 21:59:09.730485', 'TC', 1, 229),
('2020-03-25 21:59:09.768150', '2020-03-25 21:59:09.768150', 'TV', 1, 230),
('2020-03-25 21:59:09.803404', '2020-03-25 21:59:09.803404', 'UG', 1, 231),
('2020-03-25 21:59:09.837881', '2020-03-25 21:59:09.837881', 'UA', 1, 232),
('2020-03-25 21:59:09.873213', '2020-03-25 21:59:09.873213', 'AE', 1, 233),
('2020-03-25 21:59:09.909325', '2020-03-25 21:59:09.909325', 'GB', 1, 234),
('2020-03-25 21:59:09.943889', '2020-03-25 21:59:09.943889', 'US', 1, 235),
('2020-03-25 21:59:09.977783', '2020-03-25 21:59:09.977783', 'UM', 1, 236),
('2020-03-25 21:59:10.010648', '2020-03-25 21:59:10.010648', 'UY', 1, 237),
('2020-03-25 21:59:10.046578', '2020-03-25 21:59:10.046578', 'UZ', 1, 238),
('2020-03-25 21:59:10.081177', '2020-03-25 21:59:10.081177', 'VU', 1, 239),
('2020-03-25 21:59:10.115319', '2020-03-25 21:59:10.115319', 'VE', 1, 240),
('2020-03-25 21:59:10.151663', '2020-03-25 21:59:10.151663', 'VN', 1, 241),
('2020-03-25 21:59:10.199878', '2020-03-25 21:59:10.199878', 'VG', 1, 242),
('2020-03-25 21:59:10.236779', '2020-03-25 21:59:10.236779', 'VI', 1, 243),
('2020-03-25 21:59:10.276762', '2020-03-25 21:59:10.276762', 'WF', 1, 244),
('2020-03-25 21:59:10.311372', '2020-03-25 21:59:10.311372', 'EH', 1, 245),
('2020-03-25 21:59:10.353300', '2020-03-25 21:59:10.353300', 'YE', 1, 246),
('2020-03-25 21:59:10.397054', '2020-03-25 21:59:10.397054', 'ZM', 1, 247),
('2020-03-25 21:59:10.431370', '2020-03-25 21:59:10.431370', 'ZW', 1, 248);

-- --------------------------------------------------------

--
-- Table structure for table `country_translation`
--

CREATE TABLE `country_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country_translation`
--

INSERT INTO `country_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `id`, `baseId`) VALUES
('2020-03-25 21:58:59.724527', '2020-03-25 21:58:59.000000', 'en', 'Afghanistan', 1, 1),
('2020-03-25 21:58:59.927710', '2020-03-25 21:58:59.000000', 'en', 'Åland Islands', 2, 2),
('2020-03-25 21:59:00.035100', '2020-03-25 21:59:00.000000', 'en', 'Albania', 3, 3),
('2020-03-25 21:59:00.086641', '2020-03-25 21:59:00.000000', 'en', 'Algeria', 4, 4),
('2020-03-25 21:59:00.194417', '2020-03-25 21:59:00.000000', 'en', 'American Samoa', 5, 5),
('2020-03-25 21:59:00.280847', '2020-03-25 21:59:00.000000', 'en', 'Andorra', 6, 6),
('2020-03-25 21:59:00.335694', '2020-03-25 21:59:00.000000', 'en', 'Angola', 7, 7),
('2020-03-25 21:59:00.386245', '2020-03-25 21:59:00.000000', 'en', 'Anguilla', 8, 8),
('2020-03-25 21:59:00.487426', '2020-03-25 21:59:00.000000', 'en', 'Antigua and Barbuda', 9, 9),
('2020-03-25 21:59:00.539852', '2020-03-25 21:59:00.000000', 'en', 'Argentina', 10, 10),
('2020-03-25 21:59:00.583515', '2020-03-25 21:59:00.000000', 'en', 'Armenia', 11, 11),
('2020-03-25 21:59:00.632339', '2020-03-25 21:59:00.000000', 'en', 'Aruba', 12, 12),
('2020-03-25 21:59:00.669123', '2020-03-25 21:59:00.000000', 'en', 'Australia', 13, 13),
('2020-03-25 21:59:00.704222', '2020-03-25 21:59:00.000000', 'en', 'Austria', 14, 14),
('2020-03-25 21:59:00.741012', '2020-03-25 21:59:00.000000', 'en', 'Azerbaijan', 15, 15),
('2020-03-25 21:59:00.777780', '2020-03-25 21:59:00.000000', 'en', 'Bahamas', 16, 16),
('2020-03-25 21:59:00.836653', '2020-03-25 21:59:00.000000', 'en', 'Bahrain', 17, 17),
('2020-03-25 21:59:00.872439', '2020-03-25 21:59:00.000000', 'en', 'Bangladesh', 18, 18),
('2020-03-25 21:59:00.906982', '2020-03-25 21:59:00.000000', 'en', 'Barbados', 19, 19),
('2020-03-25 21:59:00.944261', '2020-03-25 21:59:00.000000', 'en', 'Belarus', 20, 20),
('2020-03-25 21:59:00.981526', '2020-03-25 21:59:01.000000', 'en', 'Belgium', 21, 21),
('2020-03-25 21:59:01.021296', '2020-03-25 21:59:01.000000', 'en', 'Belize', 22, 22),
('2020-03-25 21:59:01.061898', '2020-03-25 21:59:01.000000', 'en', 'Benin', 23, 23),
('2020-03-25 21:59:01.100707', '2020-03-25 21:59:01.000000', 'en', 'Bermuda', 24, 24),
('2020-03-25 21:59:01.147388', '2020-03-25 21:59:01.000000', 'en', 'Bhutan', 25, 25),
('2020-03-25 21:59:01.191260', '2020-03-25 21:59:01.000000', 'en', 'Bolivia (Plurinational State of)', 26, 26),
('2020-03-25 21:59:01.230503', '2020-03-25 21:59:01.000000', 'en', 'Bonaire, Sint Eustatius and Saba', 27, 27),
('2020-03-25 21:59:01.276339', '2020-03-25 21:59:01.000000', 'en', 'Bosnia and Herzegovina', 28, 28),
('2020-03-25 21:59:01.332526', '2020-03-25 21:59:01.000000', 'en', 'Botswana', 29, 29),
('2020-03-25 21:59:01.371024', '2020-03-25 21:59:01.000000', 'en', 'Bouvet Island', 30, 30),
('2020-03-25 21:59:01.412636', '2020-03-25 21:59:01.000000', 'en', 'Brazil', 31, 31),
('2020-03-25 21:59:01.456322', '2020-03-25 21:59:01.000000', 'en', 'British Indian Ocean Territory', 32, 32),
('2020-03-25 21:59:01.495415', '2020-03-25 21:59:01.000000', 'en', 'Brunei Darussalam', 33, 33),
('2020-03-25 21:59:01.544238', '2020-03-25 21:59:01.000000', 'en', 'Bulgaria', 34, 34),
('2020-03-25 21:59:01.582077', '2020-03-25 21:59:01.000000', 'en', 'Burkina Faso', 35, 35),
('2020-03-25 21:59:01.621852', '2020-03-25 21:59:01.000000', 'en', 'Burundi', 36, 36),
('2020-03-25 21:59:01.659731', '2020-03-25 21:59:01.000000', 'en', 'Cabo Verde', 37, 37),
('2020-03-25 21:59:01.697630', '2020-03-25 21:59:01.000000', 'en', 'Cambodia', 38, 38),
('2020-03-25 21:59:01.739996', '2020-03-25 21:59:01.000000', 'en', 'Cameroon', 39, 39),
('2020-03-25 21:59:01.780111', '2020-03-25 21:59:01.000000', 'en', 'Canada', 40, 40),
('2020-03-25 21:59:01.834195', '2020-03-25 21:59:01.000000', 'en', 'Cayman Islands', 41, 41),
('2020-03-25 21:59:01.872683', '2020-03-25 21:59:01.000000', 'en', 'Central African Republic', 42, 42),
('2020-03-25 21:59:01.910209', '2020-03-25 21:59:01.000000', 'en', 'Chad', 43, 43),
('2020-03-25 21:59:01.955072', '2020-03-25 21:59:01.000000', 'en', 'Chile', 44, 44),
('2020-03-25 21:59:01.995185', '2020-03-25 21:59:02.000000', 'en', 'China', 45, 45),
('2020-03-25 21:59:02.034440', '2020-03-25 21:59:02.000000', 'en', 'Christmas Island', 46, 46),
('2020-03-25 21:59:02.080670', '2020-03-25 21:59:02.000000', 'en', 'Cocos (Keeling) Islands', 47, 47),
('2020-03-25 21:59:02.124404', '2020-03-25 21:59:02.000000', 'en', 'Colombia', 48, 48),
('2020-03-25 21:59:02.179132', '2020-03-25 21:59:02.000000', 'en', 'Comoros', 49, 49),
('2020-03-25 21:59:02.220258', '2020-03-25 21:59:02.000000', 'en', 'Congo', 50, 50),
('2020-03-25 21:59:02.256609', '2020-03-25 21:59:02.000000', 'en', 'Congo (Democratic Republic of the)', 51, 51),
('2020-03-25 21:59:02.293763', '2020-03-25 21:59:02.000000', 'en', 'Cook Islands', 52, 52),
('2020-03-25 21:59:02.341869', '2020-03-25 21:59:02.000000', 'en', 'Costa Rica', 53, 53),
('2020-03-25 21:59:02.378732', '2020-03-25 21:59:02.000000', 'en', 'Côte d\'Ivoire', 54, 54),
('2020-03-25 21:59:02.418433', '2020-03-25 21:59:02.000000', 'en', 'Croatia', 55, 55),
('2020-03-25 21:59:02.467332', '2020-03-25 21:59:02.000000', 'en', 'Cuba', 56, 56),
('2020-03-25 21:59:02.517032', '2020-03-25 21:59:02.000000', 'en', 'Curaçao', 57, 57),
('2020-03-25 21:59:02.558797', '2020-03-25 21:59:02.000000', 'en', 'Cyprus', 58, 58),
('2020-03-25 21:59:02.591995', '2020-03-25 21:59:02.000000', 'en', 'Czechia', 59, 59),
('2020-03-25 21:59:02.627832', '2020-03-25 21:59:02.000000', 'en', 'Denmark', 60, 60),
('2020-03-25 21:59:02.670717', '2020-03-25 21:59:02.000000', 'en', 'Djibouti', 61, 61),
('2020-03-25 21:59:02.709658', '2020-03-25 21:59:02.000000', 'en', 'Dominica', 62, 62),
('2020-03-25 21:59:02.746796', '2020-03-25 21:59:02.000000', 'en', 'Dominican Republic', 63, 63),
('2020-03-25 21:59:02.783591', '2020-03-25 21:59:02.000000', 'en', 'Ecuador', 64, 64),
('2020-03-25 21:59:02.846628', '2020-03-25 21:59:02.000000', 'en', 'Egypt', 65, 65),
('2020-03-25 21:59:02.885742', '2020-03-25 21:59:02.000000', 'en', 'El Salvador', 66, 66),
('2020-03-25 21:59:02.922761', '2020-03-25 21:59:02.000000', 'en', 'Equatorial Guinea', 67, 67),
('2020-03-25 21:59:02.961876', '2020-03-25 21:59:02.000000', 'en', 'Eritrea', 68, 68),
('2020-03-25 21:59:02.996798', '2020-03-25 21:59:03.000000', 'en', 'Estonia', 69, 69),
('2020-03-25 21:59:03.035261', '2020-03-25 21:59:03.000000', 'en', 'Eswatini', 70, 70),
('2020-03-25 21:59:03.071015', '2020-03-25 21:59:03.000000', 'en', 'Ethiopia', 71, 71),
('2020-03-25 21:59:03.107181', '2020-03-25 21:59:03.000000', 'en', 'Falkland Islands (Malvinas)', 72, 72),
('2020-03-25 21:59:03.147477', '2020-03-25 21:59:03.000000', 'en', 'Faroe Islands', 73, 73),
('2020-03-25 21:59:03.200094', '2020-03-25 21:59:03.000000', 'en', 'Fiji', 74, 74),
('2020-03-25 21:59:03.237701', '2020-03-25 21:59:03.000000', 'en', 'Finland', 75, 75),
('2020-03-25 21:59:03.273749', '2020-03-25 21:59:03.000000', 'en', 'France', 76, 76),
('2020-03-25 21:59:03.326645', '2020-03-25 21:59:03.000000', 'en', 'French Guiana', 77, 77),
('2020-03-25 21:59:03.370088', '2020-03-25 21:59:03.000000', 'en', 'French Polynesia', 78, 78),
('2020-03-25 21:59:03.408220', '2020-03-25 21:59:03.000000', 'en', 'French Southern Territories', 79, 79),
('2020-03-25 21:59:03.451023', '2020-03-25 21:59:03.000000', 'en', 'Gabon', 80, 80),
('2020-03-25 21:59:03.487858', '2020-03-25 21:59:03.000000', 'en', 'Gambia', 81, 81),
('2020-03-25 21:59:03.530315', '2020-03-25 21:59:03.000000', 'en', 'Georgia', 82, 82),
('2020-03-25 21:59:03.573239', '2020-03-25 21:59:03.000000', 'en', 'Germany', 83, 83),
('2020-03-25 21:59:03.607483', '2020-03-25 21:59:03.000000', 'en', 'Ghana', 84, 84),
('2020-03-25 21:59:03.642835', '2020-03-25 21:59:03.000000', 'en', 'Gibraltar', 85, 85),
('2020-03-25 21:59:03.685155', '2020-03-25 21:59:03.000000', 'en', 'Greece', 86, 86),
('2020-03-25 21:59:03.722173', '2020-03-25 21:59:03.000000', 'en', 'Greenland', 87, 87),
('2020-03-25 21:59:03.758746', '2020-03-25 21:59:03.000000', 'en', 'Grenada', 88, 88),
('2020-03-25 21:59:03.793911', '2020-03-25 21:59:03.000000', 'en', 'Guadeloupe', 89, 89),
('2020-03-25 21:59:03.845027', '2020-03-25 21:59:03.000000', 'en', 'Guam', 90, 90),
('2020-03-25 21:59:03.879110', '2020-03-25 21:59:03.000000', 'en', 'Guatemala', 91, 91),
('2020-03-25 21:59:03.915846', '2020-03-25 21:59:03.000000', 'en', 'Guernsey', 92, 92),
('2020-03-25 21:59:03.956402', '2020-03-25 21:59:03.000000', 'en', 'Guinea', 93, 93),
('2020-03-25 21:59:03.993287', '2020-03-25 21:59:04.000000', 'en', 'Guinea-Bissau', 94, 94),
('2020-03-25 21:59:04.034979', '2020-03-25 21:59:04.000000', 'en', 'Guyana', 95, 95),
('2020-03-25 21:59:04.076540', '2020-03-25 21:59:04.000000', 'en', 'Haiti', 96, 96),
('2020-03-25 21:59:04.111722', '2020-03-25 21:59:04.000000', 'en', 'Heard Island and McDonald Islands', 97, 97),
('2020-03-25 21:59:04.152306', '2020-03-25 21:59:04.000000', 'en', 'Holy See', 98, 98),
('2020-03-25 21:59:04.198760', '2020-03-25 21:59:04.000000', 'en', 'Honduras', 99, 99),
('2020-03-25 21:59:04.235309', '2020-03-25 21:59:04.000000', 'en', 'Hong Kong', 100, 100),
('2020-03-25 21:59:04.270665', '2020-03-25 21:59:04.000000', 'en', 'Hungary', 101, 101),
('2020-03-25 21:59:04.308584', '2020-03-25 21:59:04.000000', 'en', 'Iceland', 102, 102),
('2020-03-25 21:59:04.360437', '2020-03-25 21:59:04.000000', 'en', 'India', 103, 103),
('2020-03-25 21:59:04.396207', '2020-03-25 21:59:04.000000', 'en', 'Indonesia', 104, 104),
('2020-03-25 21:59:04.447934', '2020-03-25 21:59:04.000000', 'en', 'Iran (Islamic Republic of)', 105, 105),
('2020-03-25 21:59:04.484927', '2020-03-25 21:59:04.000000', 'en', 'Iraq', 106, 106),
('2020-03-25 21:59:04.520458', '2020-03-25 21:59:04.000000', 'en', 'Ireland', 107, 107),
('2020-03-25 21:59:04.559867', '2020-03-25 21:59:04.000000', 'en', 'Isle of Man', 108, 108),
('2020-03-25 21:59:04.596324', '2020-03-25 21:59:04.000000', 'en', 'Israel', 109, 109),
('2020-03-25 21:59:04.631409', '2020-03-25 21:59:04.000000', 'en', 'Italy', 110, 110),
('2020-03-25 21:59:04.668525', '2020-03-25 21:59:04.000000', 'en', 'Jamaica', 111, 111),
('2020-03-25 21:59:04.703711', '2020-03-25 21:59:04.000000', 'en', 'Japan', 112, 112),
('2020-03-25 21:59:04.740687', '2020-03-25 21:59:04.000000', 'en', 'Jersey', 113, 113),
('2020-03-25 21:59:04.774182', '2020-03-25 21:59:04.000000', 'en', 'Jordan', 114, 114),
('2020-03-25 21:59:04.811885', '2020-03-25 21:59:04.000000', 'en', 'Kazakhstan', 115, 115),
('2020-03-25 21:59:04.859891', '2020-03-25 21:59:04.000000', 'en', 'Kenya', 116, 116),
('2020-03-25 21:59:04.907132', '2020-03-25 21:59:04.000000', 'en', 'Kiribati', 117, 117),
('2020-03-25 21:59:04.942382', '2020-03-25 21:59:04.000000', 'en', 'Korea (Democratic People\'s Republic of)', 118, 118),
('2020-03-25 21:59:04.986610', '2020-03-25 21:59:05.000000', 'en', 'Korea (Republic of)', 119, 119),
('2020-03-25 21:59:05.030832', '2020-03-25 21:59:05.000000', 'en', 'Kuwait', 120, 120),
('2020-03-25 21:59:05.069048', '2020-03-25 21:59:05.000000', 'en', 'Kyrgyzstan', 121, 121),
('2020-03-25 21:59:05.103711', '2020-03-25 21:59:05.000000', 'en', 'Lao People\'s Democratic Republic', 122, 122),
('2020-03-25 21:59:05.177878', '2020-03-25 21:59:05.000000', 'en', 'Latvia', 123, 123),
('2020-03-25 21:59:05.223586', '2020-03-25 21:59:05.000000', 'en', 'Lebanon', 124, 124),
('2020-03-25 21:59:05.265947', '2020-03-25 21:59:05.000000', 'en', 'Lesotho', 125, 125),
('2020-03-25 21:59:05.308292', '2020-03-25 21:59:05.000000', 'en', 'Liberia', 126, 126),
('2020-03-25 21:59:05.356558', '2020-03-25 21:59:05.000000', 'en', 'Libya', 127, 127),
('2020-03-25 21:59:05.380125', '2020-03-25 21:59:05.000000', 'en', 'Liechtenstein', 128, 128),
('2020-03-25 21:59:05.403865', '2020-03-25 21:59:05.000000', 'en', 'Lithuania', 129, 129),
('2020-03-25 21:59:05.429509', '2020-03-25 21:59:05.000000', 'en', 'Luxembourg', 130, 130),
('2020-03-25 21:59:05.458818', '2020-03-25 21:59:05.000000', 'en', 'Macao', 131, 131),
('2020-03-25 21:59:05.493848', '2020-03-25 21:59:05.000000', 'en', 'Macedonia (the former Yugoslav Republic of)', 132, 132),
('2020-03-25 21:59:05.515354', '2020-03-25 21:59:05.000000', 'en', 'Madagascar', 133, 133),
('2020-03-25 21:59:05.537661', '2020-03-25 21:59:05.000000', 'en', 'Malawi', 134, 134),
('2020-03-25 21:59:05.562479', '2020-03-25 21:59:05.000000', 'en', 'Malaysia', 135, 135),
('2020-03-25 21:59:05.597121', '2020-03-25 21:59:05.000000', 'en', 'Maldives', 136, 136),
('2020-03-25 21:59:05.648373', '2020-03-25 21:59:05.000000', 'en', 'Mali', 137, 137),
('2020-03-25 21:59:05.684651', '2020-03-25 21:59:05.000000', 'en', 'Malta', 138, 138),
('2020-03-25 21:59:05.721516', '2020-03-25 21:59:05.000000', 'en', 'Marshall Islands', 139, 139),
('2020-03-25 21:59:05.757153', '2020-03-25 21:59:05.000000', 'en', 'Martinique', 140, 140),
('2020-03-25 21:59:05.793210', '2020-03-25 21:59:05.000000', 'en', 'Mauritania', 141, 141),
('2020-03-25 21:59:05.827504', '2020-03-25 21:59:05.000000', 'en', 'Mauritius', 142, 142),
('2020-03-25 21:59:05.865917', '2020-03-25 21:59:05.000000', 'en', 'Mayotte', 143, 143),
('2020-03-25 21:59:05.903029', '2020-03-25 21:59:05.000000', 'en', 'Mexico', 144, 144),
('2020-03-25 21:59:05.938513', '2020-03-25 21:59:05.000000', 'en', 'Micronesia (Federated States of)', 145, 145),
('2020-03-25 21:59:05.974762', '2020-03-25 21:59:05.000000', 'en', 'Moldova (Republic of)', 146, 146),
('2020-03-25 21:59:06.008207', '2020-03-25 21:59:06.000000', 'en', 'Monaco', 147, 147),
('2020-03-25 21:59:06.043525', '2020-03-25 21:59:06.000000', 'en', 'Mongolia', 148, 148),
('2020-03-25 21:59:06.089639', '2020-03-25 21:59:06.000000', 'en', 'Montenegro', 149, 149),
('2020-03-25 21:59:06.126466', '2020-03-25 21:59:06.000000', 'en', 'Montserrat', 150, 150),
('2020-03-25 21:59:06.168952', '2020-03-25 21:59:06.000000', 'en', 'Morocco', 151, 151),
('2020-03-25 21:59:06.210359', '2020-03-25 21:59:06.000000', 'en', 'Mozambique', 152, 152),
('2020-03-25 21:59:06.243318', '2020-03-25 21:59:06.000000', 'en', 'Myanmar', 153, 153),
('2020-03-25 21:59:06.281270', '2020-03-25 21:59:06.000000', 'en', 'Namibia', 154, 154),
('2020-03-25 21:59:06.325438', '2020-03-25 21:59:06.000000', 'en', 'Nauru', 155, 155),
('2020-03-25 21:59:06.383655', '2020-03-25 21:59:06.000000', 'en', 'Nepal', 156, 156),
('2020-03-25 21:59:06.420875', '2020-03-25 21:59:06.000000', 'en', 'Netherlands', 157, 157),
('2020-03-25 21:59:06.462347', '2020-03-25 21:59:06.000000', 'en', 'New Caledonia', 158, 158),
('2020-03-25 21:59:06.499944', '2020-03-25 21:59:06.000000', 'en', 'New Zealand', 159, 159),
('2020-03-25 21:59:06.533900', '2020-03-25 21:59:06.000000', 'en', 'Nicaragua', 160, 160),
('2020-03-25 21:59:06.569496', '2020-03-25 21:59:06.000000', 'en', 'Niger', 161, 161),
('2020-03-25 21:59:06.605062', '2020-03-25 21:59:06.000000', 'en', 'Nigeria', 162, 162),
('2020-03-25 21:59:06.639222', '2020-03-25 21:59:06.000000', 'en', 'Niue', 163, 163),
('2020-03-25 21:59:06.671964', '2020-03-25 21:59:06.000000', 'en', 'Norfolk Island', 164, 164),
('2020-03-25 21:59:06.705579', '2020-03-25 21:59:06.000000', 'en', 'Northern Mariana Islands', 165, 165),
('2020-03-25 21:59:06.739814', '2020-03-25 21:59:06.000000', 'en', 'Norway', 166, 166),
('2020-03-25 21:59:06.783789', '2020-03-25 21:59:06.000000', 'en', 'Oman', 167, 167),
('2020-03-25 21:59:06.818755', '2020-03-25 21:59:06.000000', 'en', 'Pakistan', 168, 168),
('2020-03-25 21:59:06.866379', '2020-03-25 21:59:06.000000', 'en', 'Palau', 169, 169),
('2020-03-25 21:59:06.899485', '2020-03-25 21:59:06.000000', 'en', 'Palestine, State of', 170, 170),
('2020-03-25 21:59:06.932503', '2020-03-25 21:59:06.000000', 'en', 'Panama', 171, 171),
('2020-03-25 21:59:06.971369', '2020-03-25 21:59:06.000000', 'en', 'Papua New Guinea', 172, 172),
('2020-03-25 21:59:07.009604', '2020-03-25 21:59:07.000000', 'en', 'Paraguay', 173, 173),
('2020-03-25 21:59:07.044233', '2020-03-25 21:59:07.000000', 'en', 'Peru', 174, 174),
('2020-03-25 21:59:07.090032', '2020-03-25 21:59:07.000000', 'en', 'Philippines', 175, 175),
('2020-03-25 21:59:07.126540', '2020-03-25 21:59:07.000000', 'en', 'Pitcairn', 176, 176),
('2020-03-25 21:59:07.169376', '2020-03-25 21:59:07.000000', 'en', 'Poland', 177, 177),
('2020-03-25 21:59:07.216107', '2020-03-25 21:59:07.000000', 'en', 'Portugal', 178, 178),
('2020-03-25 21:59:07.248604', '2020-03-25 21:59:07.000000', 'en', 'Puerto Rico', 179, 179),
('2020-03-25 21:59:07.287505', '2020-03-25 21:59:07.000000', 'en', 'Qatar', 180, 180),
('2020-03-25 21:59:07.329237', '2020-03-25 21:59:07.000000', 'en', 'Réunion', 181, 181),
('2020-03-25 21:59:07.381159', '2020-03-25 21:59:07.000000', 'en', 'Romania', 182, 182),
('2020-03-25 21:59:07.420960', '2020-03-25 21:59:07.000000', 'en', 'Russian Federation', 183, 183),
('2020-03-25 21:59:07.460055', '2020-03-25 21:59:07.000000', 'en', 'Rwanda', 184, 184),
('2020-03-25 21:59:07.496698', '2020-03-25 21:59:07.000000', 'en', 'Saint Barthélemy', 185, 185),
('2020-03-25 21:59:07.544751', '2020-03-25 21:59:07.000000', 'en', 'Saint Helena, Ascension and Tristan da Cunha', 186, 186),
('2020-03-25 21:59:07.628825', '2020-03-25 21:59:07.000000', 'en', 'Saint Kitts and Nevis', 187, 187),
('2020-03-25 21:59:07.709356', '2020-03-25 21:59:07.000000', 'en', 'Saint Lucia', 188, 188),
('2020-03-25 21:59:07.786630', '2020-03-25 21:59:07.000000', 'en', 'Saint Martin (French part)', 189, 189),
('2020-03-25 21:59:07.845673', '2020-03-25 21:59:07.000000', 'en', 'Saint Pierre and Miquelon', 190, 190),
('2020-03-25 21:59:07.956205', '2020-03-25 21:59:07.000000', 'en', 'Saint Vincent and the Grenadines', 191, 191),
('2020-03-25 21:59:08.023225', '2020-03-25 21:59:08.000000', 'en', 'Samoa', 192, 192),
('2020-03-25 21:59:08.083967', '2020-03-25 21:59:08.000000', 'en', 'San Marino', 193, 193),
('2020-03-25 21:59:08.155963', '2020-03-25 21:59:08.000000', 'en', 'Sao Tome and Principe', 194, 194),
('2020-03-25 21:59:08.218793', '2020-03-25 21:59:08.000000', 'en', 'Saudi Arabia', 195, 195),
('2020-03-25 21:59:08.272142', '2020-03-25 21:59:08.000000', 'en', 'Senegal', 196, 196),
('2020-03-25 21:59:08.350131', '2020-03-25 21:59:08.000000', 'en', 'Serbia', 197, 197),
('2020-03-25 21:59:08.409899', '2020-03-25 21:59:08.000000', 'en', 'Seychelles', 198, 198),
('2020-03-25 21:59:08.468988', '2020-03-25 21:59:08.000000', 'en', 'Sierra Leone', 199, 199),
('2020-03-25 21:59:08.525842', '2020-03-25 21:59:08.000000', 'en', 'Singapore', 200, 200),
('2020-03-25 21:59:08.558753', '2020-03-25 21:59:08.000000', 'en', 'Sint Maarten (Dutch part)', 201, 201),
('2020-03-25 21:59:08.591395', '2020-03-25 21:59:08.000000', 'en', 'Slovakia', 202, 202),
('2020-03-25 21:59:08.626905', '2020-03-25 21:59:08.000000', 'en', 'Slovenia', 203, 203),
('2020-03-25 21:59:08.674941', '2020-03-25 21:59:08.000000', 'en', 'Solomon Islands', 204, 204),
('2020-03-25 21:59:08.732504', '2020-03-25 21:59:08.000000', 'en', 'Somalia', 205, 205),
('2020-03-25 21:59:08.772370', '2020-03-25 21:59:08.000000', 'en', 'South Africa', 206, 206),
('2020-03-25 21:59:08.819890', '2020-03-25 21:59:08.000000', 'en', 'South Georgia and the South Sandwich Islands', 207, 207),
('2020-03-25 21:59:08.871843', '2020-03-25 21:59:08.000000', 'en', 'South Sudan', 208, 208),
('2020-03-25 21:59:08.928684', '2020-03-25 21:59:08.000000', 'en', 'Spain', 209, 209),
('2020-03-25 21:59:08.966390', '2020-03-25 21:59:08.000000', 'en', 'Sri Lanka', 210, 210),
('2020-03-25 21:59:09.005801', '2020-03-25 21:59:09.000000', 'en', 'Sudan', 211, 211),
('2020-03-25 21:59:09.042873', '2020-03-25 21:59:09.000000', 'en', 'Suriname', 212, 212),
('2020-03-25 21:59:09.083135', '2020-03-25 21:59:09.000000', 'en', 'Svalbard and Jan Mayen', 213, 213),
('2020-03-25 21:59:09.125503', '2020-03-25 21:59:09.000000', 'en', 'Sweden', 214, 214),
('2020-03-25 21:59:09.169209', '2020-03-25 21:59:09.000000', 'en', 'Switzerland', 215, 215),
('2020-03-25 21:59:09.211272', '2020-03-25 21:59:09.000000', 'en', 'Syrian Arab Republic', 216, 216),
('2020-03-25 21:59:09.252542', '2020-03-25 21:59:09.000000', 'en', 'Taiwan, Province of China', 217, 217),
('2020-03-25 21:59:09.289011', '2020-03-25 21:59:09.000000', 'en', 'Tajikistan', 218, 218),
('2020-03-25 21:59:09.332209', '2020-03-25 21:59:09.000000', 'en', 'Tanzania, United Republic of', 219, 219),
('2020-03-25 21:59:09.390656', '2020-03-25 21:59:09.000000', 'en', 'Thailand', 220, 220),
('2020-03-25 21:59:09.437305', '2020-03-25 21:59:09.000000', 'en', 'Timor-Leste', 221, 221),
('2020-03-25 21:59:09.472761', '2020-03-25 21:59:09.000000', 'en', 'Togo', 222, 222),
('2020-03-25 21:59:09.504974', '2020-03-25 21:59:09.000000', 'en', 'Tokelau', 223, 223),
('2020-03-25 21:59:09.539894', '2020-03-25 21:59:09.000000', 'en', 'Tonga', 224, 224),
('2020-03-25 21:59:09.576000', '2020-03-25 21:59:09.000000', 'en', 'Trinidad and Tobago', 225, 225),
('2020-03-25 21:59:09.608443', '2020-03-25 21:59:09.000000', 'en', 'Tunisia', 226, 226),
('2020-03-25 21:59:09.642460', '2020-03-25 21:59:09.000000', 'en', 'Turkey', 227, 227),
('2020-03-25 21:59:09.680416', '2020-03-25 21:59:09.000000', 'en', 'Turkmenistan', 228, 228),
('2020-03-25 21:59:09.718827', '2020-03-25 21:59:09.000000', 'en', 'Turks and Caicos Islands', 229, 229),
('2020-03-25 21:59:09.754915', '2020-03-25 21:59:09.000000', 'en', 'Tuvalu', 230, 230),
('2020-03-25 21:59:09.790125', '2020-03-25 21:59:09.000000', 'en', 'Uganda', 231, 231),
('2020-03-25 21:59:09.825210', '2020-03-25 21:59:09.000000', 'en', 'Ukraine', 232, 232),
('2020-03-25 21:59:09.860540', '2020-03-25 21:59:09.000000', 'en', 'United Arab Emirates', 233, 233),
('2020-03-25 21:59:09.898107', '2020-03-25 21:59:09.000000', 'en', 'United Kingdom', 234, 234),
('2020-03-25 21:59:09.930741', '2020-03-25 21:59:09.000000', 'en', 'United States of America', 235, 235),
('2020-03-25 21:59:09.966016', '2020-03-25 21:59:09.000000', 'en', 'United States Minor Outlying Islands', 236, 236),
('2020-03-25 21:59:09.999321', '2020-03-25 21:59:10.000000', 'en', 'Uruguay', 237, 237),
('2020-03-25 21:59:10.033399', '2020-03-25 21:59:10.000000', 'en', 'Uzbekistan', 238, 238),
('2020-03-25 21:59:10.069232', '2020-03-25 21:59:10.000000', 'en', 'Vanuatu', 239, 239),
('2020-03-25 21:59:10.103786', '2020-03-25 21:59:10.000000', 'en', 'Venezuela (Bolivarian Republic of)', 240, 240),
('2020-03-25 21:59:10.137898', '2020-03-25 21:59:10.000000', 'en', 'Viet Nam', 241, 241),
('2020-03-25 21:59:10.185190', '2020-03-25 21:59:10.000000', 'en', 'Virgin Islands (British)', 242, 242),
('2020-03-25 21:59:10.224087', '2020-03-25 21:59:10.000000', 'en', 'Virgin Islands (U.S.)', 243, 243),
('2020-03-25 21:59:10.264663', '2020-03-25 21:59:10.000000', 'en', 'Wallis and Futuna', 244, 244),
('2020-03-25 21:59:10.298123', '2020-03-25 21:59:10.000000', 'en', 'Western Sahara', 245, 245),
('2020-03-25 21:59:10.338294', '2020-03-25 21:59:10.000000', 'en', 'Yemen', 246, 246),
('2020-03-25 21:59:10.379547', '2020-03-25 21:59:10.000000', 'en', 'Zambia', 247, 247),
('2020-03-25 21:59:10.418392', '2020-03-25 21:59:10.000000', 'en', 'Zimbabwe', 248, 248);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`createdAt`, `updatedAt`, `deletedAt`, `title`, `firstName`, `lastName`, `phoneNumber`, `emailAddress`, `id`, `userId`) VALUES
('2020-03-25 21:59:29.844732', '2020-03-25 21:59:29.844732', NULL, NULL, 'Hayden', 'Zieme', '029 1203 1336', 'hayden.zieme12@hotmail.com', 1, 2),
('2020-03-25 21:59:30.461071', '2020-03-25 21:59:30.461071', NULL, NULL, 'Trevor', 'Donnelly', '01306 58888', 'trevor_donnelly96@hotmail.com', 2, 3),
('2020-03-25 21:59:31.046379', '2020-03-25 21:59:31.046379', NULL, NULL, 'Marques', 'Sawayn', '017696 72247', 'marques.sawayn@hotmail.com', 3, 4),
('2020-03-25 21:59:31.750697', '2020-03-25 21:59:31.750697', NULL, NULL, 'Eliezer', 'Kulas', '0800 619 5262', 'eliezer56@yahoo.com', 4, 5),
('2020-03-25 21:59:32.351948', '2020-03-25 21:59:32.351948', NULL, NULL, 'Stewart', 'Lindgren', '0500 833516', 'stewart.lindgren@gmail.com', 5, 6),
('2020-03-25 21:59:32.951190', '2020-03-25 21:59:32.951190', NULL, NULL, 'Hilario', 'Thompson', '056 6017 9043', 'hilario66@hotmail.com', 6, 7),
('2020-03-25 21:59:33.522530', '2020-03-25 21:59:33.522530', NULL, NULL, 'Florence', 'Kovacek', '012986 59014', 'florence_kovacek46@hotmail.com', 7, 8),
('2020-03-25 21:59:34.128513', '2020-03-25 21:59:34.128513', NULL, NULL, 'Alec', 'Breitenberg', '01825 259821', 'alec.breitenberg@gmail.com', 8, 9),
('2020-03-25 21:59:34.716407', '2020-03-25 21:59:34.716407', NULL, NULL, 'Hettie', 'Luettgen', '011190 91726', 'hettie36@yahoo.com', 9, 10),
('2020-03-25 21:59:35.291379', '2020-03-25 21:59:35.291379', NULL, NULL, 'Cleta', 'Wehner', '018722 42698', 'cleta_wehner@yahoo.com', 10, 11);

-- --------------------------------------------------------

--
-- Table structure for table `customer_group`
--

CREATE TABLE `customer_group` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer_groups_customer_group`
--

CREATE TABLE `customer_groups_customer_group` (
  `customerId` int(11) NOT NULL,
  `customerGroupId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `facet`
--

CREATE TABLE `facet` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `isPrivate` tinyint(4) NOT NULL DEFAULT 0,
  `code` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facet`
--

INSERT INTO `facet` (`createdAt`, `updatedAt`, `isPrivate`, `code`, `id`) VALUES
('2020-03-25 21:59:12.465196', '2020-03-25 21:59:12.465196', 0, 'category', 1),
('2020-03-25 21:59:12.613491', '2020-03-25 21:59:12.613491', 0, 'brand', 2),
('2020-03-25 21:59:19.692210', '2020-03-25 21:59:19.692210', 0, 'color', 3),
('2020-03-25 21:59:22.838768', '2020-03-25 21:59:22.838768', 0, 'plant-type', 4);

-- --------------------------------------------------------

--
-- Table structure for table `facet_translation`
--

CREATE TABLE `facet_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facet_translation`
--

INSERT INTO `facet_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `id`, `baseId`) VALUES
('2020-03-25 21:59:12.455898', '2020-03-25 21:59:12.000000', 'en', 'category', 1, 1),
('2020-03-25 21:59:12.599585', '2020-03-25 21:59:12.000000', 'en', 'brand', 2, 2),
('2020-03-25 21:59:19.659199', '2020-03-25 21:59:19.000000', 'en', 'color', 3, 3),
('2020-03-25 21:59:22.828483', '2020-03-25 21:59:22.000000', 'en', 'plant type', 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `facet_value`
--

CREATE TABLE `facet_value` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `code` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `facetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facet_value`
--

INSERT INTO `facet_value` (`createdAt`, `updatedAt`, `code`, `id`, `facetId`) VALUES
('2020-03-25 21:59:12.503798', '2020-03-25 21:59:12.503798', 'electronics', 1, 1),
('2020-03-25 21:59:12.554739', '2020-03-25 21:59:12.554739', 'computers', 2, 1),
('2020-03-25 21:59:12.676802', '2020-03-25 21:59:12.676802', 'apple', 3, 2),
('2020-03-25 21:59:13.781469', '2020-03-25 21:59:13.781469', 'logitech', 4, 2),
('2020-03-25 21:59:13.987838', '2020-03-25 21:59:13.987838', 'samsung', 5, 2),
('2020-03-25 21:59:14.544810', '2020-03-25 21:59:14.544810', 'corsair', 6, 2),
('2020-03-25 21:59:14.953585', '2020-03-25 21:59:14.953585', 'admi', 7, 2),
('2020-03-25 21:59:15.506191', '2020-03-25 21:59:15.506191', 'seagate', 8, 2),
('2020-03-25 21:59:16.580707', '2020-03-25 21:59:16.580707', 'photo', 9, 1),
('2020-03-25 21:59:16.641576', '2020-03-25 21:59:16.641576', 'polaroid', 10, 2),
('2020-03-25 21:59:16.825991', '2020-03-25 21:59:16.825991', 'nikkon', 11, 2),
('2020-03-25 21:59:17.023357', '2020-03-25 21:59:17.023357', 'agfa', 12, 2),
('2020-03-25 21:59:17.199046', '2020-03-25 21:59:17.199046', 'manfrotto', 13, 2),
('2020-03-25 21:59:17.376566', '2020-03-25 21:59:17.376566', 'kodak', 14, 2),
('2020-03-25 21:59:17.550077', '2020-03-25 21:59:17.550077', 'sony', 15, 2),
('2020-03-25 21:59:17.927984', '2020-03-25 21:59:17.927984', 'rolleiflex', 16, 2),
('2020-03-25 21:59:18.107955', '2020-03-25 21:59:18.107955', 'sports-outdoor', 17, 1),
('2020-03-25 21:59:18.147226', '2020-03-25 21:59:18.147226', 'equipment', 18, 1),
('2020-03-25 21:59:18.194037', '2020-03-25 21:59:18.194037', 'pinarello', 19, 2),
('2020-03-25 21:59:18.383001', '2020-03-25 21:59:18.383001', 'everlast', 20, 2),
('2020-03-25 21:59:19.044977', '2020-03-25 21:59:19.044977', 'nike', 21, 2),
('2020-03-25 21:59:19.243327', '2020-03-25 21:59:19.243327', 'wilson', 22, 2),
('2020-03-25 21:59:19.518212', '2020-03-25 21:59:19.518212', 'footwear', 23, 1),
('2020-03-25 21:59:19.595301', '2020-03-25 21:59:19.595301', 'adidas', 24, 2),
('2020-03-25 21:59:19.752860', '2020-03-25 21:59:19.752860', 'blue', 25, 3),
('2020-03-25 21:59:19.812213', '2020-03-25 21:59:19.812213', 'pink', 26, 3),
('2020-03-25 21:59:20.351384', '2020-03-25 21:59:20.351384', 'black', 27, 3),
('2020-03-25 21:59:20.861880', '2020-03-25 21:59:20.861880', 'white', 28, 3),
('2020-03-25 21:59:22.317014', '2020-03-25 21:59:22.317014', 'converse', 29, 2),
('2020-03-25 21:59:22.755644', '2020-03-25 21:59:22.755644', 'home-garden', 30, 1),
('2020-03-25 21:59:22.795528', '2020-03-25 21:59:22.795528', 'plants', 31, 1),
('2020-03-25 21:59:22.878266', '2020-03-25 21:59:22.878266', 'indoor', 32, 4),
('2020-03-25 21:59:23.046313', '2020-03-25 21:59:23.046313', 'outdoor', 33, 4),
('2020-03-25 21:59:24.055819', '2020-03-25 21:59:24.055819', 'furniture', 34, 1),
('2020-03-25 21:59:24.097363', '2020-03-25 21:59:24.097363', 'gray', 35, 3),
('2020-03-25 21:59:24.599882', '2020-03-25 21:59:24.599882', 'brown', 36, 3),
('2020-03-25 21:59:24.877223', '2020-03-25 21:59:24.877223', 'wood', 37, 3),
('2020-03-25 21:59:25.710932', '2020-03-25 21:59:25.710932', 'yellow', 38, 3),
('2020-03-25 21:59:25.806101', '2020-03-25 21:59:25.806101', 'green', 39, 3);

-- --------------------------------------------------------

--
-- Table structure for table `facet_value_translation`
--

CREATE TABLE `facet_value_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facet_value_translation`
--

INSERT INTO `facet_value_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `id`, `baseId`) VALUES
('2020-03-25 21:59:12.489419', '2020-03-25 21:59:12.000000', 'en', 'Electronics', 1, 1),
('2020-03-25 21:59:12.543269', '2020-03-25 21:59:12.000000', 'en', 'Computers', 2, 2),
('2020-03-25 21:59:12.664300', '2020-03-25 21:59:12.000000', 'en', 'Apple', 3, 3),
('2020-03-25 21:59:13.769807', '2020-03-25 21:59:13.000000', 'en', 'Logitech', 4, 4),
('2020-03-25 21:59:13.971006', '2020-03-25 21:59:13.000000', 'en', 'Samsung', 5, 5),
('2020-03-25 21:59:14.531417', '2020-03-25 21:59:14.000000', 'en', 'Corsair', 6, 6),
('2020-03-25 21:59:14.926206', '2020-03-25 21:59:14.000000', 'en', 'ADMI', 7, 7),
('2020-03-25 21:59:15.489488', '2020-03-25 21:59:15.000000', 'en', 'Seagate', 8, 8),
('2020-03-25 21:59:16.560776', '2020-03-25 21:59:16.000000', 'en', 'Photo', 9, 9),
('2020-03-25 21:59:16.626760', '2020-03-25 21:59:16.000000', 'en', 'Polaroid', 10, 10),
('2020-03-25 21:59:16.808770', '2020-03-25 21:59:16.000000', 'en', 'Nikkon', 11, 11),
('2020-03-25 21:59:17.008810', '2020-03-25 21:59:17.000000', 'en', 'Agfa', 12, 12),
('2020-03-25 21:59:17.184358', '2020-03-25 21:59:17.000000', 'en', 'Manfrotto', 13, 13),
('2020-03-25 21:59:17.360144', '2020-03-25 21:59:17.000000', 'en', 'Kodak', 14, 14),
('2020-03-25 21:59:17.538384', '2020-03-25 21:59:17.000000', 'en', 'Sony', 15, 15),
('2020-03-25 21:59:17.916489', '2020-03-25 21:59:17.000000', 'en', 'Rolleiflex', 16, 16),
('2020-03-25 21:59:18.095302', '2020-03-25 21:59:18.000000', 'en', 'Sports & Outdoor', 17, 17),
('2020-03-25 21:59:18.134226', '2020-03-25 21:59:18.000000', 'en', 'Equipment', 18, 18),
('2020-03-25 21:59:18.180792', '2020-03-25 21:59:18.000000', 'en', 'Pinarello', 19, 19),
('2020-03-25 21:59:18.363490', '2020-03-25 21:59:18.000000', 'en', 'Everlast', 20, 20),
('2020-03-25 21:59:19.031532', '2020-03-25 21:59:19.000000', 'en', 'Nike', 21, 21),
('2020-03-25 21:59:19.233444', '2020-03-25 21:59:19.000000', 'en', 'Wilson', 22, 22),
('2020-03-25 21:59:19.506578', '2020-03-25 21:59:19.000000', 'en', 'Footwear', 23, 23),
('2020-03-25 21:59:19.578090', '2020-03-25 21:59:19.000000', 'en', 'Adidas', 24, 24),
('2020-03-25 21:59:19.737058', '2020-03-25 21:59:19.000000', 'en', 'blue', 25, 25),
('2020-03-25 21:59:19.792912', '2020-03-25 21:59:19.000000', 'en', 'pink', 26, 26),
('2020-03-25 21:59:20.336054', '2020-03-25 21:59:20.000000', 'en', 'black', 27, 27),
('2020-03-25 21:59:20.849970', '2020-03-25 21:59:20.000000', 'en', 'white', 28, 28),
('2020-03-25 21:59:22.305046', '2020-03-25 21:59:22.000000', 'en', 'Converse', 29, 29),
('2020-03-25 21:59:22.743711', '2020-03-25 21:59:22.000000', 'en', 'Home & Garden', 30, 30),
('2020-03-25 21:59:22.784467', '2020-03-25 21:59:22.000000', 'en', 'Plants', 31, 31),
('2020-03-25 21:59:22.866900', '2020-03-25 21:59:22.000000', 'en', 'Indoor', 32, 32),
('2020-03-25 21:59:23.017930', '2020-03-25 21:59:23.000000', 'en', 'Outdoor', 33, 33),
('2020-03-25 21:59:24.030607', '2020-03-25 21:59:24.000000', 'en', 'Furniture', 34, 34),
('2020-03-25 21:59:24.084816', '2020-03-25 21:59:24.000000', 'en', 'gray', 35, 35),
('2020-03-25 21:59:24.588118', '2020-03-25 21:59:24.000000', 'en', 'brown', 36, 36),
('2020-03-25 21:59:24.865300', '2020-03-25 21:59:24.000000', 'en', 'wood', 37, 37),
('2020-03-25 21:59:25.698880', '2020-03-25 21:59:25.000000', 'en', 'yellow', 38, 38),
('2020-03-25 21:59:25.794307', '2020-03-25 21:59:25.000000', 'en', 'green', 39, 39);

-- --------------------------------------------------------

--
-- Table structure for table `fulfillment`
--

CREATE TABLE `fulfillment` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `trackingCode` varchar(255) NOT NULL DEFAULT '',
  `method` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `global_settings`
--

CREATE TABLE `global_settings` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `availableLanguages` text NOT NULL,
  `trackInventory` tinyint(4) NOT NULL DEFAULT 0,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `global_settings`
--

INSERT INTO `global_settings` (`createdAt`, `updatedAt`, `availableLanguages`, `trackInventory`, `id`) VALUES
('2020-03-25 21:58:58.926769', '2020-03-25 21:58:58.926769', 'en', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `history_entry`
--

CREATE TABLE `history_entry` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `type` varchar(255) NOT NULL,
  `isPublic` tinyint(4) NOT NULL,
  `data` text NOT NULL,
  `id` int(11) NOT NULL,
  `discriminator` varchar(255) NOT NULL,
  `administratorId` int(11) DEFAULT NULL,
  `orderId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `code` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `orderPlacedAt` datetime DEFAULT NULL,
  `couponCodes` text NOT NULL,
  `pendingAdjustments` text NOT NULL,
  `shippingAddress` text NOT NULL,
  `billingAddress` text NOT NULL,
  `currencyCode` varchar(255) NOT NULL,
  `subTotalBeforeTax` int(11) NOT NULL,
  `subTotal` int(11) NOT NULL,
  `shipping` int(11) NOT NULL DEFAULT 0,
  `shippingWithTax` int(11) NOT NULL DEFAULT 0,
  `id` int(11) NOT NULL,
  `shippingMethodId` int(11) DEFAULT NULL,
  `taxZoneId` int(11) DEFAULT NULL,
  `customerId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`createdAt`, `updatedAt`, `code`, `state`, `active`, `orderPlacedAt`, `couponCodes`, `pendingAdjustments`, `shippingAddress`, `billingAddress`, `currencyCode`, `subTotalBeforeTax`, `subTotal`, `shipping`, `shippingWithTax`, `id`, `shippingMethodId`, `taxZoneId`, `customerId`) VALUES
('2020-03-25 22:02:55.818667', '2020-03-25 22:02:56.000000', 'R7JGMELZCMC8AMGC', 'AddingItems', 1, NULL, '', '[]', '{}', '{}', 'USD', 1400, 1680, 0, 0, 1, NULL, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `unitPrice` int(11) NOT NULL,
  `unitPriceIncludesTax` tinyint(4) NOT NULL,
  `taxRate` decimal(5,2) NOT NULL,
  `pendingAdjustments` text NOT NULL,
  `cancelled` tinyint(4) NOT NULL DEFAULT 0,
  `id` int(11) NOT NULL,
  `fulfillmentId` int(11) DEFAULT NULL,
  `refundId` int(11) DEFAULT NULL,
  `lineId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`createdAt`, `updatedAt`, `unitPrice`, `unitPriceIncludesTax`, `taxRate`, `pendingAdjustments`, `cancelled`, `id`, `fulfillmentId`, `refundId`, `lineId`) VALUES
('2020-03-25 22:02:56.159480', '2020-03-25 22:02:56.000000', 1400, 0, '20.00', '[{\"type\":\"TAX\",\"adjustmentSource\":\"TAX:2\",\"description\":\"Standard Tax Europe\",\"amount\":280}]', 0, 1, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_line`
--

CREATE TABLE `order_line` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `id` int(11) NOT NULL,
  `productVariantId` int(11) DEFAULT NULL,
  `taxCategoryId` int(11) DEFAULT NULL,
  `featuredAssetId` int(11) DEFAULT NULL,
  `orderId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_line`
--

INSERT INTO `order_line` (`createdAt`, `updatedAt`, `id`, `productVariantId`, `taxCategoryId`, `featuredAssetId`, `orderId`) VALUES
('2020-03-25 22:02:56.072703', '2020-03-25 22:02:56.000000', 1, 84, 1, 52, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_promotions_promotion`
--

CREATE TABLE `order_promotions_promotion` (
  `orderId` int(11) NOT NULL,
  `promotionId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `method` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `state` varchar(255) NOT NULL,
  `errorMessage` varchar(255) DEFAULT NULL,
  `transactionId` varchar(255) DEFAULT NULL,
  `metadata` text NOT NULL,
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `code` varchar(255) NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `configArgs` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`createdAt`, `updatedAt`, `code`, `enabled`, `configArgs`, `id`) VALUES
('2020-03-25 21:58:59.610653', '2020-03-25 21:58:59.610653', 'example-payment-provider', 1, '[{\"name\":\"automaticCapture\",\"type\":\"boolean\",\"value\":\"false\"},{\"name\":\"apiKey\",\"type\":\"string\",\"value\":\"\"}]', 1),
('2020-03-25 22:16:04.983264', '2020-03-25 22:16:04.983264', 'braintree', 1, '[{\"name\":\"merchantId\",\"type\":\"string\",\"value\":\"\"},{\"name\":\"publicKey\",\"type\":\"string\",\"value\":\"\"},{\"name\":\"privateKey\",\"type\":\"string\",\"value\":\"\"}]', 2);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 1,
  `id` int(11) NOT NULL,
  `featuredAssetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`createdAt`, `updatedAt`, `deletedAt`, `enabled`, `id`, `featuredAssetId`) VALUES
('2020-03-25 21:59:12.724759', '2020-03-25 21:59:12.724759', NULL, 1, 1, 1),
('2020-03-25 21:59:13.360328', '2020-03-25 21:59:13.360328', NULL, 1, 2, 2),
('2020-03-25 21:59:13.835491', '2020-03-25 21:59:13.835491', NULL, 1, 3, 3),
('2020-03-25 21:59:14.044429', '2020-03-25 21:59:14.044429', NULL, 1, 4, 4),
('2020-03-25 21:59:14.194774', '2020-03-25 21:59:14.194774', NULL, 1, 5, 5),
('2020-03-25 21:59:14.586204', '2020-03-25 21:59:14.586204', NULL, 1, 6, 6),
('2020-03-25 21:59:14.997186', '2020-03-25 21:59:14.997186', NULL, 1, 7, 7),
('2020-03-25 21:59:15.554260', '2020-03-25 21:59:15.554260', NULL, 1, 8, 8),
('2020-03-25 21:59:16.104541', '2020-03-25 21:59:16.104541', NULL, 1, 9, 9),
('2020-03-25 21:59:16.237517', '2020-03-25 21:59:16.237517', NULL, 1, 10, 10),
('2020-03-25 21:59:16.396237', '2020-03-25 21:59:16.396237', NULL, 1, 11, 11),
('2020-03-25 21:59:16.685286', '2020-03-25 21:59:16.685286', NULL, 1, 12, 12),
('2020-03-25 21:59:16.870535', '2020-03-25 21:59:16.870535', NULL, 1, 13, 13),
('2020-03-25 21:59:17.066224', '2020-03-25 21:59:17.066224', NULL, 1, 14, 14),
('2020-03-25 21:59:17.241476', '2020-03-25 21:59:17.241476', NULL, 1, 15, 15),
('2020-03-25 21:59:17.422931', '2020-03-25 21:59:17.422931', NULL, 1, 16, 16),
('2020-03-25 21:59:17.588354', '2020-03-25 21:59:17.588354', NULL, 1, 17, 17),
('2020-03-25 21:59:17.711315', '2020-03-25 21:59:17.711315', NULL, 1, 18, 18),
('2020-03-25 21:59:17.818600', '2020-03-25 21:59:17.818600', NULL, 1, 19, 19),
('2020-03-25 21:59:17.988739', '2020-03-25 21:59:17.988739', NULL, 1, 20, 20),
('2020-03-25 21:59:18.234569', '2020-03-25 21:59:18.234569', NULL, 1, 21, 21),
('2020-03-25 21:59:18.450808', '2020-03-25 21:59:18.450808', NULL, 1, 22, 22),
('2020-03-25 21:59:18.610359', '2020-03-25 21:59:18.610359', NULL, 1, 23, 23),
('2020-03-25 21:59:18.755564', '2020-03-25 21:59:18.755564', NULL, 1, 24, 24),
('2020-03-25 21:59:18.881737', '2020-03-25 21:59:18.881737', NULL, 1, 25, 25),
('2020-03-25 21:59:19.099034', '2020-03-25 21:59:19.099034', NULL, 1, 26, 26),
('2020-03-25 21:59:19.286289', '2020-03-25 21:59:19.286289', NULL, 1, 27, 27),
('2020-03-25 21:59:19.411149', '2020-03-25 21:59:19.411149', NULL, 1, 28, 28),
('2020-03-25 21:59:19.864690', '2020-03-25 21:59:19.864690', NULL, 1, 29, 29),
('2020-03-25 21:59:20.413385', '2020-03-25 21:59:20.413385', NULL, 1, 30, 30),
('2020-03-25 21:59:20.898210', '2020-03-25 21:59:20.898210', NULL, 1, 31, 31),
('2020-03-25 21:59:21.349320', '2020-03-25 21:59:21.349320', NULL, 1, 32, 32),
('2020-03-25 21:59:21.861698', '2020-03-25 21:59:21.861698', NULL, 1, 33, 33),
('2020-03-25 21:59:22.364539', '2020-03-25 21:59:22.364539', NULL, 1, 34, 34),
('2020-03-25 21:59:22.913943', '2020-03-25 21:59:22.913943', NULL, 1, 35, 35),
('2020-03-25 21:59:23.097849', '2020-03-25 21:59:23.097849', NULL, 1, 36, 36),
('2020-03-25 21:59:23.236886', '2020-03-25 21:59:23.236886', NULL, 1, 37, 37),
('2020-03-25 21:59:23.327295', '2020-03-25 21:59:23.327295', NULL, 1, 38, 38),
('2020-03-25 21:59:23.479329', '2020-03-25 21:59:23.479329', NULL, 1, 39, 39),
('2020-03-25 21:59:23.634397', '2020-03-25 21:59:23.634397', NULL, 1, 40, 40),
('2020-03-25 21:59:23.761632', '2020-03-25 21:59:23.761632', NULL, 1, 41, 41),
('2020-03-25 21:59:23.903906', '2020-03-25 21:59:23.903906', NULL, 1, 42, 42),
('2020-03-25 21:59:24.139636', '2020-03-25 21:59:24.139636', NULL, 1, 43, 43),
('2020-03-25 21:59:24.273731', '2020-03-25 21:59:24.273731', NULL, 1, 44, 44),
('2020-03-25 21:59:24.387746', '2020-03-25 21:59:24.387746', NULL, 1, 45, 45),
('2020-03-25 21:59:24.485353', '2020-03-25 21:59:24.485353', NULL, 1, 46, 46),
('2020-03-25 21:59:24.633996', '2020-03-25 21:59:24.633996', NULL, 1, 47, 47),
('2020-03-25 21:59:24.747647', '2020-03-25 21:59:24.747647', NULL, 1, 48, 48),
('2020-03-25 21:59:24.917194', '2020-03-25 21:59:24.917194', NULL, 1, 49, 49),
('2020-03-25 21:59:25.029051', '2020-03-25 21:59:25.029051', NULL, 1, 50, 50),
('2020-03-25 21:59:25.199679', '2020-03-25 21:59:25.199679', NULL, 1, 51, 51),
('2020-03-25 21:59:25.302800', '2020-03-25 21:59:25.302800', NULL, 1, 52, 52),
('2020-03-25 21:59:25.384876', '2020-03-25 21:59:25.384876', NULL, 1, 53, 53),
('2020-03-25 21:59:25.525940', '2020-03-25 21:59:25.525940', NULL, 1, 54, 54);

-- --------------------------------------------------------

--
-- Table structure for table `product_asset`
--

CREATE TABLE `product_asset` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `assetId` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_asset`
--

INSERT INTO `product_asset` (`createdAt`, `updatedAt`, `assetId`, `position`, `productId`, `id`) VALUES
('2020-03-25 21:59:12.752238', '2020-03-25 21:59:12.752238', 1, 0, 1, 1),
('2020-03-25 21:59:13.431570', '2020-03-25 21:59:13.431570', 2, 0, 2, 2),
('2020-03-25 21:59:13.855925', '2020-03-25 21:59:13.855925', 3, 0, 3, 3),
('2020-03-25 21:59:14.064694', '2020-03-25 21:59:14.064694', 4, 0, 4, 4),
('2020-03-25 21:59:14.218212', '2020-03-25 21:59:14.218212', 5, 0, 5, 5),
('2020-03-25 21:59:14.605084', '2020-03-25 21:59:14.605084', 6, 0, 6, 6),
('2020-03-25 21:59:15.014628', '2020-03-25 21:59:15.014628', 7, 0, 7, 7),
('2020-03-25 21:59:15.578663', '2020-03-25 21:59:15.578663', 8, 0, 8, 8),
('2020-03-25 21:59:16.125111', '2020-03-25 21:59:16.125111', 9, 0, 9, 9),
('2020-03-25 21:59:16.257851', '2020-03-25 21:59:16.257851', 10, 0, 10, 10),
('2020-03-25 21:59:16.432910', '2020-03-25 21:59:16.432910', 11, 0, 11, 11),
('2020-03-25 21:59:16.706783', '2020-03-25 21:59:16.706783', 12, 0, 12, 12),
('2020-03-25 21:59:16.890957', '2020-03-25 21:59:16.890957', 13, 0, 13, 13),
('2020-03-25 21:59:17.086265', '2020-03-25 21:59:17.086265', 14, 0, 14, 14),
('2020-03-25 21:59:17.262991', '2020-03-25 21:59:17.262991', 15, 0, 15, 15),
('2020-03-25 21:59:17.441860', '2020-03-25 21:59:17.441860', 16, 0, 16, 16),
('2020-03-25 21:59:17.611340', '2020-03-25 21:59:17.611340', 17, 0, 17, 17),
('2020-03-25 21:59:17.730205', '2020-03-25 21:59:17.730205', 18, 0, 18, 18),
('2020-03-25 21:59:17.837279', '2020-03-25 21:59:17.837279', 19, 0, 19, 19),
('2020-03-25 21:59:18.010013', '2020-03-25 21:59:18.010013', 20, 0, 20, 20),
('2020-03-25 21:59:18.255456', '2020-03-25 21:59:18.255456', 21, 0, 21, 21),
('2020-03-25 21:59:18.496331', '2020-03-25 21:59:18.496331', 22, 0, 22, 22),
('2020-03-25 21:59:18.635753', '2020-03-25 21:59:18.635753', 23, 0, 23, 23),
('2020-03-25 21:59:18.776079', '2020-03-25 21:59:18.776079', 24, 0, 24, 24),
('2020-03-25 21:59:18.905624', '2020-03-25 21:59:18.905624', 25, 0, 25, 25),
('2020-03-25 21:59:19.120270', '2020-03-25 21:59:19.120270', 26, 0, 26, 26),
('2020-03-25 21:59:19.308648', '2020-03-25 21:59:19.308648', 27, 0, 27, 27),
('2020-03-25 21:59:19.430949', '2020-03-25 21:59:19.430949', 28, 0, 28, 28),
('2020-03-25 21:59:19.886350', '2020-03-25 21:59:19.886350', 29, 0, 29, 29),
('2020-03-25 21:59:20.433064', '2020-03-25 21:59:20.433064', 30, 0, 30, 30),
('2020-03-25 21:59:20.914167', '2020-03-25 21:59:20.914167', 31, 0, 31, 31),
('2020-03-25 21:59:21.364581', '2020-03-25 21:59:21.364581', 32, 0, 32, 32),
('2020-03-25 21:59:21.883462', '2020-03-25 21:59:21.883462', 33, 0, 33, 33),
('2020-03-25 21:59:22.382576', '2020-03-25 21:59:22.382576', 34, 0, 34, 34),
('2020-03-25 21:59:22.930992', '2020-03-25 21:59:22.930992', 35, 0, 35, 35),
('2020-03-25 21:59:23.120205', '2020-03-25 21:59:23.120205', 36, 0, 36, 36),
('2020-03-25 21:59:23.256912', '2020-03-25 21:59:23.256912', 37, 0, 37, 37),
('2020-03-25 21:59:23.340065', '2020-03-25 21:59:23.340065', 38, 0, 38, 38),
('2020-03-25 21:59:23.504846', '2020-03-25 21:59:23.504846', 39, 0, 39, 39),
('2020-03-25 21:59:23.653513', '2020-03-25 21:59:23.653513', 40, 0, 40, 40),
('2020-03-25 21:59:23.786012', '2020-03-25 21:59:23.786012', 41, 0, 41, 41),
('2020-03-25 21:59:23.930739', '2020-03-25 21:59:23.930739', 42, 0, 42, 42),
('2020-03-25 21:59:24.160618', '2020-03-25 21:59:24.160618', 43, 0, 43, 43),
('2020-03-25 21:59:24.298339', '2020-03-25 21:59:24.298339', 44, 0, 44, 44),
('2020-03-25 21:59:24.406069', '2020-03-25 21:59:24.406069', 45, 0, 45, 45),
('2020-03-25 21:59:24.499308', '2020-03-25 21:59:24.499308', 46, 0, 46, 46),
('2020-03-25 21:59:24.649733', '2020-03-25 21:59:24.649733', 47, 0, 47, 47),
('2020-03-25 21:59:24.764363', '2020-03-25 21:59:24.764363', 48, 0, 48, 48),
('2020-03-25 21:59:24.933138', '2020-03-25 21:59:24.933138', 49, 0, 49, 49),
('2020-03-25 21:59:25.075309', '2020-03-25 21:59:25.075309', 50, 0, 50, 50),
('2020-03-25 21:59:25.222491', '2020-03-25 21:59:25.222491', 51, 0, 51, 51),
('2020-03-25 21:59:25.313405', '2020-03-25 21:59:25.313405', 52, 0, 52, 52),
('2020-03-25 21:59:25.406017', '2020-03-25 21:59:25.406017', 53, 0, 53, 53),
('2020-03-25 21:59:25.556061', '2020-03-25 21:59:25.556061', 54, 0, 54, 54);

-- --------------------------------------------------------

--
-- Table structure for table `product_channels_channel`
--

CREATE TABLE `product_channels_channel` (
  `productId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_channels_channel`
--

INSERT INTO `product_channels_channel` (`productId`, `channelId`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_facet_values_facet_value`
--

CREATE TABLE `product_facet_values_facet_value` (
  `productId` int(11) NOT NULL,
  `facetValueId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_facet_values_facet_value`
--

INSERT INTO `product_facet_values_facet_value` (`productId`, `facetValueId`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 4),
(4, 1),
(4, 2),
(4, 5),
(5, 1),
(5, 2),
(5, 5),
(6, 1),
(6, 2),
(6, 6),
(7, 1),
(7, 2),
(7, 7),
(8, 1),
(8, 2),
(8, 8),
(9, 1),
(9, 2),
(9, 6),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 9),
(12, 10),
(13, 1),
(13, 9),
(13, 11),
(14, 1),
(14, 9),
(14, 12),
(15, 1),
(15, 9),
(15, 13),
(16, 1),
(16, 9),
(16, 14),
(17, 1),
(17, 9),
(17, 15),
(18, 1),
(18, 9),
(18, 11),
(19, 1),
(19, 9),
(20, 1),
(20, 9),
(20, 16),
(21, 17),
(21, 18),
(21, 19),
(22, 17),
(22, 18),
(22, 20),
(23, 17),
(23, 18),
(23, 20),
(24, 17),
(24, 18),
(25, 17),
(25, 18),
(26, 17),
(26, 18),
(26, 21),
(27, 17),
(27, 18),
(27, 22),
(28, 17),
(28, 18),
(28, 22),
(29, 17),
(29, 23),
(29, 24),
(29, 25),
(29, 26),
(30, 17),
(30, 21),
(30, 23),
(30, 27),
(31, 17),
(31, 21),
(31, 23),
(31, 28),
(32, 17),
(32, 23),
(32, 24),
(32, 27),
(32, 28),
(33, 17),
(33, 23),
(33, 24),
(33, 27),
(34, 17),
(34, 23),
(34, 27),
(34, 29),
(35, 30),
(35, 31),
(35, 32),
(36, 30),
(36, 31),
(36, 32),
(36, 33),
(37, 30),
(37, 31),
(37, 33),
(38, 30),
(38, 31),
(38, 32),
(39, 30),
(39, 31),
(39, 33),
(40, 30),
(40, 31),
(40, 32),
(41, 30),
(41, 31),
(42, 30),
(42, 31),
(43, 30),
(43, 34),
(43, 35),
(44, 30),
(44, 31),
(45, 30),
(45, 34),
(46, 30),
(46, 34),
(46, 35),
(47, 30),
(47, 34),
(47, 36),
(48, 30),
(48, 34),
(49, 30),
(49, 34),
(49, 37),
(50, 30),
(50, 34),
(50, 35),
(51, 27),
(51, 30),
(51, 34),
(52, 30),
(52, 34),
(52, 37),
(53, 28),
(53, 30),
(53, 34),
(54, 30),
(54, 34);

-- --------------------------------------------------------

--
-- Table structure for table `product_option`
--

CREATE TABLE `product_option` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `code` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_option`
--

INSERT INTO `product_option` (`createdAt`, `updatedAt`, `code`, `id`, `groupId`) VALUES
('2020-03-25 21:59:12.826346', '2020-03-25 21:59:12.826346', '13-inch', 1, 1),
('2020-03-25 21:59:12.856860', '2020-03-25 21:59:12.856860', '15-inch', 2, 1),
('2020-03-25 21:59:12.949319', '2020-03-25 21:59:12.949319', '8gb', 3, 2),
('2020-03-25 21:59:12.977571', '2020-03-25 21:59:12.977571', '16gb', 4, 2),
('2020-03-25 21:59:13.502964', '2020-03-25 21:59:13.502964', '32gb', 5, 3),
('2020-03-25 21:59:13.538162', '2020-03-25 21:59:13.538162', '128gb', 6, 3),
('2020-03-25 21:59:14.282165', '2020-03-25 21:59:14.282165', '24-inch', 7, 4),
('2020-03-25 21:59:14.333379', '2020-03-25 21:59:14.333379', '27-inch', 8, 4),
('2020-03-25 21:59:14.658769', '2020-03-25 21:59:14.658769', '4gb', 9, 5),
('2020-03-25 21:59:14.689670', '2020-03-25 21:59:14.689670', '8gb', 10, 5),
('2020-03-25 21:59:14.716366', '2020-03-25 21:59:14.716366', '16gb', 11, 5),
('2020-03-25 21:59:15.062317', '2020-03-25 21:59:15.062317', 'i7-8700', 12, 6),
('2020-03-25 21:59:15.087888', '2020-03-25 21:59:15.087888', 'r7-2700', 13, 6),
('2020-03-25 21:59:15.146846', '2020-03-25 21:59:15.146846', '240gb-ssd', 14, 7),
('2020-03-25 21:59:15.176610', '2020-03-25 21:59:15.176610', '120gb-ssd', 15, 7),
('2020-03-25 21:59:15.630005', '2020-03-25 21:59:15.630005', '1tb', 16, 8),
('2020-03-25 21:59:15.661646', '2020-03-25 21:59:15.661646', '2tb', 17, 8),
('2020-03-25 21:59:15.690629', '2020-03-25 21:59:15.690629', '3tb', 18, 8),
('2020-03-25 21:59:15.718128', '2020-03-25 21:59:15.718128', '4tb', 19, 8),
('2020-03-25 21:59:15.747703', '2020-03-25 21:59:15.747703', '6tb', 20, 8),
('2020-03-25 21:59:19.944819', '2020-03-25 21:59:19.944819', 'size-40', 21, 9),
('2020-03-25 21:59:19.978225', '2020-03-25 21:59:19.978225', 'size-42', 22, 9),
('2020-03-25 21:59:20.014364', '2020-03-25 21:59:20.014364', 'size-44', 23, 9),
('2020-03-25 21:59:20.041840', '2020-03-25 21:59:20.041840', 'size-46', 24, 9),
('2020-03-25 21:59:20.506771', '2020-03-25 21:59:20.506771', 'size-40', 25, 10),
('2020-03-25 21:59:20.538964', '2020-03-25 21:59:20.538964', 'size-42', 26, 10),
('2020-03-25 21:59:20.570014', '2020-03-25 21:59:20.570014', 'size-44', 27, 10),
('2020-03-25 21:59:20.598351', '2020-03-25 21:59:20.598351', 'size-46', 28, 10),
('2020-03-25 21:59:20.963437', '2020-03-25 21:59:20.963437', 'size-40', 29, 11),
('2020-03-25 21:59:20.989542', '2020-03-25 21:59:20.989542', 'size-42', 30, 11),
('2020-03-25 21:59:21.039035', '2020-03-25 21:59:21.039035', 'size-44', 31, 11),
('2020-03-25 21:59:21.062934', '2020-03-25 21:59:21.062934', 'size-46', 32, 11),
('2020-03-25 21:59:21.427568', '2020-03-25 21:59:21.427568', 'size-40', 33, 12),
('2020-03-25 21:59:21.468788', '2020-03-25 21:59:21.468788', 'size-42', 34, 12),
('2020-03-25 21:59:21.507616', '2020-03-25 21:59:21.507616', 'size-44', 35, 12),
('2020-03-25 21:59:21.543873', '2020-03-25 21:59:21.543873', 'size-46', 36, 12),
('2020-03-25 21:59:21.934517', '2020-03-25 21:59:21.934517', 'size-40', 37, 13),
('2020-03-25 21:59:21.962449', '2020-03-25 21:59:21.962449', 'size-42', 38, 13),
('2020-03-25 21:59:21.990402', '2020-03-25 21:59:21.990402', 'size-44', 39, 13),
('2020-03-25 21:59:22.027181', '2020-03-25 21:59:22.027181', 'size-46', 40, 13),
('2020-03-25 21:59:22.431448', '2020-03-25 21:59:22.431448', 'size-40', 41, 14),
('2020-03-25 21:59:22.458392', '2020-03-25 21:59:22.458392', 'size-42', 42, 14),
('2020-03-25 21:59:22.482932', '2020-03-25 21:59:22.482932', 'size-44', 43, 14),
('2020-03-25 21:59:22.506483', '2020-03-25 21:59:22.506483', 'size-46', 44, 14),
('2020-03-25 21:59:25.624082', '2020-03-25 21:59:25.624082', 'mustard', 45, 15),
('2020-03-25 21:59:25.651552', '2020-03-25 21:59:25.651552', 'mint', 46, 15),
('2020-03-25 21:59:25.676876', '2020-03-25 21:59:25.676876', 'pearl', 47, 15);

-- --------------------------------------------------------

--
-- Table structure for table `product_option_group`
--

CREATE TABLE `product_option_group` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `code` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_option_group`
--

INSERT INTO `product_option_group` (`createdAt`, `updatedAt`, `code`, `id`, `productId`) VALUES
('2020-03-25 21:59:12.778281', '2020-03-25 21:59:12.000000', 'laptop-screen-size', 1, 1),
('2020-03-25 21:59:12.912024', '2020-03-25 21:59:12.000000', 'laptop-ram', 2, 1),
('2020-03-25 21:59:13.465870', '2020-03-25 21:59:13.000000', 'tablet-storage', 3, 2),
('2020-03-25 21:59:14.244179', '2020-03-25 21:59:14.000000', 'curvy-monitor-monitor-size', 4, 5),
('2020-03-25 21:59:14.629475', '2020-03-25 21:59:14.000000', 'high-performance-ram-size', 5, 6),
('2020-03-25 21:59:15.036181', '2020-03-25 21:59:15.000000', 'gaming-pc-cpu', 6, 7),
('2020-03-25 21:59:15.121059', '2020-03-25 21:59:15.000000', 'gaming-pc-hdd', 7, 7),
('2020-03-25 21:59:15.601253', '2020-03-25 21:59:15.000000', 'hard-drive-hdd', 8, 8),
('2020-03-25 21:59:19.914894', '2020-03-25 21:59:20.000000', 'ultraboost-running-shoe-size', 9, 29),
('2020-03-25 21:59:20.460502', '2020-03-25 21:59:20.000000', 'freerun-running-shoe-size', 10, 30),
('2020-03-25 21:59:20.938480', '2020-03-25 21:59:21.000000', 'hi-top-basketball-shoe-size', 11, 31),
('2020-03-25 21:59:21.387635', '2020-03-25 21:59:21.000000', 'pureboost-running-shoe-size', 12, 32),
('2020-03-25 21:59:21.906616', '2020-03-25 21:59:22.000000', 'runx-running-shoe-size', 13, 33),
('2020-03-25 21:59:22.404250', '2020-03-25 21:59:22.000000', 'allstar-sneakers-size', 14, 34),
('2020-03-25 21:59:25.598560', '2020-03-25 21:59:25.000000', 'modern-cafe-chair-color', 15, 54);

-- --------------------------------------------------------

--
-- Table structure for table `product_option_group_translation`
--

CREATE TABLE `product_option_group_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_option_group_translation`
--

INSERT INTO `product_option_group_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `id`, `baseId`) VALUES
('2020-03-25 21:59:12.762583', '2020-03-25 21:59:12.000000', 'en', 'screen size', 1, 1),
('2020-03-25 21:59:12.899643', '2020-03-25 21:59:12.000000', 'en', 'RAM', 2, 2),
('2020-03-25 21:59:13.450525', '2020-03-25 21:59:13.000000', 'en', 'storage', 3, 3),
('2020-03-25 21:59:14.229883', '2020-03-25 21:59:14.000000', 'en', 'monitor size', 4, 4),
('2020-03-25 21:59:14.615676', '2020-03-25 21:59:14.000000', 'en', 'size', 5, 5),
('2020-03-25 21:59:15.024088', '2020-03-25 21:59:15.000000', 'en', 'cpu', 6, 6),
('2020-03-25 21:59:15.109444', '2020-03-25 21:59:15.000000', 'en', 'HDD', 7, 7),
('2020-03-25 21:59:15.588796', '2020-03-25 21:59:15.000000', 'en', 'HDD', 8, 8),
('2020-03-25 21:59:19.901762', '2020-03-25 21:59:19.000000', 'en', 'size', 9, 9),
('2020-03-25 21:59:20.446535', '2020-03-25 21:59:20.000000', 'en', 'size', 10, 10),
('2020-03-25 21:59:20.926473', '2020-03-25 21:59:20.000000', 'en', 'size', 11, 11),
('2020-03-25 21:59:21.373737', '2020-03-25 21:59:21.000000', 'en', 'size', 12, 12),
('2020-03-25 21:59:21.893376', '2020-03-25 21:59:21.000000', 'en', 'size', 13, 13),
('2020-03-25 21:59:22.392505', '2020-03-25 21:59:22.000000', 'en', 'size', 14, 14),
('2020-03-25 21:59:25.573881', '2020-03-25 21:59:25.000000', 'en', 'color', 15, 15);

-- --------------------------------------------------------

--
-- Table structure for table `product_option_translation`
--

CREATE TABLE `product_option_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_option_translation`
--

INSERT INTO `product_option_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `id`, `baseId`) VALUES
('2020-03-25 21:59:12.809922', '2020-03-25 21:59:12.000000', 'en', '13 inch', 1, 1),
('2020-03-25 21:59:12.844530', '2020-03-25 21:59:12.000000', 'en', '15 inch', 2, 2),
('2020-03-25 21:59:12.936633', '2020-03-25 21:59:12.000000', 'en', '8GB', 3, 3),
('2020-03-25 21:59:12.964479', '2020-03-25 21:59:12.000000', 'en', '16GB', 4, 4),
('2020-03-25 21:59:13.488860', '2020-03-25 21:59:13.000000', 'en', '32GB', 5, 5),
('2020-03-25 21:59:13.522786', '2020-03-25 21:59:13.000000', 'en', '128GB', 6, 6),
('2020-03-25 21:59:14.267978', '2020-03-25 21:59:14.000000', 'en', '24 inch', 7, 7),
('2020-03-25 21:59:14.310355', '2020-03-25 21:59:14.000000', 'en', '27 inch', 8, 8),
('2020-03-25 21:59:14.644930', '2020-03-25 21:59:14.000000', 'en', '4GB', 9, 9),
('2020-03-25 21:59:14.674224', '2020-03-25 21:59:14.000000', 'en', '8GB', 10, 10),
('2020-03-25 21:59:14.705038', '2020-03-25 21:59:14.000000', 'en', '16GB', 11, 11),
('2020-03-25 21:59:15.049812', '2020-03-25 21:59:15.000000', 'en', 'i7-8700', 12, 12),
('2020-03-25 21:59:15.076292', '2020-03-25 21:59:15.000000', 'en', 'R7-2700', 13, 13),
('2020-03-25 21:59:15.134011', '2020-03-25 21:59:15.000000', 'en', '240GB SSD', 14, 14),
('2020-03-25 21:59:15.162695', '2020-03-25 21:59:15.000000', 'en', '120GB SSD', 15, 15),
('2020-03-25 21:59:15.617663', '2020-03-25 21:59:15.000000', 'en', '1TB', 16, 16),
('2020-03-25 21:59:15.647706', '2020-03-25 21:59:15.000000', 'en', '2TB', 17, 17),
('2020-03-25 21:59:15.677891', '2020-03-25 21:59:15.000000', 'en', '3TB', 18, 18),
('2020-03-25 21:59:15.704878', '2020-03-25 21:59:15.000000', 'en', '4TB', 19, 19),
('2020-03-25 21:59:15.733500', '2020-03-25 21:59:15.000000', 'en', '6TB', 20, 20),
('2020-03-25 21:59:19.930551', '2020-03-25 21:59:19.000000', 'en', 'Size 40', 21, 21),
('2020-03-25 21:59:19.962137', '2020-03-25 21:59:19.000000', 'en', 'Size 42', 22, 22),
('2020-03-25 21:59:19.997988', '2020-03-25 21:59:20.000000', 'en', 'Size 44', 23, 23),
('2020-03-25 21:59:20.029377', '2020-03-25 21:59:20.000000', 'en', 'Size 46', 24, 24),
('2020-03-25 21:59:20.476175', '2020-03-25 21:59:20.000000', 'en', 'Size 40', 25, 25),
('2020-03-25 21:59:20.523610', '2020-03-25 21:59:20.000000', 'en', 'Size 42', 26, 26),
('2020-03-25 21:59:20.554437', '2020-03-25 21:59:20.000000', 'en', 'Size 44', 27, 27),
('2020-03-25 21:59:20.584149', '2020-03-25 21:59:20.000000', 'en', 'Size 46', 28, 28),
('2020-03-25 21:59:20.951293', '2020-03-25 21:59:20.000000', 'en', 'Size 40', 29, 29),
('2020-03-25 21:59:20.977918', '2020-03-25 21:59:20.000000', 'en', 'Size 42', 30, 30),
('2020-03-25 21:59:21.015510', '2020-03-25 21:59:21.000000', 'en', 'Size 44', 31, 31),
('2020-03-25 21:59:21.051148', '2020-03-25 21:59:21.000000', 'en', 'Size 46', 32, 32),
('2020-03-25 21:59:21.411336', '2020-03-25 21:59:21.000000', 'en', 'Size 40', 33, 33),
('2020-03-25 21:59:21.450479', '2020-03-25 21:59:21.000000', 'en', 'Size 42', 34, 34),
('2020-03-25 21:59:21.485072', '2020-03-25 21:59:21.000000', 'en', 'Size 44', 35, 35),
('2020-03-25 21:59:21.530772', '2020-03-25 21:59:21.000000', 'en', 'Size 46', 36, 36),
('2020-03-25 21:59:21.921799', '2020-03-25 21:59:21.000000', 'en', 'Size 40', 37, 37),
('2020-03-25 21:59:21.950121', '2020-03-25 21:59:21.000000', 'en', 'Size 42', 38, 38),
('2020-03-25 21:59:21.976907', '2020-03-25 21:59:21.000000', 'en', 'Size 44', 39, 39),
('2020-03-25 21:59:22.004670', '2020-03-25 21:59:22.000000', 'en', 'Size 46', 40, 40),
('2020-03-25 21:59:22.419695', '2020-03-25 21:59:22.000000', 'en', 'Size 40', 41, 41),
('2020-03-25 21:59:22.446568', '2020-03-25 21:59:22.000000', 'en', 'Size 42', 42, 42),
('2020-03-25 21:59:22.471825', '2020-03-25 21:59:22.000000', 'en', 'Size 44', 43, 43),
('2020-03-25 21:59:22.494886', '2020-03-25 21:59:22.000000', 'en', 'Size 46', 44, 44),
('2020-03-25 21:59:25.612024', '2020-03-25 21:59:25.000000', 'en', 'mustard', 45, 45),
('2020-03-25 21:59:25.638877', '2020-03-25 21:59:25.000000', 'en', 'mint', 46, 46),
('2020-03-25 21:59:25.665676', '2020-03-25 21:59:25.000000', 'en', 'pearl', 47, 47);

-- --------------------------------------------------------

--
-- Table structure for table `product_translation`
--

CREATE TABLE `product_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_translation`
--

INSERT INTO `product_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `slug`, `description`, `id`, `baseId`) VALUES
('2020-03-25 21:59:12.706450', '2020-03-25 21:59:12.000000', 'en', 'Laptop', 'laptop', 'Now equipped with seventh-generation Intel Core processors, Laptop is snappier than ever. From daily tasks like launching apps and opening files to more advanced computing, you can power through your day thanks to faster SSDs and Turbo Boost processing up to 3.6GHz.', 1, 1),
('2020-03-25 21:59:13.344829', '2020-03-25 21:59:13.000000', 'en', 'Tablet', 'tablet', 'If the computer were invented today, what would it look like? It would be powerful enough for any task. So mobile you could take it everywhere. And so intuitive you could use it any way you wanted — with touch, a keyboard, or even a pencil. In other words, it wouldn’t really be a \"computer.\" It would be Tablet.', 2, 2),
('2020-03-25 21:59:13.821233', '2020-03-25 21:59:13.000000', 'en', 'Wireless Optical Mouse', 'cordless-mouse', 'The Logitech M185 Wireless Optical Mouse is a great device for any computer user, and as Logitech are the global market leaders for these devices, you are also guaranteed absolute reliability. A mouse to be reckoned with!', 3, 3),
('2020-03-25 21:59:14.026811', '2020-03-25 21:59:14.000000', 'en', '32-Inch Monitor', '32-inch-monitor', 'The UJ59 with Ultra HD resolution has 4x the pixels of Full HD, delivering more screen space and amazingly life-like images. That means you can view documents and webpages with less scrolling, work more comfortably with multiple windows and toolbars, and enjoy photos, videos and games in stunning 4K quality. Note: beverage not included.', 4, 4),
('2020-03-25 21:59:14.177750', '2020-03-25 21:59:14.000000', 'en', 'Curvy Monitor', 'curvy-monitor', 'Discover a truly immersive viewing experience with this monitor curved more deeply than any other. Wrapping around your field of vision the 1,800 R screencreates a wider field of view, enhances depth perception, and minimises peripheral distractions to draw you deeper in to your content.', 5, 5),
('2020-03-25 21:59:14.572475', '2020-03-25 21:59:14.000000', 'en', 'High Performance RAM', 'high-performance-ram', 'Each RAM module is built with a pure aluminium heat spreader for faster heat dissipation and cooler operation. Enhanced to XMP 2.0 profiles for better overclocking; Compatibility: Intel 100 Series, Intel 200 Series, Intel 300 Series, Intel X299, AMD 300 Series, AMD 400 Series.', 6, 6),
('2020-03-25 21:59:14.983496', '2020-03-25 21:59:15.000000', 'en', 'Gaming PC', 'gaming-pc', 'This pc is optimised for gaming, and is also VR ready. The Intel Core-i7 CPU and High Performance GPU give the computer the raw power it needs to function at a high level.', 7, 7),
('2020-03-25 21:59:15.539267', '2020-03-25 21:59:15.000000', 'en', 'Hard Drive', 'hard-drive', 'Boost your PC storage with this internal hard drive, designed just for desktop and all-in-one PCs.', 8, 8),
('2020-03-25 21:59:16.090734', '2020-03-25 21:59:16.000000', 'en', 'Clacky Keyboard', 'clacky-keyboard', 'Let all your colleagues know that you are typing on this exclusive, colorful klicky-klacky keyboard. Huge travel on each keypress ensures maximum klack on each and every keystroke.', 9, 9),
('2020-03-25 21:59:16.223095', '2020-03-25 21:59:16.000000', 'en', 'Ethernet Cable', 'ethernet-cable', '5m (metres) Cat.6 network cable (upwards/downwards compatible) | Patch cable | 2 RJ-45 plug | plug with bend protection mantle. High transmission speeds due to operating frequency with up to 250 MHz (in comparison to Cat.5/Cat.5e cable bandwidth of 100 MHz).', 10, 10),
('2020-03-25 21:59:16.369238', '2020-03-25 21:59:16.000000', 'en', 'USB Cable', 'usb-cable', 'Solid conductors eliminate strand-interaction distortion and reduce jitter. As the surface is made of high-purity silver, the performance is very close to that of a solid silver cable, but priced much closer to solid copper cable.', 11, 11),
('2020-03-25 21:59:16.671189', '2020-03-25 21:59:16.000000', 'en', 'Instant Camera', 'instant-camera', 'With its nostalgic design and simple point-and-shoot functionality, the Instant Camera is the perfect pick to get started with instant photography.', 12, 12),
('2020-03-25 21:59:16.856432', '2020-03-25 21:59:16.000000', 'en', 'Camera Lens', 'camera-lens', 'This lens is a Di type lens using an optical system with improved multi-coating designed to function with digital SLR cameras as well as film cameras.', 13, 13),
('2020-03-25 21:59:17.052112', '2020-03-25 21:59:17.000000', 'en', 'Vintage Folding Camera', 'vintage-folding-camera', 'This vintage folding camera is so antiquated that you cannot possibly hope to produce actual photographs with it. However, it makes a wonderful decorative piece for the home or office.', 14, 14),
('2020-03-25 21:59:17.227383', '2020-03-25 21:59:17.000000', 'en', 'Tripod', 'tripod', 'Capture vivid, professional-style photographs with help from this lightweight tripod. The adjustable-height tripod makes it easy to achieve reliable stability and score just the right angle when going after that award-winning shot.', 15, 15),
('2020-03-25 21:59:17.409413', '2020-03-25 21:59:17.000000', 'en', 'Instamatic Camera', 'instamatic-camera', 'This inexpensive point-and-shoot camera uses easy-to-load 126 film cartridges. A built-in flash unit ensure great results, no matter the lighting conditions.', 16, 16),
('2020-03-25 21:59:17.576258', '2020-03-25 21:59:17.000000', 'en', 'Compact Digital Camera', 'compact-digital-camera', 'Unleash your creative potential with high-level performance and advanced features such as AI-powered Real-time Eye AF; new, high-precision Real-time Tracking; high-speed continuous shooting and 4K HDR movie-shooting. The camera\'s innovative AF quickly and reliably detects the position of the subject and then tracks the subject\'s motion, keeping it in sharp focus.', 17, 17),
('2020-03-25 21:59:17.697979', '2020-03-25 21:59:17.000000', 'en', 'Nikkormat SLR Camera', 'nikkormat-slr-camera', 'The Nikkormat FS was brought to market by Nikon in 1965. The lens is a 50mm f1.4 Nikkor. Nice glass, smooth focus and a working diaphragm. A UV filter and a Nikon front lens cap are included with the lens.', 18, 18),
('2020-03-25 21:59:17.807083', '2020-03-25 21:59:17.000000', 'en', 'Compact SLR Camera', 'compact-slr-camera', 'Retro styled, portable in size and built around a powerful 24-megapixel APS-C CMOS sensor, this digital camera is the ideal companion for creative everyday photography. Packed full of high spec features such as an advanced hybrid autofocus system able to keep pace with even the most active subjects, a speedy 6fps continuous-shooting mode, high-resolution electronic viewfinder and intuitive swivelling touchscreen, it brings professional image making into everyone’s grasp.', 19, 19),
('2020-03-25 21:59:17.956166', '2020-03-25 21:59:17.000000', 'en', 'Twin Lens Camera', 'twin-lens-camera', 'What makes a Rolleiflex TLR so special? Many things. To start, TLR stands for twin lens reflex. “Twin” because there are two lenses. And reflex means that the photographer looks through the lens to view the reflected image of an object or scene on the focusing screen.', 20, 20),
('2020-03-25 21:59:18.221243', '2020-03-25 21:59:18.000000', 'en', 'Road Bike', 'road-bike', 'Featuring a full carbon chassis - complete with cyclocross-specific carbon fork - and a component setup geared for hard use on the race circuit, it\'s got the low weight, exceptional efficiency and brilliant handling you\'ll need to stay at the front of the pack.', 21, 21),
('2020-03-25 21:59:18.434102', '2020-03-25 21:59:18.000000', 'en', 'Skipping Rope', 'skipping-rope', 'When you\'re working out you need a quality rope that doesn\'t tangle at every couple of jumps and with this skipping rope you won\'t have this problem. The fact that it looks like a pair of tasty frankfurters is merely a bonus.', 22, 22),
('2020-03-25 21:59:18.594716', '2020-03-25 21:59:18.000000', 'en', 'Boxing Gloves', 'boxing-gloves', 'Training gloves designed for optimum training. Our gloves promote proper punching technique because they are conformed to the natural shape of your fist. Dense, innovative two-layer foam provides better shock absorbency and full padding on the front, back and wrist to promote proper punching technique.', 23, 23),
('2020-03-25 21:59:18.739988', '2020-03-25 21:59:18.000000', 'en', 'Tent', 'tent', 'With tons of space inside (for max. 4 persons), full head height throughout the entire tent and an unusual and striking shape, this tent offers you everything you need.', 24, 24),
('2020-03-25 21:59:18.868202', '2020-03-25 21:59:18.000000', 'en', 'Cruiser Skateboard', 'cruiser-skateboard', 'Based on the 1970s iconic shape, but made to a larger 69cm size, with updated, quality component, these skateboards are great for beginners to learn the foot spacing required, and are perfect for all-day cruising.', 25, 25),
('2020-03-25 21:59:19.081523', '2020-03-25 21:59:19.000000', 'en', 'Football', 'football', 'This football features high-contrast graphics for high-visibility during play, while its machine-stitched tpu casing offers consistent performance.', 26, 26),
('2020-03-25 21:59:19.274430', '2020-03-25 21:59:19.000000', 'en', 'Tennis Ball', 'tennis-ball', 'Our dog loves these tennis balls and they last for some time before they eventually either get lost in some field or bush or the covering comes off due to it being used most of the day every day.', 27, 27),
('2020-03-25 21:59:19.403002', '2020-03-25 21:59:19.000000', 'en', 'Basketball', 'basketball', 'The Wilson MVP ball is perfect for playing basketball, and improving your skill for hours on end. Designed for new players, it is created with a high-quality rubber suitable for courts, allowing you to get full use during your practices.', 28, 28),
('2020-03-25 21:59:19.850891', '2020-03-25 21:59:19.000000', 'en', 'Ultraboost Running Shoe', 'ultraboost-running-shoe', 'With its ultra-light, uber-responsive magic foam and a carbon fiber plate that feels like it’s propelling you forward, the Running Shoe is ready to push you to victories both large and small', 29, 29),
('2020-03-25 21:59:20.396518', '2020-03-25 21:59:20.000000', 'en', 'Freerun Running Shoe', 'freerun-running-shoe', 'The Freerun Men\'s Running Shoe is built for record-breaking speed. The Flyknit upper delivers ultra-lightweight support that fits like a glove.', 30, 30),
('2020-03-25 21:59:20.886215', '2020-03-25 21:59:20.000000', 'en', 'Hi-Top Basketball Shoe', 'hi-top-basketball-shoe', 'Boasting legendary performance since 2008, the Hyperdunkz Basketball Shoe needs no gimmicks to stand out. Air units deliver best-in-class cushioning, while a dynamic lacing system keeps your foot snug and secure, so you can focus on your game and nothing else.', 31, 31),
('2020-03-25 21:59:21.338972', '2020-03-25 21:59:21.000000', 'en', 'Pureboost Running Shoe', 'pureboost-running-shoe', 'Built to handle curbs, corners and uneven sidewalks, these natural running shoes have an expanded landing zone and a heel plate for added stability. A lightweight and stretchy knit upper supports your native stride.', 32, 32),
('2020-03-25 21:59:21.843676', '2020-03-25 21:59:21.000000', 'en', 'RunX Running Shoe', 'runx-running-shoe', 'These running shoes are made with an airy, lightweight mesh upper. The durable rubber outsole grips the pavement for added stability. A cushioned midsole brings comfort to each step.', 33, 33),
('2020-03-25 21:59:22.350688', '2020-03-25 21:59:22.000000', 'en', 'Allstar Sneakers', 'allstar-sneakers', 'All Star is the most iconic sneaker in the world, recognised for its unmistakable silhouette, star-centred ankle patch and cultural authenticity. And like the best paradigms, it only gets better with time.', 34, 34),
('2020-03-25 21:59:22.903073', '2020-03-25 21:59:22.000000', 'en', 'Spiky Cactus', 'spiky-cactus', 'A spiky yet elegant house cactus - perfect for the home or office. Origin and habitat: Probably native only to the Andes of Peru', 35, 35),
('2020-03-25 21:59:23.078683', '2020-03-25 21:59:23.000000', 'en', 'Tulip Pot', 'tulip-pot', 'Bright crimson red species tulip with black centers, the poppy-like flowers will open up in full sun. Ideal for rock gardens, pots and border edging.', 36, 36),
('2020-03-25 21:59:23.222020', '2020-03-25 21:59:23.000000', 'en', 'Hanging Plant', 'hanging-plant', 'Can be found in tropical and sub-tropical America where it grows on the branches of trees, but also on telephone wires and electricity cables and poles that sometimes topple with the weight of these plants. This plant loves a moist and warm air.', 37, 37),
('2020-03-25 21:59:23.317723', '2020-03-25 21:59:23.000000', 'en', 'Aloe Vera', 'aloe-vera', 'Decorative Aloe vera makes a lovely house plant. A really trendy plant, Aloe vera is just so easy to care for. Aloe vera sap has been renowned for its remarkable medicinal and cosmetic properties for many centuries and has been used to treat grazes, insect bites and sunburn - it really works.', 38, 38),
('2020-03-25 21:59:23.456857', '2020-03-25 21:59:23.000000', 'en', 'Fern Blechnum Gibbum', 'fern-blechnum-gibbum', 'Create a tropical feel in your home with this lush green tree fern, it has decorative leaves and will develop a short slender trunk in time.', 39, 39),
('2020-03-25 21:59:23.617652', '2020-03-25 21:59:23.000000', 'en', 'Assorted Indoor Succulents', 'assorted-succulents', 'These assorted succulents come in a variety of different shapes and colours - each with their own unique personality. Succulents grow best in plenty of light: a sunny windowsill would be the ideal spot for them to thrive!', 40, 40),
('2020-03-25 21:59:23.745059', '2020-03-25 21:59:23.000000', 'en', 'Orchid', 'orchid', 'Gloriously elegant. It can go along with any interior as it is a neutral color and the most popular Phalaenopsis overall. 2 to 3 foot stems host large white flowers that can last for over 2 months.', 41, 41),
('2020-03-25 21:59:23.888424', '2020-03-25 21:59:23.000000', 'en', 'Bonsai Tree', 'bonsai-tree', 'Excellent semi-evergreen bonsai. Indoors or out but needs some winter protection. All trees sent will leave the nursery in excellent condition and will be of equal quality or better than the photograph shown.', 42, 42),
('2020-03-25 21:59:24.125808', '2020-03-25 21:59:24.000000', 'en', 'Guardian Lion Statue', 'guardian-lion-statue', 'Placing it at home or office can bring you fortune and prosperity, guard your house and ward off ill fortune.', 43, 43),
('2020-03-25 21:59:24.260361', '2020-03-25 21:59:24.000000', 'en', 'Hand Trowel', 'hand-trowel', 'Hand trowel for garden cultivating hammer finish epoxy-coated head for improved resistance to rust, scratches, humidity and alkalines in the soil.', 44, 44),
('2020-03-25 21:59:24.376737', '2020-03-25 21:59:24.000000', 'en', 'Balloon Chair', 'balloon-chair', 'A charming vintage white wooden chair featuring an extremely spherical pink balloon. The balloon may be detached and used for other purposes, for example as a party decoration.', 45, 45),
('2020-03-25 21:59:24.474024', '2020-03-25 21:59:24.000000', 'en', 'Grey Fabric Sofa', 'grey-fabric-sofa', 'Seat cushions filled with high resilience foam and polyester fibre wadding give comfortable support for your body, and easily regain their shape when you get up. The cover is easy to keep clean as it is removable and can be machine washed.', 46, 46),
('2020-03-25 21:59:24.623186', '2020-03-25 21:59:24.000000', 'en', 'Leather Sofa', 'leather-sofa', 'This premium, tan-brown bonded leather seat is part of the \'chill\' sofa range. The lever activated recline feature makes it easy to adjust to any position. This smart, bustle back design with rounded tight padded arms has been designed with your comfort in mind. This well-padded chair has foam pocket sprung seat cushions and fibre-filled back cushions.', 47, 47),
('2020-03-25 21:59:24.734496', '2020-03-25 21:59:24.000000', 'en', 'Light Shade', 'light-shade', 'Modern tapered white polycotton pendant shade with a metallic silver chrome interior finish for maximum light reflection. Reversible gimble so it can be used as a ceiling shade or as a lamp shade.', 48, 48),
('2020-03-25 21:59:24.904434', '2020-03-25 21:59:24.000000', 'en', 'Wooden Side Desk', 'wooden-side-desk', 'Drawer stops prevent the drawers from being pulled out too far. Built-in cable management for collecting cables and cords; out of sight but close at hand.', 49, 49),
('2020-03-25 21:59:25.016283', '2020-03-25 21:59:25.000000', 'en', 'Comfy Padded Chair', 'comfy-padded-chair', 'You sit comfortably thanks to the shaped back. The chair frame is made of solid wood, which is a durable natural material.', 50, 50),
('2020-03-25 21:59:25.177451', '2020-03-25 21:59:25.000000', 'en', 'Black Eaves Chair', 'black-eaves-chair', 'Comfortable to sit on thanks to the bowl-shaped seat and rounded shape of the backrest. No tools are required to assemble the chair, you just click it together with a simple mechanism under the seat.', 51, 51),
('2020-03-25 21:59:25.294410', '2020-03-25 21:59:25.000000', 'en', 'Wooden Stool', 'wooden-stool', 'Solid wood is a hardwearing natural material, which can be sanded and surface treated as required.', 52, 52),
('2020-03-25 21:59:25.371539', '2020-03-25 21:59:25.000000', 'en', 'Bedside Table', 'bedside-table', 'Every table is unique, with varying grain pattern and natural colour shifts that are part of the charm of wood.', 53, 53),
('2020-03-25 21:59:25.505373', '2020-03-25 21:59:25.000000', 'en', 'Modern Cafe Chair', 'modern-cafe-chair', 'You sit comfortably thanks to the restful flexibility of the seat. Lightweight and easy to move around, yet stable enough even for the liveliest, young family members.', 54, 54);

-- --------------------------------------------------------

--
-- Table structure for table `product_variant`
--

CREATE TABLE `product_variant` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 1,
  `sku` varchar(255) NOT NULL,
  `lastPriceValue` int(11) NOT NULL COMMENT 'Not used - actual price is stored in product_variant_price table',
  `productId` int(11) DEFAULT NULL,
  `stockOnHand` int(11) NOT NULL DEFAULT 0,
  `trackInventory` tinyint(4) NOT NULL,
  `id` int(11) NOT NULL,
  `featuredAssetId` int(11) DEFAULT NULL,
  `taxCategoryId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_variant`
--

INSERT INTO `product_variant` (`createdAt`, `updatedAt`, `deletedAt`, `enabled`, `sku`, `lastPriceValue`, `productId`, `stockOnHand`, `trackInventory`, `id`, `featuredAssetId`, `taxCategoryId`) VALUES
('2020-03-25 21:59:13.021135', '2020-03-25 21:59:13.021135', NULL, 1, 'L2201308', 129900, 1, 100, 1, 1, NULL, 1),
('2020-03-25 21:59:13.103358', '2020-03-25 21:59:13.103358', NULL, 1, 'L2201508', 139900, 1, 100, 1, 2, NULL, 1),
('2020-03-25 21:59:13.186140', '2020-03-25 21:59:13.186140', NULL, 1, 'L2201316', 219900, 1, 100, 1, 3, NULL, 1),
('2020-03-25 21:59:13.257790', '2020-03-25 21:59:13.257790', NULL, 1, 'L2201516', 229900, 1, 100, 1, 4, NULL, 1),
('2020-03-25 21:59:13.586627', '2020-03-25 21:59:13.586627', NULL, 1, 'TBL200032', 32900, 2, 100, 1, 5, NULL, 1),
('2020-03-25 21:59:13.669119', '2020-03-25 21:59:13.669119', NULL, 1, 'TBL200128', 44500, 2, 100, 1, 6, NULL, 1),
('2020-03-25 21:59:13.880637', '2020-03-25 21:59:13.880637', NULL, 1, '834444', 1899, 3, 100, 1, 7, NULL, 1),
('2020-03-25 21:59:14.089593', '2020-03-25 21:59:14.089593', NULL, 1, 'LU32J590UQUXEN', 31000, 4, 100, 1, 8, NULL, 1),
('2020-03-25 21:59:14.379812', '2020-03-25 21:59:14.379812', NULL, 1, 'C24F390', 14374, 5, 100, 1, 9, NULL, 1),
('2020-03-25 21:59:14.465932', '2020-03-25 21:59:14.465932', NULL, 1, 'C27F390', 16994, 5, 100, 1, 10, NULL, 1),
('2020-03-25 21:59:14.755549', '2020-03-25 21:59:14.755549', NULL, 1, 'CMK32GX4M2AC04', 13785, 6, 100, 1, 11, NULL, 1),
('2020-03-25 21:59:14.811096', '2020-03-25 21:59:14.811096', NULL, 1, 'CMK32GX4M2AC08', 14639, 6, 100, 1, 12, NULL, 1),
('2020-03-25 21:59:14.860095', '2020-03-25 21:59:14.860095', NULL, 1, 'CMK32GX4M2AC16', 28181, 6, 100, 1, 13, NULL, 1),
('2020-03-25 21:59:15.211286', '2020-03-25 21:59:15.211286', NULL, 1, 'CGS480VR1063', 108720, 7, 100, 1, 14, NULL, 1),
('2020-03-25 21:59:15.269649', '2020-03-25 21:59:15.269649', NULL, 1, 'CGS480VR1064', 109995, 7, 100, 1, 15, NULL, 1),
('2020-03-25 21:59:15.331546', '2020-03-25 21:59:15.331546', NULL, 1, 'CGS480VR1065', 93120, 7, 100, 1, 16, NULL, 1),
('2020-03-25 21:59:15.394705', '2020-03-25 21:59:15.394705', NULL, 1, 'CGS480VR1066', 94920, 7, 100, 1, 17, NULL, 1),
('2020-03-25 21:59:15.786012', '2020-03-25 21:59:15.786012', NULL, 1, 'IHD455T1', 3799, 8, 100, 1, 18, NULL, 1),
('2020-03-25 21:59:15.840391', '2020-03-25 21:59:15.840391', NULL, 1, 'IHD455T2', 5374, 8, 100, 1, 19, NULL, 1),
('2020-03-25 21:59:15.894647', '2020-03-25 21:59:15.894647', NULL, 1, 'IHD455T3', 7896, 8, 100, 1, 20, NULL, 1),
('2020-03-25 21:59:15.959863', '2020-03-25 21:59:15.959863', NULL, 1, 'IHD455T4', 9299, 8, 100, 1, 21, NULL, 1),
('2020-03-25 21:59:16.027738', '2020-03-25 21:59:16.027738', NULL, 1, 'IHD455T6', 13435, 8, 100, 1, 22, NULL, 1),
('2020-03-25 21:59:16.151381', '2020-03-25 21:59:16.151381', NULL, 1, 'A4TKLA45535', 7489, 9, 100, 1, 23, NULL, 1),
('2020-03-25 21:59:16.279932', '2020-03-25 21:59:16.279932', NULL, 1, 'A23334x30', 597, 10, 100, 1, 24, NULL, 1),
('2020-03-25 21:59:16.485072', '2020-03-25 21:59:16.485072', NULL, 1, 'USBCIN01.5MI', 6900, 11, 100, 1, 25, NULL, 1),
('2020-03-25 21:59:16.733261', '2020-03-25 21:59:16.733261', NULL, 1, 'IC22MWDD', 17499, 12, 100, 1, 26, NULL, 1),
('2020-03-25 21:59:16.916637', '2020-03-25 21:59:16.916637', NULL, 1, 'B0012UUP02', 10400, 13, 100, 1, 27, NULL, 1),
('2020-03-25 21:59:17.112491', '2020-03-25 21:59:17.112491', NULL, 1, 'B00AFC9099', 535000, 14, 100, 1, 28, NULL, 1),
('2020-03-25 21:59:17.288225', '2020-03-25 21:59:17.288225', NULL, 1, 'B00XI87KV8', 1498, 15, 100, 1, 29, NULL, 1),
('2020-03-25 21:59:17.469828', '2020-03-25 21:59:17.469828', NULL, 1, 'B07K1330LL', 2000, 16, 100, 1, 30, NULL, 1),
('2020-03-25 21:59:17.640793', '2020-03-25 21:59:17.640793', NULL, 1, 'B07D990021', 89999, 17, 100, 1, 31, NULL, 1),
('2020-03-25 21:59:17.751787', '2020-03-25 21:59:17.751787', NULL, 1, 'B07D33B334', 61500, 18, 100, 1, 32, NULL, 1),
('2020-03-25 21:59:17.859221', '2020-03-25 21:59:17.859221', NULL, 1, 'B07D75V44S', 52100, 19, 100, 1, 33, NULL, 1),
('2020-03-25 21:59:18.032647', '2020-03-25 21:59:18.032647', NULL, 1, 'B07D78JTLR', 79900, 20, 100, 1, 34, NULL, 1),
('2020-03-25 21:59:18.278732', '2020-03-25 21:59:18.278732', NULL, 1, 'RB000844334', 249900, 21, 100, 1, 35, NULL, 1),
('2020-03-25 21:59:18.521577', '2020-03-25 21:59:18.521577', NULL, 1, 'B07CNGXVXT', 799, 22, 100, 1, 36, NULL, 1),
('2020-03-25 21:59:18.662047', '2020-03-25 21:59:18.662047', NULL, 1, 'B000ZYLPPU', 3304, 23, 100, 1, 37, NULL, 1),
('2020-03-25 21:59:18.803628', '2020-03-25 21:59:18.803628', NULL, 1, '2000023510', 21493, 24, 100, 1, 38, NULL, 1),
('2020-03-25 21:59:18.930111', '2020-03-25 21:59:18.930111', NULL, 1, '799872520', 2499, 25, 100, 1, 39, NULL, 1),
('2020-03-25 21:59:19.155659', '2020-03-25 21:59:19.155659', NULL, 1, 'SC3137-056', 5707, 26, 100, 1, 40, NULL, 1),
('2020-03-25 21:59:19.334024', '2020-03-25 21:59:19.334024', NULL, 1, 'WRT11752P', 1273, 27, 100, 1, 41, NULL, 1),
('2020-03-25 21:59:19.448752', '2020-03-25 21:59:19.448752', NULL, 1, 'WTB1418XB06', 3562, 28, 100, 1, 42, NULL, 1),
('2020-03-25 21:59:20.079426', '2020-03-25 21:59:20.079426', NULL, 1, 'RS0040', 9999, 29, 100, 1, 43, NULL, 1),
('2020-03-25 21:59:20.134381', '2020-03-25 21:59:20.134381', NULL, 1, 'RS0042', 9999, 29, 100, 1, 44, NULL, 1),
('2020-03-25 21:59:20.201138', '2020-03-25 21:59:20.201138', NULL, 1, 'RS0044', 9999, 29, 100, 1, 45, NULL, 1),
('2020-03-25 21:59:20.263381', '2020-03-25 21:59:20.263381', NULL, 1, 'RS0046', 9999, 29, 100, 1, 46, NULL, 1),
('2020-03-25 21:59:20.630144', '2020-03-25 21:59:20.630144', NULL, 1, 'AR4561-40', 16000, 30, 100, 1, 47, NULL, 1),
('2020-03-25 21:59:20.676621', '2020-03-25 21:59:20.676621', NULL, 1, 'AR4561-42', 16000, 30, 100, 1, 48, NULL, 1),
('2020-03-25 21:59:20.728966', '2020-03-25 21:59:20.728966', NULL, 1, 'AR4561-44', 16000, 30, 100, 1, 49, NULL, 1),
('2020-03-25 21:59:20.786344', '2020-03-25 21:59:20.786344', NULL, 1, 'AR4561-46', 16000, 30, 100, 1, 50, NULL, 1),
('2020-03-25 21:59:21.097153', '2020-03-25 21:59:21.097153', NULL, 1, 'AO7893-40', 14000, 31, 100, 1, 51, NULL, 1),
('2020-03-25 21:59:21.147384', '2020-03-25 21:59:21.147384', NULL, 1, 'AO7893-42', 14000, 31, 100, 1, 52, NULL, 1),
('2020-03-25 21:59:21.210255', '2020-03-25 21:59:21.210255', NULL, 1, 'AO7893-44', 14000, 31, 100, 1, 53, NULL, 1),
('2020-03-25 21:59:21.270407', '2020-03-25 21:59:21.270407', NULL, 1, 'AO7893-46', 14000, 31, 100, 1, 54, NULL, 1),
('2020-03-25 21:59:21.586138', '2020-03-25 21:59:21.586138', NULL, 1, 'F3578640', 9995, 32, 100, 1, 55, NULL, 1),
('2020-03-25 21:59:21.645899', '2020-03-25 21:59:21.645899', NULL, 1, 'F3578642', 9995, 32, 100, 1, 56, NULL, 1),
('2020-03-25 21:59:21.700658', '2020-03-25 21:59:21.700658', NULL, 1, 'F3578644', 9995, 32, 100, 1, 57, NULL, 1),
('2020-03-25 21:59:21.767046', '2020-03-25 21:59:21.767046', NULL, 1, 'F3578646', 9995, 32, 100, 1, 58, NULL, 1),
('2020-03-25 21:59:22.069365', '2020-03-25 21:59:22.069365', NULL, 1, 'F3633340', 4495, 33, 100, 1, 59, NULL, 1),
('2020-03-25 21:59:22.125651', '2020-03-25 21:59:22.125651', NULL, 1, 'F3633342', 4495, 33, 100, 1, 60, NULL, 1),
('2020-03-25 21:59:22.185836', '2020-03-25 21:59:22.185836', NULL, 1, 'F3633344', 4495, 33, 100, 1, 61, NULL, 1),
('2020-03-25 21:59:22.246860', '2020-03-25 21:59:22.246860', NULL, 1, 'F3633346', 4495, 33, 100, 1, 62, NULL, 1),
('2020-03-25 21:59:22.547894', '2020-03-25 21:59:22.547894', NULL, 1, 'CAS23340', 6500, 34, 100, 1, 63, NULL, 1),
('2020-03-25 21:59:22.595525', '2020-03-25 21:59:22.595525', NULL, 1, 'CAS23342', 6500, 34, 100, 1, 64, NULL, 1),
('2020-03-25 21:59:22.642784', '2020-03-25 21:59:22.642784', NULL, 1, 'CAS23344', 6500, 34, 100, 1, 65, NULL, 1),
('2020-03-25 21:59:22.688465', '2020-03-25 21:59:22.688465', NULL, 1, 'CAS23346', 6500, 34, 100, 1, 66, NULL, 1),
('2020-03-25 21:59:22.954577', '2020-03-25 21:59:22.954577', NULL, 1, 'SC011001', 1550, 35, 100, 1, 67, NULL, 1),
('2020-03-25 21:59:23.149081', '2020-03-25 21:59:23.149081', NULL, 1, 'A58477', 675, 36, 100, 1, 68, NULL, 1),
('2020-03-25 21:59:23.270780', '2020-03-25 21:59:23.270780', NULL, 1, 'A44223', 1995, 37, 100, 1, 69, NULL, 1),
('2020-03-25 21:59:23.366529', '2020-03-25 21:59:23.366529', NULL, 1, 'A44352', 699, 38, 100, 1, 70, NULL, 1),
('2020-03-25 21:59:23.536546', '2020-03-25 21:59:23.536546', NULL, 1, 'A04851', 895, 39, 100, 1, 71, NULL, 1),
('2020-03-25 21:59:23.678003', '2020-03-25 21:59:23.678003', NULL, 1, 'A08593', 3250, 40, 100, 1, 72, NULL, 1),
('2020-03-25 21:59:23.817879', '2020-03-25 21:59:23.817879', NULL, 1, 'ROR00221', 6500, 41, 100, 1, 73, NULL, 1),
('2020-03-25 21:59:23.964412', '2020-03-25 21:59:23.964412', NULL, 1, 'B01MXFLUSV', 1999, 42, 100, 1, 74, NULL, 1),
('2020-03-25 21:59:24.200858', '2020-03-25 21:59:24.200858', NULL, 1, 'GL34LLW11', 18853, 43, 100, 1, 75, NULL, 1),
('2020-03-25 21:59:24.320235', '2020-03-25 21:59:24.320235', NULL, 1, '4058NB/09', 499, 44, 100, 1, 76, NULL, 1),
('2020-03-25 21:59:24.421184', '2020-03-25 21:59:24.421184', NULL, 1, '34-BC82444', 6500, 45, 100, 1, 77, NULL, 1),
('2020-03-25 21:59:24.518453', '2020-03-25 21:59:24.518453', NULL, 1, 'CH00001-12', 29500, 46, 100, 1, 78, NULL, 1),
('2020-03-25 21:59:24.670328', '2020-03-25 21:59:24.670328', NULL, 1, 'CH00001-02', 124500, 47, 100, 1, 79, NULL, 1),
('2020-03-25 21:59:24.786469', '2020-03-25 21:59:24.786469', NULL, 1, 'B45809LSW', 2845, 48, 100, 1, 80, NULL, 1),
('2020-03-25 21:59:24.955411', '2020-03-25 21:59:24.955411', NULL, 1, '304.096.29', 12500, 49, 100, 1, 81, NULL, 1),
('2020-03-25 21:59:25.098709', '2020-03-25 21:59:25.098709', NULL, 1, '404.068.14', 13000, 50, 100, 1, 82, NULL, 1),
('2020-03-25 21:59:25.249985', '2020-03-25 21:59:25.249985', NULL, 1, '003.600.02', 7000, 51, 100, 1, 83, NULL, 1),
('2020-03-25 21:59:25.328225', '2020-03-25 21:59:25.328225', NULL, 1, '202.493.30', 1400, 52, 100, 1, 84, NULL, 1),
('2020-03-25 21:59:25.429571', '2020-03-25 21:59:25.429571', NULL, 1, '404.290.14', 13000, 53, 100, 1, 85, NULL, 1),
('2020-03-25 21:59:25.749948', '2020-03-25 21:59:25.749948', NULL, 1, '404.038.96', 10000, 54, 100, 1, 86, NULL, 1),
('2020-03-25 21:59:25.842670', '2020-03-25 21:59:25.842670', NULL, 1, '404.038.96', 10000, 54, 100, 1, 87, NULL, 1),
('2020-03-25 21:59:25.907904', '2020-03-25 21:59:25.907904', NULL, 1, '404.038.96', 10000, 54, 100, 1, 88, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_variant_asset`
--

CREATE TABLE `product_variant_asset` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `assetId` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `productVariantId` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_variant_facet_values_facet_value`
--

CREATE TABLE `product_variant_facet_values_facet_value` (
  `productVariantId` int(11) NOT NULL,
  `facetValueId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_variant_facet_values_facet_value`
--

INSERT INTO `product_variant_facet_values_facet_value` (`productVariantId`, `facetValueId`) VALUES
(86, 38),
(87, 39),
(88, 28);

-- --------------------------------------------------------

--
-- Table structure for table `product_variant_options_product_option`
--

CREATE TABLE `product_variant_options_product_option` (
  `productVariantId` int(11) NOT NULL,
  `productOptionId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_variant_options_product_option`
--

INSERT INTO `product_variant_options_product_option` (`productVariantId`, `productOptionId`) VALUES
(1, 1),
(1, 3),
(2, 2),
(2, 3),
(3, 1),
(3, 4),
(4, 2),
(4, 4),
(5, 5),
(6, 6),
(9, 7),
(10, 8),
(11, 9),
(12, 10),
(13, 11),
(14, 12),
(14, 14),
(15, 13),
(15, 14),
(16, 12),
(16, 15),
(17, 13),
(17, 15),
(18, 16),
(19, 17),
(20, 18),
(21, 19),
(22, 20),
(43, 21),
(44, 22),
(45, 23),
(46, 24),
(47, 25),
(48, 26),
(49, 27),
(50, 28),
(51, 29),
(52, 30),
(53, 31),
(54, 32),
(55, 33),
(56, 34),
(57, 35),
(58, 36),
(59, 37),
(60, 38),
(61, 39),
(62, 40),
(63, 41),
(64, 42),
(65, 43),
(66, 44),
(86, 45),
(87, 46),
(88, 47);

-- --------------------------------------------------------

--
-- Table structure for table `product_variant_price`
--

CREATE TABLE `product_variant_price` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `price` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `channelId` int(11) NOT NULL,
  `variantId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_variant_price`
--

INSERT INTO `product_variant_price` (`createdAt`, `updatedAt`, `price`, `id`, `channelId`, `variantId`) VALUES
('2020-03-25 21:59:13.079068', '2020-03-25 21:59:13.079068', 129900, 1, 1, 1),
('2020-03-25 21:59:13.142368', '2020-03-25 21:59:13.142368', 139900, 2, 1, 2),
('2020-03-25 21:59:13.229533', '2020-03-25 21:59:13.229533', 219900, 3, 1, 3),
('2020-03-25 21:59:13.295073', '2020-03-25 21:59:13.295073', 229900, 4, 1, 4),
('2020-03-25 21:59:13.627740', '2020-03-25 21:59:13.627740', 32900, 5, 1, 5),
('2020-03-25 21:59:13.719829', '2020-03-25 21:59:13.719829', 44500, 6, 1, 6),
('2020-03-25 21:59:13.911205', '2020-03-25 21:59:13.911205', 1899, 7, 1, 7),
('2020-03-25 21:59:14.122229', '2020-03-25 21:59:14.122229', 31000, 8, 1, 8),
('2020-03-25 21:59:14.438209', '2020-03-25 21:59:14.438209', 14374, 9, 1, 9),
('2020-03-25 21:59:14.498221', '2020-03-25 21:59:14.498221', 16994, 10, 1, 10),
('2020-03-25 21:59:14.787005', '2020-03-25 21:59:14.787005', 13785, 11, 1, 11),
('2020-03-25 21:59:14.839376', '2020-03-25 21:59:14.839376', 14639, 12, 1, 12),
('2020-03-25 21:59:14.887290', '2020-03-25 21:59:14.887290', 28181, 13, 1, 13),
('2020-03-25 21:59:15.239634', '2020-03-25 21:59:15.239634', 108720, 14, 1, 14),
('2020-03-25 21:59:15.304686', '2020-03-25 21:59:15.304686', 109995, 15, 1, 15),
('2020-03-25 21:59:15.371018', '2020-03-25 21:59:15.371018', 93120, 16, 1, 16),
('2020-03-25 21:59:15.443820', '2020-03-25 21:59:15.443820', 94920, 17, 1, 17),
('2020-03-25 21:59:15.816821', '2020-03-25 21:59:15.816821', 3799, 18, 1, 18),
('2020-03-25 21:59:15.872129', '2020-03-25 21:59:15.872129', 5374, 19, 1, 19),
('2020-03-25 21:59:15.925288', '2020-03-25 21:59:15.925288', 7896, 20, 1, 20),
('2020-03-25 21:59:16.003759', '2020-03-25 21:59:16.003759', 9299, 21, 1, 21),
('2020-03-25 21:59:16.058330', '2020-03-25 21:59:16.058330', 13435, 22, 1, 22),
('2020-03-25 21:59:16.186764', '2020-03-25 21:59:16.186764', 7489, 23, 1, 23),
('2020-03-25 21:59:16.310732', '2020-03-25 21:59:16.310732', 597, 24, 1, 24),
('2020-03-25 21:59:16.517215', '2020-03-25 21:59:16.517215', 6900, 25, 1, 25),
('2020-03-25 21:59:16.766761', '2020-03-25 21:59:16.766761', 17499, 26, 1, 26),
('2020-03-25 21:59:16.949858', '2020-03-25 21:59:16.949858', 10400, 27, 1, 27),
('2020-03-25 21:59:17.142940', '2020-03-25 21:59:17.142940', 535000, 28, 1, 28),
('2020-03-25 21:59:17.322392', '2020-03-25 21:59:17.322392', 1498, 29, 1, 29),
('2020-03-25 21:59:17.503642', '2020-03-25 21:59:17.503642', 2000, 30, 1, 30),
('2020-03-25 21:59:17.667151', '2020-03-25 21:59:17.667151', 89999, 31, 1, 31),
('2020-03-25 21:59:17.779957', '2020-03-25 21:59:17.779957', 61500, 32, 1, 32),
('2020-03-25 21:59:17.886691', '2020-03-25 21:59:17.886691', 52100, 33, 1, 33),
('2020-03-25 21:59:18.063579', '2020-03-25 21:59:18.063579', 79900, 34, 1, 34),
('2020-03-25 21:59:18.318437', '2020-03-25 21:59:18.318437', 249900, 35, 1, 35),
('2020-03-25 21:59:18.553454', '2020-03-25 21:59:18.553454', 799, 36, 1, 36),
('2020-03-25 21:59:18.701387', '2020-03-25 21:59:18.701387', 3304, 37, 1, 37),
('2020-03-25 21:59:18.832887', '2020-03-25 21:59:18.832887', 21493, 38, 1, 38),
('2020-03-25 21:59:18.996420', '2020-03-25 21:59:18.996420', 2499, 39, 1, 39),
('2020-03-25 21:59:19.195356', '2020-03-25 21:59:19.195356', 5707, 40, 1, 40),
('2020-03-25 21:59:19.364801', '2020-03-25 21:59:19.364801', 1273, 41, 1, 41),
('2020-03-25 21:59:19.471557', '2020-03-25 21:59:19.471557', 3562, 42, 1, 42),
('2020-03-25 21:59:20.110486', '2020-03-25 21:59:20.110486', 9999, 43, 1, 43),
('2020-03-25 21:59:20.168305', '2020-03-25 21:59:20.168305', 9999, 44, 1, 44),
('2020-03-25 21:59:20.241302', '2020-03-25 21:59:20.241302', 9999, 45, 1, 45),
('2020-03-25 21:59:20.295063', '2020-03-25 21:59:20.295063', 9999, 46, 1, 46),
('2020-03-25 21:59:20.656044', '2020-03-25 21:59:20.656044', 16000, 47, 1, 47),
('2020-03-25 21:59:20.708407', '2020-03-25 21:59:20.708407', 16000, 48, 1, 48),
('2020-03-25 21:59:20.764589', '2020-03-25 21:59:20.764589', 16000, 49, 1, 49),
('2020-03-25 21:59:20.818032', '2020-03-25 21:59:20.818032', 16000, 50, 1, 50),
('2020-03-25 21:59:21.124715', '2020-03-25 21:59:21.124715', 14000, 51, 1, 51),
('2020-03-25 21:59:21.183566', '2020-03-25 21:59:21.183566', 14000, 52, 1, 52),
('2020-03-25 21:59:21.240228', '2020-03-25 21:59:21.240228', 14000, 53, 1, 53),
('2020-03-25 21:59:21.302373', '2020-03-25 21:59:21.302373', 14000, 54, 1, 54),
('2020-03-25 21:59:21.623993', '2020-03-25 21:59:21.623993', 9995, 55, 1, 55),
('2020-03-25 21:59:21.677163', '2020-03-25 21:59:21.677163', 9995, 56, 1, 56),
('2020-03-25 21:59:21.736812', '2020-03-25 21:59:21.736812', 9995, 57, 1, 57),
('2020-03-25 21:59:21.806695', '2020-03-25 21:59:21.806695', 9995, 58, 1, 58),
('2020-03-25 21:59:22.103077', '2020-03-25 21:59:22.103077', 4495, 59, 1, 59),
('2020-03-25 21:59:22.163642', '2020-03-25 21:59:22.163642', 4495, 60, 1, 60),
('2020-03-25 21:59:22.221598', '2020-03-25 21:59:22.221598', 4495, 61, 1, 61),
('2020-03-25 21:59:22.275904', '2020-03-25 21:59:22.275904', 4495, 62, 1, 62),
('2020-03-25 21:59:22.575220', '2020-03-25 21:59:22.575220', 6500, 63, 1, 63),
('2020-03-25 21:59:22.621987', '2020-03-25 21:59:22.621987', 6500, 64, 1, 64),
('2020-03-25 21:59:22.667864', '2020-03-25 21:59:22.667864', 6500, 65, 1, 65),
('2020-03-25 21:59:22.714481', '2020-03-25 21:59:22.714481', 6500, 66, 1, 66),
('2020-03-25 21:59:22.987655', '2020-03-25 21:59:22.987655', 1550, 67, 1, 67),
('2020-03-25 21:59:23.184344', '2020-03-25 21:59:23.184344', 675, 68, 1, 68),
('2020-03-25 21:59:23.290183', '2020-03-25 21:59:23.290183', 1995, 69, 1, 69),
('2020-03-25 21:59:23.404916', '2020-03-25 21:59:23.404916', 699, 70, 1, 70),
('2020-03-25 21:59:23.578444', '2020-03-25 21:59:23.578444', 895, 71, 1, 71),
('2020-03-25 21:59:23.708704', '2020-03-25 21:59:23.708704', 3250, 72, 1, 72),
('2020-03-25 21:59:23.851734', '2020-03-25 21:59:23.851734', 6500, 73, 1, 73),
('2020-03-25 21:59:23.999627', '2020-03-25 21:59:23.999627', 1999, 74, 1, 74),
('2020-03-25 21:59:24.231610', '2020-03-25 21:59:24.231610', 18853, 75, 1, 75),
('2020-03-25 21:59:24.350236', '2020-03-25 21:59:24.350236', 499, 76, 1, 76),
('2020-03-25 21:59:24.448348', '2020-03-25 21:59:24.448348', 6500, 77, 1, 77),
('2020-03-25 21:59:24.541398', '2020-03-25 21:59:24.541398', 29500, 78, 1, 78),
('2020-03-25 21:59:24.703817', '2020-03-25 21:59:24.703817', 124500, 79, 1, 79),
('2020-03-25 21:59:24.822659', '2020-03-25 21:59:24.822659', 2845, 80, 1, 80),
('2020-03-25 21:59:24.983353', '2020-03-25 21:59:24.983353', 12500, 81, 1, 81),
('2020-03-25 21:59:25.129822', '2020-03-25 21:59:25.129822', 13000, 82, 1, 82),
('2020-03-25 21:59:25.274007', '2020-03-25 21:59:25.274007', 7000, 83, 1, 83),
('2020-03-25 21:59:25.350527', '2020-03-25 21:59:25.350527', 1400, 84, 1, 84),
('2020-03-25 21:59:25.464363', '2020-03-25 21:59:25.464363', 13000, 85, 1, 85),
('2020-03-25 21:59:25.784575', '2020-03-25 21:59:25.784575', 10000, 86, 1, 86),
('2020-03-25 21:59:25.885035', '2020-03-25 21:59:25.885035', 10000, 87, 1, 87),
('2020-03-25 21:59:25.937903', '2020-03-25 21:59:25.937903', 10000, 88, 1, 88);

-- --------------------------------------------------------

--
-- Table structure for table `product_variant_translation`
--

CREATE TABLE `product_variant_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_variant_translation`
--

INSERT INTO `product_variant_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `id`, `baseId`) VALUES
('2020-03-25 21:59:13.004575', '2020-03-25 21:59:13.000000', 'en', 'Laptop 13 inch 8GB', 1, 1),
('2020-03-25 21:59:13.089619', '2020-03-25 21:59:13.000000', 'en', 'Laptop 15 inch 8GB', 2, 2),
('2020-03-25 21:59:13.169769', '2020-03-25 21:59:13.000000', 'en', 'Laptop 13 inch 16GB', 3, 3),
('2020-03-25 21:59:13.241518', '2020-03-25 21:59:13.000000', 'en', 'Laptop 15 inch 16GB', 4, 4),
('2020-03-25 21:59:13.566474', '2020-03-25 21:59:13.000000', 'en', 'Tablet 32GB', 5, 5),
('2020-03-25 21:59:13.641163', '2020-03-25 21:59:13.000000', 'en', 'Tablet 128GB', 6, 6),
('2020-03-25 21:59:13.866388', '2020-03-25 21:59:13.000000', 'en', 'Wireless Optical Mouse', 7, 7),
('2020-03-25 21:59:14.075009', '2020-03-25 21:59:14.000000', 'en', '32-Inch Monitor', 8, 8),
('2020-03-25 21:59:14.364369', '2020-03-25 21:59:14.000000', 'en', 'Curvy Monitor 24 inch', 9, 9),
('2020-03-25 21:59:14.450295', '2020-03-25 21:59:14.000000', 'en', 'Curvy Monitor 27 inch', 10, 10),
('2020-03-25 21:59:14.741879', '2020-03-25 21:59:14.000000', 'en', 'High Performance RAM 4GB', 11, 11),
('2020-03-25 21:59:14.796914', '2020-03-25 21:59:14.000000', 'en', 'High Performance RAM 8GB', 12, 12),
('2020-03-25 21:59:14.848562', '2020-03-25 21:59:14.000000', 'en', 'High Performance RAM 16GB', 13, 13),
('2020-03-25 21:59:15.199172', '2020-03-25 21:59:15.000000', 'en', 'Gaming PC i7-8700 240GB SSD', 14, 14),
('2020-03-25 21:59:15.254492', '2020-03-25 21:59:15.000000', 'en', 'Gaming PC R7-2700 240GB SSD', 15, 15),
('2020-03-25 21:59:15.316779', '2020-03-25 21:59:15.000000', 'en', 'Gaming PC i7-8700 120GB SSD', 16, 16),
('2020-03-25 21:59:15.380771', '2020-03-25 21:59:15.000000', 'en', 'Gaming PC R7-2700 120GB SSD', 17, 17),
('2020-03-25 21:59:15.773131', '2020-03-25 21:59:15.000000', 'en', 'Hard Drive 1TB', 18, 18),
('2020-03-25 21:59:15.827146', '2020-03-25 21:59:15.000000', 'en', 'Hard Drive 2TB', 19, 19),
('2020-03-25 21:59:15.881871', '2020-03-25 21:59:15.000000', 'en', 'Hard Drive 3TB', 20, 20),
('2020-03-25 21:59:15.935822', '2020-03-25 21:59:15.000000', 'en', 'Hard Drive 4TB', 21, 21),
('2020-03-25 21:59:16.013863', '2020-03-25 21:59:16.000000', 'en', 'Hard Drive 6TB', 22, 22),
('2020-03-25 21:59:16.135795', '2020-03-25 21:59:16.000000', 'en', 'Clacky Keyboard', 23, 23),
('2020-03-25 21:59:16.267503', '2020-03-25 21:59:16.000000', 'en', 'Ethernet Cable', 24, 24),
('2020-03-25 21:59:16.465978', '2020-03-25 21:59:16.000000', 'en', 'USB Cable', 25, 25),
('2020-03-25 21:59:16.718316', '2020-03-25 21:59:16.000000', 'en', 'Instant Camera', 26, 26),
('2020-03-25 21:59:16.902034', '2020-03-25 21:59:16.000000', 'en', 'Camera Lens', 27, 27),
('2020-03-25 21:59:17.096794', '2020-03-25 21:59:17.000000', 'en', 'Vintage Folding Camera', 28, 28),
('2020-03-25 21:59:17.273977', '2020-03-25 21:59:17.000000', 'en', 'Tripod', 29, 29),
('2020-03-25 21:59:17.449099', '2020-03-25 21:59:17.000000', 'en', 'Instamatic Camera', 30, 30),
('2020-03-25 21:59:17.621254', '2020-03-25 21:59:17.000000', 'en', 'Compact Digital Camera', 31, 31),
('2020-03-25 21:59:17.740051', '2020-03-25 21:59:17.000000', 'en', 'Nikkormat SLR Camera', 32, 32),
('2020-03-25 21:59:17.846838', '2020-03-25 21:59:17.000000', 'en', 'Compact SLR Camera', 33, 33),
('2020-03-25 21:59:18.019595', '2020-03-25 21:59:18.000000', 'en', 'Twin Lens Camera', 34, 34),
('2020-03-25 21:59:18.265942', '2020-03-25 21:59:18.000000', 'en', 'Road Bike', 35, 35),
('2020-03-25 21:59:18.506534', '2020-03-25 21:59:18.000000', 'en', 'Skipping Rope', 36, 36),
('2020-03-25 21:59:18.647621', '2020-03-25 21:59:18.000000', 'en', 'Boxing Gloves', 37, 37),
('2020-03-25 21:59:18.787017', '2020-03-25 21:59:18.000000', 'en', 'Tent', 38, 38),
('2020-03-25 21:59:18.916376', '2020-03-25 21:59:18.000000', 'en', 'Cruiser Skateboard', 39, 39),
('2020-03-25 21:59:19.140383', '2020-03-25 21:59:19.000000', 'en', 'Football', 40, 40),
('2020-03-25 21:59:19.321344', '2020-03-25 21:59:19.000000', 'en', 'Tennis Ball', 41, 41),
('2020-03-25 21:59:19.438870', '2020-03-25 21:59:19.000000', 'en', 'Basketball', 42, 42),
('2020-03-25 21:59:20.066884', '2020-03-25 21:59:20.000000', 'en', 'Ultraboost Running Shoe Size 40', 43, 43),
('2020-03-25 21:59:20.121146', '2020-03-25 21:59:20.000000', 'en', 'Ultraboost Running Shoe Size 42', 44, 44),
('2020-03-25 21:59:20.180247', '2020-03-25 21:59:20.000000', 'en', 'Ultraboost Running Shoe Size 44', 45, 45),
('2020-03-25 21:59:20.250589', '2020-03-25 21:59:20.000000', 'en', 'Ultraboost Running Shoe Size 46', 46, 46),
('2020-03-25 21:59:20.619034', '2020-03-25 21:59:20.000000', 'en', 'Freerun Running Shoe Size 40', 47, 47),
('2020-03-25 21:59:20.664775', '2020-03-25 21:59:20.000000', 'en', 'Freerun Running Shoe Size 42', 48, 48),
('2020-03-25 21:59:20.717817', '2020-03-25 21:59:20.000000', 'en', 'Freerun Running Shoe Size 44', 49, 49),
('2020-03-25 21:59:20.775045', '2020-03-25 21:59:20.000000', 'en', 'Freerun Running Shoe Size 46', 50, 50),
('2020-03-25 21:59:21.084511', '2020-03-25 21:59:21.000000', 'en', 'Hi-Top Basketball Shoe Size 40', 51, 51),
('2020-03-25 21:59:21.134494', '2020-03-25 21:59:21.000000', 'en', 'Hi-Top Basketball Shoe Size 42', 52, 52),
('2020-03-25 21:59:21.194976', '2020-03-25 21:59:21.000000', 'en', 'Hi-Top Basketball Shoe Size 44', 53, 53),
('2020-03-25 21:59:21.252043', '2020-03-25 21:59:21.000000', 'en', 'Hi-Top Basketball Shoe Size 46', 54, 54),
('2020-03-25 21:59:21.571190', '2020-03-25 21:59:21.000000', 'en', 'Pureboost Running Shoe Size 40', 55, 55),
('2020-03-25 21:59:21.633790', '2020-03-25 21:59:21.000000', 'en', 'Pureboost Running Shoe Size 42', 56, 56),
('2020-03-25 21:59:21.687204', '2020-03-25 21:59:21.000000', 'en', 'Pureboost Running Shoe Size 44', 57, 57),
('2020-03-25 21:59:21.748849', '2020-03-25 21:59:21.000000', 'en', 'Pureboost Running Shoe Size 46', 58, 58),
('2020-03-25 21:59:22.055861', '2020-03-25 21:59:22.000000', 'en', 'RunX Running Shoe Size 40', 59, 59),
('2020-03-25 21:59:22.113705', '2020-03-25 21:59:22.000000', 'en', 'RunX Running Shoe Size 42', 60, 60),
('2020-03-25 21:59:22.173905', '2020-03-25 21:59:22.000000', 'en', 'RunX Running Shoe Size 44', 61, 61),
('2020-03-25 21:59:22.232616', '2020-03-25 21:59:22.000000', 'en', 'RunX Running Shoe Size 46', 62, 62),
('2020-03-25 21:59:22.536116', '2020-03-25 21:59:22.000000', 'en', 'Allstar Sneakers Size 40', 63, 63),
('2020-03-25 21:59:22.584005', '2020-03-25 21:59:22.000000', 'en', 'Allstar Sneakers Size 42', 64, 64),
('2020-03-25 21:59:22.631199', '2020-03-25 21:59:22.000000', 'en', 'Allstar Sneakers Size 44', 65, 65),
('2020-03-25 21:59:22.677043', '2020-03-25 21:59:22.000000', 'en', 'Allstar Sneakers Size 46', 66, 66),
('2020-03-25 21:59:22.942069', '2020-03-25 21:59:22.000000', 'en', 'Spiky Cactus', 67, 67),
('2020-03-25 21:59:23.132117', '2020-03-25 21:59:23.000000', 'en', 'Tulip Pot', 68, 68),
('2020-03-25 21:59:23.264756', '2020-03-25 21:59:23.000000', 'en', 'Hanging Plant', 69, 69),
('2020-03-25 21:59:23.350653', '2020-03-25 21:59:23.000000', 'en', 'Aloe Vera', 70, 70),
('2020-03-25 21:59:23.515444', '2020-03-25 21:59:23.000000', 'en', 'Fern Blechnum Gibbum', 71, 71),
('2020-03-25 21:59:23.663701', '2020-03-25 21:59:23.000000', 'en', 'Assorted Indoor Succulents', 72, 72),
('2020-03-25 21:59:23.796846', '2020-03-25 21:59:23.000000', 'en', 'Orchid', 73, 73),
('2020-03-25 21:59:23.941779', '2020-03-25 21:59:23.000000', 'en', 'Bonsai Tree', 74, 74),
('2020-03-25 21:59:24.171822', '2020-03-25 21:59:24.000000', 'en', 'Guardian Lion Statue', 75, 75),
('2020-03-25 21:59:24.307216', '2020-03-25 21:59:24.000000', 'en', 'Hand Trowel', 76, 76),
('2020-03-25 21:59:24.414142', '2020-03-25 21:59:24.000000', 'en', 'Balloon Chair', 77, 77),
('2020-03-25 21:59:24.507340', '2020-03-25 21:59:24.000000', 'en', 'Grey Fabric Sofa', 78, 78),
('2020-03-25 21:59:24.658733', '2020-03-25 21:59:24.000000', 'en', 'Leather Sofa', 79, 79),
('2020-03-25 21:59:24.774030', '2020-03-25 21:59:24.000000', 'en', 'Light Shade', 80, 80),
('2020-03-25 21:59:24.942538', '2020-03-25 21:59:24.000000', 'en', 'Wooden Side Desk', 81, 81),
('2020-03-25 21:59:25.085644', '2020-03-25 21:59:25.000000', 'en', 'Comfy Padded Chair', 82, 82),
('2020-03-25 21:59:25.235536', '2020-03-25 21:59:25.000000', 'en', 'Black Eaves Chair', 83, 83),
('2020-03-25 21:59:25.318896', '2020-03-25 21:59:25.000000', 'en', 'Wooden Stool', 84, 84),
('2020-03-25 21:59:25.417455', '2020-03-25 21:59:25.000000', 'en', 'Bedside Table', 85, 85),
('2020-03-25 21:59:25.737279', '2020-03-25 21:59:25.000000', 'en', 'Modern Cafe Chair mustard', 86, 86),
('2020-03-25 21:59:25.830380', '2020-03-25 21:59:25.000000', 'en', 'Modern Cafe Chair mint', 87, 87),
('2020-03-25 21:59:25.894720', '2020-03-25 21:59:25.000000', 'en', 'Modern Cafe Chair pearl', 88, 88);

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `startsAt` datetime DEFAULT NULL,
  `endsAt` datetime DEFAULT NULL,
  `couponCode` varchar(255) DEFAULT NULL,
  `perCustomerUsageLimit` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `conditions` text NOT NULL,
  `actions` text NOT NULL,
  `priorityScore` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `promotion_channels_channel`
--

CREATE TABLE `promotion_channels_channel` (
  `promotionId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `refund`
--

CREATE TABLE `refund` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `items` int(11) NOT NULL,
  `shipping` int(11) NOT NULL,
  `adjustment` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `method` varchar(255) NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `state` varchar(255) NOT NULL,
  `transactionId` varchar(255) DEFAULT NULL,
  `metadata` text NOT NULL,
  `id` int(11) NOT NULL,
  `paymentId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `permissions` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`createdAt`, `updatedAt`, `code`, `description`, `permissions`, `id`) VALUES
('2020-03-25 21:58:58.967053', '2020-03-25 21:58:58.967053', '__super_admin_role__', 'SuperAdmin', 'Authenticated,SuperAdmin,Public,CreateCatalog,ReadCatalog,UpdateCatalog,DeleteCatalog,CreateCustomer,ReadCustomer,UpdateCustomer,DeleteCustomer,CreateAdministrator,ReadAdministrator,UpdateAdministrator,DeleteAdministrator,CreateOrder,ReadOrder,UpdateOrder,DeleteOrder,CreatePromotion,ReadPromotion,UpdatePromotion,DeletePromotion,CreateSettings,ReadSettings,UpdateSettings,DeleteSettings', 1),
('2020-03-25 21:58:58.983872', '2020-03-25 21:58:58.983872', '__customer_role__', 'Customer', 'Authenticated', 2);

-- --------------------------------------------------------

--
-- Table structure for table `role_channels_channel`
--

CREATE TABLE `role_channels_channel` (
  `roleId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_channels_channel`
--

INSERT INTO `role_channels_channel` (`roleId`, `channelId`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `search_index_item`
--

CREATE TABLE `search_index_item` (
  `languageCode` varchar(255) NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `productVariantName` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `priceWithTax` int(11) NOT NULL,
  `facetIds` text NOT NULL,
  `facetValueIds` text NOT NULL,
  `collectionIds` text NOT NULL,
  `channelIds` text NOT NULL,
  `productPreview` varchar(255) NOT NULL,
  `productPreviewFocalPoint` text DEFAULT NULL,
  `productVariantPreview` varchar(255) NOT NULL,
  `productVariantPreviewFocalPoint` text DEFAULT NULL,
  `productVariantId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productAssetId` int(11) DEFAULT NULL,
  `productVariantAssetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `search_index_item`
--

INSERT INTO `search_index_item` (`languageCode`, `enabled`, `productName`, `productVariantName`, `description`, `slug`, `sku`, `price`, `priceWithTax`, `facetIds`, `facetValueIds`, `collectionIds`, `channelIds`, `productPreview`, `productPreviewFocalPoint`, `productVariantPreview`, `productVariantPreviewFocalPoint`, `productVariantId`, `channelId`, `productId`, `productAssetId`, `productVariantAssetId`) VALUES
('en', 1, 'Laptop', 'Laptop 13 inch 8GB', 'Now equipped with seventh-generation Intel Core processors, Laptop is snappier than ever. From daily tasks like launching apps and opening files to more advanced computing, you can power through your day thanks to faster SSDs and Turbo Boost processing up to 3.6GHz.', 'laptop', 'L2201308', 129900, 155880, '1,2', '1,2,3', '2,3', '1', 'preview/97/derick-david-409858-unsplash__03__preview.jpg', NULL, '', NULL, 1, 1, 1, 1, NULL),
('en', 1, 'Laptop', 'Laptop 15 inch 8GB', 'Now equipped with seventh-generation Intel Core processors, Laptop is snappier than ever. From daily tasks like launching apps and opening files to more advanced computing, you can power through your day thanks to faster SSDs and Turbo Boost processing up to 3.6GHz.', 'laptop', 'L2201508', 139900, 167880, '1,2', '1,2,3', '2,3', '1', 'preview/97/derick-david-409858-unsplash__03__preview.jpg', NULL, '', NULL, 2, 1, 1, 1, NULL),
('en', 1, 'Laptop', 'Laptop 13 inch 16GB', 'Now equipped with seventh-generation Intel Core processors, Laptop is snappier than ever. From daily tasks like launching apps and opening files to more advanced computing, you can power through your day thanks to faster SSDs and Turbo Boost processing up to 3.6GHz.', 'laptop', 'L2201316', 219900, 263880, '1,2', '1,2,3', '2,3', '1', 'preview/97/derick-david-409858-unsplash__03__preview.jpg', NULL, '', NULL, 3, 1, 1, 1, NULL),
('en', 1, 'Laptop', 'Laptop 15 inch 16GB', 'Now equipped with seventh-generation Intel Core processors, Laptop is snappier than ever. From daily tasks like launching apps and opening files to more advanced computing, you can power through your day thanks to faster SSDs and Turbo Boost processing up to 3.6GHz.', 'laptop', 'L2201516', 229900, 275880, '1,2', '1,2,3', '2,3', '1', 'preview/97/derick-david-409858-unsplash__03__preview.jpg', NULL, '', NULL, 4, 1, 1, 1, NULL),
('en', 1, 'Tablet', 'Tablet 32GB', 'If the computer were invented today, what would it look like? It would be powerful enough for any task. So mobile you could take it everywhere. And so intuitive you could use it any way you wanted — with touch, a keyboard, or even a pencil. In other words, it wouldn’t really be a \"computer.\" It would be Tablet.', 'tablet', 'TBL200032', 32900, 39480, '1,2', '1,2,3', '2,3', '1', 'preview/c4/kelly-sikkema-685291-unsplash__03__preview.jpg', NULL, '', NULL, 5, 1, 2, 2, NULL),
('en', 1, 'Tablet', 'Tablet 128GB', 'If the computer were invented today, what would it look like? It would be powerful enough for any task. So mobile you could take it everywhere. And so intuitive you could use it any way you wanted — with touch, a keyboard, or even a pencil. In other words, it wouldn’t really be a \"computer.\" It would be Tablet.', 'tablet', 'TBL200128', 44500, 53400, '1,2', '1,2,3', '2,3', '1', 'preview/c4/kelly-sikkema-685291-unsplash__03__preview.jpg', NULL, '', NULL, 6, 1, 2, 2, NULL),
('en', 1, 'Wireless Optical Mouse', 'Wireless Optical Mouse', 'The Logitech M185 Wireless Optical Mouse is a great device for any computer user, and as Logitech are the global market leaders for these devices, you are also guaranteed absolute reliability. A mouse to be reckoned with!', 'cordless-mouse', '834444', 1899, 2279, '1,2', '1,2,4', '2,3', '1', 'preview/37/oscar-ivan-esquivel-arteaga-687447-unsplash__03__preview.jpg', NULL, '', NULL, 7, 1, 3, 3, NULL),
('en', 1, '32-Inch Monitor', '32-Inch Monitor', 'The UJ59 with Ultra HD resolution has 4x the pixels of Full HD, delivering more screen space and amazingly life-like images. That means you can view documents and webpages with less scrolling, work more comfortably with multiple windows and toolbars, and enjoy photos, videos and games in stunning 4K quality. Note: beverage not included.', '32-inch-monitor', 'LU32J590UQUXEN', 31000, 37200, '1,2', '1,2,5', '2,3', '1', 'preview/88/daniel-korpai-1302051-unsplash__03__preview.jpg', NULL, '', NULL, 8, 1, 4, 4, NULL),
('en', 1, 'Curvy Monitor', 'Curvy Monitor 24 inch', 'Discover a truly immersive viewing experience with this monitor curved more deeply than any other. Wrapping around your field of vision the 1,800 R screencreates a wider field of view, enhances depth perception, and minimises peripheral distractions to draw you deeper in to your content.', 'curvy-monitor', 'C24F390', 14374, 17249, '1,2', '1,2,5', '2,3', '1', 'preview/a2/alexandru-acea-686569-unsplash__03__preview.jpg', NULL, '', NULL, 9, 1, 5, 5, NULL),
('en', 1, 'Curvy Monitor', 'Curvy Monitor 27 inch', 'Discover a truly immersive viewing experience with this monitor curved more deeply than any other. Wrapping around your field of vision the 1,800 R screencreates a wider field of view, enhances depth perception, and minimises peripheral distractions to draw you deeper in to your content.', 'curvy-monitor', 'C27F390', 16994, 20393, '1,2', '1,2,5', '2,3', '1', 'preview/a2/alexandru-acea-686569-unsplash__03__preview.jpg', NULL, '', NULL, 10, 1, 5, 5, NULL),
('en', 1, 'High Performance RAM', 'High Performance RAM 4GB', 'Each RAM module is built with a pure aluminium heat spreader for faster heat dissipation and cooler operation. Enhanced to XMP 2.0 profiles for better overclocking; Compatibility: Intel 100 Series, Intel 200 Series, Intel 300 Series, Intel X299, AMD 300 Series, AMD 400 Series.', 'high-performance-ram', 'CMK32GX4M2AC04', 13785, 16542, '1,2', '1,2,6', '2,3', '1', 'preview/11/liam-briese-1128307-unsplash__03__preview.jpg', NULL, '', NULL, 11, 1, 6, 6, NULL),
('en', 1, 'High Performance RAM', 'High Performance RAM 8GB', 'Each RAM module is built with a pure aluminium heat spreader for faster heat dissipation and cooler operation. Enhanced to XMP 2.0 profiles for better overclocking; Compatibility: Intel 100 Series, Intel 200 Series, Intel 300 Series, Intel X299, AMD 300 Series, AMD 400 Series.', 'high-performance-ram', 'CMK32GX4M2AC08', 14639, 17567, '1,2', '1,2,6', '2,3', '1', 'preview/11/liam-briese-1128307-unsplash__03__preview.jpg', NULL, '', NULL, 12, 1, 6, 6, NULL),
('en', 1, 'High Performance RAM', 'High Performance RAM 16GB', 'Each RAM module is built with a pure aluminium heat spreader for faster heat dissipation and cooler operation. Enhanced to XMP 2.0 profiles for better overclocking; Compatibility: Intel 100 Series, Intel 200 Series, Intel 300 Series, Intel X299, AMD 300 Series, AMD 400 Series.', 'high-performance-ram', 'CMK32GX4M2AC16', 28181, 33817, '1,2', '1,2,6', '2,3', '1', 'preview/11/liam-briese-1128307-unsplash__03__preview.jpg', NULL, '', NULL, 13, 1, 6, 6, NULL),
('en', 1, 'Gaming PC', 'Gaming PC i7-8700 240GB SSD', 'This pc is optimised for gaming, and is also VR ready. The Intel Core-i7 CPU and High Performance GPU give the computer the raw power it needs to function at a high level.', 'gaming-pc', 'CGS480VR1063', 108720, 130464, '1,2', '1,2,7', '2,3', '1', 'preview/b5/florian-olivo-1166419-unsplash__03__preview.jpg', NULL, '', NULL, 14, 1, 7, 7, NULL),
('en', 1, 'Gaming PC', 'Gaming PC R7-2700 240GB SSD', 'This pc is optimised for gaming, and is also VR ready. The Intel Core-i7 CPU and High Performance GPU give the computer the raw power it needs to function at a high level.', 'gaming-pc', 'CGS480VR1064', 109995, 131994, '1,2', '1,2,7', '2,3', '1', 'preview/b5/florian-olivo-1166419-unsplash__03__preview.jpg', NULL, '', NULL, 15, 1, 7, 7, NULL),
('en', 1, 'Gaming PC', 'Gaming PC i7-8700 120GB SSD', 'This pc is optimised for gaming, and is also VR ready. The Intel Core-i7 CPU and High Performance GPU give the computer the raw power it needs to function at a high level.', 'gaming-pc', 'CGS480VR1065', 93120, 111744, '1,2', '1,2,7', '2,3', '1', 'preview/b5/florian-olivo-1166419-unsplash__03__preview.jpg', NULL, '', NULL, 16, 1, 7, 7, NULL),
('en', 1, 'Gaming PC', 'Gaming PC R7-2700 120GB SSD', 'This pc is optimised for gaming, and is also VR ready. The Intel Core-i7 CPU and High Performance GPU give the computer the raw power it needs to function at a high level.', 'gaming-pc', 'CGS480VR1066', 94920, 113904, '1,2', '1,2,7', '2,3', '1', 'preview/b5/florian-olivo-1166419-unsplash__03__preview.jpg', NULL, '', NULL, 17, 1, 7, 7, NULL),
('en', 1, 'Hard Drive', 'Hard Drive 1TB', 'Boost your PC storage with this internal hard drive, designed just for desktop and all-in-one PCs.', 'hard-drive', 'IHD455T1', 3799, 4559, '1,2', '1,2,8', '2,3', '1', 'preview/f7/vincent-botta-736919-unsplash__03__preview.jpg', NULL, '', NULL, 18, 1, 8, 8, NULL),
('en', 1, 'Hard Drive', 'Hard Drive 2TB', 'Boost your PC storage with this internal hard drive, designed just for desktop and all-in-one PCs.', 'hard-drive', 'IHD455T2', 5374, 6449, '1,2', '1,2,8', '2,3', '1', 'preview/f7/vincent-botta-736919-unsplash__03__preview.jpg', NULL, '', NULL, 19, 1, 8, 8, NULL),
('en', 1, 'Hard Drive', 'Hard Drive 3TB', 'Boost your PC storage with this internal hard drive, designed just for desktop and all-in-one PCs.', 'hard-drive', 'IHD455T3', 7896, 9475, '1,2', '1,2,8', '2,3', '1', 'preview/f7/vincent-botta-736919-unsplash__03__preview.jpg', NULL, '', NULL, 20, 1, 8, 8, NULL),
('en', 1, 'Hard Drive', 'Hard Drive 4TB', 'Boost your PC storage with this internal hard drive, designed just for desktop and all-in-one PCs.', 'hard-drive', 'IHD455T4', 9299, 11159, '1,2', '1,2,8', '2,3', '1', 'preview/f7/vincent-botta-736919-unsplash__03__preview.jpg', NULL, '', NULL, 21, 1, 8, 8, NULL),
('en', 1, 'Hard Drive', 'Hard Drive 6TB', 'Boost your PC storage with this internal hard drive, designed just for desktop and all-in-one PCs.', 'hard-drive', 'IHD455T6', 13435, 16122, '1,2', '1,2,8', '2,3', '1', 'preview/f7/vincent-botta-736919-unsplash__03__preview.jpg', NULL, '', NULL, 22, 1, 8, 8, NULL),
('en', 1, 'Clacky Keyboard', 'Clacky Keyboard', 'Let all your colleagues know that you are typing on this exclusive, colorful klicky-klacky keyboard. Huge travel on each keypress ensures maximum klack on each and every keystroke.', 'clacky-keyboard', 'A4TKLA45535', 7489, 8987, '1,2', '1,2,6', '2,3', '1', 'preview/ad/juan-gomez-674574-unsplash__03__preview.jpg', NULL, '', NULL, 23, 1, 9, 9, NULL),
('en', 1, 'Ethernet Cable', 'Ethernet Cable', '5m (metres) Cat.6 network cable (upwards/downwards compatible) | Patch cable | 2 RJ-45 plug | plug with bend protection mantle. High transmission speeds due to operating frequency with up to 250 MHz (in comparison to Cat.5/Cat.5e cable bandwidth of 100 MHz).', 'ethernet-cable', 'A23334x30', 597, 716, '1', '1,2', '2,3', '1', 'preview/bc/thomas-q-1229169-unsplash__03__preview.jpg', NULL, '', NULL, 24, 1, 10, 10, NULL),
('en', 1, 'USB Cable', 'USB Cable', 'Solid conductors eliminate strand-interaction distortion and reduce jitter. As the surface is made of high-purity silver, the performance is very close to that of a solid silver cable, but priced much closer to solid copper cable.', 'usb-cable', 'USBCIN01.5MI', 6900, 8280, '1', '1,2', '2,3', '1', 'preview/00/adam-birkett-239153-unsplash__03__preview.jpg', NULL, '', NULL, 25, 1, 11, 11, NULL),
('en', 1, 'Instant Camera', 'Instant Camera', 'With its nostalgic design and simple point-and-shoot functionality, the Instant Camera is the perfect pick to get started with instant photography.', 'instant-camera', 'IC22MWDD', 17499, 20999, '1,2', '1,9,10', '2,4', '1', 'preview/0c/eniko-kis-663725-unsplash__03__preview.jpg', NULL, '', NULL, 26, 1, 12, 12, NULL),
('en', 1, 'Camera Lens', 'Camera Lens', 'This lens is a Di type lens using an optical system with improved multi-coating designed to function with digital SLR cameras as well as film cameras.', 'camera-lens', 'B0012UUP02', 10400, 12480, '1,2', '1,9,11', '2,4', '1', 'preview/4f/brandi-redd-104140-unsplash__03__preview.jpg', NULL, '', NULL, 27, 1, 13, 13, NULL),
('en', 1, 'Vintage Folding Camera', 'Vintage Folding Camera', 'This vintage folding camera is so antiquated that you cannot possibly hope to produce actual photographs with it. However, it makes a wonderful decorative piece for the home or office.', 'vintage-folding-camera', 'B00AFC9099', 535000, 642000, '1,2', '1,9,12', '2,4', '1', 'preview/b8/jonathan-talbert-697262-unsplash__03__preview.jpg', NULL, '', NULL, 28, 1, 14, 14, NULL),
('en', 1, 'Tripod', 'Tripod', 'Capture vivid, professional-style photographs with help from this lightweight tripod. The adjustable-height tripod makes it easy to achieve reliable stability and score just the right angle when going after that award-winning shot.', 'tripod', 'B00XI87KV8', 1498, 1798, '1,2', '1,9,13', '2,4', '1', 'preview/a7/zoltan-tasi-423051-unsplash__03__preview.jpg', NULL, '', NULL, 29, 1, 15, 15, NULL),
('en', 1, 'Instamatic Camera', 'Instamatic Camera', 'This inexpensive point-and-shoot camera uses easy-to-load 126 film cartridges. A built-in flash unit ensure great results, no matter the lighting conditions.', 'instamatic-camera', 'B07K1330LL', 2000, 2400, '1,2', '1,9,14', '2,4', '1', 'preview/ba/jakob-owens-274337-unsplash__03__preview.jpg', NULL, '', NULL, 30, 1, 16, 16, NULL),
('en', 1, 'Compact Digital Camera', 'Compact Digital Camera', 'Unleash your creative potential with high-level performance and advanced features such as AI-powered Real-time Eye AF; new, high-precision Real-time Tracking; high-speed continuous shooting and 4K HDR movie-shooting. The camera\'s innovative AF quickly and reliably detects the position of the subject and then tracks the subject\'s motion, keeping it in sharp focus.', 'compact-digital-camera', 'B07D990021', 89999, 107999, '1,2', '1,9,15', '2,4', '1', 'preview/66/patrick-brinksma-663044-unsplash__03__preview.jpg', NULL, '', NULL, 31, 1, 17, 17, NULL),
('en', 1, 'Nikkormat SLR Camera', 'Nikkormat SLR Camera', 'The Nikkormat FS was brought to market by Nikon in 1965. The lens is a 50mm f1.4 Nikkor. Nice glass, smooth focus and a working diaphragm. A UV filter and a Nikon front lens cap are included with the lens.', 'nikkormat-slr-camera', 'B07D33B334', 61500, 73800, '1,2', '1,9,11', '2,4', '1', 'preview/10/chuttersnap-324234-unsplash__03__preview.jpg', NULL, '', NULL, 32, 1, 18, 18, NULL),
('en', 1, 'Compact SLR Camera', 'Compact SLR Camera', 'Retro styled, portable in size and built around a powerful 24-megapixel APS-C CMOS sensor, this digital camera is the ideal companion for creative everyday photography. Packed full of high spec features such as an advanced hybrid autofocus system able to keep pace with even the most active subjects, a speedy 6fps continuous-shooting mode, high-resolution electronic viewfinder and intuitive swivelling touchscreen, it brings professional image making into everyone’s grasp.', 'compact-slr-camera', 'B07D75V44S', 52100, 62520, '1', '1,9', '2,4', '1', 'preview/bd/robert-shunev-528016-unsplash__03__preview.jpg', NULL, '', NULL, 33, 1, 19, 19, NULL),
('en', 1, 'Twin Lens Camera', 'Twin Lens Camera', 'What makes a Rolleiflex TLR so special? Many things. To start, TLR stands for twin lens reflex. “Twin” because there are two lenses. And reflex means that the photographer looks through the lens to view the reflected image of an object or scene on the focusing screen.', 'twin-lens-camera', 'B07D78JTLR', 79900, 95880, '1,2', '1,9,16', '2,4', '1', 'preview/81/alexander-andrews-260988-unsplash__03__preview.jpg', NULL, '', NULL, 34, 1, 20, 20, NULL),
('en', 1, 'Road Bike', 'Road Bike', 'Featuring a full carbon chassis - complete with cyclocross-specific carbon fork - and a component setup geared for hard use on the race circuit, it\'s got the low weight, exceptional efficiency and brilliant handling you\'ll need to stay at the front of the pack.', 'road-bike', 'RB000844334', 249900, 299880, '1,2', '17,18,19', '8,9', '1', 'preview/f2/mikkel-bech-748940-unsplash__03__preview.jpg', NULL, '', NULL, 35, 1, 21, 21, NULL),
('en', 1, 'Skipping Rope', 'Skipping Rope', 'When you\'re working out you need a quality rope that doesn\'t tangle at every couple of jumps and with this skipping rope you won\'t have this problem. The fact that it looks like a pair of tasty frankfurters is merely a bonus.', 'skipping-rope', 'B07CNGXVXT', 799, 959, '1,2', '17,18,20', '8,9', '1', 'preview/18/stoica-ionela-530966-unsplash__03__preview.jpg', NULL, '', NULL, 36, 1, 22, 22, NULL),
('en', 1, 'Boxing Gloves', 'Boxing Gloves', 'Training gloves designed for optimum training. Our gloves promote proper punching technique because they are conformed to the natural shape of your fist. Dense, innovative two-layer foam provides better shock absorbency and full padding on the front, back and wrist to promote proper punching technique.', 'boxing-gloves', 'B000ZYLPPU', 3304, 3965, '1,2', '17,18,20', '8,9', '1', 'preview/52/neonbrand-428982-unsplash__03__preview.jpg', NULL, '', NULL, 37, 1, 23, 23, NULL),
('en', 1, 'Tent', 'Tent', 'With tons of space inside (for max. 4 persons), full head height throughout the entire tent and an unusual and striking shape, this tent offers you everything you need.', 'tent', '2000023510', 21493, 25792, '1', '17,18', '8,9', '1', 'preview/34/michael-guite-571169-unsplash__03__preview.jpg', NULL, '', NULL, 38, 1, 24, 24, NULL),
('en', 1, 'Cruiser Skateboard', 'Cruiser Skateboard', 'Based on the 1970s iconic shape, but made to a larger 69cm size, with updated, quality component, these skateboards are great for beginners to learn the foot spacing required, and are perfect for all-day cruising.', 'cruiser-skateboard', '799872520', 2499, 2999, '1', '17,18', '8,9', '1', 'preview/46/max-tarkhov-737999-unsplash__03__preview.jpg', NULL, '', NULL, 39, 1, 25, 25, NULL),
('en', 1, 'Football', 'Football', 'This football features high-contrast graphics for high-visibility during play, while its machine-stitched tpu casing offers consistent performance.', 'football', 'SC3137-056', 5707, 6848, '1,2', '17,18,21', '8,9', '1', 'preview/1f/nik-shuliahin-619349-unsplash__03__preview.jpg', NULL, '', NULL, 40, 1, 26, 26, NULL),
('en', 1, 'Tennis Ball', 'Tennis Ball', 'Our dog loves these tennis balls and they last for some time before they eventually either get lost in some field or bush or the covering comes off due to it being used most of the day every day.', 'tennis-ball', 'WRT11752P', 1273, 1528, '1,2', '17,18,22', '8,9', '1', 'preview/3f/ben-hershey-574483-unsplash__03__preview.jpg', NULL, '', NULL, 41, 1, 27, 27, NULL),
('en', 1, 'Basketball', 'Basketball', 'The Wilson MVP ball is perfect for playing basketball, and improving your skill for hours on end. Designed for new players, it is created with a high-quality rubber suitable for courts, allowing you to get full use during your practices.', 'basketball', 'WTB1418XB06', 3562, 4274, '1,2', '17,18,22', '8,9', '1', 'preview/a8/tommy-bebo-600358-unsplash__03__preview.jpg', NULL, '', NULL, 42, 1, 28, 28, NULL),
('en', 1, 'Ultraboost Running Shoe', 'Ultraboost Running Shoe Size 40', 'With its ultra-light, uber-responsive magic foam and a carbon fiber plate that feels like it’s propelling you forward, the Running Shoe is ready to push you to victories both large and small', 'ultraboost-running-shoe', 'RS0040', 9999, 11999, '1,2,3', '17,23,24,25,26', '8,10', '1', 'preview/fa/chuttersnap-584518-unsplash__03__preview.jpg', NULL, '', NULL, 43, 1, 29, 29, NULL),
('en', 1, 'Ultraboost Running Shoe', 'Ultraboost Running Shoe Size 42', 'With its ultra-light, uber-responsive magic foam and a carbon fiber plate that feels like it’s propelling you forward, the Running Shoe is ready to push you to victories both large and small', 'ultraboost-running-shoe', 'RS0042', 9999, 11999, '1,2,3', '17,23,24,25,26', '8,10', '1', 'preview/fa/chuttersnap-584518-unsplash__03__preview.jpg', NULL, '', NULL, 44, 1, 29, 29, NULL),
('en', 1, 'Ultraboost Running Shoe', 'Ultraboost Running Shoe Size 44', 'With its ultra-light, uber-responsive magic foam and a carbon fiber plate that feels like it’s propelling you forward, the Running Shoe is ready to push you to victories both large and small', 'ultraboost-running-shoe', 'RS0044', 9999, 11999, '1,2,3', '17,23,24,25,26', '8,10', '1', 'preview/fa/chuttersnap-584518-unsplash__03__preview.jpg', NULL, '', NULL, 45, 1, 29, 29, NULL),
('en', 1, 'Ultraboost Running Shoe', 'Ultraboost Running Shoe Size 46', 'With its ultra-light, uber-responsive magic foam and a carbon fiber plate that feels like it’s propelling you forward, the Running Shoe is ready to push you to victories both large and small', 'ultraboost-running-shoe', 'RS0046', 9999, 11999, '1,2,3', '17,23,24,25,26', '8,10', '1', 'preview/fa/chuttersnap-584518-unsplash__03__preview.jpg', NULL, '', NULL, 46, 1, 29, 29, NULL),
('en', 1, 'Freerun Running Shoe', 'Freerun Running Shoe Size 40', 'The Freerun Men\'s Running Shoe is built for record-breaking speed. The Flyknit upper delivers ultra-lightweight support that fits like a glove.', 'freerun-running-shoe', 'AR4561-40', 16000, 19200, '1,2,3', '17,23,21,27', '8,10', '1', 'preview/79/imani-clovis-234736-unsplash__03__preview.jpg', NULL, '', NULL, 47, 1, 30, 30, NULL),
('en', 1, 'Freerun Running Shoe', 'Freerun Running Shoe Size 42', 'The Freerun Men\'s Running Shoe is built for record-breaking speed. The Flyknit upper delivers ultra-lightweight support that fits like a glove.', 'freerun-running-shoe', 'AR4561-42', 16000, 19200, '1,2,3', '17,23,21,27', '8,10', '1', 'preview/79/imani-clovis-234736-unsplash__03__preview.jpg', NULL, '', NULL, 48, 1, 30, 30, NULL),
('en', 1, 'Freerun Running Shoe', 'Freerun Running Shoe Size 44', 'The Freerun Men\'s Running Shoe is built for record-breaking speed. The Flyknit upper delivers ultra-lightweight support that fits like a glove.', 'freerun-running-shoe', 'AR4561-44', 16000, 19200, '1,2,3', '17,23,21,27', '8,10', '1', 'preview/79/imani-clovis-234736-unsplash__03__preview.jpg', NULL, '', NULL, 49, 1, 30, 30, NULL),
('en', 1, 'Freerun Running Shoe', 'Freerun Running Shoe Size 46', 'The Freerun Men\'s Running Shoe is built for record-breaking speed. The Flyknit upper delivers ultra-lightweight support that fits like a glove.', 'freerun-running-shoe', 'AR4561-46', 16000, 19200, '1,2,3', '17,23,21,27', '8,10', '1', 'preview/79/imani-clovis-234736-unsplash__03__preview.jpg', NULL, '', NULL, 50, 1, 30, 30, NULL),
('en', 1, 'Hi-Top Basketball Shoe', 'Hi-Top Basketball Shoe Size 40', 'Boasting legendary performance since 2008, the Hyperdunkz Basketball Shoe needs no gimmicks to stand out. Air units deliver best-in-class cushioning, while a dynamic lacing system keeps your foot snug and secure, so you can focus on your game and nothing else.', 'hi-top-basketball-shoe', 'AO7893-40', 14000, 16800, '1,2,3', '17,23,21,28', '8,10', '1', 'preview/b4/xavier-teo-469050-unsplash__03__preview.jpg', NULL, '', NULL, 51, 1, 31, 31, NULL),
('en', 1, 'Hi-Top Basketball Shoe', 'Hi-Top Basketball Shoe Size 42', 'Boasting legendary performance since 2008, the Hyperdunkz Basketball Shoe needs no gimmicks to stand out. Air units deliver best-in-class cushioning, while a dynamic lacing system keeps your foot snug and secure, so you can focus on your game and nothing else.', 'hi-top-basketball-shoe', 'AO7893-42', 14000, 16800, '1,2,3', '17,23,21,28', '8,10', '1', 'preview/b4/xavier-teo-469050-unsplash__03__preview.jpg', NULL, '', NULL, 52, 1, 31, 31, NULL),
('en', 1, 'Hi-Top Basketball Shoe', 'Hi-Top Basketball Shoe Size 44', 'Boasting legendary performance since 2008, the Hyperdunkz Basketball Shoe needs no gimmicks to stand out. Air units deliver best-in-class cushioning, while a dynamic lacing system keeps your foot snug and secure, so you can focus on your game and nothing else.', 'hi-top-basketball-shoe', 'AO7893-44', 14000, 16800, '1,2,3', '17,23,21,28', '8,10', '1', 'preview/b4/xavier-teo-469050-unsplash__03__preview.jpg', NULL, '', NULL, 53, 1, 31, 31, NULL),
('en', 1, 'Hi-Top Basketball Shoe', 'Hi-Top Basketball Shoe Size 46', 'Boasting legendary performance since 2008, the Hyperdunkz Basketball Shoe needs no gimmicks to stand out. Air units deliver best-in-class cushioning, while a dynamic lacing system keeps your foot snug and secure, so you can focus on your game and nothing else.', 'hi-top-basketball-shoe', 'AO7893-46', 14000, 16800, '1,2,3', '17,23,21,28', '8,10', '1', 'preview/b4/xavier-teo-469050-unsplash__03__preview.jpg', NULL, '', NULL, 54, 1, 31, 31, NULL),
('en', 1, 'Pureboost Running Shoe', 'Pureboost Running Shoe Size 40', 'Built to handle curbs, corners and uneven sidewalks, these natural running shoes have an expanded landing zone and a heel plate for added stability. A lightweight and stretchy knit upper supports your native stride.', 'pureboost-running-shoe', 'F3578640', 9995, 11994, '1,2,3', '17,23,24,27,28', '8,10', '1', 'preview/79/thomas-serer-420833-unsplash__03__preview.jpg', NULL, '', NULL, 55, 1, 32, 32, NULL),
('en', 1, 'Pureboost Running Shoe', 'Pureboost Running Shoe Size 42', 'Built to handle curbs, corners and uneven sidewalks, these natural running shoes have an expanded landing zone and a heel plate for added stability. A lightweight and stretchy knit upper supports your native stride.', 'pureboost-running-shoe', 'F3578642', 9995, 11994, '1,2,3', '17,23,24,27,28', '8,10', '1', 'preview/79/thomas-serer-420833-unsplash__03__preview.jpg', NULL, '', NULL, 56, 1, 32, 32, NULL),
('en', 1, 'Pureboost Running Shoe', 'Pureboost Running Shoe Size 44', 'Built to handle curbs, corners and uneven sidewalks, these natural running shoes have an expanded landing zone and a heel plate for added stability. A lightweight and stretchy knit upper supports your native stride.', 'pureboost-running-shoe', 'F3578644', 9995, 11994, '1,2,3', '17,23,24,27,28', '8,10', '1', 'preview/79/thomas-serer-420833-unsplash__03__preview.jpg', NULL, '', NULL, 57, 1, 32, 32, NULL),
('en', 1, 'Pureboost Running Shoe', 'Pureboost Running Shoe Size 46', 'Built to handle curbs, corners and uneven sidewalks, these natural running shoes have an expanded landing zone and a heel plate for added stability. A lightweight and stretchy knit upper supports your native stride.', 'pureboost-running-shoe', 'F3578646', 9995, 11994, '1,2,3', '17,23,24,27,28', '8,10', '1', 'preview/79/thomas-serer-420833-unsplash__03__preview.jpg', NULL, '', NULL, 58, 1, 32, 32, NULL),
('en', 1, 'RunX Running Shoe', 'RunX Running Shoe Size 40', 'These running shoes are made with an airy, lightweight mesh upper. The durable rubber outsole grips the pavement for added stability. A cushioned midsole brings comfort to each step.', 'runx-running-shoe', 'F3633340', 4495, 5394, '1,2,3', '17,23,24,27', '8,10', '1', 'preview/89/nikolai-chernichenko-1299748-unsplash__03__preview.jpg', NULL, '', NULL, 59, 1, 33, 33, NULL),
('en', 1, 'RunX Running Shoe', 'RunX Running Shoe Size 42', 'These running shoes are made with an airy, lightweight mesh upper. The durable rubber outsole grips the pavement for added stability. A cushioned midsole brings comfort to each step.', 'runx-running-shoe', 'F3633342', 4495, 5394, '1,2,3', '17,23,24,27', '8,10', '1', 'preview/89/nikolai-chernichenko-1299748-unsplash__03__preview.jpg', NULL, '', NULL, 60, 1, 33, 33, NULL),
('en', 1, 'RunX Running Shoe', 'RunX Running Shoe Size 44', 'These running shoes are made with an airy, lightweight mesh upper. The durable rubber outsole grips the pavement for added stability. A cushioned midsole brings comfort to each step.', 'runx-running-shoe', 'F3633344', 4495, 5394, '1,2,3', '17,23,24,27', '8,10', '1', 'preview/89/nikolai-chernichenko-1299748-unsplash__03__preview.jpg', NULL, '', NULL, 61, 1, 33, 33, NULL),
('en', 1, 'RunX Running Shoe', 'RunX Running Shoe Size 46', 'These running shoes are made with an airy, lightweight mesh upper. The durable rubber outsole grips the pavement for added stability. A cushioned midsole brings comfort to each step.', 'runx-running-shoe', 'F3633346', 4495, 5394, '1,2,3', '17,23,24,27', '8,10', '1', 'preview/89/nikolai-chernichenko-1299748-unsplash__03__preview.jpg', NULL, '', NULL, 62, 1, 33, 33, NULL),
('en', 1, 'Allstar Sneakers', 'Allstar Sneakers Size 40', 'All Star is the most iconic sneaker in the world, recognised for its unmistakable silhouette, star-centred ankle patch and cultural authenticity. And like the best paradigms, it only gets better with time.', 'allstar-sneakers', 'CAS23340', 6500, 7800, '1,2,3', '17,23,29,27', '8,10', '1', 'preview/f5/mitch-lensink-256007-unsplash__03__preview.jpg', NULL, '', NULL, 63, 1, 34, 34, NULL),
('en', 1, 'Allstar Sneakers', 'Allstar Sneakers Size 42', 'All Star is the most iconic sneaker in the world, recognised for its unmistakable silhouette, star-centred ankle patch and cultural authenticity. And like the best paradigms, it only gets better with time.', 'allstar-sneakers', 'CAS23342', 6500, 7800, '1,2,3', '17,23,29,27', '8,10', '1', 'preview/f5/mitch-lensink-256007-unsplash__03__preview.jpg', NULL, '', NULL, 64, 1, 34, 34, NULL),
('en', 1, 'Allstar Sneakers', 'Allstar Sneakers Size 44', 'All Star is the most iconic sneaker in the world, recognised for its unmistakable silhouette, star-centred ankle patch and cultural authenticity. And like the best paradigms, it only gets better with time.', 'allstar-sneakers', 'CAS23344', 6500, 7800, '1,2,3', '17,23,29,27', '8,10', '1', 'preview/f5/mitch-lensink-256007-unsplash__03__preview.jpg', NULL, '', NULL, 65, 1, 34, 34, NULL),
('en', 1, 'Allstar Sneakers', 'Allstar Sneakers Size 46', 'All Star is the most iconic sneaker in the world, recognised for its unmistakable silhouette, star-centred ankle patch and cultural authenticity. And like the best paradigms, it only gets better with time.', 'allstar-sneakers', 'CAS23346', 6500, 7800, '1,2,3', '17,23,29,27', '8,10', '1', 'preview/f5/mitch-lensink-256007-unsplash__03__preview.jpg', NULL, '', NULL, 66, 1, 34, 34, NULL),
('en', 1, 'Spiky Cactus', 'Spiky Cactus', 'A spiky yet elegant house cactus - perfect for the home or office. Origin and habitat: Probably native only to the Andes of Peru', 'spiky-cactus', 'SC011001', 1550, 1860, '1,4', '30,31,32', '5,7', '1', 'preview/37/charles-deluvio-695736-unsplash__03__preview.jpg', NULL, '', NULL, 67, 1, 35, 35, NULL),
('en', 1, 'Tulip Pot', 'Tulip Pot', 'Bright crimson red species tulip with black centers, the poppy-like flowers will open up in full sun. Ideal for rock gardens, pots and border edging.', 'tulip-pot', 'A58477', 675, 810, '1,4', '30,31,32,33', '5,7', '1', 'preview/7e/natalia-y-345738-unsplash__03__preview.jpg', NULL, '', NULL, 68, 1, 36, 36, NULL),
('en', 1, 'Hanging Plant', 'Hanging Plant', 'Can be found in tropical and sub-tropical America where it grows on the branches of trees, but also on telephone wires and electricity cables and poles that sometimes topple with the weight of these plants. This plant loves a moist and warm air.', 'hanging-plant', 'A44223', 1995, 2394, '1,4', '30,31,33', '5,7', '1', 'preview/a9/alex-rodriguez-santibanez-200278-unsplash__03__preview.jpg', NULL, '', NULL, 69, 1, 37, 37, NULL),
('en', 1, 'Aloe Vera', 'Aloe Vera', 'Decorative Aloe vera makes a lovely house plant. A really trendy plant, Aloe vera is just so easy to care for. Aloe vera sap has been renowned for its remarkable medicinal and cosmetic properties for many centuries and has been used to treat grazes, insect bites and sunburn - it really works.', 'aloe-vera', 'A44352', 699, 839, '1,4', '30,31,32', '5,7', '1', 'preview/60/silvia-agrasar-227575-unsplash__03__preview.jpg', NULL, '', NULL, 70, 1, 38, 38, NULL),
('en', 1, 'Fern Blechnum Gibbum', 'Fern Blechnum Gibbum', 'Create a tropical feel in your home with this lush green tree fern, it has decorative leaves and will develop a short slender trunk in time.', 'fern-blechnum-gibbum', 'A04851', 895, 1074, '1,4', '30,31,33', '5,7', '1', 'preview/68/caleb-george-536388-unsplash__03__preview.jpg', NULL, '', NULL, 71, 1, 39, 39, NULL),
('en', 1, 'Assorted Indoor Succulents', 'Assorted Indoor Succulents', 'These assorted succulents come in a variety of different shapes and colours - each with their own unique personality. Succulents grow best in plenty of light: a sunny windowsill would be the ideal spot for them to thrive!', 'assorted-succulents', 'A08593', 3250, 3900, '1,4', '30,31,32', '5,7', '1', 'preview/7c/annie-spratt-78044-unsplash__03__preview.jpg', NULL, '', NULL, 72, 1, 40, 40, NULL),
('en', 1, 'Orchid', 'Orchid', 'Gloriously elegant. It can go along with any interior as it is a neutral color and the most popular Phalaenopsis overall. 2 to 3 foot stems host large white flowers that can last for over 2 months.', 'orchid', 'ROR00221', 6500, 7800, '1', '30,31', '5,7', '1', 'preview/d6/zoltan-kovacs-642412-unsplash__03__preview.jpg', NULL, '', NULL, 73, 1, 41, 41, NULL),
('en', 1, 'Bonsai Tree', 'Bonsai Tree', 'Excellent semi-evergreen bonsai. Indoors or out but needs some winter protection. All trees sent will leave the nursery in excellent condition and will be of equal quality or better than the photograph shown.', 'bonsai-tree', 'B01MXFLUSV', 1999, 2399, '1', '30,31', '5,7', '1', 'preview/74/mark-tegethoff-667351-unsplash__03__preview.jpg', NULL, '', NULL, 74, 1, 42, 42, NULL),
('en', 1, 'Guardian Lion Statue', 'Guardian Lion Statue', 'Placing it at home or office can bring you fortune and prosperity, guard your house and ward off ill fortune.', 'guardian-lion-statue', 'GL34LLW11', 18853, 22624, '1,3', '30,34,35', '5,6', '1', 'preview/7f/vincent-liu-525429-unsplash__03__preview.jpg', NULL, '', NULL, 75, 1, 43, 43, NULL),
('en', 1, 'Hand Trowel', 'Hand Trowel', 'Hand trowel for garden cultivating hammer finish epoxy-coated head for improved resistance to rust, scratches, humidity and alkalines in the soil.', 'hand-trowel', '4058NB/09', 499, 599, '1', '30,31', '5,7', '1', 'preview/2b/neslihan-gunaydin-3493-unsplash__03__preview.jpg', NULL, '', NULL, 76, 1, 44, 44, NULL),
('en', 1, 'Balloon Chair', 'Balloon Chair', 'A charming vintage white wooden chair featuring an extremely spherical pink balloon. The balloon may be detached and used for other purposes, for example as a party decoration.', 'balloon-chair', '34-BC82444', 6500, 7800, '1', '30,34', '5,6', '1', 'preview/f5/florian-klauer-14840-unsplash__03__preview.jpg', NULL, '', NULL, 77, 1, 45, 45, NULL),
('en', 1, 'Grey Fabric Sofa', 'Grey Fabric Sofa', 'Seat cushions filled with high resilience foam and polyester fibre wadding give comfortable support for your body, and easily regain their shape when you get up. The cover is easy to keep clean as it is removable and can be machine washed.', 'grey-fabric-sofa', 'CH00001-12', 29500, 35400, '1,3', '30,34,35', '5,6', '1', 'preview/3f/nathan-fertig-249917-unsplash__03__preview.jpg', NULL, '', NULL, 78, 1, 46, 46, NULL),
('en', 1, 'Leather Sofa', 'Leather Sofa', 'This premium, tan-brown bonded leather seat is part of the \'chill\' sofa range. The lever activated recline feature makes it easy to adjust to any position. This smart, bustle back design with rounded tight padded arms has been designed with your comfort in mind. This well-padded chair has foam pocket sprung seat cushions and fibre-filled back cushions.', 'leather-sofa', 'CH00001-02', 124500, 149400, '1,3', '30,34,36', '5,6', '1', 'preview/db/paul-weaver-1120584-unsplash__03__preview.jpg', NULL, '', NULL, 79, 1, 47, 47, NULL),
('en', 1, 'Light Shade', 'Light Shade', 'Modern tapered white polycotton pendant shade with a metallic silver chrome interior finish for maximum light reflection. Reversible gimble so it can be used as a ceiling shade or as a lamp shade.', 'light-shade', 'B45809LSW', 2845, 3414, '1', '30,34', '5,6', '1', 'preview/38/pierre-chatel-innocenti-483198-unsplash__03__preview.jpg', NULL, '', NULL, 80, 1, 48, 48, NULL),
('en', 1, 'Wooden Side Desk', 'Wooden Side Desk', 'Drawer stops prevent the drawers from being pulled out too far. Built-in cable management for collecting cables and cords; out of sight but close at hand.', 'wooden-side-desk', '304.096.29', 12500, 15000, '1,3', '30,34,37', '5,6', '1', 'preview/a3/abel-y-costa-716024-unsplash__03__preview.jpg', NULL, '', NULL, 81, 1, 49, 49, NULL),
('en', 1, 'Comfy Padded Chair', 'Comfy Padded Chair', 'You sit comfortably thanks to the shaped back. The chair frame is made of solid wood, which is a durable natural material.', 'comfy-padded-chair', '404.068.14', 13000, 15600, '1,3', '30,34,35', '5,6', '1', 'preview/62/kari-shea-398668-unsplash__03__preview.jpg', NULL, '', NULL, 82, 1, 50, 50, NULL),
('en', 1, 'Black Eaves Chair', 'Black Eaves Chair', 'Comfortable to sit on thanks to the bowl-shaped seat and rounded shape of the backrest. No tools are required to assemble the chair, you just click it together with a simple mechanism under the seat.', 'black-eaves-chair', '003.600.02', 7000, 8400, '1,3', '30,34,27', '5,6', '1', 'preview/98/andres-jasso-220776-unsplash__03__preview.jpg', NULL, '', NULL, 83, 1, 51, 51, NULL),
('en', 1, 'Wooden Stool', 'Wooden Stool', 'Solid wood is a hardwearing natural material, which can be sanded and surface treated as required.', 'wooden-stool', '202.493.30', 1400, 1680, '1,3', '30,34,37', '5,6', '1', 'preview/a4/ruslan-bardash-351288-unsplash__03__preview.jpg', NULL, '', NULL, 84, 1, 52, 52, NULL),
('en', 1, 'Bedside Table', 'Bedside Table', 'Every table is unique, with varying grain pattern and natural colour shifts that are part of the charm of wood.', 'bedside-table', '404.290.14', 13000, 15600, '1,3', '30,34,28', '5,6', '1', 'preview/60/benjamin-voros-310026-unsplash__03__preview.jpg', NULL, '', NULL, 85, 1, 53, 53, NULL),
('en', 1, 'Modern Cafe Chair', 'Modern Cafe Chair mustard', 'You sit comfortably thanks to the restful flexibility of the seat. Lightweight and easy to move around, yet stable enough even for the liveliest, young family members.', 'modern-cafe-chair', '404.038.96', 10000, 12000, '3,1', '38,30,34', '5,6', '1', 'preview/dd/jean-philippe-delberghe-1400011-unsplash__03__preview.jpg', NULL, '', NULL, 86, 1, 54, 54, NULL),
('en', 1, 'Modern Cafe Chair', 'Modern Cafe Chair mint', 'You sit comfortably thanks to the restful flexibility of the seat. Lightweight and easy to move around, yet stable enough even for the liveliest, young family members.', 'modern-cafe-chair', '404.038.96', 10000, 12000, '3,1', '39,30,34', '5,6', '1', 'preview/dd/jean-philippe-delberghe-1400011-unsplash__03__preview.jpg', NULL, '', NULL, 87, 1, 54, 54, NULL),
('en', 1, 'Modern Cafe Chair', 'Modern Cafe Chair pearl', 'You sit comfortably thanks to the restful flexibility of the seat. Lightweight and easy to move around, yet stable enough even for the liveliest, young family members.', 'modern-cafe-chair', '404.038.96', 10000, 12000, '3,1', '28,30,34', '5,6', '1', 'preview/dd/jean-philippe-delberghe-1400011-unsplash__03__preview.jpg', NULL, '', NULL, 88, 1, 54, 54, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `token` varchar(255) NOT NULL,
  `expires` datetime NOT NULL,
  `invalidated` tinyint(4) NOT NULL,
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `activeOrderId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`createdAt`, `updatedAt`, `token`, `expires`, `invalidated`, `id`, `type`, `activeOrderId`, `userId`) VALUES
('2020-03-25 21:59:29.193413', '2020-03-25 21:59:29.193413', 'a6b65f0f870b98bb9e00e00e781e7d4323b4a0d28c7d06e29a65ddae4aeb49d9', '2020-04-01 21:59:29', 0, 1, 'AuthenticatedSession', NULL, 1),
('2020-03-25 22:02:14.826831', '2020-03-25 22:02:14.826831', '21069a8b38584667f2751ec7e6e8dc6ddf8f63aa9f1d3ef6d3e7209d24ce0592', '2021-03-26 04:02:14', 0, 2, 'AnonymousSession', NULL, NULL),
('2020-03-25 22:02:24.377836', '2020-03-25 22:02:55.000000', '43d4709bdffeea6ea2b708d7b78b6818591e4627a2edc980b96b3da71fd7d587', '2020-04-01 22:02:24', 0, 3, 'AuthenticatedSession', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_method`
--

CREATE TABLE `shipping_method` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `checker` text NOT NULL,
  `calculator` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping_method`
--

INSERT INTO `shipping_method` (`createdAt`, `updatedAt`, `deletedAt`, `code`, `description`, `checker`, `calculator`, `id`) VALUES
('2020-03-25 21:59:12.048326', '2020-03-25 21:59:12.048326', NULL, 'standard-shipping', 'Standard Shipping', '{\"code\":\"default-shipping-eligibility-checker\",\"args\":[{\"name\":\"orderMinimum\",\"value\":\"0\",\"type\":\"int\"}]}', '{\"code\":\"default-shipping-calculator\",\"args\":[{\"name\":\"rate\",\"value\":\"500\",\"type\":\"int\"},{\"name\":\"taxRate\",\"value\":\"0\",\"type\":\"int\"}]}', 1),
('2020-03-25 21:59:12.089779', '2020-03-25 21:59:12.089779', NULL, 'express-shipping', 'Express Shipping', '{\"code\":\"default-shipping-eligibility-checker\",\"args\":[{\"name\":\"orderMinimum\",\"value\":\"0\",\"type\":\"int\"}]}', '{\"code\":\"default-shipping-calculator\",\"args\":[{\"name\":\"rate\",\"value\":\"1000\",\"type\":\"int\"},{\"name\":\"taxRate\",\"value\":\"0\",\"type\":\"int\"}]}', 2);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_method_channels_channel`
--

CREATE TABLE `shipping_method_channels_channel` (
  `shippingMethodId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping_method_channels_channel`
--

INSERT INTO `shipping_method_channels_channel` (`shippingMethodId`, `channelId`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `stock_movement`
--

CREATE TABLE `stock_movement` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `type` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `discriminator` varchar(255) NOT NULL,
  `productVariantId` int(11) DEFAULT NULL,
  `orderItemId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_movement`
--

INSERT INTO `stock_movement` (`createdAt`, `updatedAt`, `type`, `quantity`, `id`, `discriminator`, `productVariantId`, `orderItemId`) VALUES
('2020-03-25 21:59:13.059561', '2020-03-25 21:59:13.059561', 'ADJUSTMENT', 100, 1, 'StockAdjustment', 1, NULL),
('2020-03-25 21:59:13.120598', '2020-03-25 21:59:13.120598', 'ADJUSTMENT', 100, 2, 'StockAdjustment', 2, NULL),
('2020-03-25 21:59:13.210246', '2020-03-25 21:59:13.210246', 'ADJUSTMENT', 100, 3, 'StockAdjustment', 3, NULL),
('2020-03-25 21:59:13.278862', '2020-03-25 21:59:13.278862', 'ADJUSTMENT', 100, 4, 'StockAdjustment', 4, NULL),
('2020-03-25 21:59:13.606174', '2020-03-25 21:59:13.606174', 'ADJUSTMENT', 100, 5, 'StockAdjustment', 5, NULL),
('2020-03-25 21:59:13.704311', '2020-03-25 21:59:13.704311', 'ADJUSTMENT', 100, 6, 'StockAdjustment', 6, NULL),
('2020-03-25 21:59:13.897571', '2020-03-25 21:59:13.897571', 'ADJUSTMENT', 100, 7, 'StockAdjustment', 7, NULL),
('2020-03-25 21:59:14.107429', '2020-03-25 21:59:14.107429', 'ADJUSTMENT', 100, 8, 'StockAdjustment', 8, NULL),
('2020-03-25 21:59:14.400306', '2020-03-25 21:59:14.400306', 'ADJUSTMENT', 100, 9, 'StockAdjustment', 9, NULL),
('2020-03-25 21:59:14.485292', '2020-03-25 21:59:14.485292', 'ADJUSTMENT', 100, 10, 'StockAdjustment', 10, NULL),
('2020-03-25 21:59:14.774318', '2020-03-25 21:59:14.774318', 'ADJUSTMENT', 100, 11, 'StockAdjustment', 11, NULL),
('2020-03-25 21:59:14.827076', '2020-03-25 21:59:14.827076', 'ADJUSTMENT', 100, 12, 'StockAdjustment', 12, NULL),
('2020-03-25 21:59:14.875730', '2020-03-25 21:59:14.875730', 'ADJUSTMENT', 100, 13, 'StockAdjustment', 13, NULL),
('2020-03-25 21:59:15.227011', '2020-03-25 21:59:15.227011', 'ADJUSTMENT', 100, 14, 'StockAdjustment', 14, NULL),
('2020-03-25 21:59:15.290860', '2020-03-25 21:59:15.290860', 'ADJUSTMENT', 100, 15, 'StockAdjustment', 15, NULL),
('2020-03-25 21:59:15.351359', '2020-03-25 21:59:15.351359', 'ADJUSTMENT', 100, 16, 'StockAdjustment', 16, NULL),
('2020-03-25 21:59:15.413695', '2020-03-25 21:59:15.413695', 'ADJUSTMENT', 100, 17, 'StockAdjustment', 17, NULL),
('2020-03-25 21:59:15.803359', '2020-03-25 21:59:15.803359', 'ADJUSTMENT', 100, 18, 'StockAdjustment', 18, NULL),
('2020-03-25 21:59:15.858150', '2020-03-25 21:59:15.858150', 'ADJUSTMENT', 100, 19, 'StockAdjustment', 19, NULL),
('2020-03-25 21:59:15.911766', '2020-03-25 21:59:15.911766', 'ADJUSTMENT', 100, 20, 'StockAdjustment', 20, NULL),
('2020-03-25 21:59:15.990032', '2020-03-25 21:59:15.990032', 'ADJUSTMENT', 100, 21, 'StockAdjustment', 21, NULL),
('2020-03-25 21:59:16.045243', '2020-03-25 21:59:16.045243', 'ADJUSTMENT', 100, 22, 'StockAdjustment', 22, NULL),
('2020-03-25 21:59:16.171130', '2020-03-25 21:59:16.171130', 'ADJUSTMENT', 100, 23, 'StockAdjustment', 23, NULL),
('2020-03-25 21:59:16.295486', '2020-03-25 21:59:16.295486', 'ADJUSTMENT', 100, 24, 'StockAdjustment', 24, NULL),
('2020-03-25 21:59:16.502263', '2020-03-25 21:59:16.502263', 'ADJUSTMENT', 100, 25, 'StockAdjustment', 25, NULL),
('2020-03-25 21:59:16.752419', '2020-03-25 21:59:16.752419', 'ADJUSTMENT', 100, 26, 'StockAdjustment', 26, NULL),
('2020-03-25 21:59:16.933455', '2020-03-25 21:59:16.933455', 'ADJUSTMENT', 100, 27, 'StockAdjustment', 27, NULL),
('2020-03-25 21:59:17.128888', '2020-03-25 21:59:17.128888', 'ADJUSTMENT', 100, 28, 'StockAdjustment', 28, NULL),
('2020-03-25 21:59:17.306402', '2020-03-25 21:59:17.306402', 'ADJUSTMENT', 100, 29, 'StockAdjustment', 29, NULL),
('2020-03-25 21:59:17.483327', '2020-03-25 21:59:17.483327', 'ADJUSTMENT', 100, 30, 'StockAdjustment', 30, NULL),
('2020-03-25 21:59:17.654961', '2020-03-25 21:59:17.654961', 'ADJUSTMENT', 100, 31, 'StockAdjustment', 31, NULL),
('2020-03-25 21:59:17.765821', '2020-03-25 21:59:17.765821', 'ADJUSTMENT', 100, 32, 'StockAdjustment', 32, NULL),
('2020-03-25 21:59:17.874400', '2020-03-25 21:59:17.874400', 'ADJUSTMENT', 100, 33, 'StockAdjustment', 33, NULL),
('2020-03-25 21:59:18.050436', '2020-03-25 21:59:18.050436', 'ADJUSTMENT', 100, 34, 'StockAdjustment', 34, NULL),
('2020-03-25 21:59:18.295434', '2020-03-25 21:59:18.295434', 'ADJUSTMENT', 100, 35, 'StockAdjustment', 35, NULL),
('2020-03-25 21:59:18.538262', '2020-03-25 21:59:18.538262', 'ADJUSTMENT', 100, 36, 'StockAdjustment', 36, NULL),
('2020-03-25 21:59:18.680055', '2020-03-25 21:59:18.680055', 'ADJUSTMENT', 100, 37, 'StockAdjustment', 37, NULL),
('2020-03-25 21:59:18.820657', '2020-03-25 21:59:18.820657', 'ADJUSTMENT', 100, 38, 'StockAdjustment', 38, NULL),
('2020-03-25 21:59:18.968676', '2020-03-25 21:59:18.968676', 'ADJUSTMENT', 100, 39, 'StockAdjustment', 39, NULL),
('2020-03-25 21:59:19.179327', '2020-03-25 21:59:19.179327', 'ADJUSTMENT', 100, 40, 'StockAdjustment', 40, NULL),
('2020-03-25 21:59:19.349353', '2020-03-25 21:59:19.349353', 'ADJUSTMENT', 100, 41, 'StockAdjustment', 41, NULL),
('2020-03-25 21:59:19.460521', '2020-03-25 21:59:19.460521', 'ADJUSTMENT', 100, 42, 'StockAdjustment', 42, NULL),
('2020-03-25 21:59:20.096677', '2020-03-25 21:59:20.096677', 'ADJUSTMENT', 100, 43, 'StockAdjustment', 43, NULL),
('2020-03-25 21:59:20.152235', '2020-03-25 21:59:20.152235', 'ADJUSTMENT', 100, 44, 'StockAdjustment', 44, NULL),
('2020-03-25 21:59:20.219795', '2020-03-25 21:59:20.219795', 'ADJUSTMENT', 100, 45, 'StockAdjustment', 45, NULL),
('2020-03-25 21:59:20.282173', '2020-03-25 21:59:20.282173', 'ADJUSTMENT', 100, 46, 'StockAdjustment', 46, NULL),
('2020-03-25 21:59:20.644981', '2020-03-25 21:59:20.644981', 'ADJUSTMENT', 100, 47, 'StockAdjustment', 47, NULL),
('2020-03-25 21:59:20.696078', '2020-03-25 21:59:20.696078', 'ADJUSTMENT', 100, 48, 'StockAdjustment', 48, NULL),
('2020-03-25 21:59:20.746561', '2020-03-25 21:59:20.746561', 'ADJUSTMENT', 100, 49, 'StockAdjustment', 49, NULL),
('2020-03-25 21:59:20.805592', '2020-03-25 21:59:20.805592', 'ADJUSTMENT', 100, 50, 'StockAdjustment', 50, NULL),
('2020-03-25 21:59:21.112782', '2020-03-25 21:59:21.112782', 'ADJUSTMENT', 100, 51, 'StockAdjustment', 51, NULL),
('2020-03-25 21:59:21.167546', '2020-03-25 21:59:21.167546', 'ADJUSTMENT', 100, 52, 'StockAdjustment', 52, NULL),
('2020-03-25 21:59:21.226660', '2020-03-25 21:59:21.226660', 'ADJUSTMENT', 100, 53, 'StockAdjustment', 53, NULL),
('2020-03-25 21:59:21.288227', '2020-03-25 21:59:21.288227', 'ADJUSTMENT', 100, 54, 'StockAdjustment', 54, NULL),
('2020-03-25 21:59:21.609801', '2020-03-25 21:59:21.609801', 'ADJUSTMENT', 100, 55, 'StockAdjustment', 55, NULL),
('2020-03-25 21:59:21.662659', '2020-03-25 21:59:21.662659', 'ADJUSTMENT', 100, 56, 'StockAdjustment', 56, NULL),
('2020-03-25 21:59:21.720328', '2020-03-25 21:59:21.720328', 'ADJUSTMENT', 100, 57, 'StockAdjustment', 57, NULL),
('2020-03-25 21:59:21.791127', '2020-03-25 21:59:21.791127', 'ADJUSTMENT', 100, 58, 'StockAdjustment', 58, NULL),
('2020-03-25 21:59:22.088911', '2020-03-25 21:59:22.088911', 'ADJUSTMENT', 100, 59, 'StockAdjustment', 59, NULL),
('2020-03-25 21:59:22.148745', '2020-03-25 21:59:22.148745', 'ADJUSTMENT', 100, 60, 'StockAdjustment', 60, NULL),
('2020-03-25 21:59:22.206481', '2020-03-25 21:59:22.206481', 'ADJUSTMENT', 100, 61, 'StockAdjustment', 61, NULL),
('2020-03-25 21:59:22.263970', '2020-03-25 21:59:22.263970', 'ADJUSTMENT', 100, 62, 'StockAdjustment', 62, NULL),
('2020-03-25 21:59:22.563169', '2020-03-25 21:59:22.563169', 'ADJUSTMENT', 100, 63, 'StockAdjustment', 63, NULL),
('2020-03-25 21:59:22.610564', '2020-03-25 21:59:22.610564', 'ADJUSTMENT', 100, 64, 'StockAdjustment', 64, NULL),
('2020-03-25 21:59:22.656349', '2020-03-25 21:59:22.656349', 'ADJUSTMENT', 100, 65, 'StockAdjustment', 65, NULL),
('2020-03-25 21:59:22.703095', '2020-03-25 21:59:22.703095', 'ADJUSTMENT', 100, 66, 'StockAdjustment', 66, NULL),
('2020-03-25 21:59:22.975967', '2020-03-25 21:59:22.975967', 'ADJUSTMENT', 100, 67, 'StockAdjustment', 67, NULL),
('2020-03-25 21:59:23.168280', '2020-03-25 21:59:23.168280', 'ADJUSTMENT', 100, 68, 'StockAdjustment', 68, NULL),
('2020-03-25 21:59:23.280304', '2020-03-25 21:59:23.280304', 'ADJUSTMENT', 100, 69, 'StockAdjustment', 69, NULL),
('2020-03-25 21:59:23.387403', '2020-03-25 21:59:23.387403', 'ADJUSTMENT', 100, 70, 'StockAdjustment', 70, NULL),
('2020-03-25 21:59:23.562292', '2020-03-25 21:59:23.562292', 'ADJUSTMENT', 100, 71, 'StockAdjustment', 71, NULL),
('2020-03-25 21:59:23.694699', '2020-03-25 21:59:23.694699', 'ADJUSTMENT', 100, 72, 'StockAdjustment', 72, NULL),
('2020-03-25 21:59:23.835368', '2020-03-25 21:59:23.835368', 'ADJUSTMENT', 100, 73, 'StockAdjustment', 73, NULL),
('2020-03-25 21:59:23.983629', '2020-03-25 21:59:23.983629', 'ADJUSTMENT', 100, 74, 'StockAdjustment', 74, NULL),
('2020-03-25 21:59:24.215628', '2020-03-25 21:59:24.215628', 'ADJUSTMENT', 100, 75, 'StockAdjustment', 75, NULL),
('2020-03-25 21:59:24.338479', '2020-03-25 21:59:24.338479', 'ADJUSTMENT', 100, 76, 'StockAdjustment', 76, NULL),
('2020-03-25 21:59:24.432856', '2020-03-25 21:59:24.432856', 'ADJUSTMENT', 100, 77, 'StockAdjustment', 77, NULL),
('2020-03-25 21:59:24.530302', '2020-03-25 21:59:24.530302', 'ADJUSTMENT', 100, 78, 'StockAdjustment', 78, NULL),
('2020-03-25 21:59:24.686096', '2020-03-25 21:59:24.686096', 'ADJUSTMENT', 100, 79, 'StockAdjustment', 79, NULL),
('2020-03-25 21:59:24.809955', '2020-03-25 21:59:24.809955', 'ADJUSTMENT', 100, 80, 'StockAdjustment', 80, NULL),
('2020-03-25 21:59:24.970664', '2020-03-25 21:59:24.970664', 'ADJUSTMENT', 100, 81, 'StockAdjustment', 81, NULL),
('2020-03-25 21:59:25.115390', '2020-03-25 21:59:25.115390', 'ADJUSTMENT', 100, 82, 'StockAdjustment', 82, NULL),
('2020-03-25 21:59:25.264392', '2020-03-25 21:59:25.264392', 'ADJUSTMENT', 100, 83, 'StockAdjustment', 83, NULL),
('2020-03-25 21:59:25.341456', '2020-03-25 21:59:25.341456', 'ADJUSTMENT', 100, 84, 'StockAdjustment', 84, NULL),
('2020-03-25 21:59:25.448385', '2020-03-25 21:59:25.448385', 'ADJUSTMENT', 100, 85, 'StockAdjustment', 85, NULL),
('2020-03-25 21:59:25.771288', '2020-03-25 21:59:25.771288', 'ADJUSTMENT', 100, 86, 'StockAdjustment', 86, NULL),
('2020-03-25 21:59:25.871667', '2020-03-25 21:59:25.871667', 'ADJUSTMENT', 100, 87, 'StockAdjustment', 87, NULL),
('2020-03-25 21:59:25.924303', '2020-03-25 21:59:25.924303', 'ADJUSTMENT', 100, 88, 'StockAdjustment', 88, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tax_category`
--

CREATE TABLE `tax_category` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tax_category`
--

INSERT INTO `tax_category` (`createdAt`, `updatedAt`, `name`, `id`) VALUES
('2020-03-25 21:59:11.039265', '2020-03-25 21:59:11.039265', 'Standard Tax', 1),
('2020-03-25 21:59:11.374880', '2020-03-25 21:59:11.374880', 'Reduced Tax', 2),
('2020-03-25 21:59:11.725807', '2020-03-25 21:59:11.725807', 'Zero Tax', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tax_rate`
--

CREATE TABLE `tax_rate` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `name` varchar(255) NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `value` decimal(5,2) NOT NULL,
  `id` int(11) NOT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `zoneId` int(11) DEFAULT NULL,
  `customerGroupId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tax_rate`
--

INSERT INTO `tax_rate` (`createdAt`, `updatedAt`, `name`, `enabled`, `value`, `id`, `categoryId`, `zoneId`, `customerGroupId`) VALUES
('2020-03-25 21:59:11.067193', '2020-03-25 21:59:11.067193', 'Standard Tax Asia', 1, '20.00', 1, 1, 1, NULL),
('2020-03-25 21:59:11.144032', '2020-03-25 21:59:11.144032', 'Standard Tax Europe', 1, '20.00', 2, 1, 2, NULL),
('2020-03-25 21:59:11.216591', '2020-03-25 21:59:11.216591', 'Standard Tax Africa', 1, '20.00', 3, 1, 3, NULL),
('2020-03-25 21:59:11.267143', '2020-03-25 21:59:11.267143', 'Standard Tax Oceania', 1, '20.00', 4, 1, 4, NULL),
('2020-03-25 21:59:11.315892', '2020-03-25 21:59:11.315892', 'Standard Tax Americas', 1, '20.00', 5, 1, 5, NULL),
('2020-03-25 21:59:11.439816', '2020-03-25 21:59:11.439816', 'Reduced Tax Asia', 1, '10.00', 6, 2, 1, NULL),
('2020-03-25 21:59:11.501292', '2020-03-25 21:59:11.501292', 'Reduced Tax Europe', 1, '10.00', 7, 2, 2, NULL),
('2020-03-25 21:59:11.559848', '2020-03-25 21:59:11.559848', 'Reduced Tax Africa', 1, '10.00', 8, 2, 3, NULL),
('2020-03-25 21:59:11.614930', '2020-03-25 21:59:11.614930', 'Reduced Tax Oceania', 1, '10.00', 9, 2, 4, NULL),
('2020-03-25 21:59:11.673259', '2020-03-25 21:59:11.673259', 'Reduced Tax Americas', 1, '10.00', 10, 2, 5, NULL),
('2020-03-25 21:59:11.750311', '2020-03-25 21:59:11.750311', 'Zero Tax Asia', 1, '0.00', 11, 3, 1, NULL),
('2020-03-25 21:59:11.798492', '2020-03-25 21:59:11.798492', 'Zero Tax Europe', 1, '0.00', 12, 3, 2, NULL),
('2020-03-25 21:59:11.861276', '2020-03-25 21:59:11.861276', 'Zero Tax Africa', 1, '0.00', 13, 3, 3, NULL),
('2020-03-25 21:59:11.929061', '2020-03-25 21:59:11.929061', 'Zero Tax Oceania', 1, '0.00', 14, 3, 4, NULL),
('2020-03-25 21:59:11.992245', '2020-03-25 21:59:11.992245', 'Zero Tax Americas', 1, '0.00', 15, 3, 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `identifier` varchar(255) NOT NULL,
  `passwordHash` varchar(255) NOT NULL,
  `verified` tinyint(4) NOT NULL DEFAULT 0,
  `verificationToken` varchar(255) DEFAULT NULL,
  `passwordResetToken` varchar(255) DEFAULT NULL,
  `identifierChangeToken` varchar(255) DEFAULT NULL,
  `pendingIdentifier` varchar(255) DEFAULT NULL,
  `lastLogin` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`createdAt`, `updatedAt`, `identifier`, `passwordHash`, `verified`, `verificationToken`, `passwordResetToken`, `identifierChangeToken`, `pendingIdentifier`, `lastLogin`, `id`) VALUES
('2020-03-25 21:58:59.533794', '2020-03-25 21:58:59.533794', 'superadmin', '$2b$12$E5lEmKdWm8zxFasmY3mlpe3nwUCy3vISvL9pXBzoAIECIDqrs8aau', 1, NULL, NULL, NULL, NULL, NULL, 1),
('2020-03-25 21:59:29.823606', '2020-03-25 21:59:29.823606', 'hayden.zieme12@hotmail.com', '$2b$12$gIlLahdQJjePNTofdzGNZOJlLw8eAiJoYaMqrwvvZsRdtNFe5pkO.', 1, NULL, NULL, NULL, NULL, NULL, 2),
('2020-03-25 21:59:30.450343', '2020-03-25 21:59:30.450343', 'trevor_donnelly96@hotmail.com', '$2b$12$3QFeAqKe8udmnsii5yGDOOV2HqkxK7kPQKUYHj3u/f2caWJeurij2', 1, NULL, NULL, NULL, NULL, NULL, 3),
('2020-03-25 21:59:31.034920', '2020-03-25 21:59:31.034920', 'marques.sawayn@hotmail.com', '$2b$12$avaMN024GQgceYJ/vXbce.i8QMEWuSE5xz16rQiUn3eEs1j3289NS', 1, NULL, NULL, NULL, NULL, NULL, 4),
('2020-03-25 21:59:31.739783', '2020-03-25 21:59:31.739783', 'eliezer56@yahoo.com', '$2b$12$WA3.b62jHMctDrWcNpp8uua2ly5v5QXKsban2oo5gLBa2J2Nfa9IC', 1, NULL, NULL, NULL, NULL, NULL, 5),
('2020-03-25 21:59:32.333223', '2020-03-25 21:59:32.333223', 'stewart.lindgren@gmail.com', '$2b$12$yzrdKuBQXHKID76Nwt8iPufB4X/xIgPPrd1f6GCnQzye7g0tN3l.a', 1, NULL, NULL, NULL, NULL, NULL, 6),
('2020-03-25 21:59:32.941359', '2020-03-25 21:59:32.941359', 'hilario66@hotmail.com', '$2b$12$up3HV3i1n/T22hagRFkxS.SpkoBsnVBVPLZ6LBenoRmPXSvKSfVHi', 1, NULL, NULL, NULL, NULL, NULL, 7),
('2020-03-25 21:59:33.513100', '2020-03-25 21:59:33.513100', 'florence_kovacek46@hotmail.com', '$2b$12$kMzNqxyXWzMJaE0thzJ2j.2QhI/ZbGPH/0PDs95wfvGKJhhrytfx6', 1, NULL, NULL, NULL, NULL, NULL, 8),
('2020-03-25 21:59:34.111737', '2020-03-25 21:59:34.111737', 'alec.breitenberg@gmail.com', '$2b$12$yUBxMcvBi8IEz4VQVXbTOeCGvGwlrUF7hTCdRCdSaFiYfRXf3jpt6', 1, NULL, NULL, NULL, NULL, NULL, 9),
('2020-03-25 21:59:34.707649', '2020-03-25 21:59:34.707649', 'hettie36@yahoo.com', '$2b$12$2Ym8xMgLHXtylAHlp2KoXevsASz1xghDiiLgjga/e5dZePrd30I1y', 1, NULL, NULL, NULL, NULL, NULL, 10),
('2020-03-25 21:59:35.280443', '2020-03-25 21:59:35.280443', 'cleta_wehner@yahoo.com', '$2b$12$HIal8awMq2UdeZ8WKzGlUeMKqhm48DY4n4diNPleEq0ihsA8ZjPu6', 1, NULL, NULL, NULL, NULL, NULL, 11);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles_role`
--

CREATE TABLE `user_roles_role` (
  `userId` int(11) NOT NULL,
  `roleId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_roles_role`
--

INSERT INTO `user_roles_role` (`userId`, `roleId`) VALUES
(1, 1),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `zone`
--

CREATE TABLE `zone` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zone`
--

INSERT INTO `zone` (`createdAt`, `updatedAt`, `name`, `id`) VALUES
('2020-03-25 21:58:59.861174', '2020-03-25 21:58:59.861174', 'Asia', 1),
('2020-03-25 21:58:59.992590', '2020-03-25 21:58:59.992590', 'Europe', 2),
('2020-03-25 21:59:00.144373', '2020-03-25 21:59:00.144373', 'Africa', 3),
('2020-03-25 21:59:00.242151', '2020-03-25 21:59:00.242151', 'Oceania', 4),
('2020-03-25 21:59:00.435412', '2020-03-25 21:59:00.435412', 'Americas', 5);

-- --------------------------------------------------------

--
-- Table structure for table `zone_members_country`
--

CREATE TABLE `zone_members_country` (
  `zoneId` int(11) NOT NULL,
  `countryId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zone_members_country`
--

INSERT INTO `zone_members_country` (`zoneId`, `countryId`) VALUES
(1, 1),
(1, 11),
(1, 15),
(1, 17),
(1, 18),
(1, 25),
(1, 33),
(1, 38),
(1, 45),
(1, 58),
(1, 82),
(1, 100),
(1, 103),
(1, 104),
(1, 105),
(1, 106),
(1, 109),
(1, 112),
(1, 114),
(1, 115),
(1, 118),
(1, 119),
(1, 120),
(1, 121),
(1, 122),
(1, 124),
(1, 131),
(1, 135),
(1, 136),
(1, 148),
(1, 153),
(1, 156),
(1, 167),
(1, 168),
(1, 170),
(1, 175),
(1, 180),
(1, 195),
(1, 200),
(1, 210),
(1, 216),
(1, 217),
(1, 218),
(1, 220),
(1, 221),
(1, 227),
(1, 228),
(1, 233),
(1, 238),
(1, 241),
(1, 246),
(2, 2),
(2, 3),
(2, 6),
(2, 14),
(2, 20),
(2, 21),
(2, 28),
(2, 34),
(2, 55),
(2, 59),
(2, 60),
(2, 69),
(2, 73),
(2, 75),
(2, 76),
(2, 83),
(2, 85),
(2, 86),
(2, 92),
(2, 98),
(2, 101),
(2, 102),
(2, 107),
(2, 108),
(2, 110),
(2, 113),
(2, 123),
(2, 128),
(2, 129),
(2, 130),
(2, 132),
(2, 138),
(2, 146),
(2, 147),
(2, 149),
(2, 157),
(2, 166),
(2, 177),
(2, 178),
(2, 182),
(2, 183),
(2, 193),
(2, 197),
(2, 202),
(2, 203),
(2, 209),
(2, 213),
(2, 214),
(2, 215),
(2, 232),
(2, 234),
(3, 4),
(3, 7),
(3, 23),
(3, 29),
(3, 32),
(3, 35),
(3, 36),
(3, 37),
(3, 39),
(3, 42),
(3, 43),
(3, 49),
(3, 50),
(3, 51),
(3, 54),
(3, 61),
(3, 65),
(3, 67),
(3, 68),
(3, 70),
(3, 71),
(3, 79),
(3, 80),
(3, 81),
(3, 84),
(3, 93),
(3, 94),
(3, 116),
(3, 125),
(3, 126),
(3, 127),
(3, 133),
(3, 134),
(3, 137),
(3, 141),
(3, 142),
(3, 143),
(3, 151),
(3, 152),
(3, 154),
(3, 161),
(3, 162),
(3, 181),
(3, 184),
(3, 186),
(3, 194),
(3, 196),
(3, 198),
(3, 199),
(3, 205),
(3, 206),
(3, 208),
(3, 211),
(3, 219),
(3, 222),
(3, 226),
(3, 231),
(3, 245),
(3, 247),
(3, 248),
(4, 5),
(4, 13),
(4, 46),
(4, 47),
(4, 52),
(4, 74),
(4, 78),
(4, 90),
(4, 97),
(4, 117),
(4, 139),
(4, 145),
(4, 155),
(4, 158),
(4, 159),
(4, 163),
(4, 164),
(4, 165),
(4, 169),
(4, 172),
(4, 176),
(4, 192),
(4, 204),
(4, 223),
(4, 224),
(4, 230),
(4, 236),
(4, 239),
(4, 244),
(5, 8),
(5, 9),
(5, 10),
(5, 12),
(5, 16),
(5, 19),
(5, 22),
(5, 24),
(5, 26),
(5, 27),
(5, 30),
(5, 31),
(5, 40),
(5, 41),
(5, 44),
(5, 48),
(5, 53),
(5, 56),
(5, 57),
(5, 62),
(5, 63),
(5, 64),
(5, 66),
(5, 72),
(5, 77),
(5, 87),
(5, 88),
(5, 89),
(5, 91),
(5, 95),
(5, 96),
(5, 99),
(5, 111),
(5, 140),
(5, 144),
(5, 150),
(5, 160),
(5, 171),
(5, 173),
(5, 174),
(5, 179),
(5, 185),
(5, 187),
(5, 188),
(5, 189),
(5, 190),
(5, 191),
(5, 201),
(5, 207),
(5, 212),
(5, 225),
(5, 229),
(5, 235),
(5, 237),
(5, 240),
(5, 242),
(5, 243);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_dc34d382b493ade1f70e834c4d3` (`customerId`),
  ADD KEY `FK_d87215343c3a3a67e6a0b7f3ea9` (`countryId`);

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_154f5c538b1576ccc277b1ed63` (`emailAddress`),
  ADD UNIQUE KEY `REL_1966e18ce6a39a82b19204704d` (`userId`);

--
-- Indexes for table `asset`
--
ALTER TABLE `asset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `channel`
--
ALTER TABLE `channel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_06127ac6c6d913f4320759971d` (`code`),
  ADD UNIQUE KEY `IDX_842699fce4f3470a7d06d89de8` (`token`),
  ADD KEY `FK_afe9f917a1c82b9e9e69f7c6129` (`defaultTaxZoneId`),
  ADD KEY `FK_c9ca2f58d4517460435cbd8b4c9` (`defaultShippingZoneId`);

--
-- Indexes for table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_7256fef1bb42f1b38156b7449f5` (`featuredAssetId`),
  ADD KEY `FK_4257b61275144db89fa0f5dc059` (`parentId`);

--
-- Indexes for table `collection_asset`
--
ALTER TABLE `collection_asset`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_51da53b26522dc0525762d2de8e` (`assetId`),
  ADD KEY `FK_1ed9e48dfbf74b5fcbb35d3d686` (`collectionId`);

--
-- Indexes for table `collection_channels_channel`
--
ALTER TABLE `collection_channels_channel`
  ADD PRIMARY KEY (`collectionId`,`channelId`),
  ADD KEY `IDX_cdbf33ffb5d451916125152008` (`collectionId`),
  ADD KEY `IDX_7216ab24077cf5cbece7857dbb` (`channelId`);

--
-- Indexes for table `collection_product_variants_product_variant`
--
ALTER TABLE `collection_product_variants_product_variant`
  ADD PRIMARY KEY (`collectionId`,`productVariantId`),
  ADD KEY `IDX_6faa7b72422d9c4679e2f186ad` (`collectionId`),
  ADD KEY `IDX_fb05887e2867365f236d7dd95e` (`productVariantId`);

--
-- Indexes for table `collection_translation`
--
ALTER TABLE `collection_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_e329f9036210d75caa1d8f2154a` (`baseId`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_translation`
--
ALTER TABLE `country_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_20958e5bdb4c996c18ca63d18e4` (`baseId`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_83f24bc49f83dce1c7a48ff7a9` (`emailAddress`),
  ADD UNIQUE KEY `REL_3f62b42ed23958b120c235f74d` (`userId`);

--
-- Indexes for table `customer_group`
--
ALTER TABLE `customer_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_groups_customer_group`
--
ALTER TABLE `customer_groups_customer_group`
  ADD PRIMARY KEY (`customerId`,`customerGroupId`),
  ADD KEY `IDX_b823a3c8bf3b78d3ed68736485` (`customerId`),
  ADD KEY `IDX_85feea3f0e5e82133605f78db0` (`customerGroupId`);

--
-- Indexes for table `facet`
--
ALTER TABLE `facet`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_0c9a5d053fdf4ebb5f0490b40f` (`code`);

--
-- Indexes for table `facet_translation`
--
ALTER TABLE `facet_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_eaea53f44bf9e97790d38a3d68f` (`baseId`);

--
-- Indexes for table `facet_value`
--
ALTER TABLE `facet_value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_d101dc2265a7341be3d94968c5b` (`facetId`);

--
-- Indexes for table `facet_value_translation`
--
ALTER TABLE `facet_value_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_3d6e45823b65de808a66cb1423b` (`baseId`);

--
-- Indexes for table `fulfillment`
--
ALTER TABLE `fulfillment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `global_settings`
--
ALTER TABLE `global_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_entry`
--
ALTER TABLE `history_entry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_f3a761f6bcfabb474b11e1e51f` (`discriminator`),
  ADD KEY `FK_92f8c334ef06275f9586fd01832` (`administratorId`),
  ADD KEY `FK_3a05127e67435b4d2332ded7c9e` (`orderId`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_124456e637cca7a415897dce659` (`customerId`),
  ADD KEY `FK_4af424d3e7b2c3cb26e075e20fc` (`shippingMethodId`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_69384323444206753f0cdeb64e0` (`lineId`),
  ADD KEY `FK_eed51be48640c21e1c76d3e9fbe` (`fulfillmentId`),
  ADD KEY `FK_3e5161133689fba526377cbccd3` (`refundId`);

--
-- Indexes for table `order_line`
--
ALTER TABLE `order_line`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_cbcd22193eda94668e84d33f185` (`productVariantId`),
  ADD KEY `FK_77be94ce9ec6504466179462275` (`taxCategoryId`),
  ADD KEY `FK_9f065453910ea77d4be8e92618f` (`featuredAssetId`),
  ADD KEY `FK_239cfca2a55b98b90b6bef2e44f` (`orderId`);

--
-- Indexes for table `order_promotions_promotion`
--
ALTER TABLE `order_promotions_promotion`
  ADD PRIMARY KEY (`orderId`,`promotionId`),
  ADD KEY `IDX_67be0e40122ab30a62a9817efe` (`orderId`),
  ADD KEY `IDX_2c26b988769c0e3b0120bdef31` (`promotionId`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_d09d285fe1645cd2f0db811e293` (`orderId`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_91a19e6613534949a4ce6e76ff8` (`featuredAssetId`);

--
-- Indexes for table `product_asset`
--
ALTER TABLE `product_asset`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_5888ac17b317b93378494a10620` (`assetId`),
  ADD KEY `FK_0d1294f5c22a56da7845ebab72c` (`productId`);

--
-- Indexes for table `product_channels_channel`
--
ALTER TABLE `product_channels_channel`
  ADD PRIMARY KEY (`productId`,`channelId`),
  ADD KEY `IDX_26d12be3b5fec6c4adb1d79284` (`productId`),
  ADD KEY `IDX_a51dfbd87c330c075c39832b6e` (`channelId`);

--
-- Indexes for table `product_facet_values_facet_value`
--
ALTER TABLE `product_facet_values_facet_value`
  ADD PRIMARY KEY (`productId`,`facetValueId`),
  ADD KEY `IDX_6a0558e650d75ae639ff38e413` (`productId`),
  ADD KEY `IDX_06e7d73673ee630e8ec50d0b29` (`facetValueId`);

--
-- Indexes for table `product_option`
--
ALTER TABLE `product_option`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_a6debf9198e2fbfa006aa10d710` (`groupId`);

--
-- Indexes for table `product_option_group`
--
ALTER TABLE `product_option_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_a6e91739227bf4d442f23c52c75` (`productId`);

--
-- Indexes for table `product_option_group_translation`
--
ALTER TABLE `product_option_group_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_93751abc1451972c02e033b766c` (`baseId`);

--
-- Indexes for table `product_option_translation`
--
ALTER TABLE `product_option_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_a79a443c1f7841f3851767faa6d` (`baseId`);

--
-- Indexes for table `product_translation`
--
ALTER TABLE `product_translation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_42187bb72520a713d625389489` (`languageCode`,`slug`),
  ADD KEY `FK_7dbc75cb4e8b002620c4dbfdac5` (`baseId`);

--
-- Indexes for table `product_variant`
--
ALTER TABLE `product_variant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_0e6f516053cf982b537836e21cf` (`featuredAssetId`),
  ADD KEY `FK_e38dca0d82fd64c7cf8aac8b8ef` (`taxCategoryId`),
  ADD KEY `FK_6e420052844edf3a5506d863ce6` (`productId`);

--
-- Indexes for table `product_variant_asset`
--
ALTER TABLE `product_variant_asset`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_10b5a2e3dee0e30b1e26c32f5c7` (`assetId`),
  ADD KEY `FK_fa21412afac15a2304f3eb35feb` (`productVariantId`);

--
-- Indexes for table `product_variant_facet_values_facet_value`
--
ALTER TABLE `product_variant_facet_values_facet_value`
  ADD PRIMARY KEY (`productVariantId`,`facetValueId`),
  ADD KEY `IDX_69567bc225b6bbbd732d6c5455` (`productVariantId`),
  ADD KEY `IDX_0d641b761ed1dce4ef3cd33d55` (`facetValueId`);

--
-- Indexes for table `product_variant_options_product_option`
--
ALTER TABLE `product_variant_options_product_option`
  ADD PRIMARY KEY (`productVariantId`,`productOptionId`),
  ADD KEY `IDX_526f0131260eec308a3bd2b61b` (`productVariantId`),
  ADD KEY `IDX_e96a71affe63c97f7fa2f076da` (`productOptionId`);

--
-- Indexes for table `product_variant_price`
--
ALTER TABLE `product_variant_price`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_e6126cd268aea6e9b31d89af9ab` (`variantId`);

--
-- Indexes for table `product_variant_translation`
--
ALTER TABLE `product_variant_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_420f4d6fb75d38b9dca79bc43b4` (`baseId`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotion_channels_channel`
--
ALTER TABLE `promotion_channels_channel`
  ADD PRIMARY KEY (`promotionId`,`channelId`),
  ADD KEY `IDX_6d9e2c39ab12391aaa374bcdaa` (`promotionId`),
  ADD KEY `IDX_0eaaf0f4b6c69afde1e88ffb52` (`channelId`);

--
-- Indexes for table `refund`
--
ALTER TABLE `refund`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_1c6932a756108788a361e7d4404` (`paymentId`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_channels_channel`
--
ALTER TABLE `role_channels_channel`
  ADD PRIMARY KEY (`roleId`,`channelId`),
  ADD KEY `IDX_bfd2a03e9988eda6a9d1176011` (`roleId`),
  ADD KEY `IDX_e09dfee62b158307404202b43a` (`channelId`);

--
-- Indexes for table `search_index_item`
--
ALTER TABLE `search_index_item`
  ADD PRIMARY KEY (`languageCode`,`productVariantId`,`channelId`);
ALTER TABLE `search_index_item` ADD FULLTEXT KEY `IDX_6fb55742e13e8082954d0436dc` (`productName`);
ALTER TABLE `search_index_item` ADD FULLTEXT KEY `IDX_d8791f444a8bf23fe4c1bc020c` (`productVariantName`);
ALTER TABLE `search_index_item` ADD FULLTEXT KEY `IDX_9a5a6a556f75c4ac7bfdd03410` (`description`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_232f8e85d7633bd6ddfad42169` (`token`),
  ADD KEY `IDX_e5598363000cab9d9116bd5835` (`type`),
  ADD KEY `FK_7a75399a4f4ffa48ee02e98c059` (`activeOrderId`),
  ADD KEY `FK_3d2f174ef04fb312fdebd0ddc53` (`userId`);

--
-- Indexes for table `shipping_method`
--
ALTER TABLE `shipping_method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_method_channels_channel`
--
ALTER TABLE `shipping_method_channels_channel`
  ADD PRIMARY KEY (`shippingMethodId`,`channelId`),
  ADD KEY `IDX_f0a17b94aa5a162f0d422920eb` (`shippingMethodId`),
  ADD KEY `IDX_f2b98dfb56685147bed509acc3` (`channelId`);

--
-- Indexes for table `stock_movement`
--
ALTER TABLE `stock_movement`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `REL_cbb0990e398bf7713aebdd3848` (`orderItemId`),
  ADD KEY `IDX_94e15d5f12d355d117390131ac` (`discriminator`),
  ADD KEY `FK_e65ba3882557cab4febb54809bb` (`productVariantId`);

--
-- Indexes for table `tax_category`
--
ALTER TABLE `tax_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_rate`
--
ALTER TABLE `tax_rate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_7ee3306d7638aa85ca90d672198` (`categoryId`),
  ADD KEY `FK_9872fc7de2f4e532fd3230d1915` (`zoneId`),
  ADD KEY `FK_8b5ab52fc8887c1a769b9276caf` (`customerGroupId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_7efb296eadd258e554e84fa6eb` (`identifier`);

--
-- Indexes for table `user_roles_role`
--
ALTER TABLE `user_roles_role`
  ADD PRIMARY KEY (`userId`,`roleId`),
  ADD KEY `IDX_5f9286e6c25594c6b88c108db7` (`userId`),
  ADD KEY `IDX_4be2f7adf862634f5f803d246b` (`roleId`);

--
-- Indexes for table `zone`
--
ALTER TABLE `zone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zone_members_country`
--
ALTER TABLE `zone_members_country`
  ADD PRIMARY KEY (`zoneId`,`countryId`),
  ADD KEY `IDX_7350d77b6474313fbbaf4b094c` (`zoneId`),
  ADD KEY `IDX_7baeecaf955e54bec73f998b0d` (`countryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `administrator`
--
ALTER TABLE `administrator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `asset`
--
ALTER TABLE `asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `channel`
--
ALTER TABLE `channel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `collection`
--
ALTER TABLE `collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `collection_asset`
--
ALTER TABLE `collection_asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `collection_translation`
--
ALTER TABLE `collection_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `country_translation`
--
ALTER TABLE `country_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customer_group`
--
ALTER TABLE `customer_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `facet`
--
ALTER TABLE `facet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `facet_translation`
--
ALTER TABLE `facet_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `facet_value`
--
ALTER TABLE `facet_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `facet_value_translation`
--
ALTER TABLE `facet_value_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `fulfillment`
--
ALTER TABLE `fulfillment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `global_settings`
--
ALTER TABLE `global_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `history_entry`
--
ALTER TABLE `history_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_line`
--
ALTER TABLE `order_line`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `product_asset`
--
ALTER TABLE `product_asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `product_option`
--
ALTER TABLE `product_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `product_option_group`
--
ALTER TABLE `product_option_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product_option_group_translation`
--
ALTER TABLE `product_option_group_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product_option_translation`
--
ALTER TABLE `product_option_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `product_translation`
--
ALTER TABLE `product_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `product_variant`
--
ALTER TABLE `product_variant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `product_variant_asset`
--
ALTER TABLE `product_variant_asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_variant_price`
--
ALTER TABLE `product_variant_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `product_variant_translation`
--
ALTER TABLE `product_variant_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refund`
--
ALTER TABLE `refund`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shipping_method`
--
ALTER TABLE `shipping_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stock_movement`
--
ALTER TABLE `stock_movement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `tax_category`
--
ALTER TABLE `tax_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tax_rate`
--
ALTER TABLE `tax_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `zone`
--
ALTER TABLE `zone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `FK_d87215343c3a3a67e6a0b7f3ea9` FOREIGN KEY (`countryId`) REFERENCES `country` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_dc34d382b493ade1f70e834c4d3` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `administrator`
--
ALTER TABLE `administrator`
  ADD CONSTRAINT `FK_1966e18ce6a39a82b19204704d7` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `channel`
--
ALTER TABLE `channel`
  ADD CONSTRAINT `FK_afe9f917a1c82b9e9e69f7c6129` FOREIGN KEY (`defaultTaxZoneId`) REFERENCES `zone` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_c9ca2f58d4517460435cbd8b4c9` FOREIGN KEY (`defaultShippingZoneId`) REFERENCES `zone` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `collection`
--
ALTER TABLE `collection`
  ADD CONSTRAINT `FK_4257b61275144db89fa0f5dc059` FOREIGN KEY (`parentId`) REFERENCES `collection` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_7256fef1bb42f1b38156b7449f5` FOREIGN KEY (`featuredAssetId`) REFERENCES `asset` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `collection_asset`
--
ALTER TABLE `collection_asset`
  ADD CONSTRAINT `FK_1ed9e48dfbf74b5fcbb35d3d686` FOREIGN KEY (`collectionId`) REFERENCES `collection` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_51da53b26522dc0525762d2de8e` FOREIGN KEY (`assetId`) REFERENCES `asset` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `collection_channels_channel`
--
ALTER TABLE `collection_channels_channel`
  ADD CONSTRAINT `FK_7216ab24077cf5cbece7857dbbd` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_cdbf33ffb5d4519161251520083` FOREIGN KEY (`collectionId`) REFERENCES `collection` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `collection_product_variants_product_variant`
--
ALTER TABLE `collection_product_variants_product_variant`
  ADD CONSTRAINT `FK_6faa7b72422d9c4679e2f186ad1` FOREIGN KEY (`collectionId`) REFERENCES `collection` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_fb05887e2867365f236d7dd95ee` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `collection_translation`
--
ALTER TABLE `collection_translation`
  ADD CONSTRAINT `FK_e329f9036210d75caa1d8f2154a` FOREIGN KEY (`baseId`) REFERENCES `collection` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `country_translation`
--
ALTER TABLE `country_translation`
  ADD CONSTRAINT `FK_20958e5bdb4c996c18ca63d18e4` FOREIGN KEY (`baseId`) REFERENCES `country` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `FK_3f62b42ed23958b120c235f74df` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `customer_groups_customer_group`
--
ALTER TABLE `customer_groups_customer_group`
  ADD CONSTRAINT `FK_85feea3f0e5e82133605f78db02` FOREIGN KEY (`customerGroupId`) REFERENCES `customer_group` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_b823a3c8bf3b78d3ed68736485c` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `facet_translation`
--
ALTER TABLE `facet_translation`
  ADD CONSTRAINT `FK_eaea53f44bf9e97790d38a3d68f` FOREIGN KEY (`baseId`) REFERENCES `facet` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `facet_value`
--
ALTER TABLE `facet_value`
  ADD CONSTRAINT `FK_d101dc2265a7341be3d94968c5b` FOREIGN KEY (`facetId`) REFERENCES `facet` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `facet_value_translation`
--
ALTER TABLE `facet_value_translation`
  ADD CONSTRAINT `FK_3d6e45823b65de808a66cb1423b` FOREIGN KEY (`baseId`) REFERENCES `facet_value` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `history_entry`
--
ALTER TABLE `history_entry`
  ADD CONSTRAINT `FK_3a05127e67435b4d2332ded7c9e` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_92f8c334ef06275f9586fd01832` FOREIGN KEY (`administratorId`) REFERENCES `administrator` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `FK_124456e637cca7a415897dce659` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_4af424d3e7b2c3cb26e075e20fc` FOREIGN KEY (`shippingMethodId`) REFERENCES `shipping_method` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `FK_3e5161133689fba526377cbccd3` FOREIGN KEY (`refundId`) REFERENCES `refund` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_69384323444206753f0cdeb64e0` FOREIGN KEY (`lineId`) REFERENCES `order_line` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_eed51be48640c21e1c76d3e9fbe` FOREIGN KEY (`fulfillmentId`) REFERENCES `fulfillment` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `order_line`
--
ALTER TABLE `order_line`
  ADD CONSTRAINT `FK_239cfca2a55b98b90b6bef2e44f` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_77be94ce9ec6504466179462275` FOREIGN KEY (`taxCategoryId`) REFERENCES `tax_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_9f065453910ea77d4be8e92618f` FOREIGN KEY (`featuredAssetId`) REFERENCES `asset` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_cbcd22193eda94668e84d33f185` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `order_promotions_promotion`
--
ALTER TABLE `order_promotions_promotion`
  ADD CONSTRAINT `FK_2c26b988769c0e3b0120bdef31b` FOREIGN KEY (`promotionId`) REFERENCES `promotion` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_67be0e40122ab30a62a9817efe0` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `FK_d09d285fe1645cd2f0db811e293` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_91a19e6613534949a4ce6e76ff8` FOREIGN KEY (`featuredAssetId`) REFERENCES `asset` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_asset`
--
ALTER TABLE `product_asset`
  ADD CONSTRAINT `FK_0d1294f5c22a56da7845ebab72c` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_5888ac17b317b93378494a10620` FOREIGN KEY (`assetId`) REFERENCES `asset` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_channels_channel`
--
ALTER TABLE `product_channels_channel`
  ADD CONSTRAINT `FK_26d12be3b5fec6c4adb1d792844` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_a51dfbd87c330c075c39832b6e7` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product_facet_values_facet_value`
--
ALTER TABLE `product_facet_values_facet_value`
  ADD CONSTRAINT `FK_06e7d73673ee630e8ec50d0b29f` FOREIGN KEY (`facetValueId`) REFERENCES `facet_value` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_6a0558e650d75ae639ff38e413a` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product_option`
--
ALTER TABLE `product_option`
  ADD CONSTRAINT `FK_a6debf9198e2fbfa006aa10d710` FOREIGN KEY (`groupId`) REFERENCES `product_option_group` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_option_group`
--
ALTER TABLE `product_option_group`
  ADD CONSTRAINT `FK_a6e91739227bf4d442f23c52c75` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_option_group_translation`
--
ALTER TABLE `product_option_group_translation`
  ADD CONSTRAINT `FK_93751abc1451972c02e033b766c` FOREIGN KEY (`baseId`) REFERENCES `product_option_group` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_option_translation`
--
ALTER TABLE `product_option_translation`
  ADD CONSTRAINT `FK_a79a443c1f7841f3851767faa6d` FOREIGN KEY (`baseId`) REFERENCES `product_option` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_translation`
--
ALTER TABLE `product_translation`
  ADD CONSTRAINT `FK_7dbc75cb4e8b002620c4dbfdac5` FOREIGN KEY (`baseId`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_variant`
--
ALTER TABLE `product_variant`
  ADD CONSTRAINT `FK_0e6f516053cf982b537836e21cf` FOREIGN KEY (`featuredAssetId`) REFERENCES `asset` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_6e420052844edf3a5506d863ce6` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_e38dca0d82fd64c7cf8aac8b8ef` FOREIGN KEY (`taxCategoryId`) REFERENCES `tax_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_variant_asset`
--
ALTER TABLE `product_variant_asset`
  ADD CONSTRAINT `FK_10b5a2e3dee0e30b1e26c32f5c7` FOREIGN KEY (`assetId`) REFERENCES `asset` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_fa21412afac15a2304f3eb35feb` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_variant_facet_values_facet_value`
--
ALTER TABLE `product_variant_facet_values_facet_value`
  ADD CONSTRAINT `FK_0d641b761ed1dce4ef3cd33d559` FOREIGN KEY (`facetValueId`) REFERENCES `facet_value` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_69567bc225b6bbbd732d6c5455b` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product_variant_options_product_option`
--
ALTER TABLE `product_variant_options_product_option`
  ADD CONSTRAINT `FK_526f0131260eec308a3bd2b61b6` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_e96a71affe63c97f7fa2f076dac` FOREIGN KEY (`productOptionId`) REFERENCES `product_option` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product_variant_price`
--
ALTER TABLE `product_variant_price`
  ADD CONSTRAINT `FK_e6126cd268aea6e9b31d89af9ab` FOREIGN KEY (`variantId`) REFERENCES `product_variant` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_variant_translation`
--
ALTER TABLE `product_variant_translation`
  ADD CONSTRAINT `FK_420f4d6fb75d38b9dca79bc43b4` FOREIGN KEY (`baseId`) REFERENCES `product_variant` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `promotion_channels_channel`
--
ALTER TABLE `promotion_channels_channel`
  ADD CONSTRAINT `FK_0eaaf0f4b6c69afde1e88ffb52d` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_6d9e2c39ab12391aaa374bcdaa4` FOREIGN KEY (`promotionId`) REFERENCES `promotion` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `refund`
--
ALTER TABLE `refund`
  ADD CONSTRAINT `FK_1c6932a756108788a361e7d4404` FOREIGN KEY (`paymentId`) REFERENCES `payment` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `role_channels_channel`
--
ALTER TABLE `role_channels_channel`
  ADD CONSTRAINT `FK_bfd2a03e9988eda6a9d11760119` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_e09dfee62b158307404202b43a5` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `FK_3d2f174ef04fb312fdebd0ddc53` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_7a75399a4f4ffa48ee02e98c059` FOREIGN KEY (`activeOrderId`) REFERENCES `order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `shipping_method_channels_channel`
--
ALTER TABLE `shipping_method_channels_channel`
  ADD CONSTRAINT `FK_f0a17b94aa5a162f0d422920eb2` FOREIGN KEY (`shippingMethodId`) REFERENCES `shipping_method` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_f2b98dfb56685147bed509acc3d` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `stock_movement`
--
ALTER TABLE `stock_movement`
  ADD CONSTRAINT `FK_cbb0990e398bf7713aebdd38482` FOREIGN KEY (`orderItemId`) REFERENCES `order_item` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_e65ba3882557cab4febb54809bb` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tax_rate`
--
ALTER TABLE `tax_rate`
  ADD CONSTRAINT `FK_7ee3306d7638aa85ca90d672198` FOREIGN KEY (`categoryId`) REFERENCES `tax_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_8b5ab52fc8887c1a769b9276caf` FOREIGN KEY (`customerGroupId`) REFERENCES `customer_group` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_9872fc7de2f4e532fd3230d1915` FOREIGN KEY (`zoneId`) REFERENCES `zone` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user_roles_role`
--
ALTER TABLE `user_roles_role`
  ADD CONSTRAINT `FK_4be2f7adf862634f5f803d246b8` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_5f9286e6c25594c6b88c108db77` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `zone_members_country`
--
ALTER TABLE `zone_members_country`
  ADD CONSTRAINT `FK_7350d77b6474313fbbaf4b094c1` FOREIGN KEY (`zoneId`) REFERENCES `zone` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_7baeecaf955e54bec73f998b0d5` FOREIGN KEY (`countryId`) REFERENCES `country` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
