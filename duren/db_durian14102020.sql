/*
 Navicat Premium Data Transfer

 Source Server         : Devond
 Source Server Type    : MySQL
 Source Server Version : 100413
 Source Host           : localhost:3306
 Source Schema         : db_durian

 Target Server Type    : MySQL
 Target Server Version : 100413
 File Encoding         : 65001

 Date: 14/10/2020 21:40:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for next_rt_berat_produk_pemesanan
-- ----------------------------
DROP TABLE IF EXISTS `next_rt_berat_produk_pemesanan`;
CREATE TABLE `next_rt_berat_produk_pemesanan`  (
  `id_berat_produk` int(100) NOT NULL AUTO_INCREMENT,
  `teks_berat_produk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `konfersi_berat_produk_perkilogram` double(255, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id_berat_produk`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of next_rt_berat_produk_pemesanan
-- ----------------------------
INSERT INTO `next_rt_berat_produk_pemesanan` VALUES (1, '200 Gram', 0.20);
INSERT INTO `next_rt_berat_produk_pemesanan` VALUES (2, '500 Gram', 0.50);
INSERT INTO `next_rt_berat_produk_pemesanan` VALUES (3, '1000 Gram', 1.00);

-- ----------------------------
-- Table structure for old_tb_data_user
-- ----------------------------
DROP TABLE IF EXISTS `old_tb_data_user`;
CREATE TABLE `old_tb_data_user`  (
  `id_data_user` int(100) NOT NULL AUTO_INCREMENT,
  `id_user` int(100) NULL DEFAULT NULL,
  `id_jenis_kelamin` int(100) NULL DEFAULT NULL,
  `tanggal_lahir` date NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `negara` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `provinsi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kabupaten` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_kota` int(100) NULL DEFAULT NULL,
  `kota` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kecamatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kelurahan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kode_pos` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_data_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of old_tb_data_user
-- ----------------------------
INSERT INTO `old_tb_data_user` VALUES (1, 1, 1, '2018-06-22', 'jalan', 'in', 'ok', 'ok', 1, 'ok', 'oke', 'eko', '485798');
INSERT INTO `old_tb_data_user` VALUES (2, 2, 2, '2017-11-29', 'Jalan', 'Indonesia', 'Banten', 'Tangerang', 1, 'Tangerang Kota', NULL, NULL, '98868');
INSERT INTO `old_tb_data_user` VALUES (3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `old_tb_data_user` VALUES (4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `old_tb_data_user` VALUES (5, 5, 1, '1990-08-06', 'Jalan Ketapang 5 No 48', 'Indonesia', 'Jawa Barat', 'Depok', 3, 'Depok', NULL, NULL, '54673');
INSERT INTO `old_tb_data_user` VALUES (6, 6, 1, '2020-08-06', 'Jalan Jend. Sudirman Timur No 545', 'Indonesia', 'Jawa Barat', 'Bogor', 3, 'Depok', 'Sawangan', 'Kedaung', '43555');
INSERT INTO `old_tb_data_user` VALUES (7, 7, 2, '1990-03-09', 'depok', 'indonesia', 'jawa barat', 'depok', 3, 'depok', 'depok', 'kedaung', '61523');
INSERT INTO `old_tb_data_user` VALUES (8, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for old_tb_pemesanan
-- ----------------------------
DROP TABLE IF EXISTS `old_tb_pemesanan`;
CREATE TABLE `old_tb_pemesanan`  (
  `id_pemesanan` int(100) NOT NULL AUTO_INCREMENT,
  `kode_pemesanan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `waktu_pemesanan` datetime(0) NULL DEFAULT NULL,
  `id_user` int(100) NULL DEFAULT NULL,
  `pesan_pemesanan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `negara` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `provinsi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kabupaten` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kota` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kecamatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kelurahan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kode_pos` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_proses_pemesanan` int(100) NULL DEFAULT NULL,
  `id_produk` int(100) NULL DEFAULT NULL,
  `jumlah_pemesanan` decimal(65, 0) NULL DEFAULT NULL,
  `id_berat_produk` int(100) NULL DEFAULT NULL,
  `ongkos_kirim` double(100, 0) NULL DEFAULT NULL,
  `id_voucher` int(100) NULL DEFAULT NULL,
  `id_metode_pembayaran` int(100) NULL DEFAULT NULL,
  `pesan_bukti_pembayaran` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gambar_bukti_pembayaran` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_pemesanan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of old_tb_pemesanan
-- ----------------------------
INSERT INTO `old_tb_pemesanan` VALUES (1, 'DR01', '2020-08-09 15:34:22', 6, '', '', '', '', '', '', NULL, NULL, '', 1, 1, NULL, NULL, NULL, NULL, 2, NULL, NULL);
INSERT INTO `old_tb_pemesanan` VALUES (2, 'DR02', '2020-09-28 14:50:38', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 2, NULL, NULL);

-- ----------------------------
-- Table structure for old_tb_pemesanan_2
-- ----------------------------
DROP TABLE IF EXISTS `old_tb_pemesanan_2`;
CREATE TABLE `old_tb_pemesanan_2`  (
  `id_pemesanan` int(100) NOT NULL AUTO_INCREMENT,
  `kode_pemesanan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `waktu_pemesanan` datetime(0) NULL DEFAULT NULL,
  `id_user` int(100) NULL DEFAULT NULL,
  `pesan_pemesanan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `negara` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `provinsi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kabupaten` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kota` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kecamatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kelurahan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kode_pos` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_proses_pemesanan` int(100) NULL DEFAULT NULL,
  `id_produk` int(100) NULL DEFAULT NULL,
  `jumlah_pemesanan` decimal(65, 0) NULL DEFAULT NULL,
  `id_berat_produk` int(100) NULL DEFAULT NULL,
  `ongkos_kirim` double(100, 0) NULL DEFAULT NULL,
  `id_voucher` int(100) NULL DEFAULT NULL,
  `id_metode_pembayaran` int(100) NULL DEFAULT NULL,
  `pesan_bukti_pembayaran` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gambar_bukti_pembayaran` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `total_harga_perproduk` double(255, 0) NULL DEFAULT NULL,
  `total_harga_yang_harus_dibayar` double(255, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_pemesanan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of old_tb_pemesanan_2
-- ----------------------------
INSERT INTO `old_tb_pemesanan_2` VALUES (1, 'DR01', '2020-08-09 15:34:22', 6, '', '', '', '', '', '', NULL, NULL, '', 1, 1, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL);
INSERT INTO `old_tb_pemesanan_2` VALUES (2, 'DR02', '2020-09-28 14:50:38', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for old_tb_penjualan
-- ----------------------------
DROP TABLE IF EXISTS `old_tb_penjualan`;
CREATE TABLE `old_tb_penjualan`  (
  `id_penjualan` int(100) NOT NULL AUTO_INCREMENT,
  `kode_penjualan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `waktu_penjualan` datetime(0) NULL DEFAULT NULL,
  `id_produk` int(100) NULL DEFAULT NULL,
  `jumlah_penjualan` decimal(65, 0) NULL DEFAULT NULL,
  `id_berat_produk` int(100) NULL DEFAULT NULL,
  `total_penjualan` double(255, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_penjualan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of old_tb_penjualan
-- ----------------------------
INSERT INTO `old_tb_penjualan` VALUES (1, 'DR06', '2020-10-07 11:47:33', 2, 23, 2, 3012000);
INSERT INTO `old_tb_penjualan` VALUES (2, 'DR06', '2020-10-07 15:12:41', 1, 38, 1, 6042000);

-- ----------------------------
-- Table structure for rt_berat_produk_pemesanan
-- ----------------------------
DROP TABLE IF EXISTS `rt_berat_produk_pemesanan`;
CREATE TABLE `rt_berat_produk_pemesanan`  (
  `id_berat_produk` int(100) NOT NULL AUTO_INCREMENT,
  `teks_berat_produk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `konfersi_berat_produk_perkilogram` double(255, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id_berat_produk`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rt_berat_produk_pemesanan
-- ----------------------------
INSERT INTO `rt_berat_produk_pemesanan` VALUES (1, '500 Gram', 0.50);

-- ----------------------------
-- Table structure for rt_bintang_penilaian_produk
-- ----------------------------
DROP TABLE IF EXISTS `rt_bintang_penilaian_produk`;
CREATE TABLE `rt_bintang_penilaian_produk`  (
  `id_bintang_penilaian_produk` int(100) NOT NULL AUTO_INCREMENT,
  `bintang_penilaian_produk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_bintang_penilaian_produk`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rt_bintang_penilaian_produk
-- ----------------------------
INSERT INTO `rt_bintang_penilaian_produk` VALUES (1, '1');
INSERT INTO `rt_bintang_penilaian_produk` VALUES (2, '2');
INSERT INTO `rt_bintang_penilaian_produk` VALUES (3, '3');
INSERT INTO `rt_bintang_penilaian_produk` VALUES (4, '4');
INSERT INTO `rt_bintang_penilaian_produk` VALUES (5, '5');

-- ----------------------------
-- Table structure for rt_jenis_kelamin
-- ----------------------------
DROP TABLE IF EXISTS `rt_jenis_kelamin`;
CREATE TABLE `rt_jenis_kelamin`  (
  `id_jenis_kelamin` int(100) NOT NULL AUTO_INCREMENT,
  `jenis_kelamin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_jenis_kelamin`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rt_jenis_kelamin
-- ----------------------------
INSERT INTO `rt_jenis_kelamin` VALUES (1, 'Pria');
INSERT INTO `rt_jenis_kelamin` VALUES (2, 'Wanita');

-- ----------------------------
-- Table structure for rt_jenis_produk
-- ----------------------------
DROP TABLE IF EXISTS `rt_jenis_produk`;
CREATE TABLE `rt_jenis_produk`  (
  `id_jenis_produk` int(100) NOT NULL AUTO_INCREMENT,
  `jenis_produk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_jenis_produk`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rt_jenis_produk
-- ----------------------------
INSERT INTO `rt_jenis_produk` VALUES (1, 'Durian');
INSERT INTO `rt_jenis_produk` VALUES (2, 'Lain-Lain');

-- ----------------------------
-- Table structure for rt_jenis_voucher
-- ----------------------------
DROP TABLE IF EXISTS `rt_jenis_voucher`;
CREATE TABLE `rt_jenis_voucher`  (
  `id_jenis_voucher` int(100) NOT NULL AUTO_INCREMENT,
  `jenis_voucher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_jenis_voucher`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rt_jenis_voucher
-- ----------------------------
INSERT INTO `rt_jenis_voucher` VALUES (1, 'Voucher Porongan Harga');
INSERT INTO `rt_jenis_voucher` VALUES (2, 'Voucher Potongan Ongkir 50%');
INSERT INTO `rt_jenis_voucher` VALUES (3, 'Voucher Gratis Ongkir');

-- ----------------------------
-- Table structure for rt_kota
-- ----------------------------
DROP TABLE IF EXISTS `rt_kota`;
CREATE TABLE `rt_kota`  (
  `id_kota` int(100) NOT NULL AUTO_INCREMENT,
  `kota` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_kota`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rt_kota
-- ----------------------------
INSERT INTO `rt_kota` VALUES (1, 'Bekasi');
INSERT INTO `rt_kota` VALUES (2, 'Bogor');
INSERT INTO `rt_kota` VALUES (3, 'Depok');
INSERT INTO `rt_kota` VALUES (4, 'Jakarta');
INSERT INTO `rt_kota` VALUES (5, 'Tangerang ');
INSERT INTO `rt_kota` VALUES (6, 'Tangerang Selatan');

-- ----------------------------
-- Table structure for rt_metode_pembayaran
-- ----------------------------
DROP TABLE IF EXISTS `rt_metode_pembayaran`;
CREATE TABLE `rt_metode_pembayaran`  (
  `id_metode_pembayaran` int(100) NOT NULL AUTO_INCREMENT,
  `metode_pembayaran` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kode_link_pembayaran` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_metode_pembayaran`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rt_metode_pembayaran
-- ----------------------------
INSERT INTO `rt_metode_pembayaran` VALUES (1, 'COD', NULL);
INSERT INTO `rt_metode_pembayaran` VALUES (2, 'Transfer Bank', NULL);

-- ----------------------------
-- Table structure for rt_proses_pemesanan
-- ----------------------------
DROP TABLE IF EXISTS `rt_proses_pemesanan`;
CREATE TABLE `rt_proses_pemesanan`  (
  `id_proses_pemesanan` int(100) NOT NULL AUTO_INCREMENT,
  `proses_pemesanan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_proses_pemesanan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rt_proses_pemesanan
-- ----------------------------
INSERT INTO `rt_proses_pemesanan` VALUES (1, 'Pesanan Dibuat');
INSERT INTO `rt_proses_pemesanan` VALUES (2, 'Konfirmasi Checkout');
INSERT INTO `rt_proses_pemesanan` VALUES (3, 'Konfirmasi Pembayaran');
INSERT INTO `rt_proses_pemesanan` VALUES (4, 'Pembayaran Dikonfirmasi');
INSERT INTO `rt_proses_pemesanan` VALUES (5, 'Barang Sedang Dikirim');
INSERT INTO `rt_proses_pemesanan` VALUES (6, 'Barang Telah Diterima');
INSERT INTO `rt_proses_pemesanan` VALUES (7, 'Barang Dikomentari');

-- ----------------------------
-- Table structure for rt_satuan_produk
-- ----------------------------
DROP TABLE IF EXISTS `rt_satuan_produk`;
CREATE TABLE `rt_satuan_produk`  (
  `id_satuan_produk` int(100) NOT NULL AUTO_INCREMENT,
  `satuan_produk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_satuan_produk`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rt_satuan_produk
-- ----------------------------
INSERT INTO `rt_satuan_produk` VALUES (1, 'Pack');
INSERT INTO `rt_satuan_produk` VALUES (2, 'Buah');

-- ----------------------------
-- Table structure for rt_status_chat
-- ----------------------------
DROP TABLE IF EXISTS `rt_status_chat`;
CREATE TABLE `rt_status_chat`  (
  `id_status_chat` int(100) NOT NULL AUTO_INCREMENT,
  `status_chat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_status_chat`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rt_status_chat
-- ----------------------------
INSERT INTO `rt_status_chat` VALUES (1, 'Belum Dibaca');
INSERT INTO `rt_status_chat` VALUES (2, 'Sudah Dibaca');

-- ----------------------------
-- Table structure for rt_status_retur
-- ----------------------------
DROP TABLE IF EXISTS `rt_status_retur`;
CREATE TABLE `rt_status_retur`  (
  `id_status_retur` int(100) NOT NULL AUTO_INCREMENT,
  `status_retur` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_status_retur`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rt_status_retur
-- ----------------------------
INSERT INTO `rt_status_retur` VALUES (1, 'Pengajuan Retur');
INSERT INTO `rt_status_retur` VALUES (2, 'Dana Dikembalikan');
INSERT INTO `rt_status_retur` VALUES (3, 'Pengajuan Ditolak');

-- ----------------------------
-- Table structure for rt_status_user
-- ----------------------------
DROP TABLE IF EXISTS `rt_status_user`;
CREATE TABLE `rt_status_user`  (
  `id_status_user` int(100) NOT NULL AUTO_INCREMENT,
  `status_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_status_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rt_status_user
-- ----------------------------
INSERT INTO `rt_status_user` VALUES (1, 'Administrator');
INSERT INTO `rt_status_user` VALUES (2, 'Manager');
INSERT INTO `rt_status_user` VALUES (3, 'Kasir');
INSERT INTO `rt_status_user` VALUES (4, 'Staf');
INSERT INTO `rt_status_user` VALUES (5, 'Konsumen');

-- ----------------------------
-- Table structure for rt_status_voucher
-- ----------------------------
DROP TABLE IF EXISTS `rt_status_voucher`;
CREATE TABLE `rt_status_voucher`  (
  `id_status_voucher` int(100) NOT NULL AUTO_INCREMENT,
  `status_voucher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_status_voucher`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rt_status_voucher
-- ----------------------------
INSERT INTO `rt_status_voucher` VALUES (1, 'Belum Terpakai');
INSERT INTO `rt_status_voucher` VALUES (2, 'Terpakai');
INSERT INTO `rt_status_voucher` VALUES (3, 'Tidak Berlaku');

-- ----------------------------
-- Table structure for tb_about_us
-- ----------------------------
DROP TABLE IF EXISTS `tb_about_us`;
CREATE TABLE `tb_about_us`  (
  `id_about_us` int(100) NOT NULL AUTO_INCREMENT,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nomor_hp1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nomor_hp2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_about_us`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_about_us
-- ----------------------------
INSERT INTO `tb_about_us` VALUES (1, 'Jalan Tanah Abang II No. 19, Kecamatan Gambir, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10160', '6281311993939', '', 'Infokingfruit@gmail.com');

-- ----------------------------
-- Table structure for tb_chat
-- ----------------------------
DROP TABLE IF EXISTS `tb_chat`;
CREATE TABLE `tb_chat`  (
  `id_chat` int(100) NOT NULL AUTO_INCREMENT,
  `id_user` int(100) NULL DEFAULT NULL,
  `waktu_chat` datetime(0) NULL DEFAULT NULL,
  `teks_chat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gambar_chat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kode_chat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_status_chat` int(100) NULL DEFAULT NULL,
  PRIMARY KEY (`id_chat`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_chat
-- ----------------------------
INSERT INTO `tb_chat` VALUES (1, 3, '2020-08-05 14:52:08', 'hai', NULL, '105082020', 2);
INSERT INTO `tb_chat` VALUES (2, 1, '2020-08-05 14:52:55', 'bagaimana ya', NULL, '105082020', 2);

-- ----------------------------
-- Table structure for tb_data_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_data_user`;
CREATE TABLE `tb_data_user`  (
  `id_data_user` int(100) NOT NULL AUTO_INCREMENT,
  `id_user` int(100) NULL DEFAULT NULL,
  `id_jenis_kelamin` int(100) NULL DEFAULT NULL,
  `tanggal_lahir` date NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `negara` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `provinsi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kabupaten` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_kota` int(100) NULL DEFAULT NULL,
  `kecamatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kelurahan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kode_pos` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_data_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_data_user
-- ----------------------------
INSERT INTO `tb_data_user` VALUES (1, 1, 1, '2018-06-22', 'jalan', 'in', 'ok', 'ok', 1, 'oke', 'eko', '485798');
INSERT INTO `tb_data_user` VALUES (2, 2, 2, '2017-11-29', 'Jalan', 'Indonesia', 'Banten', 'Tangerang', 1, NULL, NULL, '98868');
INSERT INTO `tb_data_user` VALUES (3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_data_user` VALUES (4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_data_user` VALUES (5, 5, 1, '1990-08-06', 'Jalan Ketapang 5 No 48', 'Indonesia', 'Jawa Barat', 'Depok', 3, NULL, NULL, '54673');
INSERT INTO `tb_data_user` VALUES (6, 6, 1, '2020-08-06', 'Jalan Jend. Sudirman Timur No 545', 'Indonesia', 'Jawa Barat', 'Bogor', 3, 'Sawangan', 'Kedaung', '43555');
INSERT INTO `tb_data_user` VALUES (7, 7, 2, '1990-03-09', 'Jalan Jend Sudirman No 3456', 'Indonesia', 'Jawa Barat', 'Depok', 5, 'Sawangan', 'Kedaung', '7436587');
INSERT INTO `tb_data_user` VALUES (8, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_data_user` VALUES (9, 9, 1, '1992-07-29', 'Jalan Ketapang 5 No 48 ', 'Indonesia', 'Jawa Tengah ', 'Banyumas', 3, 'Pwt Selatan', 'Pwt Selatan', '51542');
INSERT INTO `tb_data_user` VALUES (10, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_data_user` VALUES (11, 11, NULL, NULL, 'ruko citralake', 'indonesia', 'jawa barat', 'depok', 1, 'sawangan', 'kedaung', '16152');
INSERT INTO `tb_data_user` VALUES (12, 12, 2, '1992-10-07', 'Jalan Cek', 'Indonesia', 'Jawa Barat', 'Depok', 1, 'Sawangan', 'Kedaung', '63542');
INSERT INTO `tb_data_user` VALUES (13, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_data_user` VALUES (14, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_data_user` VALUES (15, 14, 1, '2017-10-05', 'Jalan Mawar no 3', 'Indonesia', 'Jawa Barat', 'Depok', 1, 'Swangan', 'Kedaung', '43652');
INSERT INTO `tb_data_user` VALUES (16, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_data_user` VALUES (17, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_data_user` VALUES (18, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_data_user` VALUES (19, 18, NULL, NULL, 'sawangan', 'indonesia', 'jawa barat', 'depok', 2, 'sawangan', 'kedaung', '12345');
INSERT INTO `tb_data_user` VALUES (20, 19, NULL, NULL, 'tes', 'tes', 'tes', 'tes', 1, 'tes', 'tes', '12345');
INSERT INTO `tb_data_user` VALUES (21, 20, 1, '1990-10-05', 'Jalan Jalan Sehat', 'Indonesia', 'Jawa Barat', '', 2, 'Sawangan', 'Kedaung', '84522');
INSERT INTO `tb_data_user` VALUES (22, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_data_user` VALUES (23, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_data_user` VALUES (24, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_data_user` VALUES (25, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_data_user` VALUES (26, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_data_user` VALUES (27, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_data_user` VALUES (28, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_login_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_login_user`;
CREATE TABLE `tb_login_user`  (
  `id_user` int(100) NOT NULL AUTO_INCREMENT,
  `tanggal_mendaftar` datetime(0) NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_lengkap` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nomor_hp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_status_user` int(100) NULL DEFAULT NULL,
  `kode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kode_forgot_password` int(100) NULL DEFAULT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_login_user
-- ----------------------------
INSERT INTO `tb_login_user` VALUES (1, '2020-08-04 16:52:03', 'a', 'Mohamad Eko', 'mohamad@gmail.com', '1', '../images/user/2020-10-011avicii-hd-2.jpg', '0bdc9d2d256b3ee9daae347be6f4dc835a467ffe', 1, 'c47907abd2a80492ca9388b05c0e382518ff3960', NULL);
INSERT INTO `tb_login_user` VALUES (2, '2020-08-05 16:52:54', 'nara', 'nara', 'nara@gmail.com', '089523674526', NULL, '0bdc9d2d256b3ee9daae347be6f4dc835a467ffe', 1, NULL, NULL);
INSERT INTO `tb_login_user` VALUES (3, '2020-08-05 16:55:09', 'wuri', 'wuri', 'wuri@gmail.com', '-', NULL, 'cf4a13712a5718ff17994949cc9333cb', 5, NULL, NULL);
INSERT INTO `tb_login_user` VALUES (4, '2020-08-05 16:55:47', 'd', 'serj adam', 'me.adam@gmail.com', '-', NULL, '0bdc9d2d256b3ee9daae347be6f4dc835a467ffe', 5, NULL, NULL);
INSERT INTO `tb_login_user` VALUES (5, '2020-08-11 09:09:40', 'Andi34', 'andi', 'devond.linkaja@gmail.com', '0896635247', '../images/user/2020-08-3051fdaf630-e420-407b-8c98-72874823ae34_43.jpeg', '0bdc9d2d256b3ee9daae347be6f4dc835a467ffe', 5, NULL, NULL);
INSERT INTO `tb_login_user` VALUES (6, '2020-08-11 20:16:58', 'c', 'anisa', 'anisa@gmail.com', '3', '../images/user/2020-09-286teamwork2.jpg', 'cba513890be774d80d897e6fee6b841a33996f0f', 5, NULL, NULL);
INSERT INTO `tb_login_user` VALUES (7, '2020-08-14 15:28:35', 'b', 'Lina', 'lina@gmail.com', '2', '../images/user/2020-08-307Ava-Max17.jpg', 'cba513890be774d80d897e6fee6b841a33996f0f', 5, NULL, NULL);
INSERT INTO `tb_login_user` VALUES (8, '2020-09-15 12:41:09', 'Andi35', 'Andi Saputri', 'Andi@gmail.com', '4', NULL, 'cba513890be774d80d897e6fee6b841a33996f0f', 5, NULL, NULL);
INSERT INTO `tb_login_user` VALUES (9, '2020-10-01 11:00:28', 'echo_rockers', 'echo', 'mohamad.kingfruit@gmail.com', '089', NULL, '0bdc9d2d256b3ee9daae347be6f4dc835a467ffe', 5, 'c47907abd2a80492ca9388b05c0e382518ff3960', 8648);
INSERT INTO `tb_login_user` VALUES (10, '2020-10-02 10:51:18', 'ivi07', 'ivi', 'alviona@devond.co.id', '08121941997', '../images/user/2020-10-0210x ride.jpg', 'cba513890be774d80d897e6fee6b841a33996f0f', 5, NULL, NULL);
INSERT INTO `tb_login_user` VALUES (11, '2020-10-03 15:37:39', 'Wirua', 'Wuri', 'wui@gmail.com', '13', NULL, 'cba513890be774d80d897e6fee6b841a33996f0f', 5, NULL, NULL);
INSERT INTO `tb_login_user` VALUES (12, '2020-10-05 09:43:50', 'aprilita', 'Aprilita', 'aprilita@gmail.com', '14', NULL, 'cba513890be774d80d897e6fee6b841a33996f0f', 5, NULL, NULL);
INSERT INTO `tb_login_user` VALUES (13, '2020-10-05 13:46:33', 'alvionamc', 'alviona', 'amandycallista@gmail.com', '08121941997', NULL, 'd8913df37b24c97f28f840114d05bd110dbb2e44', 5, NULL, NULL);
INSERT INTO `tb_login_user` VALUES (14, '2020-10-05 13:51:02', 'mohamadadam', 'Mohamad Adam', 'mohamadadam@gmail.com', '15', '../images/user/2020-10-12140_f50caa93-6116-4eba-a5a2-2c8dbfc29cce_720_720.jpg', 'cba513890be774d80d897e6fee6b841a33996f0f', 5, NULL, NULL);
INSERT INTO `tb_login_user` VALUES (15, '2020-10-05 13:52:20', 'vio', 'viona', 'vio@gmail.com', '08121941997', NULL, 'd8913df37b24c97f28f840114d05bd110dbb2e44', 5, NULL, NULL);
INSERT INTO `tb_login_user` VALUES (16, '2020-10-05 13:55:24', 'vie', 'vie', 'temansikola@gmail.com', '08121941997', NULL, 'd8913df37b24c97f28f840114d05bd110dbb2e44', 5, NULL, NULL);
INSERT INTO `tb_login_user` VALUES (17, '2020-10-05 13:56:27', 'vi', 'vi', 'vi@gmail.com', '08121941997', NULL, 'd8913df37b24c97f28f840114d05bd110dbb2e44', 5, NULL, NULL);
INSERT INTO `tb_login_user` VALUES (18, '2020-10-06 16:16:13', 'kepo', 'kepo', 'kepo@gmail.com', '08121941997', NULL, 'e3431a8e0adbf96fd140103dc6f63a3f8fa343ab', 5, NULL, NULL);
INSERT INTO `tb_login_user` VALUES (19, '2020-10-06 16:41:58', 'duren', 'duren', 'duren@gmail.com', '089685744546', NULL, '0bdc9d2d256b3ee9daae347be6f4dc835a467ffe', 5, NULL, NULL);
INSERT INTO `tb_login_user` VALUES (20, '2020-10-12 20:09:32', NULL, 'anissss', 'anisa@a.com', '33', NULL, 'cba513890be774d80d897e6fee6b841a33996f0f', 5, NULL, NULL);
INSERT INTO `tb_login_user` VALUES (21, '2020-10-13 08:50:48', NULL, 'M', 'm@hmail.com', '90', NULL, 'cba513890be774d80d897e6fee6b841a33996f0f', 5, NULL, NULL);
INSERT INTO `tb_login_user` VALUES (22, '2020-10-13 13:39:43', NULL, 'aa', 'aa@y.com', '090', NULL, 'cba513890be774d80d897e6fee6b841a33996f0f', 5, NULL, NULL);
INSERT INTO `tb_login_user` VALUES (23, '2020-10-13 14:08:51', NULL, 'testData', 'testData@gmail.com', '900', NULL, 'cba513890be774d80d897e6fee6b841a33996f0f', 5, NULL, NULL);
INSERT INTO `tb_login_user` VALUES (24, '2020-10-13 20:14:23', NULL, 'Mohamad Eko Prasetyo', 'me.serj.adam@gmail.com', '08994190773', NULL, 'cba513890be774d80d897e6fee6b841a33996f0f', 5, 'c47907abd2a80492ca9388b05c0e382518ff3960', 7957);
INSERT INTO `tb_login_user` VALUES (26, '2020-10-13 21:55:05', NULL, 'aa', 'meserjadam@mail.com', '4444', NULL, '4b7a392369bdfb8f763a4d6093486e7cafb5cddc', 5, NULL, NULL);
INSERT INTO `tb_login_user` VALUES (27, '2020-10-14 11:03:33', NULL, 'king fruit', 'mohamad.kingafruit@gmail.com', '077364587346', NULL, 'a', 5, NULL, 7024);

-- ----------------------------
-- Table structure for tb_medsos
-- ----------------------------
DROP TABLE IF EXISTS `tb_medsos`;
CREATE TABLE `tb_medsos`  (
  `id_medsos` int(100) NOT NULL AUTO_INCREMENT,
  `nama_medsos` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `link_medsos` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ikon_medsos` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_medsos`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_medsos
-- ----------------------------
INSERT INTO `tb_medsos` VALUES (1, 'Facebook', 'https://www.facebook.com/', NULL);
INSERT INTO `tb_medsos` VALUES (2, 'Instagram', 'https://www.instagram.com/?hl=id', NULL);
INSERT INTO `tb_medsos` VALUES (3, 'WhatsAPP', 'https://api.whatsapp.com/send?phone=628994190773', NULL);
INSERT INTO `tb_medsos` VALUES (4, 'Twitter', 'https://twitter.com/', NULL);

-- ----------------------------
-- Table structure for tb_pemesanan
-- ----------------------------
DROP TABLE IF EXISTS `tb_pemesanan`;
CREATE TABLE `tb_pemesanan`  (
  `id_pemesanan` int(100) NOT NULL AUTO_INCREMENT,
  `kode_pemesanan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `waktu_pemesanan` datetime(0) NULL DEFAULT NULL,
  `id_user` int(100) NULL DEFAULT NULL,
  `pesan_pemesanan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `negara` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `provinsi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kabupaten` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kota` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kecamatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kelurahan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kode_pos` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_proses_pemesanan` int(100) NULL DEFAULT NULL,
  `id_produk` int(100) NULL DEFAULT NULL,
  `jumlah_pemesanan` decimal(65, 0) NULL DEFAULT NULL,
  `id_berat_produk` int(100) NULL DEFAULT NULL,
  `ongkos_kirim` double(100, 0) NULL DEFAULT NULL,
  `id_voucher` int(100) NULL DEFAULT NULL,
  `id_metode_pembayaran` int(100) NULL DEFAULT NULL,
  `pesan_bukti_pembayaran` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_pemilik_rekening` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tanggal_transfer` date NULL DEFAULT NULL,
  `no_rekening` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bank_asal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gambar_bukti_pembayaran` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `total_harga_perproduk` double(255, 0) NULL DEFAULT NULL,
  `total_harga_yang_harus_dibayar` double(255, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_pemesanan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_pemesanan
-- ----------------------------
INSERT INTO `tb_pemesanan` VALUES (1, 'DR01', '2020-10-05 10:06:34', 7, NULL, 'Jalan Jend Sudirman No 3456', 'Indonesia', 'Jawa Barat', 'Depok', 'Tangerang ', 'Sawangan', 'Kedaung', '7436587', 7, 1, 1, 1, 15000, NULL, 2, NULL, 'Moh', '2016-08-30', '19875698754', 'BCA', '../images/buktitransfer/2020-10-027mock up super montong.jpg', 129000, 144000);
INSERT INTO `tb_pemesanan` VALUES (2, 'DR02', '2020-10-05 17:07:39', 7, NULL, 'Jalan Jend Sudirman No 3456', 'Indonesia', 'Jawa Barat', 'Depok', 'Tangerang ', 'Sawangan', 'Kedaung', '7436587', 4, 1, 1, 1, 15000, NULL, 2, NULL, 'cek', '2017-01-03', '17364587365', 'BCA', '../images/buktitransfer/2020-10-027mock up super montong.jpg', 129000, 144000);
INSERT INTO `tb_pemesanan` VALUES (3, 'DR03', '2020-10-05 17:09:22', 9, NULL, 'Jalan Ketapang 5 No 48 ', 'Indonesia', 'Jawa Tengah ', 'Banyumas', 'Depok', 'Pwt Selatan', 'Pwt Selatan', '51542', 7, 1, 1, 1, 15000, NULL, 2, NULL, 'fdghiuyertiuh`', '2017-07-31', '463587643857', 'BCA', '../images/buktitransfer/2020-10-029buah duren 1.jpg', 129000, 144000);
INSERT INTO `tb_pemesanan` VALUES (4, 'DR04', '2020-10-05 15:37:53', 12, NULL, 'Jalan Cek', 'Indonesia', 'Jawa Barat', 'Depok', 'Bekasi', 'Sawangan', 'Kedaung', '63542', 4, 1, 1, 1, 15000, NULL, 2, NULL, 'Aprilita', '2020-10-04', '8687436587', 'BCA', '../images/buktitransfer/2020-10-0512bni.jpg', 129000, 144000);
INSERT INTO `tb_pemesanan` VALUES (5, 'DR05', '2020-10-05 09:44:01', 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_pemesanan` VALUES (6, 'DR06', '2020-10-05 14:01:22', 14, NULL, 'Jalan Mawar no 3', 'Indonesia', 'Jawa Barat', 'Depok', 'Bekasi', 'Swangan', 'Kedaung', '43652', 7, 1, 38, 1, 0, NULL, 2, NULL, 'EKO', '2020-10-07', '75683465', 'BCA', '../images/buktitransfer/2020-10-0714bni.jpg', 6042000, 6042000);
INSERT INTO `tb_pemesanan` VALUES (7, 'DR07', '2020-10-05 10:28:00', 18, NULL, 'sawangan', 'indonesia', 'jawa barat', 'depok', 'Bogor', 'sawangan', 'kedaung', '12345', 7, 1, 10, 1, 15000, NULL, 2, NULL, 'kepo', '2020-10-06', '123456789', 'BCA', '../images/buktitransfer/2020-10-061891fbdba0b0726b25c6490471dc43b7f8--blue-wallpaper-iphone-pastel-wallpaper.jpg', 1290000, 1305000);
INSERT INTO `tb_pemesanan` VALUES (8, 'DR08', '2020-10-05 16:42:36', 19, NULL, 'tes', 'tes', 'tes', 'tes', 'Bekasi', 'tes', 'tes', '12345', 5, 1, 1, 1, 15000, NULL, 2, NULL, 'duren', '2020-10-06', '123456789', 'BCA', '../images/buktitransfer/2020-10-061991fbdba0b0726b25c6490471dc43b7f8--blue-wallpaper-iphone-pastel-wallpaper.jpg', 129000, 144000);
INSERT INTO `tb_pemesanan` VALUES (21, 'DR09', '2020-10-13 10:00:37', 14, NULL, 'Jalan Mawar no 3', 'Indonesia', 'Jawa Barat', '', 'Bekasi', 'Swangan', 'Kedaung', '43652', 3, 1, 10, 1, 0, NULL, 2, NULL, 'Mohamad ', '2020-10-13', '4967858475683', 'BCA', '../images/buktitransfer/2020-10-1314ajg.PNG', 1590000, 1590000);
INSERT INTO `tb_pemesanan` VALUES (22, 'DR022', '2020-10-14 20:30:16', 9, NULL, 'Jalan Ketapang 5 No 48 ', 'Indonesia', 'Jawa Tengah ', '', 'Depok', 'Pwt Selatan', 'Pwt Selatan', '51542', 3, 1, 5, 1, 0, NULL, 2, NULL, 'eko', '2020-10-14', '874984', 'BCA', '../images/buktitransfer/2020-10-149penj.PNG', 795000, 795000);

-- ----------------------------
-- Table structure for tb_penilaian_produk
-- ----------------------------
DROP TABLE IF EXISTS `tb_penilaian_produk`;
CREATE TABLE `tb_penilaian_produk`  (
  `id_penilaian_produk` int(100) NOT NULL AUTO_INCREMENT,
  `tanggal_penilaian_produk` datetime(0) NULL DEFAULT NULL,
  `id_user` int(100) NULL DEFAULT NULL,
  `id_produk` int(100) NULL DEFAULT NULL,
  `id_bintang_penilaian_produk` int(100) NULL DEFAULT NULL,
  `komentar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_penilaian_produk`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_penilaian_produk
-- ----------------------------
INSERT INTO `tb_penilaian_produk` VALUES (1, '2020-10-07 09:47:07', 1, 1, 5, 'Mantap');
INSERT INTO `tb_penilaian_produk` VALUES (2, '2020-10-14 20:30:08', 9, 1, 4, 'ok');

-- ----------------------------
-- Table structure for tb_penjualan
-- ----------------------------
DROP TABLE IF EXISTS `tb_penjualan`;
CREATE TABLE `tb_penjualan`  (
  `id_penjualan` int(100) NOT NULL AUTO_INCREMENT,
  `kode_penjualan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `waktu_penjualan` datetime(0) NULL DEFAULT NULL,
  `id_user` int(100) NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `negara` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `provinsi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kabupaten` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kota` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kecamatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kelurahan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kode_pos` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_produk` int(100) NULL DEFAULT NULL,
  `jumlah_penjualan` decimal(65, 0) NULL DEFAULT NULL,
  `id_berat_produk` int(100) NULL DEFAULT NULL,
  `ongkos_kirim` double(100, 0) NULL DEFAULT NULL,
  `id_voucher` int(100) NULL DEFAULT NULL,
  `metode_pembayaran` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pesan_bukti_pembayaran` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_pemilik_rekening` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tanggal_transfer` date NULL DEFAULT NULL,
  `no_rekening` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bank_asal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gambar_bukti_pembayaran` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `total_harga_perproduk` double(255, 0) NULL DEFAULT NULL,
  `total_penjualan` double(255, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_penjualan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_penjualan
-- ----------------------------
INSERT INTO `tb_penjualan` VALUES (1, 'DR01', '2020-10-05 10:06:34', 7, 'Jalan Jend Sudirman No 3456', 'Indonesia', 'Jawa Barat', 'Depok', 'Tangerang ', 'Sawangan', 'Kedaung', '7436587', 1, 1, 1, 15000, NULL, '2', NULL, 'Moh', '2016-08-30', '19875698754', 'BCA', '../images/buktitransfer/2020-10-027mock up super montong.jpg', 129000, 144000);
INSERT INTO `tb_penjualan` VALUES (2, 'DR02', '2020-10-05 17:07:39', 7, 'Jalan Jend Sudirman No 3456', 'Indonesia', 'Jawa Barat', 'Depok', 'Tangerang ', 'Sawangan', 'Kedaung', '7436587', 1, 1, 1, 15000, NULL, '2', NULL, 'cek', '2017-01-03', '17364587365', 'BCA', '../images/buktitransfer/2020-10-027mock up super montong.jpg', 129000, 144000);
INSERT INTO `tb_penjualan` VALUES (3, 'DR03', '2020-10-05 17:09:22', 9, 'Jalan Ketapang 5 No 48 ', 'Indonesia', 'Jawa Tengah ', 'Banyumas', 'Depok', 'Pwt Selatan', 'Pwt Selatan', '51542', 1, 1, 1, 15000, NULL, '2', NULL, 'fdghiuyertiuh`', '2017-07-31', '463587643857', 'BCA', '../images/buktitransfer/2020-10-029buah duren 1.jpg', 129000, 144000);
INSERT INTO `tb_penjualan` VALUES (4, 'DR04', '2020-10-05 15:37:53', 12, 'Jalan Cek', 'Indonesia', 'Jawa Barat', 'Depok', 'Bekasi', 'Sawangan', 'Kedaung', '63542', 1, 1, 1, 15000, NULL, '2', NULL, 'Aprilita', '2020-10-04', '8687436587', 'BCA', '../images/buktitransfer/2020-10-0512bni.jpg', 129000, 144000);
INSERT INTO `tb_penjualan` VALUES (5, 'DR06', '2020-10-05 14:01:22', 14, 'Jalan Mawar no 3', 'Indonesia', 'Jawa Barat', 'Depok', 'Bekasi', 'Swangan', 'Kedaung', '43652', 1, 38, 1, 0, NULL, '2', NULL, 'EKO', '2020-10-07', '75683465', 'BCA', '../images/buktitransfer/2020-10-0714bni.jpg', 6042000, 6042000);
INSERT INTO `tb_penjualan` VALUES (6, 'DR07', '2020-10-05 10:28:00', 18, 'sawangan', 'indonesia', 'jawa barat', 'depok', 'Bogor', 'sawangan', 'kedaung', '12345', 1, 10, 1, 15000, NULL, '2', NULL, 'kepo', '2020-10-06', '123456789', 'BCA', '../images/buktitransfer/2020-10-061891fbdba0b0726b25c6490471dc43b7f8--blue-wallpaper-iphone-pastel-wallpaper.jpg', 1290000, 1305000);
INSERT INTO `tb_penjualan` VALUES (7, 'DR08', '2020-10-05 16:42:36', 19, 'tes', 'tes', 'tes', 'tes', 'Bekasi', 'tes', 'tes', '12345', 1, 1, 1, 15000, NULL, '2', NULL, 'duren', '2020-10-06', '123456789', 'BCA', '../images/buktitransfer/2020-10-061991fbdba0b0726b25c6490471dc43b7f8--blue-wallpaper-iphone-pastel-wallpaper.jpg', 129000, 144000);
INSERT INTO `tb_penjualan` VALUES (8, 'DR09', '2020-10-12 12:57:16', 14, '', 'Indonesia', 'Jawa Barat', 'Depok', 'Bekasi', 'Swangan', 'Kedaung', '43652', 1, 3, 1, 0, 0, '2', NULL, 'Mohamad', '2020-10-12', '4956834765', 'BCA', '../images/buktitransfer/2020-10-12142020-10-029buah duren 1.jpg', 477000, 477000);
INSERT INTO `tb_penjualan` VALUES (9, 'DR017', '2020-10-13 09:57:00', 14, 'Jalan Mawar no 3', 'Indonesia', 'Jawa Barat', 'Depok', 'Bekasi', 'Swangan', 'Kedaung', '43652', 1, 5, 1, 0, 0, '2', NULL, 'Mohamad', '2020-10-13', '5674958', 'BCA', '../images/buktitransfer/2020-10-1314ajg.PNG', 795000, 795000);
INSERT INTO `tb_penjualan` VALUES (10, 'DR09', '2020-10-13 10:01:07', 14, 'Jalan Mawar no 3', 'Indonesia', 'Jawa Barat', 'Depok', 'Bekasi', 'Swangan', 'Kedaung', '43652', 0, 10, 1, 0, 0, '', NULL, 'Mohamad ', '2020-10-13', '4967858475683', 'BCA', '../images/buktitransfer/2020-10-1314ajg.PNG', 1590000, 1590000);
INSERT INTO `tb_penjualan` VALUES (11, 'DR022', '2020-10-14 20:31:05', 9, 'Jalan Ketapang 5 No 48 ', 'Indonesia', 'Jawa Tengah ', 'Banyumas', 'Depok', 'Pwt Selatan', 'Pwt Selatan', '51542', 0, 5, 1, 0, 0, '', NULL, 'eko', '2020-10-14', '874984', 'BCA', '../images/buktitransfer/2020-10-149penj.PNG', 795000, 795000);

-- ----------------------------
-- Table structure for tb_produk
-- ----------------------------
DROP TABLE IF EXISTS `tb_produk`;
CREATE TABLE `tb_produk`  (
  `id_produk` int(100) NOT NULL AUTO_INCREMENT,
  `nama_produk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `detail1_produk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `detail2_produk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_jenis_produk` int(100) NULL DEFAULT NULL,
  `jumlah_stok` decimal(65, 0) NULL DEFAULT NULL,
  `id_satuan_produk` int(100) NULL DEFAULT NULL,
  `id_berat_produk` int(100) NULL DEFAULT NULL,
  `harga` double(100, 0) NULL DEFAULT NULL,
  `diskon` double(50, 0) NULL DEFAULT NULL,
  `gambar1_produk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gambar2_produk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gambar3_produk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gambar4_produk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gambar5_produk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `spesial_produk` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id_produk`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_produk
-- ----------------------------
INSERT INTO `tb_produk` VALUES (1, 'Durian Montong ', 'Kini waktunya durian LOKAL jadi FENOMENAL!\r\n', '\r\nKing Fruit menghadirkan buah durian dengan jaminan kualitas rasa terbaik dari masa panen pilihan, dengan PREMIUM QUALITY tergambar dalam ketebalan daging, konsisten rasa yang LEGIT, MANIS dan pasti TIDAK TERLU', 1, 100, 1, NULL, 159000, 0, 'gambar1_produk2020-09-301duren.png', 'gambar2_produk2020-09-301duren.png', 'gambar3_produk2020-09-301duren.png', 'gambar4_produk2020-09-301duren.png', NULL, 1);
INSERT INTO `tb_produk` VALUES (2, 'Durian Montong Coming Soon', 'cek', 'cek 2', 1, 0, 1, NULL, 0, NULL, 'gambar1_produk2020-08-3120gambar-duren.png', 'gambar2_produk2020-08-3120duren.jpg', 'gambar3_produk2020-08-3120gambar-duren2.png', 'gambar4_produk2020-08-3120duren.jpg', NULL, 0);

-- ----------------------------
-- Table structure for tb_retur_pembelian
-- ----------------------------
DROP TABLE IF EXISTS `tb_retur_pembelian`;
CREATE TABLE `tb_retur_pembelian`  (
  `id_retur` int(100) NOT NULL AUTO_INCREMENT,
  `kode_retur` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_user_retur` int(100) NULL DEFAULT NULL,
  `id_pemesanan` int(100) NULL DEFAULT NULL,
  `waktu_retur` datetime(0) NULL DEFAULT NULL,
  `pesan_retur` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gambar_barang_retur` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_status_retur` int(100) NULL DEFAULT NULL,
  `admin_nama_pemilik_rekening` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `admin_pesan_retur` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `admin_tanggal_transfer` date NULL DEFAULT NULL,
  `admin_nomor_rekening` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `admin_bank_asal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `admin_gambar_bukti_transfer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `admin_total_pengembalian_dana` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_retur`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_retur_pembelian
-- ----------------------------
INSERT INTO `tb_retur_pembelian` VALUES (9, 'RTDR01', 18, 7, '2020-10-06 16:33:37', 'durennya gaenak', '../images/retur/2020-10-0714mock up durian kanjau.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `tb_retur_pembelian` VALUES (12, 'RTDR010', 14, 6, '2020-10-07 16:27:23', 'kurang banyak', '../images/retur/2020-10-0714mock up durian kanjau.jpg', 3, '-', '-', '2020-10-08', '-', '-', '-', '0');

-- ----------------------------
-- Table structure for tb_riwayat_pemesanan
-- ----------------------------
DROP TABLE IF EXISTS `tb_riwayat_pemesanan`;
CREATE TABLE `tb_riwayat_pemesanan`  (
  `id_riwayat_pemesanan` int(100) NOT NULL AUTO_INCREMENT,
  `id_pemesanan` int(100) NULL DEFAULT NULL,
  `waktu_riwayat_pemesanan` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_riwayat_pemesanan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_share_peta_lokasi
-- ----------------------------
DROP TABLE IF EXISTS `tb_share_peta_lokasi`;
CREATE TABLE `tb_share_peta_lokasi`  (
  `id_share_peta_lokasi_user` int(100) NOT NULL AUTO_INCREMENT,
  `id_user` int(100) NULL DEFAULT NULL,
  `link_share_peta_lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_share_peta_lokasi_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_share_peta_lokasi
-- ----------------------------
INSERT INTO `tb_share_peta_lokasi` VALUES (1, 3, NULL);
INSERT INTO `tb_share_peta_lokasi` VALUES (2, 3, NULL);
INSERT INTO `tb_share_peta_lokasi` VALUES (3, 4, NULL);

-- ----------------------------
-- Table structure for tb_status_pembayaran_cekditbpemesanan
-- ----------------------------
DROP TABLE IF EXISTS `tb_status_pembayaran_cekditbpemesanan`;
CREATE TABLE `tb_status_pembayaran_cekditbpemesanan`  (
  `id_status_pembayaran` int(100) NOT NULL AUTO_INCREMENT,
  `status_pembayaran` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_status_pembayaran`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_voucher
-- ----------------------------
DROP TABLE IF EXISTS `tb_voucher`;
CREATE TABLE `tb_voucher`  (
  `id_voucher` int(100) NOT NULL AUTO_INCREMENT,
  `kode_voucher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_jenis_voucher` int(100) NULL DEFAULT NULL,
  `total_voucher` double(100, 0) NULL DEFAULT NULL,
  `waktu_berlaku` datetime(0) NULL DEFAULT NULL,
  `id_status_voucher` int(100) NULL DEFAULT NULL,
  PRIMARY KEY (`id_voucher`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_voucher
-- ----------------------------
INSERT INTO `tb_voucher` VALUES (1, '120082020', 1, 100000, '2020-08-20 13:54:11', 1);

-- ----------------------------
-- Table structure for tb_website_halaman_tampilan_detail
-- ----------------------------
DROP TABLE IF EXISTS `tb_website_halaman_tampilan_detail`;
CREATE TABLE `tb_website_halaman_tampilan_detail`  (
  `id_halaman_tampilan_detail` int(100) NOT NULL AUTO_INCREMENT,
  `judul_halaman_detail_pada_penilaian` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `teks_halaman_detail_pada_penilaian` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_halaman_tampilan_detail`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_website_halaman_utama_keunggulan
-- ----------------------------
DROP TABLE IF EXISTS `tb_website_halaman_utama_keunggulan`;
CREATE TABLE `tb_website_halaman_utama_keunggulan`  (
  `id_halaman_utama_keunggulan` int(100) NOT NULL AUTO_INCREMENT,
  `data1_gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `data1_judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `data1_teks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `data2_gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `data2_judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `data2_teks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `data3_gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `data3_judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `data3_teks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `data4_gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `data4_judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `data4_teks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_halaman_utama_keunggulan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_website_halaman_utama_top
-- ----------------------------
DROP TABLE IF EXISTS `tb_website_halaman_utama_top`;
CREATE TABLE `tb_website_halaman_utama_top`  (
  `id_halaman_utama_top` int(100) NOT NULL AUTO_INCREMENT,
  `top_judul_teks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `top_detail_teks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `top_gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_halaman_utama_top`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_website_menu_header
-- ----------------------------
DROP TABLE IF EXISTS `tb_website_menu_header`;
CREATE TABLE `tb_website_menu_header`  (
  `id_menu` int(100) NOT NULL AUTO_INCREMENT,
  `nama_menu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_user` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_menu`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- View structure for old2_view_data_semua_pesanan
-- ----------------------------
DROP VIEW IF EXISTS `old2_view_data_semua_pesanan`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `old2_view_data_semua_pesanan` AS SELECT
tb_pemesanan.id_pemesanan,
tb_pemesanan.kode_pemesanan,
DATE_FORMAT(tb_pemesanan.waktu_pemesanan,'%d/%m/%Y %H:%i') as waktu_pemesanan,
tb_pemesanan.id_user,
tb_login_user.username,
tb_login_user.nama_lengkap,
tb_login_user.email,
tb_login_user.nomor_hp,
tb_data_user.alamat,
tb_data_user.negara,
tb_data_user.provinsi,
tb_data_user.kabupaten,
tb_data_user.id_kota,
rt_kota.kota,
tb_data_user.kecamatan,
tb_data_user.kelurahan,
tb_data_user.kode_pos,
tb_pemesanan.pesan_pemesanan,
tb_pemesanan.id_proses_pemesanan,
rt_proses_pemesanan.proses_pemesanan,
tb_pemesanan.id_produk,
tb_produk.nama_produk,
tb_produk.detail1_produk,
tb_produk.id_jenis_produk,
rt_jenis_produk.jenis_produk,
tb_pemesanan.jumlah_pemesanan,
tb_produk.harga,
tb_produk.diskon,
tb_produk.harga-tb_produk.diskon AS harga_setelah_diskon,
tb_pemesanan.total_harga_perproduk,
tb_pemesanan.ongkos_kirim,
tb_pemesanan.total_harga_yang_harus_dibayar,
tb_produk.gambar1_produk,
tb_produk.id_satuan_produk,
rt_satuan_produk.satuan_produk,
tb_pemesanan.id_berat_produk,
rt_berat_produk_pemesanan.teks_berat_produk,
rt_berat_produk_pemesanan.konfersi_berat_produk_perkilogram,
tb_pemesanan.id_voucher,
tb_voucher.kode_voucher,
tb_voucher.id_jenis_voucher,
rt_jenis_voucher.jenis_voucher,
tb_voucher.total_voucher,
tb_voucher.waktu_berlaku,
tb_voucher.id_status_voucher,
rt_status_voucher.status_voucher,
tb_pemesanan.id_metode_pembayaran,
rt_metode_pembayaran.metode_pembayaran,
rt_metode_pembayaran.kode_link_pembayaran,
tb_pemesanan.pesan_bukti_pembayaran,
tb_pemesanan.gambar_bukti_pembayaran,
tb_pemesanan.nama_pemilik_rekening,
DATE_FORMAT(tb_pemesanan.tanggal_transfer,'%d/%m/%Y') as tanggal_transfer,
tb_pemesanan.no_rekening,
tb_pemesanan.bank_asal
FROM
tb_pemesanan
LEFT JOIN tb_login_user ON tb_login_user.id_user = tb_pemesanan.id_user
LEFT JOIN tb_data_user ON tb_data_user.id_user = tb_login_user.id_user
LEFT JOIN rt_proses_pemesanan ON rt_proses_pemesanan.id_proses_pemesanan = tb_pemesanan.id_proses_pemesanan
LEFT JOIN tb_produk ON tb_produk.id_produk = tb_pemesanan.id_produk
LEFT JOIN rt_jenis_produk ON rt_jenis_produk.id_jenis_produk = tb_produk.id_jenis_produk
LEFT JOIN tb_voucher ON tb_voucher.id_voucher = tb_pemesanan.id_voucher
LEFT JOIN rt_jenis_voucher ON rt_jenis_voucher.id_jenis_voucher = tb_voucher.id_jenis_voucher
LEFT JOIN rt_status_voucher ON rt_status_voucher.id_status_voucher = tb_voucher.id_status_voucher
LEFT JOIN rt_metode_pembayaran ON rt_metode_pembayaran.id_metode_pembayaran = tb_pemesanan.id_metode_pembayaran
LEFT JOIN rt_satuan_produk ON rt_satuan_produk.id_satuan_produk = tb_produk.id_satuan_produk
LEFT JOIN rt_berat_produk_pemesanan ON tb_pemesanan.id_berat_produk = rt_berat_produk_pemesanan.id_berat_produk
LEFT JOIN rt_kota ON tb_data_user.id_kota = rt_kota.id_kota ;

-- ----------------------------
-- View structure for old_view_data_pejualan
-- ----------------------------
DROP VIEW IF EXISTS `old_view_data_pejualan`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `old_view_data_pejualan` AS SELECT
tb_pemesanan.id_pemesanan,
tb_pemesanan.kode_pemesanan,
tb_pemesanan.waktu_pemesanan,
tb_pemesanan.id_user,
tb_login_user.username,
tb_login_user.nama_lengkap,
tb_login_user.email,
tb_login_user.nomor_hp,
tb_data_user.alamat,
tb_data_user.negara,
tb_data_user.provinsi,
tb_data_user.kabupaten,
tb_data_user.id_kota,
rt_kota.kota,
tb_data_user.kelurahan,
tb_data_user.kecamatan,
tb_data_user.kode_pos,
tb_pemesanan.pesan_pemesanan,
tb_pemesanan.id_proses_pemesanan,
rt_proses_pemesanan.proses_pemesanan,
tb_pemesanan.id_produk,
tb_produk.nama_produk,
tb_produk.detail1_produk,
tb_produk.id_jenis_produk,
rt_jenis_produk.jenis_produk,
tb_produk.harga,
tb_produk.gambar1_produk,
tb_pemesanan.jumlah_pemesanan,
tb_pemesanan.ongkos_kirim,
tb_pemesanan.id_voucher,
tb_voucher.kode_voucher,
tb_voucher.id_jenis_voucher,
rt_jenis_voucher.jenis_voucher,
tb_voucher.total_voucher,
tb_voucher.waktu_berlaku,
tb_voucher.id_status_voucher,
rt_status_voucher.status_voucher,
tb_pemesanan.id_metode_pembayaran,
rt_metode_pembayaran.metode_pembayaran,
rt_metode_pembayaran.kode_link_pembayaran,
tb_pemesanan.pesan_bukti_pembayaran,
tb_pemesanan.gambar_bukti_pembayaran
FROM
tb_pemesanan
LEFT JOIN tb_login_user ON tb_login_user.id_user = tb_pemesanan.id_user
LEFT JOIN tb_data_user ON tb_data_user.id_user = tb_login_user.id_user
LEFT JOIN rt_proses_pemesanan ON rt_proses_pemesanan.id_proses_pemesanan = tb_pemesanan.id_proses_pemesanan
LEFT JOIN tb_produk ON tb_produk.id_produk = tb_pemesanan.id_produk
LEFT JOIN rt_jenis_produk ON rt_jenis_produk.id_jenis_produk = tb_produk.id_jenis_produk
LEFT JOIN tb_voucher ON tb_voucher.id_voucher = tb_pemesanan.id_voucher
LEFT JOIN rt_jenis_voucher ON rt_jenis_voucher.id_jenis_voucher = tb_voucher.id_jenis_voucher
LEFT JOIN rt_status_voucher ON rt_status_voucher.id_status_voucher = tb_voucher.id_status_voucher
LEFT JOIN rt_metode_pembayaran ON rt_metode_pembayaran.id_metode_pembayaran = tb_pemesanan.id_metode_pembayaran
INNER JOIN rt_kota ON tb_data_user.id_kota = rt_kota.id_kota
WHERE
tb_pemesanan.id_proses_pemesanan = 2 ;

-- ----------------------------
-- View structure for old_view_data_semua_pesanan
-- ----------------------------
DROP VIEW IF EXISTS `old_view_data_semua_pesanan`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `old_view_data_semua_pesanan` AS SELECT
tb_pemesanan.id_pemesanan,
tb_pemesanan.kode_pemesanan,
tb_pemesanan.waktu_pemesanan,
tb_pemesanan.id_user,
tb_login_user.username,
tb_login_user.nama_lengkap,
tb_login_user.email,
tb_login_user.nomor_hp,
tb_data_user.alamat,
tb_data_user.negara,
tb_data_user.provinsi,
tb_data_user.kabupaten,
tb_data_user.id_kota,
rt_kota.kota,
tb_data_user.kecamatan,
tb_data_user.kelurahan,
tb_data_user.kode_pos,
tb_pemesanan.pesan_pemesanan,
tb_pemesanan.id_proses_pemesanan,
rt_proses_pemesanan.proses_pemesanan,
tb_pemesanan.id_produk,
tb_produk.nama_produk,
tb_produk.detail1_produk,
tb_produk.id_jenis_produk,
rt_jenis_produk.jenis_produk,
tb_produk.harga,
tb_produk.diskon,
tb_produk.harga-tb_produk.diskon AS harga_setelah_diskon,
tb_produk.gambar1_produk,
tb_pemesanan.jumlah_pemesanan,
tb_produk.id_satuan_produk,
rt_satuan_produk.satuan_produk,
tb_pemesanan.id_berat_produk,
rt_berat_produk_pemesanan.teks_berat_produk,
rt_berat_produk_pemesanan.konfersi_berat_produk_perkilogram,
tb_pemesanan.ongkos_kirim,
tb_pemesanan.id_voucher,
tb_voucher.kode_voucher,
tb_voucher.id_jenis_voucher,
rt_jenis_voucher.jenis_voucher,
tb_voucher.total_voucher,
tb_voucher.waktu_berlaku,
tb_voucher.id_status_voucher,
rt_status_voucher.status_voucher,
tb_pemesanan.id_metode_pembayaran,
rt_metode_pembayaran.metode_pembayaran,
rt_metode_pembayaran.kode_link_pembayaran,
tb_pemesanan.pesan_bukti_pembayaran,
tb_pemesanan.total_harga_perproduk,
tb_pemesanan.total_harga_yang_harus_dibayar,
tb_pemesanan.gambar_bukti_pembayaran
FROM
tb_pemesanan
LEFT JOIN tb_login_user ON tb_login_user.id_user = tb_pemesanan.id_user
LEFT JOIN tb_data_user ON tb_data_user.id_user = tb_login_user.id_user
LEFT JOIN rt_proses_pemesanan ON rt_proses_pemesanan.id_proses_pemesanan = tb_pemesanan.id_proses_pemesanan
LEFT JOIN tb_produk ON tb_produk.id_produk = tb_pemesanan.id_produk
LEFT JOIN rt_jenis_produk ON rt_jenis_produk.id_jenis_produk = tb_produk.id_jenis_produk
LEFT JOIN tb_voucher ON tb_voucher.id_voucher = tb_pemesanan.id_voucher
LEFT JOIN rt_jenis_voucher ON rt_jenis_voucher.id_jenis_voucher = tb_voucher.id_jenis_voucher
LEFT JOIN rt_status_voucher ON rt_status_voucher.id_status_voucher = tb_voucher.id_status_voucher
LEFT JOIN rt_metode_pembayaran ON rt_metode_pembayaran.id_metode_pembayaran = tb_pemesanan.id_metode_pembayaran
LEFT JOIN rt_satuan_produk ON rt_satuan_produk.id_satuan_produk = tb_produk.id_satuan_produk
LEFT JOIN rt_berat_produk_pemesanan ON tb_pemesanan.id_berat_produk = rt_berat_produk_pemesanan.id_berat_produk
LEFT JOIN rt_kota ON tb_data_user.id_kota = rt_kota.id_kota ;

-- ----------------------------
-- View structure for view_data_all_user
-- ----------------------------
DROP VIEW IF EXISTS `view_data_all_user`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_data_all_user` AS SELECT
tb_data_user.id_data_user,
tb_login_user.id_user,
tb_login_user.tanggal_mendaftar,
tb_login_user.username,
tb_login_user.nama_lengkap,
tb_login_user.email,
tb_login_user.nomor_hp,
tb_data_user.alamat,
tb_data_user.negara,
tb_data_user.provinsi,
tb_data_user.kabupaten,
tb_data_user.id_kota,
rt_kota.kota,	
tb_data_user.kecamatan,
tb_data_user.kelurahan,
tb_data_user.kode_pos,
tb_login_user.id_status_user,
rt_status_user.status_user,
tb_login_user.foto,
tb_data_user.tanggal_lahir,
tb_data_user.id_jenis_kelamin,
rt_jenis_kelamin.jenis_kelamin
FROM
tb_login_user
LEFT JOIN rt_status_user ON rt_status_user.id_status_user = tb_login_user.id_status_user
LEFT JOIN tb_data_user ON tb_login_user.id_user = tb_data_user.id_user
LEFT JOIN rt_jenis_kelamin ON rt_jenis_kelamin.id_jenis_kelamin = tb_data_user.id_jenis_kelamin
LEFT JOIN rt_kota ON tb_data_user.id_kota = rt_kota.id_kota ;

-- ----------------------------
-- View structure for view_data_chat
-- ----------------------------
DROP VIEW IF EXISTS `view_data_chat`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_data_chat` AS SELECT
tb_chat.id_chat,
tb_chat.id_user,
tb_login_user.username,
tb_login_user.nama_lengkap,
tb_login_user.email,
tb_login_user.nomor_hp,
tb_chat.waktu_chat,
tb_chat.teks_chat,
tb_chat.gambar_chat,
tb_chat.kode_chat,
tb_chat.id_status_chat,
rt_status_chat.status_chat
FROM
tb_chat
LEFT JOIN rt_status_chat ON rt_status_chat.id_status_chat = tb_chat.id_status_chat
LEFT JOIN tb_login_user ON tb_login_user.id_user = tb_chat.id_user ;

-- ----------------------------
-- View structure for view_data_detail_lokasi_konsumen
-- ----------------------------
DROP VIEW IF EXISTS `view_data_detail_lokasi_konsumen`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_data_detail_lokasi_konsumen` AS SELECT
tb_share_peta_lokasi.id_share_peta_lokasi_user,
tb_share_peta_lokasi.id_user,
tb_login_user.username,
tb_login_user.nama_lengkap,
tb_login_user.email,
tb_login_user.nomor_hp,
tb_data_user.alamat,
tb_data_user.negara,
tb_data_user.provinsi,
tb_data_user.kabupaten,
tb_data_user.kode_pos,
tb_data_user.kecamatan,
tb_data_user.kelurahan,
tb_data_user.id_kota,
rt_kota.kota
FROM
tb_share_peta_lokasi
LEFT JOIN tb_login_user ON tb_login_user.id_user = tb_share_peta_lokasi.id_user
LEFT JOIN tb_data_user ON tb_data_user.id_user = tb_login_user.id_user
LEFT JOIN rt_kota ON tb_data_user.id_kota = rt_kota.id_kota ;

-- ----------------------------
-- View structure for view_data_history_cart_konsumen
-- ----------------------------
DROP VIEW IF EXISTS `view_data_history_cart_konsumen`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_data_history_cart_konsumen` AS SELECT
tb_pemesanan.id_pemesanan,
tb_pemesanan.kode_pemesanan,
tb_pemesanan.waktu_pemesanan,
tb_pemesanan.id_user,
tb_login_user.username,
tb_login_user.nama_lengkap,
tb_login_user.email,
tb_login_user.nomor_hp,
tb_data_user.alamat,
tb_data_user.negara,
tb_data_user.provinsi,
tb_data_user.kabupaten,
tb_data_user.id_kota,
rt_kota.kota,
tb_data_user.kelurahan,
tb_data_user.kecamatan,
tb_data_user.kode_pos,
tb_pemesanan.pesan_pemesanan,
tb_pemesanan.id_proses_pemesanan,
rt_proses_pemesanan.proses_pemesanan,
tb_pemesanan.id_produk,
tb_produk.nama_produk,
tb_produk.detail1_produk,
tb_produk.id_jenis_produk,
rt_jenis_produk.jenis_produk,
tb_produk.harga,
tb_produk.gambar1_produk,
tb_pemesanan.jumlah_pemesanan,
tb_pemesanan.ongkos_kirim,
tb_pemesanan.id_voucher,
tb_voucher.kode_voucher,
tb_voucher.id_jenis_voucher,
rt_jenis_voucher.jenis_voucher,
tb_voucher.total_voucher,
tb_voucher.waktu_berlaku,
tb_voucher.id_status_voucher,
rt_status_voucher.status_voucher,
tb_pemesanan.id_metode_pembayaran,
rt_metode_pembayaran.metode_pembayaran,
rt_metode_pembayaran.kode_link_pembayaran,
tb_pemesanan.pesan_bukti_pembayaran,
tb_pemesanan.gambar_bukti_pembayaran
FROM
tb_pemesanan
LEFT JOIN tb_login_user ON tb_login_user.id_user = tb_pemesanan.id_user
LEFT JOIN tb_data_user ON tb_data_user.id_user = tb_login_user.id_user
LEFT JOIN rt_proses_pemesanan ON rt_proses_pemesanan.id_proses_pemesanan = tb_pemesanan.id_proses_pemesanan
LEFT JOIN tb_produk ON tb_produk.id_produk = tb_pemesanan.id_produk
LEFT JOIN rt_jenis_produk ON rt_jenis_produk.id_jenis_produk = tb_produk.id_jenis_produk
LEFT JOIN tb_voucher ON tb_voucher.id_voucher = tb_pemesanan.id_voucher
LEFT JOIN rt_jenis_voucher ON rt_jenis_voucher.id_jenis_voucher = tb_voucher.id_jenis_voucher
LEFT JOIN rt_status_voucher ON rt_status_voucher.id_status_voucher = tb_voucher.id_status_voucher
LEFT JOIN rt_metode_pembayaran ON rt_metode_pembayaran.id_metode_pembayaran = tb_pemesanan.id_metode_pembayaran
INNER JOIN rt_kota ON tb_data_user.id_kota = rt_kota.id_kota ;

-- ----------------------------
-- View structure for view_data_karyawan
-- ----------------------------
DROP VIEW IF EXISTS `view_data_karyawan`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_data_karyawan` AS SELECT
tb_login_user.id_user,
tb_login_user.tanggal_mendaftar,
tb_login_user.username,
tb_login_user.nama_lengkap,
tb_login_user.email,
tb_login_user.nomor_hp,
tb_login_user.`password`,
tb_login_user.id_status_user,
rt_status_user.status_user,
tb_login_user.foto

FROM
tb_login_user
LEFT JOIN rt_status_user ON rt_status_user.id_status_user = tb_login_user.id_status_user
WHERE
tb_login_user.id_status_user != 5 ;

-- ----------------------------
-- View structure for view_data_konsumen
-- ----------------------------
DROP VIEW IF EXISTS `view_data_konsumen`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_data_konsumen` AS SELECT
tb_data_user.id_data_user,
tb_login_user.id_user,
tb_login_user.tanggal_mendaftar,
tb_login_user.username,
tb_login_user.nama_lengkap,
tb_login_user.email,
tb_login_user.nomor_hp,
tb_login_user.`password`,
tb_data_user.alamat,
tb_data_user.negara,
tb_data_user.provinsi,
tb_data_user.kabupaten,
tb_data_user.id_kota,
rt_kota.kota,
tb_data_user.kecamatan,
tb_data_user.kelurahan,
tb_data_user.kode_pos,
tb_login_user.id_status_user,
rt_status_user.status_user,
tb_login_user.foto
FROM
tb_login_user
LEFT JOIN rt_status_user ON rt_status_user.id_status_user = tb_login_user.id_status_user
LEFT JOIN tb_data_user ON tb_login_user.id_user = tb_data_user.id_user
LEFT JOIN rt_kota ON tb_data_user.id_kota = rt_kota.id_kota
WHERE
tb_login_user.id_status_user = 5 ;

-- ----------------------------
-- View structure for view_data_login
-- ----------------------------
DROP VIEW IF EXISTS `view_data_login`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_data_login` AS SELECT
tb_login_user.id_user,
tb_login_user.tanggal_mendaftar,
tb_login_user.username,
tb_login_user.email,
tb_login_user.nama_lengkap,
tb_login_user.nomor_hp,
tb_login_user.`password`,
tb_login_user.id_status_user,
rt_status_user.status_user,
tb_login_user.foto
FROM
tb_login_user
LEFT JOIN rt_status_user ON rt_status_user.id_status_user = tb_login_user.id_status_user ;

-- ----------------------------
-- View structure for view_data_penilaian_produk
-- ----------------------------
DROP VIEW IF EXISTS `view_data_penilaian_produk`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_data_penilaian_produk` AS SELECT
tb_penilaian_produk.id_penilaian_produk,
tb_penilaian_produk.tanggal_penilaian_produk,
tb_penilaian_produk.id_user,
tb_login_user.username,
tb_login_user.nama_lengkap,
tb_login_user.email,
tb_login_user.nomor_hp,
tb_penilaian_produk.id_produk,
tb_produk.nama_produk,
tb_penilaian_produk.id_bintang_penilaian_produk,
rt_bintang_penilaian_produk.bintang_penilaian_produk,
tb_penilaian_produk.komentar,
tb_produk.detail1_produk,
tb_produk.detail2_produk,
tb_produk.harga,
tb_produk.gambar1_produk,
tb_produk.gambar2_produk,
tb_produk.gambar3_produk,
tb_produk.gambar4_produk
FROM
tb_penilaian_produk
LEFT JOIN tb_login_user ON tb_login_user.id_user = tb_penilaian_produk.id_user
LEFT JOIN tb_produk ON tb_produk.id_produk = tb_penilaian_produk.id_produk
LEFT JOIN rt_bintang_penilaian_produk ON rt_bintang_penilaian_produk.id_bintang_penilaian_produk = tb_penilaian_produk.id_bintang_penilaian_produk ;

-- ----------------------------
-- View structure for view_data_penjualan
-- ----------------------------
DROP VIEW IF EXISTS `view_data_penjualan`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_data_penjualan` AS SELECT
tb_penjualan.id_penjualan,
tb_penjualan.kode_penjualan,
tb_penjualan.waktu_penjualan,
tb_penjualan.id_user,
tb_login_user.username,
tb_login_user.nama_lengkap,
tb_login_user.email,
tb_login_user.nomor_hp,
tb_login_user.foto,
tb_penjualan.alamat,
tb_penjualan.negara,
tb_penjualan.provinsi,
tb_penjualan.kabupaten,
tb_penjualan.kota,
tb_penjualan.kecamatan,
tb_penjualan.kelurahan,
tb_penjualan.kode_pos,
tb_penjualan.id_produk,
tb_produk.nama_produk,
tb_produk.id_jenis_produk,
rt_jenis_produk.jenis_produk,
tb_produk.id_satuan_produk,
rt_satuan_produk.satuan_produk,
tb_penjualan.jumlah_penjualan,
tb_penjualan.id_berat_produk,
rt_berat_produk_pemesanan.teks_berat_produk,
rt_berat_produk_pemesanan.konfersi_berat_produk_perkilogram,
tb_penjualan.ongkos_kirim,
tb_penjualan.id_voucher,
rt_jenis_voucher.jenis_voucher,
tb_penjualan.metode_pembayaran,
tb_penjualan.pesan_bukti_pembayaran,
tb_penjualan.nama_pemilik_rekening,
tb_penjualan.tanggal_transfer,
tb_penjualan.no_rekening,
tb_penjualan.bank_asal,
tb_penjualan.gambar_bukti_pembayaran,
tb_penjualan.total_harga_perproduk,
tb_penjualan.total_penjualan
FROM
tb_penjualan
LEFT JOIN tb_login_user ON tb_penjualan.id_user = tb_login_user.id_user
LEFT JOIN tb_produk ON tb_penjualan.id_produk = tb_produk.id_produk
LEFT JOIN rt_jenis_produk ON tb_produk.id_jenis_produk = rt_jenis_produk.id_jenis_produk
LEFT JOIN rt_berat_produk_pemesanan ON tb_penjualan.id_berat_produk = rt_berat_produk_pemesanan.id_berat_produk
LEFT JOIN rt_jenis_voucher ON tb_penjualan.id_voucher = rt_jenis_voucher.id_jenis_voucher
LEFT JOIN rt_satuan_produk ON tb_produk.id_satuan_produk = rt_satuan_produk.id_satuan_produk ;

-- ----------------------------
-- View structure for view_data_produk
-- ----------------------------
DROP VIEW IF EXISTS `view_data_produk`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_data_produk` AS SELECT
tb_produk.id_produk,
tb_produk.nama_produk,
tb_produk.detail1_produk,
tb_produk.detail2_produk,
tb_produk.id_jenis_produk,
rt_jenis_produk.jenis_produk,
tb_produk.jumlah_stok,
tb_produk.id_satuan_produk,
rt_satuan_produk.satuan_produk,
tb_produk.harga,
tb_produk.diskon,
tb_produk.gambar1_produk,
tb_produk.gambar2_produk,
tb_produk.gambar3_produk,
tb_produk.gambar4_produk,
tb_produk.gambar5_produk, tb_produk.harga-tb_produk.diskon as harga_setelah_diskon
FROM
tb_produk
LEFT JOIN rt_jenis_produk ON tb_produk.id_jenis_produk = rt_jenis_produk.id_jenis_produk
LEFT JOIN rt_satuan_produk ON tb_produk.id_satuan_produk = rt_satuan_produk.id_satuan_produk
ORDER BY
tb_produk.id_produk ASC ;

-- ----------------------------
-- View structure for view_data_retur_all
-- ----------------------------
DROP VIEW IF EXISTS `view_data_retur_all`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_data_retur_all` AS SELECT
tb_retur_pembelian.id_retur,
tb_retur_pembelian.kode_retur,
tb_retur_pembelian.id_user_retur,
tb_retur_pembelian.id_pemesanan,
tb_retur_pembelian.waktu_retur,
tb_retur_pembelian.pesan_retur,
tb_retur_pembelian.gambar_barang_retur,
tb_pemesanan.kode_pemesanan,
tb_pemesanan.waktu_pemesanan,
tb_pemesanan.id_user,
tb_login_user.nama_lengkap,
tb_login_user.email,
tb_login_user.nomor_hp,
tb_pemesanan.nama_pemilik_rekening,
tb_pemesanan.tanggal_transfer,
tb_pemesanan.no_rekening,
tb_pemesanan.bank_asal,
tb_pemesanan.gambar_bukti_pembayaran,
tb_pemesanan.total_harga_yang_harus_dibayar,
tb_retur_pembelian.id_status_retur,
rt_status_retur.status_retur,
tb_retur_pembelian.admin_pesan_retur,
tb_retur_pembelian.admin_tanggal_transfer,
tb_retur_pembelian.admin_nomor_rekening,
tb_retur_pembelian.admin_bank_asal,
tb_retur_pembelian.admin_gambar_bukti_transfer,
tb_retur_pembelian.admin_total_pengembalian_dana
FROM
tb_retur_pembelian
INNER JOIN tb_pemesanan ON tb_retur_pembelian.id_pemesanan = tb_pemesanan.id_pemesanan
INNER JOIN tb_login_user ON tb_pemesanan.id_user = tb_login_user.id_user
INNER JOIN rt_status_retur ON tb_retur_pembelian.id_status_retur = rt_status_retur.id_status_retur ;

-- ----------------------------
-- View structure for view_data_semua_pesanan
-- ----------------------------
DROP VIEW IF EXISTS `view_data_semua_pesanan`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_data_semua_pesanan` AS SELECT
tb_pemesanan.id_pemesanan,
tb_pemesanan.kode_pemesanan,
DATE_FORMAT(tb_pemesanan.waktu_pemesanan,'%d/%m/%Y %H:%i') AS waktu_pemesanan,
tb_pemesanan.id_user,
tb_login_user.username,
tb_login_user.nama_lengkap,
tb_login_user.email,
tb_login_user.nomor_hp,
tb_data_user.alamat,
tb_data_user.negara,
tb_data_user.provinsi,
tb_data_user.kabupaten,
tb_data_user.id_kota,
rt_kota.kota,
tb_data_user.kecamatan,
tb_data_user.kelurahan,
tb_data_user.kode_pos,
tb_pemesanan.pesan_pemesanan,
tb_pemesanan.id_proses_pemesanan,
rt_proses_pemesanan.proses_pemesanan,
tb_pemesanan.id_produk,
tb_produk.nama_produk,
tb_produk.detail1_produk,
tb_produk.id_jenis_produk,
rt_jenis_produk.jenis_produk,
tb_pemesanan.jumlah_pemesanan,
tb_produk.harga,
tb_produk.diskon,
tb_produk.harga-tb_produk.diskon AS harga_setelah_diskon,
tb_pemesanan.total_harga_perproduk,
tb_pemesanan.ongkos_kirim,
tb_pemesanan.total_harga_yang_harus_dibayar,
tb_produk.gambar1_produk,
tb_produk.id_satuan_produk,
rt_satuan_produk.satuan_produk,
tb_pemesanan.id_berat_produk,
rt_berat_produk_pemesanan.teks_berat_produk,
rt_berat_produk_pemesanan.konfersi_berat_produk_perkilogram,
tb_pemesanan.id_voucher,
tb_voucher.kode_voucher,
tb_voucher.id_jenis_voucher,
rt_jenis_voucher.jenis_voucher,
tb_voucher.total_voucher,
tb_voucher.waktu_berlaku,
tb_voucher.id_status_voucher,
rt_status_voucher.status_voucher,
tb_pemesanan.id_metode_pembayaran,
rt_metode_pembayaran.metode_pembayaran,
rt_metode_pembayaran.kode_link_pembayaran,
tb_pemesanan.pesan_bukti_pembayaran,
tb_pemesanan.gambar_bukti_pembayaran,
tb_pemesanan.nama_pemilik_rekening,
DATE_FORMAT(tb_pemesanan.tanggal_transfer,'%d/%m/%Y') AS tanggal_transfer,
tb_pemesanan.no_rekening,
tb_pemesanan.bank_asal
FROM
tb_pemesanan
LEFT JOIN tb_login_user ON tb_login_user.id_user = tb_pemesanan.id_user
LEFT JOIN tb_data_user ON tb_data_user.id_user = tb_login_user.id_user
LEFT JOIN rt_proses_pemesanan ON rt_proses_pemesanan.id_proses_pemesanan = tb_pemesanan.id_proses_pemesanan
LEFT JOIN tb_produk ON tb_produk.id_produk = tb_pemesanan.id_produk
LEFT JOIN rt_jenis_produk ON rt_jenis_produk.id_jenis_produk = tb_produk.id_jenis_produk
LEFT JOIN tb_voucher ON tb_voucher.id_voucher = tb_pemesanan.id_voucher
LEFT JOIN rt_jenis_voucher ON rt_jenis_voucher.id_jenis_voucher = tb_voucher.id_jenis_voucher
LEFT JOIN rt_status_voucher ON rt_status_voucher.id_status_voucher = tb_voucher.id_status_voucher
LEFT JOIN rt_metode_pembayaran ON rt_metode_pembayaran.id_metode_pembayaran = tb_pemesanan.id_metode_pembayaran
LEFT JOIN rt_satuan_produk ON rt_satuan_produk.id_satuan_produk = tb_produk.id_satuan_produk
LEFT JOIN rt_berat_produk_pemesanan ON tb_pemesanan.id_berat_produk = rt_berat_produk_pemesanan.id_berat_produk
LEFT JOIN rt_kota ON tb_data_user.id_kota = rt_kota.id_kota
GROUP BY kode_pemesanan ;

-- ----------------------------
-- View structure for view_data_tampil_produk_spesial_halaman_utama
-- ----------------------------
DROP VIEW IF EXISTS `view_data_tampil_produk_spesial_halaman_utama`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_data_tampil_produk_spesial_halaman_utama` AS SELECT
tb_penilaian_produk.id_produk,
tb_produk.nama_produk,
rt_bintang_penilaian_produk.bintang_penilaian_produk,
tb_produk.detail1_produk,
tb_produk.detail2_produk,
tb_produk.harga,
tb_produk.diskon,
tb_produk.harga-tb_produk.diskon as harga_setelah_diskon,
tb_produk.gambar1_produk,
tb_produk.gambar2_produk,
tb_produk.gambar3_produk,
tb_produk.gambar4_produk,
tb_produk.id_jenis_produk,
rt_jenis_produk.jenis_produk,
tb_produk.jumlah_stok,
tb_produk.id_satuan_produk,
rt_satuan_produk.satuan_produk,
tb_produk.gambar5_produk,
tb_produk.spesial_produk,
Avg(rt_bintang_penilaian_produk.bintang_penilaian_produk) AS rata_rata_bintang_penilaian,
AVG(rt_bintang_penilaian_produk.bintang_penilaian_produk)/5*100 AS persentase_penilaian
FROM
tb_penilaian_produk
LEFT JOIN tb_produk ON tb_produk.id_produk = tb_penilaian_produk.id_produk
LEFT JOIN rt_bintang_penilaian_produk ON rt_bintang_penilaian_produk.id_bintang_penilaian_produk = tb_penilaian_produk.id_bintang_penilaian_produk
INNER JOIN rt_jenis_produk ON rt_jenis_produk.id_jenis_produk = tb_produk.id_jenis_produk
INNER JOIN rt_satuan_produk ON rt_satuan_produk.id_satuan_produk = tb_produk.id_satuan_produk
WHERE
tb_produk.spesial_produk = 1 ;

-- ----------------------------
-- View structure for view_data_voucher
-- ----------------------------
DROP VIEW IF EXISTS `view_data_voucher`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_data_voucher` AS SELECT
tb_voucher.id_voucher,
tb_voucher.kode_voucher,
tb_voucher.id_jenis_voucher,
rt_jenis_voucher.jenis_voucher,
tb_voucher.total_voucher,
tb_voucher.waktu_berlaku,
tb_voucher.id_status_voucher,
rt_status_voucher.status_voucher
FROM
tb_voucher
LEFT JOIN rt_jenis_voucher ON rt_jenis_voucher.id_jenis_voucher = tb_voucher.id_jenis_voucher
LEFT JOIN rt_status_voucher ON rt_status_voucher.id_status_voucher = tb_voucher.id_status_voucher ;

-- ----------------------------
-- View structure for view_detail_pengajuan_retur_produk
-- ----------------------------
DROP VIEW IF EXISTS `view_detail_pengajuan_retur_produk`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_detail_pengajuan_retur_produk` AS SELECT
tb_retur_pembelian.id_retur,
tb_retur_pembelian.kode_retur,
tb_retur_pembelian.id_user_retur,
tb_retur_pembelian.id_pemesanan,
tb_retur_pembelian.waktu_retur,
tb_retur_pembelian.pesan_retur,
tb_retur_pembelian.gambar_barang_retur,
tb_pemesanan.kode_pemesanan,
tb_pemesanan.waktu_pemesanan,
tb_pemesanan.id_user,
tb_login_user.nama_lengkap,
tb_login_user.email,
tb_login_user.nomor_hp,
tb_pemesanan.nama_pemilik_rekening,
tb_pemesanan.tanggal_transfer,
tb_pemesanan.no_rekening,
tb_pemesanan.bank_asal,
tb_pemesanan.gambar_bukti_pembayaran,
tb_pemesanan.total_harga_yang_harus_dibayar,
tb_retur_pembelian.id_status_retur,
rt_status_retur.status_retur,
tb_retur_pembelian.admin_pesan_retur,
tb_retur_pembelian.admin_tanggal_transfer,
tb_retur_pembelian.admin_nomor_rekening,
tb_retur_pembelian.admin_bank_asal,
tb_retur_pembelian.admin_gambar_bukti_transfer,
tb_retur_pembelian.admin_total_pengembalian_dana
FROM
tb_retur_pembelian
INNER JOIN tb_pemesanan ON tb_retur_pembelian.id_pemesanan = tb_pemesanan.id_pemesanan
INNER JOIN tb_login_user ON tb_pemesanan.id_user = tb_login_user.id_user
INNER JOIN rt_status_retur ON tb_retur_pembelian.id_status_retur = rt_status_retur.id_status_retur
where tb_retur_pembelian.id_status_retur = '1' ;

-- ----------------------------
-- View structure for view_pemesanan_barang_dikirim
-- ----------------------------
DROP VIEW IF EXISTS `view_pemesanan_barang_dikirim`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_pemesanan_barang_dikirim` AS SELECT
tb_pemesanan.id_pemesanan,
tb_pemesanan.kode_pemesanan,
tb_pemesanan.id_user,
tb_login_user.username,
tb_login_user.nama_lengkap,
tb_pemesanan.id_proses_pemesanan,
CONCAT(tb_pemesanan.alamat , ', ' , tb_pemesanan.kelurahan , ', ' , tb_pemesanan.kecamatan , ', ' , tb_pemesanan.kota, ', ' , tb_pemesanan.kabupaten , ', ' , tb_pemesanan.provinsi , ' - ' , tb_pemesanan.negara ,', ', ' Kode POS :' ,' ', tb_pemesanan.kode_pos ) AS alamat,
rt_proses_pemesanan.proses_pemesanan
FROM
tb_pemesanan
INNER JOIN tb_login_user ON tb_pemesanan.id_user = tb_login_user.id_user
INNER JOIN rt_proses_pemesanan ON rt_proses_pemesanan.id_proses_pemesanan = tb_pemesanan.id_proses_pemesanan
WHERE
tb_pemesanan.id_proses_pemesanan = '5' ;

-- ----------------------------
-- View structure for view_pemesanan_konfirmasi_pembayaran_admin
-- ----------------------------
DROP VIEW IF EXISTS `view_pemesanan_konfirmasi_pembayaran_admin`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_pemesanan_konfirmasi_pembayaran_admin` AS SELECT
tb_pemesanan.id_pemesanan,
tb_pemesanan.kode_pemesanan,
tb_pemesanan.id_user,
tb_login_user.username,
tb_login_user.nama_lengkap,
tb_pemesanan.id_proses_pemesanan
FROM
tb_pemesanan
INNER JOIN tb_login_user ON tb_pemesanan.id_user = tb_login_user.id_user
WHERE
tb_pemesanan.id_proses_pemesanan = '3' ;

-- ----------------------------
-- View structure for view_pemesanan_konfirmasi_pengiriman_admin
-- ----------------------------
DROP VIEW IF EXISTS `view_pemesanan_konfirmasi_pengiriman_admin`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_pemesanan_konfirmasi_pengiriman_admin` AS SELECT
tb_pemesanan.id_pemesanan,
tb_pemesanan.kode_pemesanan,
tb_pemesanan.id_user,
tb_login_user.username,
tb_login_user.nama_lengkap,
tb_pemesanan.id_proses_pemesanan
FROM
tb_pemesanan
INNER JOIN tb_login_user ON tb_pemesanan.id_user = tb_login_user.id_user
WHERE
tb_pemesanan.id_proses_pemesanan = '4' ;

-- ----------------------------
-- View structure for view_pengajuan_retur_produk
-- ----------------------------
DROP VIEW IF EXISTS `view_pengajuan_retur_produk`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_pengajuan_retur_produk` AS SELECT
tb_retur_pembelian.id_retur,
tb_retur_pembelian.kode_retur,
tb_login_user.nama_lengkap,
tb_login_user.nomor_hp,
tb_retur_pembelian.id_status_retur
FROM
tb_retur_pembelian
INNER JOIN tb_pemesanan ON tb_retur_pembelian.id_pemesanan = tb_pemesanan.id_pemesanan
INNER JOIN tb_login_user ON tb_pemesanan.id_user = tb_login_user.id_user
WHERE tb_retur_pembelian.id_status_retur = '1' ;

-- ----------------------------
-- View structure for view_root1_retur_pembelian
-- ----------------------------
DROP VIEW IF EXISTS `view_root1_retur_pembelian`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_root1_retur_pembelian` AS SELECT
tb_retur_pembelian.id_retur,
tb_retur_pembelian.kode_retur,
tb_retur_pembelian.id_pemesanan,
tb_retur_pembelian.waktu_retur,
tb_retur_pembelian.pesan_retur,
tb_retur_pembelian.gambar_barang_retur,
view_data_semua_pesanan.kode_pemesanan,
view_data_semua_pesanan.waktu_pemesanan,
view_data_semua_pesanan.id_user,
view_data_semua_pesanan.username,
view_data_semua_pesanan.nama_lengkap,
view_data_semua_pesanan.email,
view_data_semua_pesanan.nomor_hp,
view_data_semua_pesanan.alamat,
view_data_semua_pesanan.negara,
view_data_semua_pesanan.provinsi,
view_data_semua_pesanan.kabupaten,
view_data_semua_pesanan.id_kota,
view_data_semua_pesanan.kota,
view_data_semua_pesanan.kecamatan,
view_data_semua_pesanan.kelurahan,
view_data_semua_pesanan.kode_pos,
view_data_semua_pesanan.pesan_pemesanan,
view_data_semua_pesanan.id_proses_pemesanan,
view_data_semua_pesanan.proses_pemesanan,
view_data_semua_pesanan.id_produk,
view_data_semua_pesanan.nama_produk,
view_data_semua_pesanan.detail1_produk,
view_data_semua_pesanan.id_jenis_produk,
view_data_semua_pesanan.jenis_produk,
view_data_semua_pesanan.jumlah_pemesanan,
view_data_semua_pesanan.harga,
view_data_semua_pesanan.diskon,
view_data_semua_pesanan.harga_setelah_diskon,
view_data_semua_pesanan.total_harga_perproduk,
view_data_semua_pesanan.ongkos_kirim,
view_data_semua_pesanan.total_harga_yang_harus_dibayar,
view_data_semua_pesanan.gambar1_produk,
view_data_semua_pesanan.id_satuan_produk,
view_data_semua_pesanan.satuan_produk,
view_data_semua_pesanan.id_berat_produk,
view_data_semua_pesanan.teks_berat_produk,
view_data_semua_pesanan.konfersi_berat_produk_perkilogram,
view_data_semua_pesanan.id_voucher,
view_data_semua_pesanan.kode_voucher,
view_data_semua_pesanan.id_jenis_voucher,
view_data_semua_pesanan.jenis_voucher,
view_data_semua_pesanan.total_voucher,
view_data_semua_pesanan.waktu_berlaku,
view_data_semua_pesanan.id_status_voucher,
view_data_semua_pesanan.status_voucher,
view_data_semua_pesanan.id_metode_pembayaran,
view_data_semua_pesanan.metode_pembayaran,
view_data_semua_pesanan.kode_link_pembayaran,
view_data_semua_pesanan.pesan_bukti_pembayaran,
view_data_semua_pesanan.gambar_bukti_pembayaran,
view_data_semua_pesanan.nama_pemilik_rekening,
view_data_semua_pesanan.tanggal_transfer,
view_data_semua_pesanan.no_rekening,
view_data_semua_pesanan.bank_asal
FROM
tb_retur_pembelian
INNER JOIN view_data_semua_pesanan ON tb_retur_pembelian.id_pemesanan = view_data_semua_pesanan.id_pemesanan ;

SET FOREIGN_KEY_CHECKS = 1;