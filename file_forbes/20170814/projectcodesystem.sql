-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2017 at 02:16 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projectcodesystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `code` varchar(1) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 'R', 'HRD', '2017-08-08 16:04:54', '2017-08-17 16:02:02'),
(2, 'W', 'WUKONG', '2017-08-08 16:04:54', '2017-08-17 16:02:02'),
(3, 'S', 'SCAD', '2017-08-08 16:06:08', '2017-08-17 16:02:03'),
(4, 'H', 'HTI', '2017-08-08 16:06:08', '2017-08-17 16:02:03'),
(5, 'P', 'PVTECH', '2017-08-08 16:07:03', '2017-08-17 16:02:03'),
(6, 'M', 'MLC', '2017-08-08 16:07:03', '2017-08-17 16:03:40'),
(7, 'E', 'MEC', '2017-08-08 16:07:12', '2017-08-17 16:03:40');

-- --------------------------------------------------------

--
-- Table structure for table `pictures`
--

CREATE TABLE `pictures` (
  `id` int(11) NOT NULL,
  `project_code` varchar(10) NOT NULL,
  `path` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `name_ja` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `finished_at` timestamp NULL DEFAULT NULL,
  `remarks` longtext,
  `cancel` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `company_id`, `code`, `name`, `name_ja`, `created_at`, `finished_at`, `remarks`, `cancel`) VALUES
