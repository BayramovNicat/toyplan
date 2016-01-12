-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2016 at 03:05 PM
-- Server version: 5.5.46-0ubuntu0.14.04.2
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `toyplan`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `img` varchar(255) NOT NULL DEFAULT 'placeholder.jpg',
  `icon` varchar(255) NOT NULL DEFAULT 'zmdi-square-o',
  `slug` varchar(100) NOT NULL,
  `status` enum('','0','1') NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  UNIQUE KEY `id` (`id`),
  KEY `slug_2` (`slug`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `img`, `icon`, `slug`, `status`) VALUES
(1, 'Şadlıq sarayı', 'wedding_place.jpg', 'zmdi-balance', 'shadliq-sarayi', '1'),
(2, 'Gözəllik salonu', 'beauty_salon.jpg', 'zmdi-brush', 'gozellik-salonu', '1'),
(4, 'Müğənnilər', 'singer.jpg', 'zmdi-audio', 'mugenniler', '1'),
(10, 'Gül salonları', 'flowers.jpg', 'zmdi-flower-alt', 'gul-salonlari', '1'),
(6, 'Maşın kirayəsi', 'car.jpg', 'zmdi-car', 'mashin-kirayesi', '1'),
(7, 'Foto və video xidmətlər', 'photo.jpg', 'zmdi-camera', 'foto-ve-video-xidmetler', '1'),
(8, 'Gəlinlik paltarları', 'dresses.jpg', 'zmdi-mall', 'gelinlik-paltarlari', '1'),
(9, ' Tort', 'cake.jpg', 'zmdi-cake', 'tort', '1'),
(5, 'Zalın bəzədilməsi', 'decoration.jpg', 'zmdi-flower', 'zalin-bezedilmesi', '1'),
(11, 'Zinyət əşyaları', 'jevelery.jpg', 'zmdi-square-o', 'zinyet-eshyalari', '1'),
(3, 'Kişi kostyumları', 'man_costume.jpg', 'zmdi-square-o', 'kishi-kostyumlari', '1'),
(13, 'Aparıcılar', 'toastmaster.jpg', 'zmdi-mic-outline', 'aparicilar', '1');

-- --------------------------------------------------------

--
-- Table structure for table `checklist`
--

