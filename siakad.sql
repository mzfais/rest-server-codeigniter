/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : siakad

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 17/11/2020 10:46:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for mahasiswa
-- ----------------------------
DROP TABLE IF EXISTS `mahasiswa`;
CREATE TABLE `mahasiswa`  (
  `nim` char(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_mhs` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat_mhs` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `prodi` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`nim`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mahasiswa
-- ----------------------------
INSERT INTO `mahasiswa` VALUES ('2019112001', 'Abdul mutholib', 'Pasuruan', 'Teknik Komputer S1');
INSERT INTO `mahasiswa` VALUES ('2019112002', 'Abdul rohman', 'Malang', 'Teknik Komputer S1');
INSERT INTO `mahasiswa` VALUES ('2019112003', 'Abdul rohim', 'Blitar', 'Teknik Komputer S1');
INSERT INTO `mahasiswa` VALUES ('2019112004', 'Yohan Maharaja', 'Probolinggo', 'Teknik Komputer S1');
INSERT INTO `mahasiswa` VALUES ('2020112001', 'Yohan Raharjo', 'Malang', 'Teknik Komputer S1');
INSERT INTO `mahasiswa` VALUES ('2020112002', 'Ahmad Sudarjo', 'Malang', 'Teknik Komputer S1');
INSERT INTO `mahasiswa` VALUES ('2020112003', 'Wahyu wardono', 'Malang', 'Teknik Komputer S1');
INSERT INTO `mahasiswa` VALUES ('2019118001', 'Febrian Megantara', 'Lombok', 'Teknik Informatika S1');
INSERT INTO `mahasiswa` VALUES ('2019118002', 'Muhammad Khaidir', 'Kalimantan Selatan', 'Teknik Informatika S1');
INSERT INTO `mahasiswa` VALUES ('2019118003', 'Daniel Wijaya K.', 'Situbondo', 'Teknik Informatika S1');
INSERT INTO `mahasiswa` VALUES ('2019118004', 'Abeng Maulana', 'Lampung', 'Teknik Informatika S1');
INSERT INTO `mahasiswa` VALUES ('2019118005', 'Andy Rahmadianto', 'Kalimantan Tengah', 'Teknik Informatika S1');
INSERT INTO `mahasiswa` VALUES ('2019118006', 'Septian Prasetyo', 'Kalimantan Timur', 'Teknik Informatika S1');
INSERT INTO `mahasiswa` VALUES ('2020118001', 'Michael Nugraha', 'Kalimantan Timur', 'Teknik Informatika S1');
INSERT INTO `mahasiswa` VALUES ('2020118002', 'Irawati Kusuma', 'Madiun', 'Teknik Informatika S1');
INSERT INTO `mahasiswa` VALUES ('2020118003', 'Tutut Suryaningsih', 'Nganjuk', 'Teknik Informatika S1');
INSERT INTO `mahasiswa` VALUES ('2020118004', 'Sintiya Rahmayanti', 'Malang', 'Teknik Informatika S1');
INSERT INTO `mahasiswa` VALUES ('2020118005', 'Silviani Berliana', 'Pasuruan', 'Teknik Informatika S1');
INSERT INTO `mahasiswa` VALUES ('2020118006', 'Stevania Skarsgard', 'Atambua', 'Teknik Informatika S1');
INSERT INTO `mahasiswa` VALUES ('2020118007', 'Dewi Vortuna', 'Kupang', 'Teknik Informatika S1');
INSERT INTO `mahasiswa` VALUES ('2020118009', 'Yolan Putri Kartini', 'Kepanjen', 'Teknik Informatika S1');
INSERT INTO `mahasiswa` VALUES ('2020118010', 'Faris Imut', 'Kalimantan', 'Teknik Informatika S1');

SET FOREIGN_KEY_CHECKS = 1;
