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

 Date: 22/11/2020 22:32:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for keys
-- ----------------------------
DROP TABLE IF EXISTS `keys`;
CREATE TABLE `keys`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT 0,
  `is_private_key` tinyint(1) NOT NULL DEFAULT 0,
  `ip_addresses` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `date_created` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of keys
-- ----------------------------
INSERT INTO `keys` VALUES (1, 1, '123456', 1, 0, 0, '1', 1);
INSERT INTO `keys` VALUES (2, 2, '78910', 1, 0, 0, '1', 1);

-- ----------------------------
-- Table structure for limits
-- ----------------------------
DROP TABLE IF EXISTS `limits`;
CREATE TABLE `limits`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `count` int(10) NOT NULL,
  `hour_started` int(11) NOT NULL,
  `api_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of limits
-- ----------------------------
INSERT INTO `limits` VALUES (1, 'uri:mahasiswa/index:get', 2, 1606058286, '123456');
INSERT INTO `limits` VALUES (2, 'method-name:index_get', 2, 1606058377, '123456');
INSERT INTO `limits` VALUES (3, 'api-key:123456', 2, 1606058539, '123456');

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
INSERT INTO `mahasiswa` VALUES ('2020118010', '[removed]alert&#40;\'Faris Imut\'&#41;;[removed]', 'Kalimantan', 'Teknik Informatika S1');

SET FOREIGN_KEY_CHECKS = 1;