(3, 2, 'W-BG', 'CEZ I Annex 1.2Ha Building Construction', 'CEZ I Annex 1.2Ha 建屋建築工事', '2015-05-17 16:00:00', '0000-00-00 00:00:00', '', 1),
(4, 2, 'W-AM', '3.1Ha Ulvac Office', '3.1Ha アルバック事務所', '2010-09-07 16:00:00', '2010-11-29 16:00:00', '', 0),
(5, 4, 'H-AU', '6.5Ha Hoist Crane', '6.5Ha クレーン', '2010-10-26 16:00:00', '2010-12-31 16:00:00', '', 0),
(6, 6, 'M-B', 'CEZ-II Land Dev. 2nd Stage(After Oct. 2009 )', '第二期土地開発（09年10月以降）', '2009-09-22 16:00:00', '2011-06-29 16:00:00', '', 0),
(7, 6, 'M-C', 'Sewage Treatment Plant', '汚水処理施設', '2009-12-18 16:00:00', '2011-06-29 16:00:00', '', 0),
(8, 6, 'M-D', 'Deepwell', '井戸', '2009-12-18 16:00:00', '2011-06-29 16:00:00', '', 0),
(9, 6, 'M-F', 'Fence - extension', 'フェンス-延長部分', '2009-12-18 16:00:00', '2011-06-29 16:00:00', '', 0),
(10, 6, 'M-G', 'Diversion Canal - along Bacao rd', '灌漑用水路　道路沿い迂回工事', '2010-10-12 16:00:00', '2011-06-29 16:00:00', '', 0),
(11, 6, 'M-H', 'Batching Plant in CEZ II', 'バッチングプラント移設', '2011-01-19 16:00:00', '2011-06-29 16:00:00', '', 0),
(12, 2, 'W-AI', 'Clean Room', 'クリーンルーム', '2009-12-06 16:00:00', '2011-08-31 16:00:00', '', 0),
(13, 2, 'W-AD', '3.1Ha Warehouse Building', '3.1Ha 倉庫建屋', '0000-00-00 00:00:00', '2011-09-30 16:00:00', '', 0),
(14, 4, 'H-AT', '6.5Ha I-Cube Office', '6.5Ha i-Cube事務所', '2010-09-27 16:00:00', '2011-11-29 16:00:00', '', 0),
(15, 4, 'H-AP', '6.5Ha Warehouse Building', '6.5Ha 倉庫建屋', '2009-09-22 16:00:00', '2011-11-30 16:00:00', '', 0),
(16, 4, 'H-AR', '1.7Ha Warehouse Building', '1.7Ha 倉庫建屋', '2010-02-16 16:00:00', '2011-11-30 16:00:00', '', 0),
(17, 4, 'H-AV', '0.3Ha Warehouse Building', '0.3Ha 倉庫建屋', '2010-10-26 16:00:00', '2011-12-18 16:00:00', '', 0),
(18, 4, 'H-AX', '5.0Ha Extension Building', '5.0Ha i-Cube増築', '2011-04-24 16:00:00', '2012-03-01 16:00:00', '', 0),
(19, 2, 'W-AK', 'Sawdust warehouse in CEZ II', 'オガコ倉庫移転', '2010-07-28 16:00:00', '2012-03-31 16:00:00', '', 0),
(20, 5, 'P-A', 'Clean Room Extension', 'クリーンルーム拡張', '2012-02-23 16:00:00', '2012-05-16 16:00:00', '', 0),
(21, 4, 'H-BA', '5.0Ha Hoist Crane', '5.0Ha クレーン', '2012-02-02 16:00:00', '2012-08-01 16:00:00', '', 0),
(22, 4, 'H-AW', 'ESP Wet Scrubber', '電気集塵機　ウェットスクラバー設置', '2011-01-09 16:00:00', '2012-09-18 16:00:00', '', 0),
(23, 4, 'H-BH', '6.1Ha Wukong Office', '6.1Ha Wukong事務所', '2012-09-03 16:00:00', '2012-10-14 16:00:00', '', 0),
(24, 4, 'H-AY', '0.4Ha Extension', '0.4Ha 拡張工事', '2011-12-19 16:00:00', '2012-10-30 16:00:00', '', 0),
(25, 2, 'W-AQ', 'Boiler 15ton x 2 units', '新設ボイラー15ton x 2 サイディング工場脇', '2011-04-24 16:00:00', '2012-10-30 16:00:00', '', 0),
(26, 4, 'H-AZ', '6.1Ha Warehouse Building', '6.1Ha i-Cube倉庫建屋', '2012-01-27 16:00:00', '2012-11-29 16:00:00', '', 0),
(27, 6, 'M-I', 'Stockyard Roofing', '北側隣地付近　倉庫建屋', '2011-04-24 16:00:00', '2012-11-29 16:00:00', '', 0),
(28, 6, 'M-M', 'Walkway & Canopy from Main Gate to 5.0Ha', '歩道＆キャノピー工事 CEZIIゲートから5Haまで', '2012-08-31 16:00:00', '2012-11-29 16:00:00', '', 0),
(29, 2, 'W-AN', 'Powerplant Cooling Tower', 'パワープラントクーリングタワー', '2010-11-07 16:00:00', '2012-12-14 16:00:00', '', 0),
(30, 4, 'H-BK', '5.0Ha Cemedine Production', '5.0Ha セメダイン工場', '2012-09-10 16:00:00', '2012-12-17 16:00:00', '', 0),
(31, 2, 'W-AU', 'Sawmill Factory - Modification', '製材工場 - 改修工事', '2012-01-26 16:00:00', '2012-12-19 16:00:00', '', 0),
(32, 4, 'H-BG', '5.0Ha Cemedine Office', '5.0Ha セメダイン事務所', '2012-09-03 16:00:00', '2013-01-03 16:00:00', '', 0),
(33, 6, 'M-L', 'CEZ II - Fire Station', 'CEZ II - 消防署', '2012-04-18 16:00:00', '2013-01-30 16:00:00', '', 0),
(34, 4, 'H-BM', 'Kiln Dry Room', '乾燥庫', '2012-10-21 16:00:00', '2013-01-31 16:00:00', '', 0),
(35, 5, 'P-B', 'Restoration Work', '復旧工事', '2012-10-21 16:00:00', '2013-02-27 16:00:00', '', 0),
(36, 4, 'H-BD', '6.5Ha Elevated Walkway & Overpass', '6.5Ha 外部通路・歩道橋工事', '2012-08-31 16:00:00', '2013-03-02 16:00:00', '', 0),
(37, 4, 'H-BB', '6.5Ha I-Cube Office Extension', '6.5Ha i-Cube事務所 拡張', '2012-03-29 16:00:00', '2013-03-05 16:00:00', '', 0),
(38, 4, 'H-BI', '6.1Ha H.R.D. Office', '6.1Ha H.R.D.事務所', '2012-09-03 16:00:00', '2013-04-16 16:00:00', '', 0),
(39, 4, 'H-BE', 'Foundation Work for New Siding Machine', 'サイディング工場機械増設に伴う工事', '2012-06-18 16:00:00', '2013-04-16 16:00:00', '', 0),
(40, 4, 'H-BC', 'Foundation Work for New Ceramic Machine', 'セラミック工場機械増設に伴う工事', '2012-06-18 16:00:00', '2013-04-21 16:00:00', '', 0),
(41, 4, 'H-BL', 'Restoration Work', '復旧工事', '2012-10-21 16:00:00', '2013-06-03 16:00:00', '', 0),
(42, 3, 'S-U', 'Restoration Work', '復旧工事', '2012-10-21 16:00:00', '2013-06-03 16:00:00', '', 0),
(43, 2, 'W-AX', 'Restoration Work', '復旧工事', '2012-10-21 16:00:00', '2013-06-03 16:00:00', '', 0),
(44, 2, 'W-AV', 'Bldg C & Unloading - Modification for new glass machine ', 'Bldg C & Unloadingエリア改修工事for新ガラス生産ライン', '2012-02-23 16:00:00', '2013-06-19 16:00:00', '', 0),
(45, 2, 'W-BC', 'Fire Hydrant', '消火栓工事', '2013-04-23 16:00:00', '2013-09-08 16:00:00', '', 0),
(46, 6, 'M-P', 'Fire Hydrant', '消火栓工事', '2013-05-09 16:00:00', '2013-09-29 16:00:00', '', 0),
(47, 6, 'M-J', 'CEZ Annex - Fence & Land Dev.', 'CEZ Annex - フェンス＆土地改良工事', '2011-08-21 16:00:00', '2013-09-29 16:00:00', '', 0),
(48, 1, 'R-E', 'Demolition Work / Former HRD Office', 'HRD旧事務所解体工事', '2013-03-17 16:00:00', '2013-09-29 16:00:00', '', 0),
(49, 1, 'R-F', 'SANKYO Office and Production', '三協立山関連工事', '2013-07-02 16:00:00', '2013-09-29 16:00:00', '', 0),
(50, 6, 'M-S', 'Gate Renovation Work (Map F)', 'ゲート柵鉄板貼付け、ゲート改造工事（地図F）', '2013-09-09 16:00:00', '2013-11-29 16:00:00', '', 0),
(51, 2, 'W-BB', 'CCVT Monitor Room Extension', 'CCTVモニタールーム拡張工事', '2013-02-13 16:00:00', '2013-11-29 16:00:00', '', 0),
(52, 2, 'W-BA', 'Fire Prevention Water Tank ', '防火水槽設備工事', '2013-02-13 16:00:00', '2013-12-19 16:00:00', '', 0),
(53, 6, 'M-T', 'Road Elevation Changing Work(Map G)', '道路の高さ変更工事（地図G）', '2013-09-09 16:00:00', '2013-12-30 16:00:00', '', 0),
(54, 3, 'S-V', 'Fire Hydrant', '消火栓工事', '2013-04-23 16:00:00', '2013-12-30 16:00:00', '', 0),
(55, 2, 'W-AP', 'Wood Processing Plant', '0.65Ha 倉庫建屋 丸太製材事業移転', '2011-04-24 16:00:00', '2014-01-19 16:00:00', '', 0),
(56, 4, 'H-BF', 'Stockyard Extension', '資材置き場拡張工事', '2012-08-31 16:00:00', '2014-01-29 16:00:00', '', 0),
(57, 4, 'H-BN', 'Restoration Work - 1.6Ha Bldg', '復旧工事 - 1.6Ha建屋', '2013-01-10 16:00:00', '2014-01-30 16:00:00', '', 0),
(58, 6, 'M-R', 'Retaining Wall Demolish & Restoration Work (Map B)', 'よう壁解体、復旧工事（地図B）', '2013-09-09 16:00:00', '2014-02-04 16:00:00', '', 0),
(59, 4, 'H-BP', 'Fire Hydrant', '消火栓工事', '2013-04-23 16:00:00', '2014-02-08 16:00:00', '', 0),
(60, 2, 'W-BD', 'Gate - Flood Countermeasure Work', 'WKNゲート洪水対策工事', '2013-09-08 16:00:00', '2014-02-14 16:00:00', '', 0),
(61, 4, 'H-BR', '6.5Ha WPC Production', '6.5Ha WPC建屋工事', '2013-07-08 16:00:00', '2014-03-30 16:00:00', '', 0),
(62, 4, 'H-BU', 'Installation of Cooling Tower', 'クーリングタワー設置工事', '2013-12-08 16:00:00', '2014-03-30 16:00:00', '', 0),
(63, 4, 'H-BW', 'CEZI Gate 3 Floodgate Construction', 'CEZI Gate 3 水門工事', '2014-03-27 16:00:00', '2014-05-14 16:00:00', '', 0),
(64, 6, 'M-U', 'CEZ Annex - Concrete Placement', 'CEZ Annex - コンクリート打設工事', '2014-02-06 16:00:00', '2014-05-30 16:00:00', '', 0),
(65, 4, 'H-BV', '5.0Ha Training Room', '5.0Ha トレーニングルーム建設工事', '2014-02-16 16:00:00', '2014-06-29 16:00:00', '', 0),
(66, 4, 'H-BQ', 'Additonal Boiler 15ton', 'ボイラー15ton 追加設置工事', '2013-07-02 16:00:00', '2014-06-29 16:00:00', '', 0),
(67, 1, 'R-G', 'Facilities renovation of Testing House 4', '実験棟４ 設備改修工事', '2013-11-10 16:00:00', '2014-08-30 16:00:00', '', 0),
(68, 6, 'M-V', 'CEZII - Temporary Facility Construction', 'CEZII - 仮設施設建築工事', '2014-05-21 16:00:00', '2014-11-29 16:00:00', '', 0),
(69, 4, 'H-BX', 'Nagase warehouse - Modification', '旧長瀬倉庫改修工事', '2014-06-05 16:00:00', '2014-11-29 16:00:00', '', 0),
(70, 6, 'M-E', 'Residential - Land Dev.', '住宅用地開発 - 土地開発', '2010-03-18 16:00:00', '2014-11-30 16:00:00', '', 0),
(71, 6, 'M-K', 'Residential - house construction', '住宅用地開発 - 建物建設', '2012-01-17 16:00:00', '2014-11-30 16:00:00', '', 0),
(72, 6, 'M-O', 'Container Yard Extension', 'コンテナヤード拡張工事', '2013-04-23 16:00:00', '2014-12-30 16:00:00', '', 0),
(73, 2, 'W-AT', 'Precut Factory - Roof Repair', 'プレカット工場 - 屋根修理', '2012-01-17 16:00:00', '2014-12-30 16:00:00', '', 0),
(74, 4, 'H-BY', 'Mezzanine - IUB loading area', 'IUBローディングエリア中二階工事', '2014-06-05 16:00:00', '2015-01-30 16:00:00', '', 0),
(75, 2, 'W-AY', '4.0Ha Warehouse/Production Building', '4.0Ha Wukong倉庫/製造建屋', '2012-10-26 16:00:00', '2015-01-30 16:00:00', '', 0),
(76, 4, 'H-BT', 'Roof renovation', '屋根改修工事', '2013-11-08 16:00:00', '2015-08-29 16:00:00', '', 0),
(77, 3, 'S-W', 'Roof renovation', '屋根改修工事', '2013-11-08 16:00:00', '2015-08-29 16:00:00', '', 0),
(78, 2, 'W-BE', 'Roof renovation', '屋根改修工事', '2013-11-08 16:00:00', '2015-08-29 16:00:00', '', 0),
(79, 2, 'W-BF', 'Restoration Work - Kiln Dry Room', '乾燥庫復旧工事', '2014-03-24 16:00:00', '2015-08-29 16:00:00', '', 0),
(80, 4, 'H-CC', 'i-cube Meeting Room', 'i-cube ミーティングルーム建設工事', '2015-05-26 16:00:00', '2015-08-31 16:00:00', '', 0),
(81, 6, 'M-Y', 'Concrete Placement - CEZ II CY', 'CEZ II コンテナヤード コンクリート打設工事', '2014-10-21 16:00:00', '2015-08-31 16:00:00', '', 0),
(82, 4, 'H-BZ', '4 Additional Kiln Dry Rooms', '乾燥庫４部屋追加工事', '2014-08-11 16:00:00', '2015-09-29 16:00:00', '', 0),
(83, 1, 'R-H', 'Fired-furnace Facility Construction', '防火試験設備建築工事', '2015-05-17 16:00:00', '2015-12-19 16:00:00', '', 0),
(84, 4, 'H-CF', 'Fired-furnace Building Construction', '防火試験建屋建築工事', '2015-07-01 16:00:00', '2015-12-19 16:00:00', '', 0),
(85, 2, 'W-BI', 'WM Canteen Extension', 'プラスティックモールディング　食堂拡張工事', '2015-10-09 16:00:00', '2016-01-08 16:00:00', '', 0),
(86, 4, 'H-CE', 'R&D Office 3F Construction', 'R&Dオフィス 3F建設工事', '2015-06-14 16:00:00', '2016-05-29 16:00:00', '', 0),
(87, 4, 'H-CG', 'Dream Child Development　Center', '夢の保育センター', '2015-08-26 16:00:00', '2016-05-29 16:00:00', '', 0),
(88, 6, 'M-N', 'Residential - Elevated Water Tank', '住宅用地開発 - 高架水槽建設', '2013-04-05 16:00:00', '2016-07-29 16:00:00', '', 0),
(89, 6, 'M-AH', 'Residential - Elevated Water Tank 2', '住宅用地開発 - 高架水槽建設 2', '2015-11-20 16:00:00', '2016-07-29 16:00:00', '', 0),
(90, 2, 'W-BK', 'Wind Pressure testing Building Construction', '3性能試験建屋建築工事', '2016-02-25 16:00:00', '2016-07-30 16:00:00', '', 0),
(91, 4, 'H-CH', 'Siding factory Office', 'サイディング工場　事務所建築工事', '2015-10-09 16:00:00', '2016-07-31 16:00:00', '', 0),
(92, 4, 'H-CO', '5.9Ha Cemedine Office Transfer', '5.9Ha セメダイン事務所 移設', '2016-04-13 16:00:00', '2016-08-30 16:00:00', '', 0),
(93, 1, 'R-I', '500KN Wall Panel Testing Machine and Vibration Table Machine', '500kN壁試験機及び振動台工事に関連する建築工事　（R&Dエリア）', '2016-05-09 16:00:00', '2016-09-14 16:00:00', '', 0),
(94, 4, 'H-CN', 'Driver''s Resting Area Expansion', '物流運転手 仮眠エリア拡張工事', '2016-02-25 16:00:00', '2016-09-29 16:00:00', '', 0),
(95, 5, 'P-D', 'Foundation Work for MEGA Solar cell rack machine', 'メガソーラー事業用架台製造ライン新設工事', '2016-07-24 16:00:00', '2016-09-29 16:00:00', '', 0),
(96, 3, 'S-X', '6.5Ha Building Construction', '6.5Ha 建屋建築工事', '2015-05-17 16:00:00', '0000-00-00 00:00:00', '', 1),
(97, 4, 'H-BD', '6.5Ha Elevated Walkway & Overpass', '6.5Ha 外部通路・歩道橋工事', '2012-06-18 16:00:00', '0000-00-00 00:00:00', '', 1),
(98, 6, 'M-Q', 'Retaining Wall Demolish & Restoration Work (Map A)', 'よう壁解体、復旧工事（地図A）', '2013-09-09 16:00:00', '0000-00-00 00:00:00', '', 1),
(99, 4, 'H-CD', 'Additonal 15ton Boiler #5', '15tonボイラー５号機 追加設置工事', '2015-06-09 16:00:00', '0000-00-00 00:00:00', '', 1),
(100, 6, 'M-X', 'Diesel Station Construction', 'ディーゼルステーション建設工事', '2014-09-22 16:00:00', '0000-00-00 00:00:00', '', 1),
(101, 6, 'M-AC', 'LOT565 Dream Apartment Construction', 'LOT565 独身寮建設工事', '2015-05-27 16:00:00', '0000-00-00 00:00:00', '', 1),
(102, 6, 'M-AD', 'LOT565 Fence Construction', 'LOT565 フェンス建設工事', '2015-05-29 16:00:00', '0000-00-00 00:00:00', '', 1),
(103, 6, 'M-AF', 'LOT9&10 Dream Apartment Construction ', 'LOT9&10 独身寮建設工事', '2015-07-21 16:00:00', '0000-00-00 00:00:00', '', 1),
(104, 4, 'H-BS', 'Solar Panel Installation', 'ソーラーパネル設置', '2013-09-11 16:00:00', '0000-00-00 00:00:00', '', 1),
(105, 2, 'W-AW', 'PVC Extrusion Molding Facility (water tank, tower, office, etc)', '樹脂押し出し成型設備（貯水タンク、バッチャー塔、事務所等）', '2012-07-31 16:00:00', '0000-00-00 00:00:00', 'change H-BH', 1),
(106, 2, 'W-AJ', 'Batching Plant in CEZ II', 'バッチングプラント移設', '2010-07-28 16:00:00', '0000-00-00 00:00:00', 'change M-H', 1),
(107, 2, 'W-AS', 'Pressure Impregnation Plant', '加圧注入タンク', '2011-11-08 16:00:00', '0000-00-00 00:00:00', 'change W-AZ', 1),
(108, 4, 'H-CB', 'CEZII First Factory i-cube Mezzanine', 'CEZII 第一工場 i-cube 中二階建築工事', '2015-05-13 16:00:00', '0000-00-00 00:00:00', '', 0),
(109, 4, 'H-CK', '6.5Ha Building Construction @9.6Ha', '6.5Ha 建屋建築工事 9.6Ha内', '2015-05-17 16:00:00', '0000-00-00 00:00:00', '', 0),
(110, 4, 'H-CL', '6.5Ha HRD&I-Cube Office Extension3', '6.5Ha HRD&i-Cube事務所3', '2016-02-25 16:00:00', '0000-00-00 00:00:00', '', 0),
(111, 4, 'H-BO', 'Ceramic factory Mezzanine', 'セラミック工場　中二階建築工事', '2013-04-02 16:00:00', '0000-00-00 00:00:00', '', 0),
(112, 4, 'H-CI', 'Ceramic Warehouse - Roof renovation', 'セラミック原土倉庫-屋根改修工事', '2015-10-09 16:00:00', '0000-00-00 00:00:00', '', 0),
(113, 4, 'H-CJ', 'Foundation Work for New Ceramic Mechanical Equipment  - Line3', 'セラミック工場機械設備増設に伴う工事-ライン３', '2015-10-09 16:00:00', '0000-00-00 00:00:00', '', 0),
(114, 4, 'H-BJ', '5.9Ha Warehouse/Production Building', '5.9Ha HTI倉庫/製造建屋', '2012-09-06 16:00:00', '0000-00-00 00:00:00', '', 0),
(115, 4, 'H-CP', 'Transformer & Foundation Work for 5.9Ha Cemedine Office Transfer', '5.9Ha セメダイン事務所 移設に伴う付帯工事', '2016-04-13 16:00:00', '0000-00-00 00:00:00', '', 0),
(116, 4, 'H-CU', 'Restoration work of HTI Panel factory (CEZⅡ3rd Factory)', 'HTIパネル工場復旧工事 (CEZⅡ第3工場)', '2017-03-01 16:00:00', '0000-00-00 00:00:00', '', 0),
(117, 4, 'H-CA', 'CEZII Second Factory Mezzanine', 'CEZII 第二工場 中二階建築工事', '2015-05-13 16:00:00', '0000-00-00 00:00:00', '', 0),
(118, 4, 'H-CM', 'Transformer & Foundation Work for New Ceramic Machine  - Line3', 'セラミック工場第３ライン付帯工事', '2016-02-25 16:00:00', '0000-00-00 00:00:00', '', 0),
(119, 4, 'H-CQ', 'Additional Batching Plant for siding', 'サイディング用追加バッチングプラン建築工事', '2016-05-09 16:00:00', '0000-00-00 00:00:00', '', 0),
(120, 4, 'H-CR', 'Extension Work for Ceramic Factory 2016', 'セラミック工場建屋増築工事 2016', '2016-08-31 16:00:00', '0000-00-00 00:00:00', '', 0),
(121, 4, 'H-CS', 'Ceramic Warehouse - Retaining Wall Construction', 'セラミック原土置場　擁壁工事', '2016-08-31 16:00:00', '0000-00-00 00:00:00', '', 0),
(122, 4, 'H-CT', 'Equipment relocation of Granite factory', '御影石工場　設備移設工事', '2016-09-22 16:00:00', '0000-00-00 00:00:00', '', 0),
(123, 6, 'M-Z', '9.6Ha Fence Construction', '9.6Ha フェンス建設工事', '2015-03-14 16:00:00', '0000-00-00 00:00:00', '', 0),
(124, 6, 'M-AE', 'LOT9&10 Fence Construction', 'LOT9&10 フェンス建設工事', '2015-07-21 16:00:00', '0000-00-00 00:00:00', '', 0),
(125, 6, 'M-AI', '1.5Ha - Land Dev.', '1.5Ha - 土地開発', '2016-03-21 16:00:00', '0000-00-00 00:00:00', '', 0),
(126, 6, 'M-AK', 'Residential - Land Development with Fence (Extension)', '住宅用地開発 - 土地拡張、フェンス建設工事', '2016-06-07 16:00:00', '0000-00-00 00:00:00', '', 0),
(127, 7, 'E-A', '３MW　Solar Project (LIMA)', ' ３MW　太陽光発電工事　（LIMA）', '2015-10-07 16:00:00', '0000-00-00 00:00:00', '', 0),
(128, 5, 'P-C', 'Solar Panel Installation (CEZ I & II)', 'ソーラーパネル設置工事 (CEZI & II)', '2013-11-15 16:00:00', '0000-00-00 00:00:00', '', 0),
(129, 2, 'W-BL', 'Manufacturing of AR Coat/Print Glass for Housing and Construction Project', 'ARコート製造設備設置工事', '2016-05-29 16:00:00', '0000-00-00 00:00:00', '', 0),
(130, 2, 'W-BM', 'Relocation of　Glass & Window factory', 'ガラス、サッシ工場移設工事', '2016-12-02 16:00:00', '0000-00-00 00:00:00', '', 0),
(131, 2, 'W-AZ', 'Bofu tank and other facility', '防腐タンク及び機械設置', '2013-01-10 16:00:00', '0000-00-00 00:00:00', '', 0),
(132, 2, 'W-AO', 'New Powerplant', '新発電所', '2011-01-09 16:00:00', '0000-00-00 00:00:00', '', 0),
(133, 2, 'W-BH', 'Roof renovation 2', '屋根改修工事2', '2015-05-27 16:00:00', '0000-00-00 00:00:00', '', 0),
(134, 2, 'W-BJ', 'Additonal 15ton Boiler #5', '15tonボイラー５号機 追加設置工事', '2015-10-16 16:00:00', '0000-00-00 00:00:00', '', 0),
(135, 4, 'H-CV', 'EPS facility project @CEZII Second Factory', 'CEZII 第二工場 EPS製造設備設置工事', '2017-03-20 16:00:00', '0000-00-00 00:00:00', '', 0),
(136, 4, 'H-CW', 'PU facility project @CEZII Second Factory', 'CEZII 第二工場 ウレタン製造設備設置工事', '2017-03-20 16:00:00', '0000-00-00 00:00:00', '', 0),
(137, 4, 'H-CX', 'Demolition work for HTI Panel Factory', 'HTIパネル工場解体工事', '2017-03-20 16:00:00', '0000-00-00 00:00:00', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `employee_code` varchar(255) NOT NULL,
  `password` varchar(32) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `employee_code`, `password`, `name`, `created_at`, `updated_at`) VALUES
(1, '027331', '6b8ebf57d684837cd0f2ac2a7d0ff9b2', 'Arnel Forbes', '2017-08-16 00:04:13', '2017-08-16 00:04:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `pictures`
--
ALTER TABLE `pictures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