CREATE TABLE IF NOT EXISTS `checklist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `new` enum('1','0') NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=47 ;

--
-- Dumping data for table `checklist`
--

INSERT INTO `checklist` (`id`, `user_id`, `service_id`, `category_id`, `new`) VALUES
(45, 46, 70, 1, '1'),
(46, 46, 71, 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `hall`
--

CREATE TABLE IF NOT EXISTS `hall` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_slug` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` enum('','0','1') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `service_id` (`service_slug`),
  KEY `service_slug` (`service_slug`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `hall`
--

INSERT INTO `hall` (`id`, `service_slug`, `name`, `status`) VALUES
(1, 'kral_shadliq_sarayi', '1-ci zal', '1'),
(2, 'kral_shadliq_sarayi', '2-ci zal', '1'),
(3, 'altun_shadliq_sarayi', '1 ci zal', '1'),
(4, 'altun_shadliq_sarayi', '2 ci zal', '1'),
(5, 'yegane_shadliq_sarayi', '1 ci zal', '1'),
(6, 'yegane_shadliq_sarayi', '2 ci zal', '1'),
(7, 'monaliza_shadliq_sarayi', 'Quba zali', '1'),
(8, 'monaliza_shadliq_sarayi', 'Avropa zali', '1'),
(9, 'neolit_shadliq_sarayi', '1 ci zal', '1'),
(10, 'neolit_shadliq_sarayi', '2 ci zal', '1');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE IF NOT EXISTS `media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `video` varchar(100) NOT NULL,
  `type` enum('img','video') NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('','0','1') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `service_slug` (`service_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=617 ;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `service_id`, `img`, `video`, `type`, `created_date`, `status`) VALUES
(409, 70, '6391883_MG_8542.jpg', '', 'img', '2016-01-12 12:38:35', '1'),
(410, 70, '683a402_MG_8546.jpg', '', 'img', '2016-01-12 12:38:41', '1'),
(411, 70, 'b31e372_MG_8543.jpg', '', 'img', '2016-01-12 12:38:44', '1'),
(412, 70, '48ed31b_MG_8548.jpg', '', 'img', '2016-01-12 12:38:46', '1'),
(413, 70, '570298f_MG_8545.jpg', '', 'img', '2016-01-12 12:38:48', '1'),
(414, 70, '9083cb7_MG_8542_1.jpg', '', 'img', '2016-01-12 12:38:49', '1'),
(415, 70, '7c5bf4f_MG_8554.jpg', '', 'img', '2016-01-12 12:38:52', '1'),
(416, 70, '6b03518_MG_8552.jpg', '', 'img', '2016-01-12 12:38:54', '1'),
(417, 70, '47cd5f7_MG_8544.jpg', '', 'img', '2016-01-12 12:38:56', '1'),
(418, 70, 'ea1cb45_MG_8555.jpg', '', 'img', '2016-01-12 12:38:58', '1'),
(419, 70, '062eb6a_MG_8551.jpg', '', 'img', '2016-01-12 12:39:00', '1'),
(420, 70, '5526ed1_MG_8560.jpg', '', 'img', '2016-01-12 12:39:02', '1'),
(421, 70, 'fe9c979_MG_8556.jpg', '', 'img', '2016-01-12 12:39:04', '1'),
(422, 71, '2fbc5d1_MG_8587_1.jpg', '', 'img', '2016-01-12 12:01:36', '1'),
(423, 71, '1ec9aa5_MG_8591.jpg', '', 'img', '2016-01-12 12:01:36', '1'),
(424, 71, '9f38743_MG_8590.jpg', '', 'img', '2016-01-12 12:01:36', '1'),
(425, 71, 'e7e2600_MG_8584_1.jpg', '', 'img', '2016-01-12 12:01:36', '1'),
(426, 71, '8345101_MG_8592.jpg', '', 'img', '2016-01-12 12:01:37', '1'),
(427, 71, '3ebb481_MG_8593.jpg', '', 'img', '2016-01-12 12:01:37', '1'),
(428, 71, 'f9c73a1_MG_8594.jpg', '', 'img', '2016-01-12 12:01:37', '1'),
(429, 71, '07a9572_MG_8596.jpg', '', 'img', '2016-01-12 12:01:37', '1'),
(430, 71, 'bac4f3f_MG_8595.jpg', '', 'img', '2016-01-12 12:01:37', '1'),
(431, 71, '93223c4_MG_8598.jpg', '', 'img', '2016-01-12 12:01:37', '1'),
(432, 71, '4a854e7_MG_8589.jpg', '', 'img', '2016-01-12 12:01:37', '1'),
(433, 71, 'd5304d6_MG_8599.jpg', '', 'img', '2016-01-12 12:01:37', '1'),
(434, 71, 'c2f822f_MG_8604.jpg', '', 'img', '2016-01-12 12:01:38', '1'),
(435, 71, 'f5f45fd_MG_8602.jpg', '', 'img', '2016-01-12 12:01:38', '1'),
(436, 71, '0556772_MG_8608.jpg', '', 'img', '2016-01-12 12:01:38', '1'),
(437, 71, 'f3dadff_MG_8606.jpg', '', 'img', '2016-01-12 12:01:38', '1'),
(438, 71, '4cd262a_MG_8611.jpg', '', 'img', '2016-01-12 12:01:38', '1'),
(439, 71, 'e98c1a5_MG_8610.jpg', '', 'img', '2016-01-12 12:01:38', '1'),
(440, 71, 'eaef333_MG_8600.jpg', '', 'img', '2016-01-12 12:01:38', '1'),
(441, 72, 'b401ed5_MG_7499.jpg', '', 'img', '2016-01-12 12:01:54', '1'),
(442, 72, 'bdc666e_MG_7503.jpg', '', 'img', '2016-01-12 12:01:54', '1'),
(443, 72, '43449dd_MG_7505.jpg', '', 'img', '2016-01-12 12:01:54', '1'),
(444, 72, 'e711d19_MG_7501.jpg', '', 'img', '2016-01-12 12:01:54', '1'),
(445, 72, 'c63b505_MG_7504.jpg', '', 'img', '2016-01-12 12:01:54', '1'),
(446, 72, '25ee341_MG_7506_1.jpg', '', 'img', '2016-01-12 12:01:54', '1'),
(447, 72, 'b8d5c58_MG_7502.jpg', '', 'img', '2016-01-12 12:01:54', '1'),
(448, 72, 'bf41e71_MG_7512.jpg', '', 'img', '2016-01-12 12:01:55', '1'),
(449, 72, 'e6b83c6_MG_7509.jpg', '', 'img', '2016-01-12 12:01:55', '1'),
(450, 72, '180f6ac_MG_7517.jpg', '', 'img', '2016-01-12 12:01:55', '1'),
(451, 72, 'cb61405_MG_7507.jpg', '', 'img', '2016-01-12 12:01:55', '1'),
(452, 72, 'a250d42_MG_7516.jpg', '', 'img', '2016-01-12 12:01:55', '1'),
(453, 72, '71c4e7b_MG_7528_1.jpg', '', 'img', '2016-01-12 12:01:55', '1'),
(454, 72, 'f500fc9_MG_7527.jpg', '', 'img', '2016-01-12 12:01:55', '1'),
(455, 72, '9a38404_MG_7530.jpg', '', 'img', '2016-01-12 12:01:55', '1'),
(456, 72, 'cc7d715_MG_7519.jpg', '', 'img', '2016-01-12 12:01:55', '1'),
(457, 72, '4b9f160_MG_7532.jpg', '', 'img', '2016-01-12 12:01:56', '1'),
(458, 72, 'eb9ca04_MG_7533_1.jpg', '', 'img', '2016-01-12 12:01:56', '1'),
(459, 72, '756b4b8_MG_7531.jpg', '', 'img', '2016-01-12 12:01:56', '1'),
(460, 72, '9243543_MG_7534.jpg', '', 'img', '2016-01-12 12:01:56', '1'),
(461, 72, 'cb80ffd_MG_7536.jpg', '', 'img', '2016-01-12 12:01:56', '1'),
(462, 72, '28abe4b_MG_7538.jpg', '', 'img', '2016-01-12 12:01:56', '1'),
(463, 72, '113258f_MG_7537_1.jpg', '', 'img', '2016-01-12 12:01:56', '1'),
(464, 72, '13c1b34_MG_7539_1.jpg', '', 'img', '2016-01-12 12:01:57', '1'),
(465, 73, '83f1c27_MG_7786.jpg', '', 'img', '2016-01-12 12:01:14', '1'),
(466, 73, '69a936a_MG_7787.jpg', '', 'img', '2016-01-12 12:01:14', '1'),
(467, 73, 'f7ad28f_MG_7792.jpg', '', 'img', '2016-01-12 12:01:14', '1'),
(468, 73, 'cdd06c3_MG_7786_1.jpg', '', 'img', '2016-01-12 12:01:14', '1'),
(469, 73, '2ca811c_MG_7788.jpg', '', 'img', '2016-01-12 12:01:15', '1'),
(470, 73, '0427d5b_MG_7793.jpg', '', 'img', '2016-01-12 12:01:15', '1'),
(471, 73, '36d0de7_MG_7794.jpg', '', 'img', '2016-01-12 12:01:15', '1'),
(472, 73, 'dc0b099_MG_7796.jpg', '', 'img', '2016-01-12 12:01:15', '1'),
(473, 73, 'f5a2422_MG_7791.jpg', '', 'img', '2016-01-12 12:01:15', '1'),
(474, 73, 'e9fd2c1_MG_7795.jpg', '', 'img', '2016-01-12 12:01:15', '1'),
(475, 73, '6c99ebd_MG_7797.jpg', '', 'img', '2016-01-12 12:01:15', '1'),
(476, 73, 'f84410d_MG_7798_1.jpg', '', 'img', '2016-01-12 12:01:16', '1'),
(477, 73, 'd81fbab_MG_7800.jpg', '', 'img', '2016-01-12 12:01:16', '1'),
(478, 73, '3d9c3c0_MG_7799.jpg', '', 'img', '2016-01-12 12:01:16', '1'),
(479, 73, 'd8a00c9_MG_7798.jpg', '', 'img', '2016-01-12 12:01:16', '1'),
(480, 73, '552d311_MG_7804.jpg', '', 'img', '2016-01-12 12:01:16', '1'),
(481, 73, 'f824012_MG_7800_1.jpg', '', 'img', '2016-01-12 12:01:16', '1'),
(482, 73, 'c9d6820_MG_7802.jpg', '', 'img', '2016-01-12 12:01:17', '1'),
(483, 74, '071e42b_MG_8757.jpg', '', 'img', '2016-01-12 12:01:36', '1'),
(484, 74, 'c01732e_MG_8758.jpg', '', 'img', '2016-01-12 12:01:36', '1'),
(485, 74, '40eb41f_MG_8761.jpg', '', 'img', '2016-01-12 12:01:36', '1'),
(486, 74, '6eb8d92_MG_8759.jpg', '', 'img', '2016-01-12 12:01:36', '1'),
(487, 74, 'abecff6_MG_8760.jpg', '', 'img', '2016-01-12 12:01:36', '1'),
(488, 74, 'fd90f7a_MG_8765.jpg', '', 'img', '2016-01-12 12:01:37', '1'),
(489, 75, 'e5cca48_MG_7829.jpg', '', 'img', '2016-01-12 12:01:54', '1'),
(490, 75, 'c00b2c8_MG_7832.jpg', '', 'img', '2016-01-12 12:01:55', '1'),
(491, 75, 'd8310e8_MG_7830.jpg', '', 'img', '2016-01-12 12:01:55', '1'),
(492, 75, '5b29d96_MG_7831.jpg', '', 'img', '2016-01-12 12:01:55', '1'),
(493, 75, 'de2dda7_MG_7833.jpg', '', 'img', '2016-01-12 12:01:55', '1'),
(494, 75, '702969c_MG_7834_1.jpg', '', 'img', '2016-01-12 12:01:55', '1'),
(495, 75, '06a4d65_MG_7834.jpg', '', 'img', '2016-01-12 12:01:55', '1'),
(496, 75, 'ecf94de_MG_7832_1.jpg', '', 'img', '2016-01-12 12:01:55', '1'),
(497, 75, '57659bb_MG_7835_1.jpg', '', 'img', '2016-01-12 12:01:56', '1'),
(498, 75, 'b8101ed_MG_7835.jpg', '', 'img', '2016-01-12 12:01:56', '1'),
(499, 75, '6e132dc_MG_7838.jpg', '', 'img', '2016-01-12 12:01:56', '1'),
(500, 75, 'ac1d920_MG_7836.jpg', '', 'img', '2016-01-12 12:01:56', '1'),
(501, 75, 'e901856_MG_7838_1.jpg', '', 'img', '2016-01-12 12:01:56', '1'),
(502, 75, '8353aaa_MG_7840.jpg', '', 'img', '2016-01-12 12:01:56', '1'),
(503, 75, '79dd289_MG_7836_1.jpg', '', 'img', '2016-01-12 12:01:56', '1'),
(504, 75, 'd0a82e4_MG_7839.jpg', '', 'img', '2016-01-12 12:01:57', '1'),
(505, 75, 'bd7cef0_MG_7841.jpg', '', 'img', '2016-01-12 12:01:57', '1'),
(506, 76, '69bd4df_MG_7808.jpg', '', 'img', '2016-01-12 12:01:14', '1'),
(507, 76, 'fccf5dd_MG_7809.jpg', '', 'img', '2016-01-12 12:01:14', '1'),
(508, 76, 'bcbd02d_MG_7812.jpg', '', 'img', '2016-01-12 12:01:15', '1'),
(509, 76, '848a71f_MG_7805.jpg', '', 'img', '2016-01-12 12:01:15', '1'),
(510, 76, '8643319_MG_7806.jpg', '', 'img', '2016-01-12 12:01:15', '1'),
(511, 76, 'f1697fd_MG_7810.jpg', '', 'img', '2016-01-12 12:01:15', '1'),
(512, 77, '0b3069d_MG_7555.jpg', '', 'img', '2016-01-12 12:01:27', '1'),
(513, 77, '49679fb_MG_7557.jpg', '', 'img', '2016-01-12 12:01:27', '1'),
(514, 77, '0c1aa4f_MG_7559.jpg', '', 'img', '2016-01-12 12:01:27', '1'),
(515, 77, '67e93cf_MG_7556.jpg', '', 'img', '2016-01-12 12:01:28', '1'),
(516, 77, '3e0093a_MG_7560.jpg', '', 'img', '2016-01-12 12:01:28', '1'),
(517, 77, '4d135f0_MG_7562.jpg', '', 'img', '2016-01-12 12:01:28', '1'),
(518, 77, '6a99151_MG_7561.jpg', '', 'img', '2016-01-12 12:01:28', '1'),
(519, 77, 'cc726e2_MG_7558.jpg', '', 'img', '2016-01-12 12:01:28', '1'),
(520, 77, '6e30dee_MG_7564.jpg', '', 'img', '2016-01-12 12:01:28', '1'),
(521, 77, '6c337c8_MG_7565_1.jpg', '', 'img', '2016-01-12 12:01:29', '1'),
(522, 77, '872df24_MG_7563.jpg', '', 'img', '2016-01-12 12:01:29', '1'),
(523, 77, '0754ea4_MG_7568.jpg', '', 'img', '2016-01-12 12:01:29', '1'),
(524, 77, 'b8edb15_MG_7566.jpg', '', 'img', '2016-01-12 12:01:29', '1'),
(525, 77, '0cfdadd_MG_7570.jpg', '', 'img', '2016-01-12 12:01:29', '1'),
(526, 77, '4f45213_MG_7572.jpg', '', 'img', '2016-01-12 12:01:29', '1'),
(527, 77, 'cbd1ea4_MG_7569.jpg', '', 'img', '2016-01-12 12:01:29', '1'),
(528, 77, '5cca354_MG_7575.jpg', '', 'img', '2016-01-12 12:01:30', '1'),
(529, 77, '81f2307_MG_7571.jpg', '', 'img', '2016-01-12 12:01:30', '1'),
(530, 77, 'c687448_MG_7573.jpg', '', 'img', '2016-01-12 12:01:30', '1'),
(531, 77, '4f76d4b_MG_7565.jpg', '', 'img', '2016-01-12 12:01:30', '1'),
(532, 77, '53134cf_MG_7567.jpg', '', 'img', '2016-01-12 12:01:30', '1'),
(533, 77, '769faf5_MG_7578.jpg', '', 'img', '2016-01-12 12:01:30', '1'),
(534, 77, '491b796_MG_7578_1.jpg', '', 'img', '2016-01-12 12:01:31', '1'),
(535, 77, '7bb6006_MG_7579.jpg', '', 'img', '2016-01-12 12:01:31', '1'),
(536, 77, '04e9ef6_MG_7577.jpg', '', 'img', '2016-01-12 12:01:31', '1'),
(537, 77, 'd1b1617_MG_7582.jpg', '', 'img', '2016-01-12 12:01:31', '1'),
(538, 77, '947e7cf_MG_7576.jpg', '', 'img', '2016-01-12 12:01:31', '1'),
(539, 77, '4998745_MG_7587.jpg', '', 'img', '2016-01-12 12:01:31', '1'),
(540, 77, 'bd349b9_MG_7580.jpg', '', 'img', '2016-01-12 12:01:31', '1'),
(541, 77, '135eb27_MG_7585.jpg', '', 'img', '2016-01-12 12:01:32', '1'),
(542, 77, '04eacb4_MG_7583.jpg', '', 'img', '2016-01-12 12:01:32', '1'),
(543, 78, '89d8df4_MG_7814.jpg', '', 'img', '2016-01-12 12:01:24', '1'),
(544, 78, 'eee7b76_MG_7813.jpg', '', 'img', '2016-01-12 12:01:24', '1'),
(545, 78, '41767c0_MG_7817.jpg', '', 'img', '2016-01-12 12:01:24', '1'),
(546, 78, 'dc16d71_MG_7815.jpg', '', 'img', '2016-01-12 12:01:24', '1'),
(547, 78, 'bec401f_MG_7816.jpg', '', 'img', '2016-01-12 12:01:25', '1'),
(548, 78, '968b55a_MG_7819.jpg', '', 'img', '2016-01-12 12:01:25', '1'),
(549, 78, '4e89d12_MG_7820.jpg', '', 'img', '2016-01-12 12:01:25', '1'),
(550, 78, '1c65adb_MG_7824.jpg', '', 'img', '2016-01-12 12:01:25', '1'),
(551, 78, 'c2765bb_MG_7818.jpg', '', 'img', '2016-01-12 12:01:25', '1'),
(552, 78, 'be6df5b_MG_7822.jpg', '', 'img', '2016-01-12 12:01:25', '1'),
(553, 78, 'a52af81_MG_7821.jpg', '', 'img', '2016-01-12 12:01:26', '1'),
(554, 78, 'a24058f_MG_7823.jpg', '', 'img', '2016-01-12 12:01:26', '1'),
(555, 78, 'c46755f_MG_7827.jpg', '', 'img', '2016-01-12 12:01:26', '1'),
(556, 78, '8c80b24_MG_7828.jpg', '', 'img', '2016-01-12 12:01:26', '1'),
(557, 79, '4b14c32_MG_7640_1.jpg', '', 'img', '2016-01-12 12:01:42', '1'),
(558, 79, 'b7ff685_MG_7639_1.jpg', '', 'img', '2016-01-12 12:01:42', '1'),
(559, 79, 'edb61d5_MG_7640.jpg', '', 'img', '2016-01-12 12:01:42', '1'),
(560, 79, 'a6e7336_MG_7637.jpg', '', 'img', '2016-01-12 12:01:42', '1'),
(561, 79, 'db8e20d_MG_7639.jpg', '', 'img', '2016-01-12 12:01:42', '1'),
(562, 79, 'b93c37e_MG_7641.jpg', '', 'img', '2016-01-12 12:01:43', '1'),
(563, 79, 'd74ceea_MG_7643.jpg', '', 'img', '2016-01-12 12:01:43', '1'),
(564, 79, '9488601_MG_7642.jpg', '', 'img', '2016-01-12 12:01:43', '1'),
(565, 80, '758630c_MG_7420.jpg', '', 'img', '2016-01-12 12:01:47', '1'),
(566, 80, 'c9cf43c_MG_7418_1.jpg', '', 'img', '2016-01-12 12:01:47', '1'),
(567, 80, '5e32d0d_MG_7419.jpg', '', 'img', '2016-01-12 12:01:47', '1'),
(568, 80, '4d70f85_MG_7421.jpg', '', 'img', '2016-01-12 12:01:47', '1'),
(569, 80, 'c30c3da_MG_7421_1.jpg', '', 'img', '2016-01-12 12:01:47', '1'),
(570, 80, '65c3f47_MG_7424.jpg', '', 'img', '2016-01-12 12:01:47', '1'),
(571, 80, 'c7ced02_MG_7418.jpg', '', 'img', '2016-01-12 12:01:47', '1'),
(572, 80, 'a176e27_MG_7421_2.jpg', '', 'img', '2016-01-12 12:01:48', '1'),
(573, 80, '7653976_MG_7426.jpg', '', 'img', '2016-01-12 12:01:48', '1'),
(574, 80, 'f135c2e_MG_7424_1.jpg', '', 'img', '2016-01-12 12:01:48', '1'),
(575, 80, 'ace6fa1_MG_7426_1.jpg', '', 'img', '2016-01-12 12:01:48', '1'),
(576, 80, '63382f2_MG_7427.jpg', '', 'img', '2016-01-12 12:01:48', '1'),
(577, 80, '11bf4e5_MG_7423.jpg', '', 'img', '2016-01-12 12:01:48', '1'),
(578, 80, '028be58_MG_7429_1.jpg', '', 'img', '2016-01-12 12:01:48', '1'),
(579, 80, '61b6187_MG_7428.jpg', '', 'img', '2016-01-12 12:01:49', '1'),
(580, 80, '84459f6_MG_7425.jpg', '', 'img', '2016-01-12 12:01:49', '1'),
(581, 80, '250e077_MG_7429_2.jpg', '', 'img', '2016-01-12 12:01:49', '1'),
(582, 80, 'a88f320_MG_7430.jpg', '', 'img', '2016-01-12 12:01:49', '1'),
(583, 80, '031f490_MG_7431.jpg', '', 'img', '2016-01-12 12:01:49', '1'),
(584, 80, '70e1d8c_MG_7429.jpg', '', 'img', '2016-01-12 12:01:49', '1'),
(585, 80, '8801cdb_MG_7431_1.jpg', '', 'img', '2016-01-12 12:01:49', '1'),
(586, 80, 'c532e66_MG_7435.jpg', '', 'img', '2016-01-12 12:01:49', '1'),
(587, 80, 'e5aec69_MG_7431_2.jpg', '', 'img', '2016-01-12 12:01:50', '1'),
(588, 80, '52501a7_MG_7432.jpg', '', 'img', '2016-01-12 12:01:50', '1'),
(589, 81, 'e0a2b09_MG_7403_1.jpg', '', 'img', '2016-01-12 12:01:02', '1'),
(590, 81, '18557c8_MG_7405.jpg', '', 'img', '2016-01-12 12:01:02', '1'),
(591, 81, '3dc53bc_MG_7403.jpg', '', 'img', '2016-01-12 12:01:02', '1'),
(592, 81, '60b64ef_MG_7406.jpg', '', 'img', '2016-01-12 12:01:02', '1'),
(593, 81, 'ca3e283_MG_7408.jpg', '', 'img', '2016-01-12 12:01:02', '1'),
(594, 81, '5043040_MG_7411.jpg', '', 'img', '2016-01-12 12:01:02', '1'),
(595, 81, '673feb8_MG_7410.jpg', '', 'img', '2016-01-12 12:01:03', '1'),
(596, 81, 'ecee10c_MG_7407.jpg', '', 'img', '2016-01-12 12:01:03', '1'),
(597, 81, '058b0a7_MG_7414.jpg', '', 'img', '2016-01-12 12:01:03', '1'),
(598, 82, 'd3cba63_MG_7543_1.jpg', '', 'img', '2016-01-12 12:01:14', '1'),
(599, 82, 'f2fd627_MG_7546.jpg', '', 'img', '2016-01-12 12:01:14', '1'),
(600, 82, '53cd157_MG_7541_3.jpg', '', 'img', '2016-01-12 12:01:14', '1'),
(601, 82, 'd0a84b2_MG_7547.jpg', '', 'img', '2016-01-12 12:01:14', '1'),
(602, 82, '82483e2_MG_7545_1.jpg', '', 'img', '2016-01-12 12:01:14', '1'),
(603, 82, '01cb848_MG_7544.jpg', '', 'img', '2016-01-12 12:01:15', '1'),
(604, 82, '1c29d7d_MG_7548_1.jpg', '', 'img', '2016-01-12 12:01:15', '1'),
(605, 82, 'fab38b0_MG_7549.jpg', '', 'img', '2016-01-12 12:01:15', '1'),
(606, 82, 'aa9f15d_MG_7551.jpg', '', 'img', '2016-01-12 12:01:15', '1'),
(607, 82, '7448954_MG_7554.jpg', '', 'img', '2016-01-12 12:01:15', '1'),
(608, 82, '9cbfe47_MG_7550_1.jpg', '', 'img', '2016-01-12 12:01:15', '1'),
(609, 83, '40cb036_MG_8811.jpg', '', 'img', '2016-01-12 12:01:14', '1'),
(610, 83, '4a878ad_MG_8808.jpg', '', 'img', '2016-01-12 12:01:14', '1'),
(611, 83, 'fd2efcb_MG_8813.jpg', '', 'img', '2016-01-12 12:01:14', '1'),
(612, 83, '24de089_MG_8810_1.jpg', '', 'img', '2016-01-12 12:01:14', '1'),
(613, 83, '470d9c8_MG_8809.jpg', '', 'img', '2016-01-12 12:01:15', '1'),
(614, 83, '64b2b7e_MG_8818.jpg', '', 'img', '2016-01-12 12:01:15', '1'),
(615, 83, '4d13cff_MG_8815.jpg', '', 'img', '2016-01-12 12:01:15', '1'),
(616, 83, '54ad16d_MG_8807_1.jpg', '', 'img', '2016-01-12 12:01:15', '1');

-- --------------------------------------------------------

--
-- Table structure for table `reserve`
--

CREATE TABLE IF NOT EXISTS `reserve` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `service_id` varchar(100) NOT NULL,
  `hall_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `phone` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `status` enum('','0','1') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`hall_id`),
  KEY `hall_id` (`hall_id`),
  KEY `service_id` (`service_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=60 ;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE IF NOT EXISTS `review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_slug` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `text` text NOT NULL,
  `rating` tinyint(4) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('','0','1') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE IF NOT EXISTS `service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `owner` int(11) NOT NULL,
  `can_reserve` enum('0','1') NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `mobil` varchar(255) NOT NULL,
  `img` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `socials` text NOT NULL,
  `adress` varchar(255) NOT NULL,
  `longlat` varchar(255) NOT NULL,
  `status` enum('-1','0','1') NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `category_id` (`category_id`),
  KEY `category_slug` (`category_id`),
  KEY `category_slug_2` (`category_id`),
  KEY `category_slug_3` (`category_id`),
  KEY `category_slug_4` (`category_id`),
  KEY `category_slug_5` (`category_id`),
  KEY `owner` (`owner`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=84 ;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `category_id`, `owner`, `can_reserve`, `name`, `slug`, `phone`, `mobil`, `img`, `description`, `socials`, `adress`, `longlat`, `status`) VALUES
(70, 1, 22, '1', 'Ağ Çiçəyim', 'agh-chichayim', '012 434-59-49, 012 434-38-97', '(050/055/070) 226-26-39', '6391883_MG_8542.jpg', '<p>a</p>', '#,#,#,#', 'A.M. Şərifzadə küç.181 İnşaatçılar metro st-sı çıxışı', '40.3678328,49.8144542', '1'),
(71, 1, 22, '1', 'Amor', 'amor', '(012) 562 40 09, (012) 561 40 09', '(055) 644 64 14', '2fbc5d1_MG_8587_1.jpg', '<p>a</p>', '#', '7-ci mkr. S. S.Axundov küç 14 c ', '40.425211,49.8518123', '1'),
(72, 1, 22, '1', 'Bahar', 'bahar', '(012) 375 33 30', '(055) 230 00 47', 'b401ed5_MG_7499.jpg', '<p>#</p>', '#', 'Neftçilər metrosunun yanı Məhsəti küçəsi 132', '40.4053048,49.9384994', '1'),
(73, 1, 22, '1', 'Dalğa Palace', 'dalgha-palace', '(012) 424-86-69', '(055) 629-95-95, (055) 272-10-00', '83f1c27_MG_7786.jpg', '<p>#</p>', '#', 'Bakı şəh. , Nzs qəs, İ.Həbibov küç 46', '40.3580243,49.8345055', '1'),
(74, 1, 22, '1', 'Diva Palace', 'diva-palace', '(012) 465-01-00, (012) 465-70-70', '(051) 550-01-00, (055) 399-06-06', '071e42b_MG_8757.jpg', '<p>#</p>', '#', 'AK. H. Eliyev kucesi 141', '40.3580243,49.8345055', '1'),
(75, 1, 22, '1', 'Gülüstan', 'gulustan', '(012) 533-17-98', '(055) 871-18-17, (070) 270-27-17', 'e5cca48_MG_7829.jpg', '<p>#</p>', '#', 'Yeni Yasamal-1 .Bünyatzadə küç.,3  Nəqliyyat: İnşaatçılar metrosunun yanından 188,39,1 ', '40.3990799,49.7972372', '1'),
(76, 1, 22, '1', 'Xan çinar', 'xan-chinar', '(012) 424-79-40, (012) 424-36-03', '(055) 675-25-65, (070) 777-79-07', '69bd4df_MG_7808.jpg', '<p>#</p>', '#', 'Bakı ş., UPD qəs, Xətai Hərbi Komissarlığının qarşısı', '40.3990799,49.7972372', '1'),
(77, 1, 22, '1', 'Xudafərin', 'xudafarin', '(012) 370-50-09, (012) 370-57-47', '(070) 204-77-00, (070) 205-77-00', '0b3069d_MG_7555.jpg', '<p>#</p>', '#', '2534 Məh. Məhsəti Gəncəvi', '40.404455,49.9366694', '1'),
(78, 1, 22, '1', 'Nuray', 'nuray', '(012) 427-34-13', '(050) 572-44-72, (055) 240-77-56', '89d8df4_MG_7814.jpg', '<p>#</p>', '#', 'Suraxanı r-nu, Qaraçuxur qəs., Mehbalıyev küç.,', '40.3943171,49.9701762', '1'),
(79, 1, 22, '1', 'Şəms', 'shams', '(012) 373-58-58', '(055) 822-82-56', '4b14c32_MG_7640_1.jpg', '<p>#</p>', '#', '28 Gəncə prospekti,Bakı', '40.3667237,49.9575606', '1'),
(80, 1, 22, '1', 'Şuşa', 'shusha', '(012) 496-26-41', '(055) 610-00-08, (055) 610-00-06, (055) 477-96-97', '758630c_MG_7420.jpg', '<p>#</p>', '#', 'Talat Shikhaliyev,Baku', '40.390914,49.8536502', '1'),
(81, 1, 22, '1', 'Uzeyir', 'uzeyir', '(012) 568 43 43', '(077) 501 91 19, (050) 524 08 88', 'e0a2b09_MG_7403_1.jpg', '<p>#</p>', '#', 'Mir Cəlal,Bakı', '40.423077,49.8152165', '1'),
(82, 1, 22, '1', 'Ümüd', 'umud', '(012) 370-26-76', '(050)317-11-27', 'd3cba63_MG_7543_1.jpg', '<p>#</p>', '#', 'Svetlana Məmmədova,Bakı', '40.4253038,49.828046', '1'),
(83, 1, 22, '1', 'Venesiya', 'venesiya', '(012) 379 93 93', '(055) 221 47 49, (050) 221 47 49', '40cb036_MG_8811.jpg', '<p>#</p>', '#', 'Sabayil,Baku', '40.3612809,49.8355389', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `has_service` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=47 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `role`, `firstname`, `lastname`, `phone`, `has_service`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(21, 'Nicat', '', '', '', '', '0', 'QUClX-wi02ecZ3wCEF55l0UusKLAxqVD', '$2y$13$V6KHkp55NqMESinIgDWzde.OYy0GzxuskGAXc4Z7i5QMcLqO78/8u', NULL, 'bayramov.nicat@hotmail.com', 10, 1444898782, 1444898782),
(22, 'Nicat Bayramov', '', 'Nicat', 'Bayramov', '+994558997097', '0', '3Ova4hnC_fRFC-kgHIX6AOhlComCLd3_', '$2y$13$8CP6h1kyblmbZdz0.z21N.znkka5wwM7OyuFDdouRGNcvo5gfws6G', NULL, 'n.idealand@idealand.az', 10, 1447155184, 1447155184),
(23, 'Test Test', '', 'Test', 'Test', '12123123', '0', 'mDFyb6-dpI-Mlqnow7pZVdNVGMfeY7rd', '$2y$13$HjF4WH1NWr8U7kVdQaD8XOXvjJNJCgEZSgOnAmLD/2hbiO.KF/MgW', NULL, 'test@test.loc', 10, 1447231598, 1447231598),
(24, 'Mecidli Cumshud', '', 'Mecidli', 'Cumshud', '+994552345566', '0', '8_FBrIQ5O6Pbc0fvePcPDq2DP3VPOSuM', '$2y$13$VG1f3Im3CZ/0mx6GhsZT/u8M/ajN8dfZgovQh7LhhZleD.JYL./xW', NULL, 'mecidli@idealand.az', 10, 1447234744, 1447234744),
(25, 'Lamborghini', '', '', '', '+994552345566', '0', 'P2HICee3BAUc8wdzaaDyj6yOH-X56Wf9', '$2y$13$yCTB1TTbzya3JWA1gx.5uuuuj.yvi8m3j94C7WsTwUZDZFzcAYQvS', NULL, 'lamborghini@idealand.az', 10, 1447235273, 1447235273),
(26, 'Lamborghini', '', '', '', '+994552345566', '0', 'LhOb1bQ8oUdm1zPgOh5uw4Gm_detvOhg', '$2y$13$X.eI0gr3HuGoe4LczWTCqeqnVxggdZUd4O9CMG8CSu3l84bTDWoOa', NULL, 'lamborghini@idealand.azadasdasd', 10, 1447235316, 1447235316),
(27, 'Lamborghini', '', '', '', '2376478234', '0', 'BeH81cnzV7s7d1-955VBksB81z5YWCoQ', '$2y$13$lPwVkRaL/EKALSwyDS95wux9b.4lNdNfSEPxWS.soel9q.kCaOnXG', NULL, 'adskjdhas@sdfasd.ru', 10, 1447235406, 1447235406),
(28, 'asdd', '', '', '', 'adasd', '0', 'wvZLNHZ9J7Caeqd7GSsOiEHgvNGWPltf', '$2y$13$rUDEo4oPw4vvu2RlH6SslOCxy/SanZQN67.YyBKcpo7wb/0KOYU/e', NULL, 'asdasdasd@asdasd.ru', 10, 1447235630, 1447235630),
(29, 'asdd', '', '', '', 'adasd', '0', 'pxcptzWkSHrj3dSvB-zQFFc5JUjLtjqd', '$2y$13$tkCjqtxmhunrWK5p84RlSue8KEgUNHqVmor/3zPTxis0XCUqFxz/u', NULL, 'asdasdasd@asdasdasd.ru', 10, 1447235753, 1447235753),
(30, 'asdd', '', '', '', 'adasd', '0', '_XqUbdIeNpz6XRJwyfARBiY-qM4f9HOZ', '$2y$13$LBr4Yt5n3DL5D.vCpQnEZOzmwsW29Tc5H1pYvKVw2WyV3rqZwZFee', NULL, 'asdasdasd@asdasdasdsdsd.ru', 10, 1447235832, 1447235832),
(31, 'asdd', '', '', '', 'adasd', '0', 'T7DQbS1umiK-3lbtFgLmGGDODHA3unwf', '$2y$13$AIDfr2VmOb5j8gLKfbM4PuhIkZijXChyxwKNH/Lkw5YIVXWUkFCIy', NULL, 'asdasdasd@asdasasdasdd.ru', 10, 1447236459, 1447236459),
(32, 'asdd', '', '', '', 'adasd', '0', 'eUnn5_qNLuzWnhEvuq3QvW5_8M7D9yPe', '$2y$13$1TBIwiJmlfsML3RoLGCs.euPnr2ElPRxwfYNwcNDcCyrl7gmQiJPG', NULL, 'asdasdasd@asdasdasddasdd.ru', 10, 1447236570, 1447236570),
(33, 'asdasdasda', '', '', '', 'dasdasdas', '0', '4-r-LyaR4o3pJvOpDS2DJGvRlluOSF3X', '$2y$13$SmshArLN/JNq5n.zXTiW5eC79t.FaVgQiViGeHRkcj.pBvflK6BBu', NULL, 'sdasdasd@dasd.ru', 10, 1447236648, 1447236648),
(34, 'asdasdasda', '', '', '', 'dasdasdas', '0', 'FK_6LKFujY4JPVsWl9UbI4FkeMk76VRn', '$2y$13$Byn8fnyb/EL1fLiQYbmGEegL13E/F0feDthBQDUD5BA8hXnCXWpBG', NULL, 'sdasdasd@dasd.ruasda', 10, 1447236708, 1447236708),
(35, 'asdasdasda', '', '', '', 'dasdasdas', '0', 'HxRzO08VCQZj0ehrtdEVeebGcdOkETBg', '$2y$13$WeTwI6cimGG65jVh94jg/ObENNTUrtRMdcOeniJO8Jnfgua0ltt1.', NULL, 'sdasdasd@dasd.ruasdaasdasd', 10, 1447236722, 1447236722),
(36, 'asdasdasd', '', '', '', '42348789', '0', 'ZOXmuO8LSpmcu35QHBK1kuf-aNNqoa_c', '$2y$13$1PXpivhBV0FF4/YtVscLbeBrqHUuleIrxwi0qR/lmPF8.hsTtGkfq', NULL, 'Dad@asdasd.ru', 10, 1447239060, 1447239060),
(37, 'asdasdasd', '', '', '', '42348789', '0', '86llt5y6on9qUyAIBlH6kDo_B9AmtZ__', '$2y$13$yvU2FVHZFYPbHKAIx.u7A.hHn6ZxEkIM2mkI8syj2MxFf4Uhd48SS', NULL, 'Dad@asdasd.ruasd', 10, 1447239095, 1447239095),
(38, 'asdasdasd', '', '', '', '42348789', '0', '8WysXWKPk8nAvtcHwKkWyrSjMJfyETEe', '$2y$13$BCyyzxtQlibuHEKq/TxmnOylk616lZLZ5/NRb.iDUpMjO20/rEF2G', NULL, 'Dad@asdasd.ruasdasdasd', 10, 1447239868, 1447239868),
(39, 'asdasdasd', '', '', '', '42348789', '0', 'F3ROuEJp4fjKKwqx0Ur1rxFOZC5RO2Kq', '$2y$13$iOotJtaRN4dKRcKkaXs5r.W0wuM3bTz7e9bOZfM5axrXzHG7WW9j2', NULL, 'Dad@asdasd.ruasdasdasdasd', 10, 1447239948, 1447239948),
(40, 'Агентство недвижимости', '', '', '', '+959359395', '0', 'nGuMp8v7xReBdL0Pvk8b1bpVZvChM4bo', '$2y$13$NCjUlnVLnm1tsP.i/ZByQe1n1qXoJZItQfLmdm/t7iZmykn/PrMWq', NULL, 'agentstvo@mail.ru', 10, 1447240118, 1447240118),
(41, 'ADAS - Академия Красоты', '', '', '', '+994556899932', '0', '5m_pdWQ7D6A0FriTvoQrBjgr7L2AOZta', '$2y$13$aV6RqDe04HIWW5E7E9yDVOO2b25WqtkeKS3M4Qpw2Q4Td3Tf0aSJy', NULL, 'adas@mail.ru', 10, 1447240387, 1447240387),
(42, 'Aaa Aaa', '', 'Aaa', 'Aaa', 'Tfff', '0', 'DKiRqo65tHbrOrlcA2NR68lJ9R5s2RNx', '$2y$13$cYXIGhRHE670UoCbWGZHcOzHImKkDJBS6/1sl73xF4yH/FffHyQ7q', NULL, 'Adsa@ffd.com', 10, 1447512616, 1447512616),
(43, 'Yegane', '', '', '', '9876543234', '0', 'EjjmHE9hM2gNCvhl4MYzcFhR6dWbV_X-', '$2y$13$IypB.0qVnpCpSbyo213Bd.gnYdZll2TzgDw8xUtRm2gcIUB750S2u', NULL, 'systemcheck@mail.ru', 10, 1448699887, 1448699887),
(44, 'fghfghf kjhgb', '', 'fghfghf', 'kjhgb', '12345678', '0', '5W6-yc4Ia3IjJ62LdM0oUFd7Bt2Y757u', '$2y$13$5I8hb8J/919wZ41xG6qYDuSW4gMNR9ZeYJwLqC8F7QihdV3pXapoG', NULL, 'gfgmhfn@ghfh.juy', 10, 1448700357, 1448700357),
(45, 'test Test', '', 'test', 'Test', '4126489127', '0', 'VBInr9z19aCIuTk_tvbD4_rmHraBrM7S', '$2y$13$QBhqo06vIpNPK4r4ZBUq9uMgJ7ct8N1hqd8wWyNCjG6Yb/A6jmRH.', NULL, 'asdas@asda.ru', 10, 1452090437, 1452090437),
(46, 'test test', '10', 'test', 'test', '234234234324', '0', 'SJWAQJf5m5CvgK-jVE7k5ygiZEyZdDBg', '$2y$13$K8fw9PppEV2m0ftIhBDn6.Xi9zYstSH2HWy03a.jPSm6hA6j/sKwe', NULL, 'asdaasd@mail.ru', 10, 1452144482, 1452144482);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
