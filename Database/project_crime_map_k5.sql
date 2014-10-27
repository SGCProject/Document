-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2014 at 04:19 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `project_crime_map_k5`
--
CREATE DATABASE IF NOT EXISTS `project_crime_map_k5` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `project_crime_map_k5`;

-- --------------------------------------------------------

--
-- Table structure for table `case_point`
--

DROP TABLE IF EXISTS `case_point`;
CREATE TABLE IF NOT EXISTS `case_point` (
`CASE_POINT_ID` int(3) NOT NULL COMMENT 'รหัส หมู่ที่เกิดเหตุ',
  `CASE_POINT_NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'หมู่ที่เกิดเหตุ'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=40 ;

--
-- Dumping data for table `case_point`
--

INSERT INTO `case_point` (`CASE_POINT_ID`, `CASE_POINT_NAME`) VALUES
(1, 'หมู่ 1 คลองห้า'),
(2, 'หมู่ 2 คลองห้า'),
(3, 'หมู่ 3 คลองห้า'),
(4, 'หมู่ 4 คลองห้า'),
(5, 'หมู่ 5 คลองห้า'),
(6, 'หมู่ 6 คลองห้า'),
(7, 'หมู่ 7 คลองห้า'),
(8, 'หมู่ 8 คลองห้า'),
(9, 'หมู่ 9 คลองห้า'),
(10, 'หมู่ 10 คลองห้า'),
(11, 'หมู่ 11 คลองห้า'),
(12, 'หมู่ 12 คลองห้า'),
(13, 'หมู่ 13 คลองห้า'),
(14, 'หมู่ 14 คลองห้า'),
(15, 'หมู่ 15 คลองห้า'),
(16, 'หมู่ 16 คลองห้า'),
(17, 'หมู่ 1 คลองหก'),
(18, 'หมู่ 2 คลองหก'),
(19, 'หมู่ 3 คลองหก'),
(20, 'หมู่ 4 คลองหก'),
(21, 'หมู่ 5 คลองหก'),
(22, 'หมู่ 6 คลองหก'),
(23, 'หมู่ 7 คลองหก'),
(24, 'หมู่ 8 คลองหก'),
(25, 'หมู่ 9 คลองหก'),
(26, 'หมู่ 10 คลองหก'),
(27, 'หมู่ 11 คลองหก'),
(28, 'หมู่ 12 คลองหก'),
(29, 'หมู่ 13 คลองหก'),
(30, 'หมู่ 14 คลองหก'),
(31, 'หมู่ 1 คลองเจ็ด'),
(32, 'หมู่ 2 คลองเจ็ด'),
(33, 'หมู่ 3 คลองเจ็ด'),
(34, 'หมู่ 4 คลองเจ็ด'),
(35, 'หมู่ 5 คลองเจ็ด'),
(36, 'หมู่ 6 คลองเจ็ด'),
(37, 'หมู่ 7 คลองเจ็ด'),
(38, 'หมู่ 8 คลองเจ็ด'),
(39, 'หมู่ 9 คลองเจ็ด');

-- --------------------------------------------------------

--
-- Table structure for table `check_point`
--

DROP TABLE IF EXISTS `check_point`;
CREATE TABLE IF NOT EXISTS `check_point` (
`CHECK_POINT_ID` int(3) NOT NULL COMMENT 'รหัส จุดตรวจ',
  `CHECK_POINT_NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'จุดตรวจ'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT AUTO_INCREMENT=6 ;

--
-- Dumping data for table `check_point`
--

INSERT INTO `check_point` (`CHECK_POINT_ID`, `CHECK_POINT_NAME`) VALUES
(1, 'ต. 01'),
(2, 'ต. 02'),
(3, 'ต. 03'),
(4, 'ต. 04'),
(5, 'สายตรวจ 121');

-- --------------------------------------------------------

--
-- Table structure for table `crime`
--

DROP TABLE IF EXISTS `crime`;
CREATE TABLE IF NOT EXISTS `crime` (
`CRIME_ID` int(10) NOT NULL COMMENT 'รหัสคดี',
  `CRIME_LAT` double(9,6) NOT NULL COMMENT 'lat',
  `CRIME_LNG` double(9,6) NOT NULL COMMENT 'lng',
  `TYPE_CRIME` int(5) NOT NULL COMMENT 'ประเภทอาชญากรรม',
  `CRIME_COMMENT` varchar(500) COLLATE utf8_unicode_ci NOT NULL COMMENT 'เนื้อหาคดี',
  `CRIME_DATE` date NOT NULL COMMENT 'วันที่เกิดเหตุ',
  `CRIME_TIME` time DEFAULT NULL COMMENT 'เวลาที่เกิดเหตุ(โดยประมาณ)',
  `DURATION` int(3) DEFAULT NULL COMMENT 'ช่วงเวลาที่เกิดเหตุ',
  `PERSON` int(10) DEFAULT NULL COMMENT 'ผู้แจ้งคดี',
  `CASE_POINT` int(3) DEFAULT NULL COMMENT 'หมู่ที่เกิดเหตุ',
  `TYPE_PLACE` int(3) DEFAULT NULL COMMENT 'ประเภทสถานที่',
  `CASE_PLACE` int(3) DEFAULT NULL COMMENT 'จุดเกิดเหตุ',
  `CHECK_POINT` int(3) DEFAULT NULL COMMENT 'จุดตรวจ',
  `CRIME_BEHAVIOR` int(10) DEFAULT NULL COMMENT 'การกระทำของคดี',
  `CASE_OWNERS` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'เจ้าของคดี',
  `LEVEL` int(3) DEFAULT NULL COMMENT 'ระดับการเข้าถึง',
  `UPDATE_BY_USER` int(10) DEFAULT NULL COMMENT 'อัพเดท โดย',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT 'เวลาอัพเดท ครั้งล่าสุด',
  `CREATE_BY_USER` int(10) NOT NULL COMMENT 'สร้างโดย',
  `CREATE_DATE` datetime NOT NULL COMMENT 'วันที่ลงข้อมูล'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `crime_img`
--

DROP TABLE IF EXISTS `crime_img`;
CREATE TABLE IF NOT EXISTS `crime_img` (
`CRIME_IMG_ID` int(10) NOT NULL COMMENT 'รหัสรูปภาพ',
  `CRIME_ID` int(10) NOT NULL COMMENT 'รหัสข้อมูล'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `duration`
--

DROP TABLE IF EXISTS `duration`;
CREATE TABLE IF NOT EXISTS `duration` (
`DURATION_ID` int(3) NOT NULL COMMENT 'รหัส คาบเวลา',
  `DURATION_NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'คาบเวลา'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `duration`
--

INSERT INTO `duration` (`DURATION_ID`, `DURATION_NAME`) VALUES
(1, '00.01 - 03.00 น.'),
(2, '03.01 - 06.00 น.'),
(3, '06.01 - 09.00 น.'),
(4, '09.01 - 12.00 น.'),
(5, '12.01 - 15.00 น.'),
(6, '15.01 - 18.00 น.'),
(7, '18.01 - 21.00 น.'),
(8, '21.01 - 24.00 น.'),
(9, 'กลางวัน (ไม่ทราบเวลาแน่ชัด)'),
(10, 'กลางคืน (ไม่ทราบเวลาแน่ชัด)'),
(11, 'ไม่ทราบเวลาแน่ชัด (ระหว่างกลางหรือกลางคืน)');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

DROP TABLE IF EXISTS `level`;
CREATE TABLE IF NOT EXISTS `level` (
  `LEVEL_ID` int(3) NOT NULL COMMENT 'รหัส สิทธิ์การเข้าถึงข้อมูล',
  `LEVEL_NAME` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'สิทธิ์การเข้าถึงข้อมูล',
  `COMMENT` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`LEVEL_ID`, `LEVEL_NAME`, `COMMENT`) VALUES
(0, 'Guest', 'ผู้ใช้ทั่วไป'),
(10, 'User', 'ผู้ใช้ในระบบ'),
(20, 'Admin', 'ผู้ดูแลระบบ');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
CREATE TABLE IF NOT EXISTS `person` (
`PERSON_ID` int(10) NOT NULL COMMENT 'รหัส ผู้แจ้งความ',
  `TITLE` int(3) NOT NULL COMMENT 'คำนำหน้าชื่อ',
  `FIRST_NAME` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อ ผู้แจ้งความ',
  `LAST_NAME` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'นามกสุล ผู้แจ้งความ',
  `PERSON_PHONE` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'เบอร์โทรศัพท์ ผู้แจ้งความ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `title`
--

DROP TABLE IF EXISTS `title`;
CREATE TABLE IF NOT EXISTS `title` (
`TITLE_ID` int(3) NOT NULL COMMENT 'รหัส คำนำหน้าชื่อ',
  `TITLE_NAME` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'คำนำหน้าชื่อ',
  `COMMENT` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ข้อความอธิบาย'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `title`
--

INSERT INTO `title` (`TITLE_ID`, `TITLE_NAME`, `COMMENT`) VALUES
(1, 'นาย', NULL),
(2, 'นางสาว', NULL),
(3, 'นาง', NULL),
(4, 'ร.ต.ต.', NULL),
(5, 'ร.ต.ท.', NULL),
(6, 'ร.ต.อ.', NULL),
(7, 'พ.ต.ต.', NULL),
(8, 'พ.ต.ท', NULL),
(9, 'พ.ต.อ.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `type_crime`
--

DROP TABLE IF EXISTS `type_crime`;
CREATE TABLE IF NOT EXISTS `type_crime` (
`TYPE_CRIME_ID` int(5) NOT NULL COMMENT 'รหัส ประเภทคดี',
  `TYPE_CRIME_NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อ ประเภทคดี',
  `TYPE_CRIME_MARKER_IMG` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'link ของรูป marker ประเภทคดี',
  `LEVEL` int(3) DEFAULT NULL COMMENT 'ระดับการเข้าถึงข้อมูล',
  `COMMENT` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ข้อความอธิบาย'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Dumping data for table `type_crime`
--

INSERT INTO `type_crime` (`TYPE_CRIME_ID`, `TYPE_CRIME_NAME`, `TYPE_CRIME_MARKER_IMG`, `LEVEL`, `COMMENT`) VALUES
(1, 'จำหน่ายสุราโดยไม่ได้รับอนุญาติ', '', NULL, NULL),
(2, 'การพนัน', '', NULL, NULL),
(3, 'การพนันสลากกินรวบ', '', NULL, NULL),
(4, 'ข่มขืนกระทำชำเรา', '', NULL, NULL),
(5, 'ฆ่าผู้อื่นโดยเจตนา', '', NULL, NULL),
(6, 'โจรกรรมรถจักรยานยนต์', '', NULL, NULL),
(7, 'โจรกรรมรถยนต์', '', NULL, NULL),
(8, 'ฉ้อโกง', '', NULL, NULL),
(9, 'ชิงทรัพย์', '', NULL, NULL),
(10, 'ทำร้ายร่างกาย', '', NULL, NULL),
(11, 'ทำให้เสียทรัพย์', '', NULL, NULL),
(12, 'บรรทุกน้ำหนักเกิน', '', NULL, NULL),
(13, 'พยายามฆ่า', '', NULL, NULL),
(14, 'ยักยอก', '', NULL, NULL),
(15, 'ยาเสพติด', '', NULL, NULL),
(16, 'ลักทรัพย์', '', NULL, NULL),
(17, 'วิ่งราวทรัพย์', '', NULL, NULL),
(18, 'อาวุธปืน', '', NULL, NULL),
(19, 'อื่นๆ', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `type_place`
--

DROP TABLE IF EXISTS `type_place`;
CREATE TABLE IF NOT EXISTS `type_place` (
`TYPE_PLACE_ID` int(3) NOT NULL COMMENT 'รหัส ประเภทสถานที่',
  `TYPE_PLACE_NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ประเภทสถานที่'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Dumping data for table `type_place`
--

INSERT INTO `type_place` (`TYPE_PLACE_ID`, `TYPE_PLACE_NAME`) VALUES
(1, 'หอพัก'),
(2, 'บ้านจัดสรร'),
(3, 'เคหะสถาน'),
(4, 'สถานบริการ'),
(5, 'บ้านส่วนตัว'),
(6, 'บ้านเช่า'),
(7, 'โรงงาน'),
(8, 'สถานที่สาธารณะ'),
(9, 'สถานที่ราชการ'),
(10, 'ซอย'),
(11, 'ถนนเลียบคลองห้า'),
(12, 'ถนนเลียบคลองหก'),
(13, 'ถนนเลียบคลองเจ็ด'),
(14, 'อื่นๆ');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
`USER_ID` int(11) NOT NULL,
  `TITLE` int(11) NOT NULL,
  `FIRST_NAME` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_NAME` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `E_MAIL` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `USERNAME` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `PASSWORD` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `LEVEL` int(3) NOT NULL COMMENT 'ระดับการเข้าถึงข้อมูล',
  `STATUS` int(3) NOT NULL COMMENT 'สถานะของผู้ใช้'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `case_point`
--
ALTER TABLE `case_point`
 ADD PRIMARY KEY (`CASE_POINT_ID`);

--
-- Indexes for table `check_point`
--
ALTER TABLE `check_point`
 ADD PRIMARY KEY (`CHECK_POINT_ID`);

--
-- Indexes for table `crime`
--
ALTER TABLE `crime`
 ADD PRIMARY KEY (`CRIME_ID`), ADD KEY `DURATION_FK` (`DURATION`), ADD KEY `CASE_POINT_FK` (`CASE_POINT`), ADD KEY `CHECK_POINT_FK` (`CHECK_POINT`), ADD KEY `PERSON_FK` (`PERSON`), ADD KEY `TYPE_PLACE_FK` (`TYPE_PLACE`), ADD KEY `TYPE_CRIME_FK` (`TYPE_CRIME`), ADD KEY `CRIME_LEVEL_FK` (`LEVEL`);

--
-- Indexes for table `crime_img`
--
ALTER TABLE `crime_img`
 ADD PRIMARY KEY (`CRIME_IMG_ID`), ADD KEY `CRIME_ID_FK` (`CRIME_ID`);

--
-- Indexes for table `duration`
--
ALTER TABLE `duration`
 ADD PRIMARY KEY (`DURATION_ID`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
 ADD PRIMARY KEY (`LEVEL_ID`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
 ADD PRIMARY KEY (`PERSON_ID`), ADD KEY `PERSON_TITLE_FK` (`TITLE`);

--
-- Indexes for table `title`
--
ALTER TABLE `title`
 ADD PRIMARY KEY (`TITLE_ID`);

--
-- Indexes for table `type_crime`
--
ALTER TABLE `type_crime`
 ADD PRIMARY KEY (`TYPE_CRIME_ID`), ADD KEY `TYLE_CRIME_LEVEL_FK` (`LEVEL`);

--
-- Indexes for table `type_place`
--
ALTER TABLE `type_place`
 ADD PRIMARY KEY (`TYPE_PLACE_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`USER_ID`), ADD UNIQUE KEY `USERNAME` (`USERNAME`), ADD KEY `USER_LEVEL_FK` (`LEVEL`), ADD KEY `USER_TITLE_FK` (`TITLE`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `case_point`
--
ALTER TABLE `case_point`
MODIFY `CASE_POINT_ID` int(3) NOT NULL AUTO_INCREMENT COMMENT 'รหัส หมู่ที่เกิดเหตุ',AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `check_point`
--
ALTER TABLE `check_point`
MODIFY `CHECK_POINT_ID` int(3) NOT NULL AUTO_INCREMENT COMMENT 'รหัส จุดตรวจ',AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `crime`
--
ALTER TABLE `crime`
MODIFY `CRIME_ID` int(10) NOT NULL AUTO_INCREMENT COMMENT 'รหัสคดี';
--
-- AUTO_INCREMENT for table `crime_img`
--
ALTER TABLE `crime_img`
MODIFY `CRIME_IMG_ID` int(10) NOT NULL AUTO_INCREMENT COMMENT 'รหัสรูปภาพ';
--
-- AUTO_INCREMENT for table `duration`
--
ALTER TABLE `duration`
MODIFY `DURATION_ID` int(3) NOT NULL AUTO_INCREMENT COMMENT 'รหัส คาบเวลา',AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
MODIFY `PERSON_ID` int(10) NOT NULL AUTO_INCREMENT COMMENT 'รหัส ผู้แจ้งความ';
--
-- AUTO_INCREMENT for table `title`
--
ALTER TABLE `title`
MODIFY `TITLE_ID` int(3) NOT NULL AUTO_INCREMENT COMMENT 'รหัส คำนำหน้าชื่อ',AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `type_crime`
--
ALTER TABLE `type_crime`
MODIFY `TYPE_CRIME_ID` int(5) NOT NULL AUTO_INCREMENT COMMENT 'รหัส ประเภทคดี',AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `type_place`
--
ALTER TABLE `type_place`
MODIFY `TYPE_PLACE_ID` int(3) NOT NULL AUTO_INCREMENT COMMENT 'รหัส ประเภทสถานที่',AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `USER_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `crime`
--
ALTER TABLE `crime`
ADD CONSTRAINT `CASE_POINT_FK` FOREIGN KEY (`CASE_POINT`) REFERENCES `case_point` (`CASE_POINT_ID`),
ADD CONSTRAINT `CHECK_POINT_FK` FOREIGN KEY (`CHECK_POINT`) REFERENCES `check_point` (`CHECK_POINT_ID`),
ADD CONSTRAINT `CRIME_LEVEL_FK` FOREIGN KEY (`LEVEL`) REFERENCES `level` (`LEVEL_ID`),
ADD CONSTRAINT `DURATION_FK` FOREIGN KEY (`DURATION`) REFERENCES `duration` (`DURATION_ID`),
ADD CONSTRAINT `PERSON_FK` FOREIGN KEY (`PERSON`) REFERENCES `person` (`PERSON_ID`),
ADD CONSTRAINT `TYPE_CRIME_FK` FOREIGN KEY (`TYPE_CRIME`) REFERENCES `type_crime` (`TYPE_CRIME_ID`),
ADD CONSTRAINT `TYPE_PLACE_FK` FOREIGN KEY (`TYPE_PLACE`) REFERENCES `type_place` (`TYPE_PLACE_ID`);

--
-- Constraints for table `crime_img`
--
ALTER TABLE `crime_img`
ADD CONSTRAINT `CRIME_ID_FK` FOREIGN KEY (`CRIME_ID`) REFERENCES `crime` (`CRIME_ID`);

--
-- Constraints for table `person`
--
ALTER TABLE `person`
ADD CONSTRAINT `PERSON_TITLE_FK` FOREIGN KEY (`TITLE`) REFERENCES `title` (`TITLE_ID`);

--
-- Constraints for table `type_crime`
--
ALTER TABLE `type_crime`
ADD CONSTRAINT `TYLE_CRIME_LEVEL_FK` FOREIGN KEY (`LEVEL`) REFERENCES `level` (`LEVEL_ID`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
ADD CONSTRAINT `USER_LEVEL_FK` FOREIGN KEY (`LEVEL`) REFERENCES `level` (`LEVEL_ID`),
ADD CONSTRAINT `USER_TITLE_FK` FOREIGN KEY (`TITLE`) REFERENCES `title` (`TITLE_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
