-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 12, 2021 lúc 06:29 PM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `freshfood`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` smallint(6) NOT NULL DEFAULT 1,
  `is_hot` smallint(6) NOT NULL DEFAULT 1,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `title`, `slug`, `category_id`, `image`, `summary`, `description`, `is_active`, `is_hot`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Bạn có biết nấm Lim xanh chữa bệnh gì không?', 'ban-co-biet-nam-lim-xanh-chua-benh-gi-khong', 3, 'uploads/article/1615519900_cach-dung-nam-lim-xanh-rung.jpg', '<p><em>Từ l&acirc;u, nấm Lim xanh đ&atilde; được sử dụng như một vị thảo dược qu&yacute; trong c&aacute;c b&agrave;i thuốc đ&ocirc;ng y gi&uacute;p cải thiện sức khỏe. Tuy được biết l&agrave; tốt cho sức khỏe những nhiều người lại kh&ocirc;ng biết ch&iacute;nh x&aacute;c&nbsp;</em><strong><em>nấm Lim xanh chữa b&ecirc;nh g&igrave;</em></strong><em>&nbsp;v&agrave; t&ograve; m&ograve; về c&ocirc;ng dụng thực sự của loại nấm n&agrave;y. Vậy h&atilde;y c&ugrave;ng&nbsp;</em><strong><em>Naturalhoneyvn.com</em></strong><em>&nbsp;t&igrave;m hiểu xem c&aacute;c loại bệnh được nấm Lim xanh hỗ trợ chữa trị hiệu quả l&agrave; g&igrave; nh&eacute;.</em></p>', '<p><em>Từ l&acirc;u, nấm Lim xanh đ&atilde; được sử dụng như một vị thảo dược qu&yacute; trong c&aacute;c b&agrave;i thuốc đ&ocirc;ng y gi&uacute;p cải thiện sức khỏe. Tuy được biết l&agrave; tốt cho sức khỏe những nhiều người lại kh&ocirc;ng biết ch&iacute;nh x&aacute;c&nbsp;</em><strong><em>nấm Lim xanh chữa b&ecirc;nh g&igrave;</em></strong><em>&nbsp;v&agrave; t&ograve; m&ograve; về c&ocirc;ng dụng thực sự của loại nấm n&agrave;y. Vậy h&atilde;y c&ugrave;ng&nbsp;</em><strong><em>Naturalhoneyvn.com</em></strong><em>&nbsp;t&igrave;m hiểu xem c&aacute;c loại bệnh được nấm Lim xanh hỗ trợ chữa trị hiệu quả l&agrave; g&igrave; nh&eacute;.</em></p>\n\n<p>&nbsp;</p>\n\n<p><strong>Nấm Lim xanh chữa bệnh g&igrave; v&agrave; những c&ocirc;ng dụng của nấm Lim xanh</strong></p>\n\n<p>Theo như Dược điển cổ Thần N&ocirc;ng c&oacute; đề cập th&igrave; nấm Lim xanh c&oacute; t&aacute;c dụng bồi bổ cơ thể v&agrave; chuy&ecirc;n được d&ugrave;ng cho vua ch&uacute;a ng&agrave;y xưa. Ch&iacute;nh v&igrave; vậy m&agrave; ch&uacute;ng ta c&oacute; thể hiểu n&ocirc;m na rằng nấm Lim xanh thực sự rất qu&yacute; hiếm. Qua rất nhiều nghi&ecirc;n cứu trong y học hiện đại về nấm Lim xanh vẫn chưa thể kh&aacute;m ph&aacute; được hết những c&ocirc;ng dụng m&agrave; nấm Lim xanh đem lại, nhưng cũng đ&atilde; kh&aacute;m ph&aacute; ra những c&ocirc;ng dụng cơ bản. Vậy cụ thể&nbsp;<strong>nấm Lim xanh chữa bệnh g&igrave;</strong>?</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"\" src=\"http://mauweb.monamedia.net/naturalhoney/wp-content/uploads/2018/01/nam-lim-xanh-01.jpg\" style=\"height:494px; width:700px\" /></p>\n\n<p>&nbsp;</p>\n\n<p><em>Bạn c&oacute; biết nấm Lim xanh chữa bệnh g&igrave; kh&ocirc;ng?</em></p>\n\n<p><strong>Những loại bệnh m&agrave; nấm Lim xanh chữa được c&oacute; thể chia th&agrave;nh 2 nh&oacute;m:</strong></p>\n\n<p><strong><em>Nh&oacute;m 1: Chữa &ndash; điều trị bệnh (c&oacute; t&aacute;c dụng điều trị hỗ trợ v&agrave; điều trị ngăn ngừa)</em></strong></p>\n\n<p>&nbsp;</p>\n\n<p>Theo c&aacute;c nghi&ecirc;n cứu th&igrave; nấm Lim xanh c&oacute; những dược chất qu&yacute; hiếm v&agrave; c&ograve;n c&oacute; h&agrave;m lượng cao gấp 7,8 lần so với nh&acirc;n s&acirc;m như:&nbsp;<em>Selen, germanium, polysaccharide&hellip;</em>c&oacute; c&ocirc;ng cụng hỗ trợ điều trị c&aacute;c căn bệnh nan y kh&oacute; chữa như:</p>\n\n<ul>\n	<li>Hỗ trợ điều trị c&aacute;c bệnh ung thư, đặc biệt l&agrave; u bướu.</li>\n	<li>Hỗ trợ điều trị c&aacute;c bệnh về gan như vi&ecirc;m gan A, B, C, xơ gan, gan nhiễm mỡ.</li>\n	<li>Hỗ trợ điều trị bệnh nh&acirc;n bị tai biến mạch m&aacute;u n&atilde;o</li>\n	<li>Hỗ trợ điều trị bệnh Gout</li>\n	<li>Hỗ trợ điều trị c&aacute;c bệnh về xương khớp như vi&ecirc;m khớp, đau nhức xương khớp</li>\n	<li>Hỗ trợ điều trị bệnh tiểu đường &ndash; Đ&aacute;i th&aacute;o đường</li>\n	<li>Hỗ trợ điều trị c&aacute;c bệnh dạ d&agrave;y, t&aacute; tr&agrave;ng.</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p><strong><em>Nh&oacute;m 2: Hỗ trợ điều trị bệnh &ndash; Tăng cường sức khỏe (Gi&uacute;p phục hồi v&agrave; tăng cường chức năng)</em></strong></p>\n\n<p>&nbsp;</p>\n\n<p>Để giải đ&aacute;p nốt những thắc mắc về&nbsp;<strong>nấm Lim xanh chữa bệnh g&igrave;?</strong>&nbsp;Mời bạn c&ugrave;ng xem những t&aacute;c dụng tiếp theo của loại nấm qu&yacute; n&agrave;y. T&aacute;c dụng lớn tiếp theo ch&iacute;nh l&agrave; gi&uacute;p tăng cường sức đề kh&aacute;ng, cải thiện hệ miễn dịch cũng như gi&uacute;p phục hồi c&aacute;c chức năng trong cơ thể:</p>\n\n<ul>\n	<li>Gi&uacute;p giải độc gan do hay phải d&ugrave;ng nhiều bia rượu.</li>\n	<li>Gi&uacute;p tăng cường sinh lực</li>\n	<li>Gi&uacute;p giảm mỡ m&aacute;u</li>\n	<li>Gi&uacute;p ổn định huyết &aacute;p</li>\n	<li>C&oacute; t&aacute;c dụng l&agrave;m đẹp như gi&uacute;p giảm c&acirc;n, đẹp da</li>\n	<li>Gi&uacute;p giải độc ph&oacute;ng xạ cho những bệnh nh&acirc;n sau khi xạ trị</li>\n	<li>Gi&uacute;p giải độc tố v&agrave; thanh lọc cơ thể</li>\n	<li>Gi&uacute;p chống rụng t&oacute;c, gi&uacute;p t&oacute;c mềm mượt, xanh t&oacute;c</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"\" src=\"http://mauweb.monamedia.net/naturalhoney/wp-content/uploads/2018/01/nam-lim-xanh-05.jpg\" style=\"height:467px; width:700px\" /></p>\n\n<p>&nbsp;</p>\n\n<p><em>Nấm Lim xanh c&oacute; c&ocirc;ng dụng hỗ trợ điều trị bệnh v&agrave; tăng cường sức khỏe rất tốt</em></p>\n\n<p>Tr&ecirc;n đ&acirc;y l&agrave; một số bệnh m&agrave; nấm Lim xanh c&oacute; t&aacute;c dụng hỗ trợ v&agrave; gi&uacute;p tăng cường sức khỏe rất hiệu quả. Tuy nhi&ecirc;n th&igrave; mỗi loại bệnh lại cần phải d&ugrave;ng liều lượng kh&aacute;c nhau cũng như cần phải sử dụng đ&uacute;ng c&aacute;ch để đạt được hiệu quả tốt nhất.</p>\n\n<p>&nbsp;</p>\n\n<p><strong>Nấm Lim xanh cần sử dụng thế n&agrave;o cho hiệu quả?</strong></p>\n\n<p>Muốn chữa trị được hiệu quả bệnh, cần phải tu&acirc;n thủ được nguy&ecirc;n tắc về liều lượng khi sử dụng nấm Lim xanh cũng như c&aacute;ch pha chế loại nấm n&agrave;y. Chẳng hạn như, bạn c&oacute; thể d&ugrave;ng nấm Lim xanh để sắc với lượng nước từ 1.5 &ndash; 2l nước v&agrave; d&ugrave;ng để sử dụng h&agrave;ng ng&agrave;y, chia th&agrave;nh 3 lần uống/ng&agrave;y. Đối với những người kh&ocirc;ng uống được nhiều nước th&igrave; c&oacute; thể sắc c&ocirc; đặc lại hơn khoảng 1l nước để sử dụng.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"\" src=\"http://mauweb.monamedia.net/naturalhoney/wp-content/uploads/2018/01/smiling_girl_good_morning_image.jpg\" style=\"height:438px; width:700px\" /></p>\n\n<p><em>Sử dụng nấm Lim xanh đ&uacute;ng c&aacute;ch sẽ gi&uacute;p bạn cải thiện được t&igrave;nh h&igrave;nh sức khỏe</em></p>\n\n<p>&nbsp;</p>\n\n<p>Ngo&agrave;i ra, những bệnh nh&acirc;n đang điều trị với liệu tr&igrave;nh thuốc t&acirc;y cần ghi nhớ n&ecirc;n c&aacute;ch 30 ph&uacute;t trước hoặc sau khi sử dụng thuốc t&acirc;y để đạt được hiệu quả khi d&ugrave;ng nấm Lim xanh để hỗ trợ điều trị bệnh v&agrave; tăng cường sức khỏe.</p>', 1, 1, 1, '2021-03-11 20:31:40', '2021-03-11 20:31:40'),
(2, 'Tự chế món thạch sữa chua thanh long lung linh sắc màu', 'tu-che-mon-thach-sua-chua-thanh-long-lung-linh-sac-mau', 2, 'uploads/article/1615519939_20171214_5a31ea04f21f8-830x450.jpg', '<p>Thạch&nbsp;sữa chua&nbsp;thanh long l&agrave; m&oacute;n ăn tr&aacute;ng miệng tuyệt vời cho c&aacute;c mẹ. Đặc biệt l&agrave; c&aacute;c bạn trẻ. Bởi v&igrave; m&oacute;n ăn n&agrave;y rất thanh m&aacute;t, dễ ăn, đẹp da v&agrave; tr&ocirc;ng rất m&agrave;u sắc bắt mắt nữa. Nguy&ecirc;n liệu chuẩn bị rất dễ kiếm, c&ograve;n c&aacute;ch l&agrave;m th&igrave; v&ocirc; c&ugrave;ng đơn giản. Vậy c&ograve;n chần chờ g&igrave; nữa, c&ugrave;ng bắt tay v&agrave;o thực hiện thui n&agrave;o c&aacute;c mẹ.</p>', '<p><a href=\"https://dualeo-x.mysapo.net/tu-che-mon-thach-sua-chua-thanh-long-lung-linh-sac-mau\"><img alt=\"Tự chế món thạch sữa chua thanh long lung linh sắc màu\" src=\"https://bizweb.dktcdn.net/100/308/325/articles/blog-img-7.jpg?v=1524568735397\" /></a></p>\n\n<p>&nbsp;</p>\n\n<p>Thạch&nbsp;sữa chua&nbsp;thanh long l&agrave; m&oacute;n ăn tr&aacute;ng miệng tuyệt vời cho c&aacute;c mẹ. Đặc biệt l&agrave; c&aacute;c bạn trẻ. Bởi v&igrave; m&oacute;n ăn n&agrave;y rất thanh m&aacute;t, dễ ăn, đẹp da v&agrave; tr&ocirc;ng rất m&agrave;u sắc bắt mắt nữa. Nguy&ecirc;n liệu chuẩn bị rất dễ kiếm, c&ograve;n c&aacute;ch l&agrave;m th&igrave; v&ocirc; c&ugrave;ng đơn giản. Vậy c&ograve;n chần chờ g&igrave; nữa, c&ugrave;ng bắt tay v&agrave;o thực hiện thui n&agrave;o c&aacute;c mẹ.</p>\n\n<p>&nbsp;</p>\n\n<p><strong>Nguy&ecirc;n liệu:</strong></p>\n\n<ul>\n	<li>Thanh long đỏ: &frac12; quả</li>\n	<li>Đường: 30g</li>\n	<li>Sữa chua c&oacute; đường: 260g</li>\n	<li>L&aacute; gelatin: 4 l&aacute;</li>\n	<li>1 b&aacute;t nước đ&aacute; lạnh</li>\n	<li>200ml nước</li>\n	<li>Cốc hoặc ly</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p><strong>C&aacute;ch l&agrave;m:</strong></p>\n\n<p>&nbsp;</p>\n\n<p><strong><img alt=\"Tự chế món thạch sữa chua thanh long lung linh sắc màu\" src=\"https://bizweb.dktcdn.net/thumb/large/100/263/497/files/sinh-to-sua-chua-2.jpg?v=1507705614114\" /></strong></p>\n\n<p>&nbsp;</p>\n\n<p><strong>Bước 1:&nbsp;</strong>Trước ti&ecirc;n, bạn cắt 2 l&aacute; gelatin l&agrave;m đ&ocirc;i hoặc l&agrave;m ba. Cho v&agrave;o b&aacute;t nước đ&aacute; lạnh, ng&acirc;m trong 5-10 ph&uacute;t cho l&aacute; mềm. 2 l&aacute; c&ograve;n lại để sử dụng sau</p>\n\n<p>&nbsp;</p>\n\n<p><strong>Bước 2:&nbsp;</strong>Tiếp đ&oacute;, thanh long bạn bột bỏ, th&aacute;i miếng vừa nhỏ rồi cho v&agrave;o m&aacute;y xay&nbsp;sinh tố, xay nhuyễn.</p>\n\n<p>&nbsp;</p>\n\n<p><strong>Bước 3:&nbsp;</strong>Bạn cho 200ml nước v&agrave;o nồi, th&ecirc;m ch&uacute;t đường v&agrave; khuấy đều. Sau đ&oacute; bật bếp nấu cho đến khi s&ocirc;i th&igrave; tắt bếp. Vớt l&aacute; gelatin vắt kiệt nước cho v&agrave;o, khuấy đều đến khi gelatin tan hết.</p>\n\n<p>&nbsp;</p>\n\n<p><strong>Bước 4:&nbsp;</strong>Bạn để cho hỗn hợp nguội bớt th&igrave; đổ nước cốt thanh long v&agrave;o khuấy đều sẽ được phần thạch thanh long. Sau đ&oacute; bạn m&uacute;c 2 th&igrave;a thạch thanh long đổ v&agrave;o cốc hoặc ly được lớp thạch đầu ti&ecirc;n. Bạn cho v&agrave;o ngăn m&aacute;t tủ lạnh trong khoảng 1 tiếng cho thạch đ&ocirc;ng lại rồi mới tiến h&agrave;nh l&agrave;m phần thạch sữa chua.</p>\n\n<p>&nbsp;</p>\n\n<p><strong>Bước 5:&nbsp;</strong>Với 2 l&aacute; gelatin c&ograve;n lại, bạn ng&acirc;m nước đ&aacute; lạnh 5-10 ph&uacute;t cho mềm sau đ&oacute; vớt ra cho v&agrave;o b&aacute;t sứ. Để v&agrave;o l&ograve; vi s&oacute;ng quay 30s để ch&uacute;ng chảy th&agrave;nh nước lấy ra. Hoặc nếu kh&ocirc;ng c&oacute; l&ograve; vi s&oacute;ng, bạn c&oacute; thể đem đun c&aacute;ch thủy cho gelatin tan chảy.</p>\n\n<p>&nbsp;</p>\n\n<p><strong>Bước 6:&nbsp;</strong>Bạn lấy sữa chua ra b&aacute;t to rồi cho nước gelatin v&agrave;o khuấy đều sẽ được hỗn hợp thạch sữa chua. Sau đ&oacute; lấy cốc thạch thanh long đ&atilde; đ&ocirc;ng trong tủ lạnh ra v&agrave; m&uacute;c 2 th&igrave;a thạch sữa chua l&ecirc;n tr&ecirc;n. Tiếp đến bạn để ngăn m&aacute;t trong 1 tiếng v&agrave; th&ecirc;m tiếp lớp thạch nữa.</p>\n\n<p>&nbsp;</p>\n\n<p>Cuối c&ugrave;ng ch&uacute;ng ta c&oacute; kết quả như h&igrave;nh minh họa dưới. Ch&uacute;c c&aacute;c mẹ th&agrave;nh c&ocirc;ng ngay từ lần&nbsp;thực hiện đầu ti&ecirc;n!</p>', 1, 1, 1, '2021-03-11 20:32:19', '2021-03-11 20:32:19'),
(3, '2 Cách nấu canh dưa chua với cá ngon chuẩn vị của Người Bắc Bộ và Nam Bộ', '2-cach-nau-canh-dua-chua-voi-ca-ngon-chuan-vi-cua-nguoi-bac-bo-va-nam-bo', 5, 'uploads/article/1615519973_1-cach-nau-canh-ca-nau-dua.jpg', '<p>Xưa nay, canh c&aacute; dưa chua l&agrave; một m&oacute;n ăn v&ocirc; c&ugrave;ng hấp dẫn. Kể cả khi m&ugrave;a h&egrave; oi bức hay m&ugrave;a đ&ocirc;ng lạnh th&igrave; m&oacute;n canh c&aacute; ch&eacute;p nấu dưa chua, hay c&aacute; r&ocirc; phi nấu dưa chua đều trở th&agrave;nh m&oacute;n ăn hấp dẫn v&agrave; tốn cơm nhất. Tuy nhi&ecirc;n, c&aacute;ch nấu canh c&aacute; dưa chua mỗi miền kh&aacute;c nhau v&agrave; c&oacute; hương vị kh&aacute;c nhau đấy.</p>', '<h2>C&aacute;ch nấu canh c&aacute; dưa chua của người Bắc Bộ v&agrave; Nam Bộ c&oacute; g&igrave; kh&aacute;c?</h2>\n\n<p>&nbsp;</p>\n\n<p>Ở miền Bắc, để nấu canh c&aacute; dưa chua đ&uacute;ng điệu, người ta thường sử dụng dưa chua. Dưa chua ở đ&acirc;y l&agrave; c&acirc;y bắp cải ( Cải dưa c&oacute; bẹ) muối chua để nấu c&aacute;c m&oacute;n canh c&aacute; ch&eacute;p nấu dưa chua hoặc canh c&aacute; r&ocirc; phi nấu dưa chua. Dưa chua c&oacute; t&aacute;c dụng l&agrave;m m&oacute;n ăn c&oacute; dễ ăn, c&oacute; th&ecirc;m ch&uacute;t pha vị của quả Sấu - Một loại quả chua c&oacute; đặc trưng của người Bắc n&ecirc;n m&oacute;n canh c&aacute; dưa chua cũng c&oacute; phần kh&aacute;c với người Miền Nam.</p>\n\n<p>Người miền Trung v&agrave; Nam Bộ đặc biệt từ khu vực Quảng B&igrave;nh trở v&agrave;o trong, c&aacute;ch nấu canh c&aacute; dưa chua cũng kh&aacute;c. Dưa chua của người Miền Nam, họ kh&ocirc;ng d&ugrave;ng cải bẹ muối chua để nấu, họ d&ugrave;ng bắp th&acirc;n dọc m&ugrave;ng muối chua để nấu thay bắp cải chua của người bắc, d&ugrave;ng me thay quả sấu v&agrave; th&ecirc;m ch&uacute;t ng&ograve; gai, ng&ograve; om cho m&oacute;n canh c&aacute; dưa chua của họ</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"\" src=\"https://cdn.pastaxi-manager.onepas.vn/content/uploads/articles/lenttt/cachnaucanhduachuavoicangon/1-cach-nau-canh-ca-nau-dua.jpg\" /></p>\n\n<p>&nbsp;</p>\n\n<p>Canh c&aacute; với dưa chua l&agrave; m&oacute;n ngon của miền Bắc v&agrave; miền Nam</p>\n\n<p>&nbsp;</p>\n\n<h2>C&aacute;ch nấu canh dưa chua với c&aacute; ngon chuẩn vị của Người Bắc Bộ</h2>\n\n<h3>1. Nguy&ecirc;n liệu cho nấu canh dưa chua với c&aacute;: Cho 4-5 người ăn</h3>\n\n<ul>\n	<li>&nbsp;C&aacute; tươi: 500g (bạn c&oacute; thể d&ugrave;ng c&aacute; ch&eacute;p hoặc c&aacute; r&ocirc; phi)</li>\n	<li>&nbsp;Dưa chua : 500gr</li>\n	<li>&nbsp;Dầu ăn: 200ml</li>\n	<li>&nbsp;Hạt n&ecirc;m: 2 muỗng caf&eacute;</li>\n	<li>&nbsp;Bột ngọt: 2 muỗng caf&eacute;</li>\n	<li>&nbsp;C&agrave; chua ch&iacute;n : 3quả</li>\n	<li>&nbsp;Dứa thơm: &frac12; quả</li>\n	<li>&nbsp;Sấu: 2 quả</li>\n	<li>&nbsp;Th&igrave; l&agrave;, ớt cay, h&agrave;nh hoa, gừng</li>\n	<li>&nbsp;Chảo r&aacute;n, xoong nấu canh, m&ocirc;i, đũa, th&igrave;a</li>\n</ul>\n\n<p><em>Lưu &yacute;: Để c&oacute; được nồi canh dưa chua nấu c&aacute; ngon, bạn cần mua nguy&ecirc;n liệu tươi ngon. Rau dưa chua cần chọn rau cải dưa c&oacute; phần cọng. Rau dưa được muối v&agrave;ng, thơm vị chua tự nhi&ecirc;n.</em></p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"\" src=\"https://cdn.pastaxi-manager.onepas.vn/content/uploads/articles/lenttt/cachnaucanhduachuavoicangon/2-cach-nau-canh-ca-nau-dua.jpg\" /></p>\n\n<p>&nbsp;</p>\n\n<p>Nguy&ecirc;n liệu cần c&oacute; cho c&aacute;ch nấu canh c&aacute; ch&eacute;p nấu dưa chua</p>\n\n<p>&nbsp;</p>\n\n<h3>2. C&aacute;c bước sơ chế nguy&ecirc;n liệu để nấu canh dưa chua với c&aacute;.</h3>\n\n<p><em>2.1 Sơ chế c&aacute; tươi để nấu canh chua</em></p>\n\n<p>- C&aacute; tươi l&agrave;m sạch vảy, bỏ mang, bỏ ruột v&agrave; rửa sạch.</p>\n\n<p>- Chặt bỏ v&acirc;y c&aacute;, đu&ocirc;i c&aacute; v&agrave; m&oacute;c sạch c&aacute;t đất trong v&ugrave;ng mang, sọ c&aacute;</p>\n\n<p>- Tiến h&agrave;nh ch&agrave; muối l&ecirc;n to&agrave;n bộ th&acirc;n c&aacute; để gi&uacute;p c&aacute; bớt tanh.</p>\n\n<p>- Rửa sạch c&aacute;, cắt kh&uacute;c v&agrave; để r&aacute;o.( C&oacute; thể bỏ ngăn m&aacute;t tủ để săn thịt c&aacute;)</p>\n\n<p><em>2.2 Sơ chế rau v&agrave; gia vị</em></p>\n\n<p>+ Gừng, ớt, đem b&oacute;c vỏ, rửa sạch, đập dập</p>\n\n<p>+ H&agrave;nh hoa bỏ rễ, rửa sạch, cắt kh&uacute;c.</p>\n\n<p>+ Rau dưa chua cần rửa sạch, để r&aacute;o.</p>\n\n<p>+ H&agrave;nh củ b&oacute;c vỏ, băm nhỏ</p>\n\n<p><em>2.3 Sơ chế quả</em></p>\n\n<p>+ Dứa gọt sạch, cắt h&igrave;nh hoa, để sẵn</p>\n\n<p>+ C&agrave; chua th&aacute;i miếng cau.</p>\n\n<p>&nbsp;</p>\n\n<h3>3. Tiến h&agrave;nh nấu canh c&aacute; dưa chua ngon đ&uacute;ng vị người Bắc</h3>\n\n<p><em>Bước 1: Ướp c&aacute;</em></p>\n\n<p>- Sau khi sơ chế, c&aacute;c bạn ướp với một ch&uacute;t muối, hạt n&ecirc;m, gừng băm nhỏ.</p>\n\n<p><em>Bước 2: Nấu dưa chua với c&aacute;</em></p>\n\n<p>- Đun n&oacute;ng chảo, đổ 100ml dầu ăn v&agrave; đun s&ocirc;i dầu. Bỏ c&aacute; v&agrave;o r&aacute;n sơ cho v&agrave;ng, vớt ra đĩa</p>\n\n<p>- Cho 3 th&igrave;a caf&eacute; dầu ăn v&agrave;o nồi kh&aacute;c. Phi h&agrave;nh thơm, rồi cho c&agrave; chua v&agrave;o x&agrave;o c&ugrave;ng gia vị. Khi c&agrave; chua đ&atilde; mềm, đổ sấu v&agrave; dưa chua v&agrave;o x&agrave;o chung, đổ th&ecirc;m một &iacute;t nước đun s&ocirc;i , kỹ.</p>\n\n<p>- Thả dứa v&agrave;o v&agrave; n&ecirc;m gia vị cho vừa ăn.</p>\n\n<p>- Trước khi tắt bếp, th&ecirc;m rau h&agrave;nh, th&igrave; l&agrave;, m&ugrave;i t&agrave;u v&agrave;o. Mở nắp vung để giữ canh c&oacute; m&agrave;u l&aacute; thơm tươi tắn.</p>\n\n<p><em>Bước 3: Ho&agrave;n thiện</em></p>\n\n<p>- M&uacute;c c&aacute;, c&agrave; chua ra ri&ecirc;ng b&aacute;t, sau đ&oacute; m&uacute;c nước canh ngập c&aacute;. M&uacute;c dứa để l&ecirc;n tr&ecirc;n c&aacute; để b&aacute;t canh được hấp dẫn.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"\" src=\"https://cdn.pastaxi-manager.onepas.vn/content/uploads/articles/lenttt/cachnaucanhduachuavoicangon/3-cach-nau-canh-ca-nau-dua.jpg\" /></p>\n\n<p>&nbsp;</p>\n\n<p>Th&agrave;nh phẩm sau khi ho&agrave;n th&agrave;nh c&aacute;ch nấu canh c&aacute; dưa chua</p>\n\n<p>&nbsp;</p>\n\n<h2>C&aacute;ch nấu canh dưa chua với c&aacute; ngon chuẩn vị của Người Nam Bộ</h2>\n\n<h3>1. Nguy&ecirc;n liệu nấu canh c&aacute; dưa chua miền Nam</h3>\n\n<ul>\n	<li>&nbsp;C&aacute; lăng: 500g</li>\n	<li>&nbsp;Dọc m&ugrave;ng tước vỏ : 500gr</li>\n	<li>&nbsp;Dầu ăn: 200ml</li>\n	<li>&nbsp;Hạt n&ecirc;m: 2 muổng caf&eacute;</li>\n	<li>&nbsp;Bột ngọt: 2 muổng caf&eacute;</li>\n	<li>&nbsp;C&agrave; chua ch&iacute;n : 3quả</li>\n	<li>&nbsp;Dứa thơm: &frac12; quả</li>\n	<li>&nbsp;Me quả: 2 quả</li>\n	<li>&nbsp;Ớt chu&ocirc;ng đỏ: 1 quả, Đậu bắp 100gr, ng&ograve; gai, ng&ograve; om</li>\n	<li>&nbsp;Ớt cay: 1 quả</li>\n</ul>\n\n<p><strong><em>Lưu &yacute;:</em></strong>&nbsp;Người Nam thường mua c&aacute; lăng để nấu canh c&aacute; lăng nấu dưa chua v&igrave; c&aacute; lăng b&eacute;o, c&oacute; vị thơm, &iacute;t tanh v&agrave; đặc biệt &iacute;t xương, nhiều chất.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"\" src=\"https://cdn.pastaxi-manager.onepas.vn/content/uploads/articles/lenttt/cachnaucanhduachuavoicangon/4-canh-ca-lang-nau-dua-chua.jpg\" /></p>\n\n<p>&nbsp;</p>\n\n<p>Nguy&ecirc;n liệu cần c&oacute; cho c&aacute;ch nấu canh c&aacute; lăng nấu dưa chua</p>\n\n<p>&nbsp;</p>\n\n<h3>2. Sơ chế nguy&ecirc;n liệu để nấu canh dưa chua với c&aacute;</h3>\n\n<p><em>2.1 Sơ chế c&aacute; tươi</em></p>\n\n<p>- C&aacute; tươi l&agrave;m sạch vảy, bỏ mang, bỏ ruột v&agrave; rửa sạch.</p>\n\n<p>- Chặt bỏ v&acirc;y c&aacute;, đu&ocirc;i c&aacute; v&agrave; m&oacute;c sạch c&aacute;t đất trong v&ugrave;ng mang, sọ c&aacute;</p>\n\n<p>- Tiến h&agrave;nh ch&agrave; muối l&ecirc;n to&agrave;n bộ th&acirc;n c&aacute; để gi&uacute;p c&aacute; bớt tanh.</p>\n\n<p>- Rửa sạch c&aacute;, cắt kh&uacute;c v&agrave; để r&aacute;o. Ướp c&aacute; kh&uacute;c với hạt n&ecirc;m, ớt cay .</p>\n\n<p><em>2.2 Sơ chế rau v&agrave; gia vị</em></p>\n\n<p>+ Rau om v&agrave; ng&ograve; gai th&aacute;i kh&uacute;c</p>\n\n<p>+ H&agrave;nh băm nhỏ, tỏi băm nhỏ để ri&ecirc;ng</p>\n\n<p>+ Ớt chu&ocirc;ng th&aacute;i l&aacute;t</p>\n\n<p><em>2.3 Sơ chế quả</em></p>\n\n<p>+ Dứa gọt sạch, cắt h&igrave;nh hoa, để sẵn, ướp với một ch&uacute;t đường v&agrave; một ch&uacute;t hạt n&ecirc;m</p>\n\n<p>+ C&agrave; chua rửa sạch, th&aacute;i miếng cau.</p>\n\n<p>+ Đậu bắp rửa sạch, cắt kh&uacute;c ch&eacute;o</p>\n\n<p>&nbsp;</p>\n\n<h3>3. C&aacute;c nước nấu canh c&aacute; lăng nấu dưa chua</h3>\n\n<p><em>Bước 1: Chi&ecirc;n c&aacute; lăng</em></p>\n\n<p>- Bắc chảo l&ecirc;n bếp, đun n&oacute;ng dầu. Phi tỏi thơm. Vớt ra một ch&uacute;t tỏi để ri&ecirc;ng.</p>\n\n<p>- Phần tỏi phi trong chảo tiếp tục chi&ecirc;n c&aacute; lăng cho v&agrave;ng.</p>\n\n<p><em>Bước 2: Nấu canh c&aacute; dưa chua</em></p>\n\n<p>- Đổ 2 l&iacute;t nước v&agrave;o xoong đun s&ocirc;i. Dầm me đến n&aacute;t rồi lọc qua m&agrave;ng rồi tiếp tục đun s&ocirc;i nước me đ&atilde; lọc</p>\n\n<p>- Chờ cho s&ocirc;i nước rồi cho c&aacute; đ&atilde; chi&ecirc;n v&agrave;o xoong. Đậy nắp đun kỹ 3 ph&uacute;t.</p>\n\n<p>- Chờ cho s&ocirc;i c&aacute;, đổ c&agrave; chua v&agrave; dứa v&agrave;o v&agrave; tiếp tục đun. Đun kỹ 2 ph&uacute;t tiếp tục cho đậu bắp, ng&ograve; gai, ng&ograve; om, dọc m&ugrave;ng, đậu bắp v&agrave;o v&agrave; n&ecirc;m gia vị. Th&ecirc;m 1 th&igrave;a đường, hạt n&ecirc;m, nước mắm cho vừa miệng.</p>\n\n<p>- Tắt bếp v&agrave; cho gi&aacute; đỗ v&agrave;o.</p>\n\n<p><em>Bước 3: Ho&agrave;n th&agrave;nh</em></p>\n\n<p>- M&uacute;c ra b&aacute;t, đổ gi&aacute; đỗ v&agrave; ng&ograve;, đậu l&ecirc;n tr&ecirc;n c&aacute;.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"\" src=\"https://cdn.pastaxi-manager.onepas.vn/content/uploads/articles/lenttt/cachnaucanhduachuavoicangon/5-canh-chua-ca-lang.jpg\" /></p>\n\n<p>&nbsp;</p>\n\n<p>Th&agrave;nh phẩm sau khi l&agrave;m c&aacute; lăng nấu dưa chua miền Nam</p>\n\n<p>Tr&ecirc;n đ&acirc;y, PasGo đ&atilde; chia sẻ với c&aacute;c bạn&nbsp;<strong>c&aacute;ch nấu canh c&aacute; dưa chua&nbsp;</strong>ngon đ&uacute;ng vị của người Bắc v&agrave; người Nam. Với m&oacute;n canh c&aacute; ch&eacute;p nấu dưa chua, canh c&aacute; r&ocirc; phi nấu dưa chua, canh c&aacute; lăng nấu dưa chua, chắc chắn sẽ gi&uacute;p bạn v&agrave; gia đ&igrave;nh y&ecirc;u m&oacute;n ăn Việt hơn.</p>\n\n<p>Hy vọng b&agrave;i chia sẻ c&oacute; &iacute;ch v&agrave; gi&uacute;p chị em y&ecirc;u nấu ăn hơn, v&agrave; thưởng thức ngon miệng. Nếu c&aacute;c bạn c&oacute; c&aacute;ch nấu canh dưa chua với c&aacute; ngon kh&aacute;c th&igrave; chia sẻ ở mục b&igrave;nh luận cho mọi người c&ugrave;ng biết với nha!</p>', 1, 1, 1, '2021-03-11 20:32:53', '2021-03-11 20:32:53'),
(4, 'Làm thế nào để thái hành tây mà không chảy nước mắt?', 'lam-the-nao-de-thai-hanh-tay-ma-khong-chay-nuoc-mat', 1, 'uploads/article/1615520239_Tac-Dung-Hanh-Onion.jpg', '<p>H&agrave;nh t&acirc;y l&agrave; nguy&ecirc;n liệu kh&ocirc;ng thể thiếu của rất nhiều m&oacute;n ăn để l&agrave;m th&agrave;nh những bữa cơm ngon miệng, hấp dẫn v&agrave; thơm lừng. Thế nhưng việc chế biến h&agrave;nh t&acirc;y lại l&agrave; &quot;cả một vấn đề&quot; khi m&agrave; nh&agrave; nội trợ n&agrave;o cũng từng &iacute;t nhất một lần trải qua cảm gi&aacute;c &quot;ph&aacute;t kh&oacute;c&quot; mỗi lần th&aacute;i nhỏ h&agrave;nh t&acirc;y. L&iacute; do l&agrave; bởi trong h&agrave;nh t&acirc;y c&oacute; một loại enzym c&oacute; khả năng sản sinh axit, l&agrave;m mắt ch&uacute;ng ta cay x&egrave; v&agrave; chảy nước kh&ocirc;ng ngừng. Vậy l&agrave;m thế n&agrave;o để khắc phục t&igrave;nh trạng bực m&igrave;nh n&agrave;y? Để amthuc365 m&aacute;ch cho bạn v&agrave;i c&aacute;ch cực đơn giản m&agrave; v&ocirc; c&ugrave;ng hiệu quả nh&eacute;.</p>', '<p><strong>H&agrave;nh t&acirc;y l&agrave; nguy&ecirc;n liệu kh&ocirc;ng thể thiếu của rất nhiều m&oacute;n ăn để l&agrave;m th&agrave;nh những bữa cơm ngon miệng, hấp dẫn v&agrave; thơm lừng. Thế nhưng việc chế biến h&agrave;nh t&acirc;y lại l&agrave; &quot;cả một vấn đề&quot; khi m&agrave; nh&agrave; nội trợ n&agrave;o cũng từng &iacute;t nhất một lần trải qua cảm gi&aacute;c &quot;ph&aacute;t kh&oacute;c&quot; mỗi lần th&aacute;i nhỏ h&agrave;nh t&acirc;y. L&iacute; do l&agrave; bởi trong h&agrave;nh t&acirc;y c&oacute; một loại enzym c&oacute; khả năng sản sinh axit, l&agrave;m mắt ch&uacute;ng ta cay x&egrave; v&agrave; chảy nước kh&ocirc;ng ngừng. Vậy l&agrave;m thế n&agrave;o để khắc phục t&igrave;nh trạng bực m&igrave;nh n&agrave;y? Để amthuc365 m&aacute;ch cho bạn v&agrave;i c&aacute;ch cực đơn giản m&agrave; v&ocirc; c&ugrave;ng hiệu quả nh&eacute;.</strong></p>\n\n<p>&nbsp;</p>\n\n<ul>\n	<li><a href=\"http://www.amthuc365.vn/t26246c74/mon-an-suc-khoe/2018/10/chi-voi-meo-nay-mon-nam-cua-ban-se-ngon-hon-bon-phan.html\">Chỉ với mẹo n&agrave;y, m&oacute;n nấm của bạn sẽ ngon hơn bộn phần</a></li>\n	<li><a href=\"http://www.amthuc365.vn/t26273c172/suc-khoe-gia-dinh/2018/11/tuyet-doi-dung-nau-thit-lon-voi-mon-nay-neu-khong-muon-do-benh.html\">Tuyệt đối đừng nấu thịt lợn với m&oacute;n n&agrave;y nếu kh&ocirc;ng muốn &quot;đổ bệnh&quot;</a></li>\n	<li><a href=\"http://www.amthuc365.vn/t26220c178/meo-vat-gia-dinh/2018/09/10-meo-nha-bep-sieu-don-gian-ma-cuc-ky-cong-hieu.html\">10 mẹo nh&agrave; bếp si&ecirc;u đơn giản m&agrave; cực kỳ c&ocirc;ng hiệu</a></li>\n	<li><a href=\"http://www.amthuc365.vn/t26305c277/cach-nau-nuong/2018/12/tim-hieu-nhung-cach-tach-long-do-va-long-trang-trung-hieu-qua-nhat.html\">T&igrave;m hiểu những c&aacute;ch t&aacute;ch l&ograve;ng đỏ v&agrave; l&ograve;ng trắng trứng hiệu quả nhất</a></li>\n	<li>&nbsp;</li>\n</ul>\n\n<h2>1. Ướp lạnh h&agrave;nh t&acirc;y trước khi cắt</h2>\n\n<p>Trước khi th&aacute;i h&agrave;nh t&acirc;y từ 10 - 15 ph&uacute;t, h&atilde;y cho h&agrave;nh t&acirc;y v&agrave;o ngăn đ&aacute; tủ lạnh. C&aacute;ch n&agrave;y sẽ l&agrave;m giảm lượng enzym axit tiết ra kh&ocirc;ng kh&iacute; m&agrave; kh&ocirc;ng l&agrave;m ảnh hưởng đến m&ugrave;i vị của của h&agrave;nh. Lưu &yacute; l&agrave; bạn kh&ocirc;ng n&ecirc;n để h&agrave;nh t&acirc;y cạnh t&aacute;o hoặc khoai t&acirc;y, v&agrave; kh&ocirc;ng n&ecirc;n để qu&aacute; l&acirc;u trong tủ lạnh (l&acirc;u nhất l&agrave; 20 ph&uacute;t) để tr&aacute;nh g&acirc;y m&ugrave;i nh&eacute;.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Uop lanh hanh tay cach thai hanh khong bi chay nuoc mat\" src=\"http://gl.amthuc365.vn/uploads/i/Lam-the-nao-de-thai-hanh-tay-ma-khong-chay-nuoc-mat-1.jpg\" style=\"height:400px; width:600px\" /></p>\n\n<p>&nbsp;</p>\n\n<p><em>Ướp lạnh h&agrave;nh trước khi cắt l&agrave; một c&aacute;ch tương đối hiệu quả</em></p>\n\n<p>&nbsp;</p>\n\n<h2>2. Cắt h&agrave;nh t&acirc;y gần v&ograve;i nước n&oacute;ng hoặc hơi nước</h2>\n\n<p>L&agrave;m như vậy để l&agrave;m g&igrave;? Ch&iacute;nh l&agrave; để hơi nước từ nồi hoặc ấm đun nước h&uacute;t v&agrave; h&ograve;a tan hơi h&agrave;nh, gi&uacute;p mắt bạn chịu &iacute;t ảnh hưởng của hơi h&agrave;nh bốc l&ecirc;n hơn. Đ&acirc;y cũng l&agrave; một c&aacute;ch rất hay để giảm bớt t&igrave;nh trạng &quot;kh&oacute;c l&oacute;c&quot; khi th&aacute;i h&agrave;nh đấy.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Thai hanh gan hoi nuoc nong cach thai hanh khong bi chay nuoc mat\" src=\"http://gl.amthuc365.vn/uploads/i/Lam-the-nao-de-thai-hanh-tay-ma-khong-chay-nuoc-mat-2.jpg\" style=\"height:400px; width:600px\" /></p>\n\n<p>&nbsp;</p>\n\n<p><em>Hơi nước n&oacute;ng c&oacute; thể hỗ trợ giảm &quot;t&aacute;c dụng phụ&quot; của h&agrave;nh t&acirc;y hiệu quả</em></p>\n\n<p>&nbsp;</p>\n\n<h2>3. Thở bằng miệng v&agrave; th&egrave; lưỡi khi th&aacute;i h&agrave;nh</h2>\n\n<p>C&aacute;c kh&iacute; tiết ra từ h&agrave;nh t&acirc;y sẽ phản ứng với lượng nước tr&ecirc;n lưỡi bạn. Do đ&oacute;, thần kinh khứu gi&aacute;c ở gần tuyến lệ sẽ kh&ocirc;ng bị k&iacute;ch th&iacute;ch l&agrave;m cho bạn bị chảy nước mắt. Nh&igrave;n hơi buồn cười một ch&uacute;t, nhưng sẽ tiết kiệm được v&ocirc; số thời gian cho bạn đấy.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Tho bang mieng va the luoi cach thai hanh khong bi chay nuoc mat\" src=\"http://gl.amthuc365.vn/uploads/i/Lam-the-nao-de-thai-hanh-tay-ma-khong-chay-nuoc-mat-3.jpg\" style=\"height:400px; width:600px\" /></p>\n\n<p>&nbsp;</p>\n\n<p><em>Bảo vệ thần kinh khứu gi&aacute;c ở tuyến lệ thật đơn giản</em></p>\n\n<p>&nbsp;</p>\n\n<h2>4. Ng&acirc;m h&agrave;nh t&acirc;y trong nước trước khi cắt</h2>\n\n<p>Enzym từ h&agrave;nh t&acirc;y sẽ bị h&ograve;a tan trong m&ocirc;i trường nước. Tuy nhi&ecirc;n, c&aacute;ch n&agrave;y sẽ l&agrave;m giảm bớt m&ugrave;i vị của h&agrave;nh v&agrave; khiến củ h&agrave;nh trơn hơn n&ecirc;n sẽ rất kh&oacute; cắt. Nếu kh&ocirc;ng qu&aacute; hứng th&uacute; với hương vị của h&agrave;nh t&acirc;y th&igrave; bạn h&atilde;y thử c&aacute;ch n&agrave;y nh&eacute;.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Ngam hanh tay vao nuoc cach thai hanh khong bi chay nuoc mat\" src=\"http://gl.amthuc365.vn/uploads/i/Lam-the-nao-de-thai-hanh-tay-ma-khong-chay-nuoc-mat-4.jpg\" style=\"height:400px; width:600px\" /></p>\n\n<p>&nbsp;</p>\n\n<p><em>D&ugrave; hơi l&agrave;m biến vị h&agrave;nh t&acirc;y nhưng đ&acirc;y cũng l&agrave; một c&aacute;ch đ&aacute;ng để thử</em></p>\n\n<p>&nbsp;</p>\n\n<h2>5. Ngậm một miếng b&aacute;nh m&igrave; khi th&aacute;i h&agrave;nh</h2>\n\n<p>Nhiều người cho rằng khi nhai, đặc biệt l&agrave; nhai b&aacute;nh m&igrave; sẽ tr&aacute;nh l&agrave;m chảy nước mắt khi cắt h&agrave;nh t&acirc;y. Bạn h&atilde;y nhai thật chậm, cho miếng b&aacute;nh m&igrave; ra khỏi miệng một ch&uacute;t. L&uacute;c đ&oacute; miệng của bạn sẽ được thấm nước, mặc d&ugrave; hơi kh&oacute; chịu nhưng c&aacute;ch n&agrave;y sẽ gi&uacute;p cho mắt bạn kh&ocirc;ng bị cay.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Nhai banh mi cach thai hanh khong bi chay nuoc mat\" src=\"http://gl.amthuc365.vn/uploads/i/Lam-the-nao-de-thai-hanh-tay-ma-khong-chay-nuoc-mat-5.jpg\" style=\"height:400px; width:600px\" /></p>\n\n<p>&nbsp;</p>\n\n<p><em>Nhai b&aacute;nh m&igrave; c&oacute; thể gi&uacute;p bạn bớt cay mắt khi th&aacute;i h&agrave;nh</em></p>\n\n<p>&nbsp;</p>\n\n<h2>6. Th&aacute;i h&agrave;nh ở nơi tho&aacute;ng gi&oacute;</h2>\n\n<p>H&atilde;y lựa chọn những nơi gần quạt th&ocirc;ng gi&oacute;, m&aacute;y h&uacute;t m&ugrave;i, quạt hoặc cửa sổ để th&aacute;i h&agrave;nh.&nbsp;C&aacute;ch n&agrave;y sẽ l&agrave;m cho hơi h&agrave;nh bị thổi ra xa mắt bạn. Nhớ lưu &yacute; hướng gi&oacute; của c&aacute;c thiết bị kẻo c&aacute;ch n&agrave;y sẽ &quot;phản t&aacute;c dụng&quot; đấy nh&eacute;.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Thai hanh o noi thoang gio cach thai hanh khong bi chay nuoc mat\" src=\"http://gl.amthuc365.vn/uploads/i/Lam-the-nao-de-thai-hanh-tay-ma-khong-chay-nuoc-mat-6.jpg\" style=\"height:400px; width:600px\" /></p>\n\n<p>&nbsp;</p>\n\n<p><em>D&ugrave;ng gi&oacute; để thổi bớt hơi cay của h&agrave;nh t&acirc;y</em></p>\n\n<p>&nbsp;</p>\n\n<h2>7. Sử dụng dung dịch axit</h2>\n\n<p>Những dung dịch c&oacute; t&iacute;nh axit hoặc t&iacute;nh ion c&oacute; thể l&agrave;m biến chất enzym. Bạn c&oacute; thể thoa giấm l&ecirc;n tấm thớt để axit trong giấm l&agrave;m biến chất enzym, hoặc ng&acirc;m h&agrave;nh t&acirc;y trong nước muối để l&agrave;m biến chất enzym nh&eacute;. Tuy nhi&ecirc;n, nước muối c&oacute; thể l&agrave;m biến đổi m&ugrave;i vị của h&agrave;nh t&acirc;y, n&ecirc;n bạn cần c&acirc;n nhắc trước khi sử dụng c&aacute;ch n&agrave;y.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Dung axit cach thai hanh khong bi chay nuoc mat\" src=\"http://gl.amthuc365.vn/uploads/i/Lam-the-nao-de-thai-hanh-tay-ma-khong-chay-nuoc-mat-7.jpg\" style=\"height:400px; width:600px\" /></p>\n\n<p>&nbsp;</p>\n\n<p><em>D&ugrave;ng dung dịch axit để l&agrave;m ti&ecirc;u bớt enzym trong h&agrave;nh</em></p>\n\n<p>&nbsp;</p>\n\n<p><strong>Chỉ với 7 c&aacute;ch đơn giản n&agrave;y, c&ocirc;ng cuộc &quot;đ&aacute;nh vật&quot; với h&agrave;nh t&acirc;y của bạn sẽ trở n&ecirc;n dễ d&agrave;ng hơn nhiều đấy. H&atilde;y lưu lại v&agrave; c&ugrave;ng chia sẻ với c&aacute;c nh&agrave; nội trợ kh&aacute;c để việc bếp n&uacute;c trở n&ecirc;n dễ d&agrave;ng, vui vẻ hơn nhiều nh&eacute;!</strong></p>\n\n<p>&nbsp;</p>\n\n<p><em>Nguồn: sưu tầm v&agrave; tổng hợp</em></p>', 1, 1, 1, '2021-03-11 20:37:19', '2021-03-11 20:39:13'),
(5, 'Những mẹo chọn thịt thơm ngon và an toàn mà nhà nội trợ nào cũng nên biết', 'nhung-meo-chon-thit-thom-ngon-va-an-toan-ma-nha-noi-tro-nao-cung-nen-biet', 4, 'uploads/article/1615539189_maxresdefault (1).jpg', '<p>Thịt đ&atilde; trở th&agrave;nh nguy&ecirc;n liệu ch&iacute;nh v&agrave; kh&ocirc;ng thể thiếu trong mỗi bữa cơm gia đ&igrave;nh. Từ c&aacute;c m&oacute;n thịt lợn, thịt b&ograve; hoặc thịt tr&acirc;u,... ch&uacute;ng ta c&oacute; thể chế biến th&agrave;nh v&ocirc; v&agrave;n c&aacute;c m&oacute;n ăn ngon miệng, hấp dẫn, từ đơn giản đến cầu kỳ đều c&oacute; thể l&agrave;m được. Nhu cầu ăn v&agrave; ti&ecirc;u thụ thịt của x&atilde; hội ng&agrave;y c&agrave;ng lớn, nhưng liệu mỗi ch&uacute;ng ta đ&atilde; nắm được c&aacute;ch chọn thịt sao cho đ&uacute;ng chuẩn, an to&agrave;n, đảm bảo m&agrave; vẫn thơm ngon? H&atilde;y để amthuc365 m&aacute;ch bạn một số mẹo nhỏ nh&eacute;.</p>', '<p>Thịt đ&atilde; trở th&agrave;nh nguy&ecirc;n liệu ch&iacute;nh v&agrave; kh&ocirc;ng thể thiếu trong mỗi bữa cơm gia đ&igrave;nh. Từ c&aacute;c m&oacute;n thịt lợn, thịt b&ograve; hoặc thịt tr&acirc;u,... ch&uacute;ng ta c&oacute; thể chế biến th&agrave;nh v&ocirc; v&agrave;n c&aacute;c m&oacute;n ăn ngon miệng, hấp dẫn, từ đơn giản đến cầu kỳ đều c&oacute; thể l&agrave;m được. Nhu cầu ăn v&agrave; ti&ecirc;u thụ thịt của x&atilde; hội ng&agrave;y c&agrave;ng lớn, nhưng liệu mỗi ch&uacute;ng ta đ&atilde; nắm được c&aacute;ch chọn thịt sao cho đ&uacute;ng chuẩn, an to&agrave;n, đảm bảo m&agrave; vẫn thơm ngon? H&atilde;y để amthuc365 m&aacute;ch bạn một số mẹo nhỏ nh&eacute;.</p>\n\n<p>&nbsp;</p>\n\n<ul>\n	<li><a href=\"http://www.amthuc365.vn/t26280c167/cam-nang-huu-ich/2018/11/bi-quyet-lam-4-mon-tra-matcha-don-gian-am-ap-cho-mua-dong.html\">B&iacute; quyết l&agrave;m 4 m&oacute;n tr&agrave; matcha đơn giản ấm &aacute;p cho m&ugrave;a đ&ocirc;ng</a></li>\n	<li><a href=\"http://www.amthuc365.vn/t26285c74/mon-an-suc-khoe/2018/11/vi-sao-ban-nen-an-sua-chua-moi-ngay.html\">V&igrave; sao bạn n&ecirc;n ăn sữa chua mỗi ng&agrave;y?</a></li>\n	<li><a href=\"http://www.amthuc365.vn/t26273c172/suc-khoe-gia-dinh/2018/11/tuyet-doi-dung-nau-thit-lon-voi-mon-nay-neu-khong-muon-do-benh.html\">Tuyệt đối đừng nấu thịt lợn với m&oacute;n n&agrave;y nếu kh&ocirc;ng muốn &quot;đổ bệnh&quot;</a></li>\n</ul>\n\n<p>&nbsp;</p>\n\n<h2>1. Kiểm tra độ chắc v&agrave; rắn của thịt</h2>\n\n<p>H&atilde;y d&ugrave;ng tay để cảm nhận miếng thịt m&agrave; bạn định mua. C&aacute;c đầu bếp chuy&ecirc;n nghiệp đ&atilde; khẳng định rằng những miếng thịt nguội, được bảo quản cẩn thận th&igrave; kh&ocirc;ng thề &quot;mềm oặt&quot; được. Chất b&eacute;o của thịt sẽ cứng lại khi được cất v&agrave;o tủ lạnh, v&igrave; thế, c&oacute; thể hiểu rằng những miếng thịt &quot;an to&agrave;n&quot; sẽ kh&aacute; cứng v&agrave; rắn chắc.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Meo chon thit thom ngon va an toan nha noi tro nao cung nen biet\" src=\"http://gl.amthuc365.vn/uploads/i/Nhung-meo-chon-thit-thom-ngon-va-an-toan-ma-nha-noi-tro-nao-cung-nen-biet-1.jpg\" style=\"height:400px; width:600px\" /></p>\n\n<p>&nbsp;</p>\n\n<p><em>Mẹo kiểm tra độ rắn chắc của thịt</em></p>\n\n<p>M&aacute;ch bạn một b&iacute; mật l&agrave; mẹo n&agrave;y cũng c&oacute; thể &aacute;p dụng với thịt đ&oacute;ng g&oacute;i sẵn nh&eacute;.</p>\n\n<p>&nbsp;</p>\n\n<h2>2. Kiểm tra m&agrave;u sắc của thịt</h2>\n\n<p>Một quy luật bất biến đ&oacute; l&agrave; m&agrave;u đỏ của thịt c&agrave;ng nhạt th&igrave; hương vị sẽ c&agrave;ng dịu hơn. Một miếng thịt an to&agrave;n sẽ kh&ocirc;ng bao giờ xuất hiện m&agrave;u n&acirc;u hoặc x&aacute;m, ngay cả ở tr&ecirc;n cạnh miếng thịt.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Meo chon thit thom ngon va an toan nha noi tro nao cung nen biet\" src=\"http://gl.amthuc365.vn/uploads/i/Nhung-meo-chon-thit-thom-ngon-va-an-toan-ma-nha-noi-tro-nao-cung-nen-biet-12.jpg\" style=\"height:400px; width:600px\" /></p>\n\n<p>&nbsp;</p>\n\n<p><em>M&agrave;u sắc của thịt l&agrave; một trong những c&aacute;ch tốt nhất để kiểm tra chất lượng thịt</em></p>\n\n<p>Đương nhi&ecirc;n, khi mua thịt đ&oacute;ng g&oacute;i sẵn, bạn cũng phải kiểm tra kĩ tất cả c&aacute;c g&oacute;c miếng thịt nh&eacute;.</p>\n\n<p>&nbsp;</p>\n\n<h2>3. Liệu miếng thịt n&agrave;y đ&atilde; ăn g&igrave;?</h2>\n\n<p>C&oacute; nghĩa l&agrave; bạn n&ecirc;n lưu &yacute; đến thực phẩm d&ugrave;ng để chăn nu&ocirc;i gia cầm, gia s&uacute;c trước khi ch&uacute;ng được đem mổ thịt để b&aacute;n. Bạn c&oacute; thể biết được điều n&agrave;y nhờ kiểm tra nh&atilde;n d&aacute;n tr&ecirc;n bao b&igrave; thịt đ&oacute;ng g&oacute;i sẵn hoặc hỏi người b&aacute;n h&agrave;ng. Đặc biệt đối với thịt b&ograve;, th&igrave; thịt ngon nhất ch&iacute;nh l&agrave; m&oacute;n thịt từ những ch&uacute; b&ograve; được ăn cỏ nh&eacute;.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Meo chon thit thom ngon va an toan nha noi tro nao cung nen biet\" src=\"http://gl.amthuc365.vn/uploads/i/Nhung-meo-chon-thit-thom-ngon-va-an-toan-ma-nha-noi-tro-nao-cung-nen-biet-3.jpg\" style=\"height:400px; width:600px\" /></p>\n\n<p>&nbsp;</p>\n\n<p><em>Động vật đ&atilde; ăn g&igrave; cũng l&agrave; một yếu tố rất quan trọng</em></p>\n\n<p>&nbsp;</p>\n\n<h2>4. Miếng thịt bạn mua để l&agrave;m g&igrave;?</h2>\n\n<p>Trước khi mua thịt, h&atilde;y l&ecirc;n kế hoạch trước thực đơn của bạn. V&iacute; dụ như những miếng thịt c&oacute; mức gi&aacute; rẻ c&oacute; thể cần nhiều thời gian chế biến hơn, thế nhưng như vậy lại kh&aacute; hữu &iacute;ch nếu bạn cần chuẩn bị thức ăn từ trước v&agrave; cất trong tủ lạnh. H&atilde;y chọn thịt ph&ugrave; hợp với m&oacute;n m&igrave;nh định nấu, bữa cơm của bạn sẽ ngon hơn rất nhiều đấy.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Meo chon thit thom ngon va an toan nha noi tro nao cung nen biet\" src=\"http://gl.amthuc365.vn/uploads/i/Nhung-meo-chon-thit-thom-ngon-va-an-toan-ma-nha-noi-tro-nao-cung-nen-biet-4.jpg\" style=\"height:400px; width:600px\" /></p>\n\n<p>&nbsp;</p>\n\n<p><em>H&atilde;y nhớ lu&ocirc;n chọn thịt ph&ugrave; hợp với m&oacute;n bạn định nấu nh&eacute;</em></p>\n\n<p>&nbsp;</p>\n\n<h2>5. M&agrave;u sắc của chất b&eacute;o tr&ecirc;n thịt</h2>\n\n<p>C&aacute;c đầu bếp nổi tiếng đ&atilde; chia sẻ rằng, chất b&eacute;o thịt gi&uacute;p cung cấp cho thịt hương vị đậm đ&agrave;, hấp dẫn hơn. Tuy nhi&ecirc;n, qu&aacute; nhiều chất b&eacute;o sẽ l&agrave;m cho thịt bị cứng v&agrave; kh&ocirc;ng ngon. Những miếng thịt c&oacute; lượng chất b&eacute;o vừa phải thường tạo n&ecirc;n m&oacute;n ăn thơm ngon nhất.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Meo chon thit thom ngon va an toan nha noi tro nao cung nen biet\" src=\"http://gl.amthuc365.vn/uploads/i/Nhung-meo-chon-thit-thom-ngon-va-an-toan-ma-nha-noi-tro-nao-cung-nen-biet-5.jpg\" style=\"height:400px; width:600px\" /></p>\n\n<p>&nbsp;</p>\n\n<p><em>Chất b&eacute;o tr&ecirc;n thịt cũng c&oacute; thể ph&aacute;n &aacute;nh chất lượng thịt kh&aacute; r&otilde; r&agrave;ng</em></p>\n\n<p>Chất b&eacute;o từ động vật c&ograve;n non sẽ c&oacute; m&agrave;u trắng, động vật c&agrave;ng gi&agrave; th&igrave; chất b&eacute;o sẽ c&agrave;ng ngả v&agrave;ng hơn. C&aacute;c chuy&ecirc;n gia đ&atilde; khẳng định thịt từ động vật gi&agrave; tuy cứng v&agrave; dai nhưng sẽ c&oacute; hương vị s&acirc;u sắc hơn. B&ecirc;n cạnh đ&oacute;, chất b&eacute;o cũng gi&uacute;p thịt c&oacute; độ mềm, mọng nước v&agrave; hấp dẫn.</p>\n\n<p>&nbsp;</p>\n\n<h2>6. Gi&aacute; cả của thịt cũng rất quan trọng</h2>\n\n<p>Nhiều người c&oacute; th&oacute;i quen ham mua những miếng thịt rẻ, c&agrave;ng rẻ c&agrave;ng tốt. Thế nhưng với nguy&ecirc;n liệu thơm ngon như thịt m&agrave; bạn chỉ ham đồ rẻ th&igrave; chẳng kh&aacute;c n&agrave;o ra chợ mua chai nước muối về nh&agrave;. Tốt nhất bạn n&ecirc;n chọn những miếng thịt c&oacute; gi&aacute; th&agrave;nh hơi cao một ch&uacute;t, nhưng lại đảm bảo chất lượng để tr&aacute;nh ngộ độc thực phẩm nh&eacute;.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Meo chon thit thom ngon va an toan nha noi tro nao cung nen biet\" src=\"http://gl.amthuc365.vn/uploads/i/Nhung-meo-chon-thit-thom-ngon-va-an-toan-ma-nha-noi-tro-nao-cung-nen-biet-6.jpg\" style=\"height:400px; width:600px\" /></p>\n\n<p>&nbsp;</p>\n\n<p><em>Bạn n&ecirc;n chọn thịt v&igrave; chất lượng thay v&igrave; rẻ nh&eacute;</em></p>\n\n<p>&nbsp;</p>\n\n<h2>7. L&agrave;m bạn với người b&aacute;n thịt</h2>\n\n<p>Nếu bạn l&agrave; &quot;người y&ecirc;u thịt&quot; v&agrave; thường xuy&ecirc;n đi mua thịt, h&atilde;y l&agrave;m quen v&agrave; th&acirc;n với một người b&aacute;n thịt n&agrave;o đ&oacute;. Những người b&aacute;n thịt sẽ cung cấp cho bạn c&aacute;c mẹo tinh vi hơn để chọn mua thịt theo nhu cầu, vừa thơm ngon vừa đảm bảo sức khỏe.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Meo chon thit thom ngon va an toan nha noi tro nao cung nen biet\" src=\"http://gl.amthuc365.vn/uploads/i/Nhung-meo-chon-thit-thom-ngon-va-an-toan-ma-nha-noi-tro-nao-cung-nen-biet-7.jpg\" style=\"height:400px; width:600px\" /></p>\n\n<p>&nbsp;</p>\n\n<p><em>Thi thoảng, đ&acirc;y sẽ l&agrave; người cho bạn những lời khuy&ecirc;n hữu &iacute;ch trong bếp n&uacute;c</em></p>\n\n<p>&nbsp;</p>\n\n<p><strong>Tr&ecirc;n đ&acirc;y l&agrave; 7 mẹo chọn mua thịt đơn giản m&agrave; cần thiết cho c&ocirc;ng cuộc bếp n&uacute;c của bạn. H&atilde;y lưu lại ngay v&agrave; l&agrave;m một người ti&ecirc;u d&ugrave;ng th&ocirc;ng th&aacute;i, chỉ chọn mua những sản phẩm chất lượng, an to&agrave;n v&agrave; đảm bảo nhất nh&eacute;!</strong></p>\n\n<p>&nbsp;</p>\n\n<p><em>Nguồn: sưu tầm v&agrave; tổng hợp</em></p>', 1, 0, 1, '2021-03-11 20:42:22', '2021-03-12 01:53:09');
INSERT INTO `articles` (`id`, `title`, `slug`, `category_id`, `image`, `summary`, `description`, `is_active`, `is_hot`, `user_id`, `created_at`, `updated_at`) VALUES
(6, 'Bí quyết làm 4 món trà matcha đơn giản ấm áp cho mùa đông', 'bi-quyet-lam-4-mon-tra-matcha-don-gian-am-ap-cho-mua-dong', 1, 'uploads/article/1615520878_cach-pha-matcha-latte_686784fd460e4934974f2e4125e843a0.jpg', '<p>Matcha l&agrave; bột tr&agrave; nghiền từ l&aacute; tr&agrave; xanh phơi kh&ocirc;, được sử dụng rất phổ biến trong tr&agrave; đạo Nhật Bản với v&ocirc; v&agrave;n c&aacute;c c&ocirc;ng dụng v&ocirc; c&ugrave;ng hữu hiệu với sức khỏe cũng như sắc đẹp. C&oacute; thể n&oacute;i matcha ch&iacute;nh l&agrave; thần dược tuyệt vời của ph&aacute;i đẹp tại xứ sở hoa anh đ&agrave;o. Trong những ng&agrave;y gi&oacute; m&ugrave;a về, một li tr&agrave; matcha sẽ l&agrave; cứu c&aacute;nh tuyệt vời cho bạn, kh&ocirc;ng chỉ l&agrave;m ấm cơ thể nhanh ch&oacute;ng m&agrave; c&ograve;n cải thiện l&agrave;n da kh&ocirc; nẻ của bạn do c&aacute;i lạnh. C&ograve;n chần chừ g&igrave; m&agrave; kh&ocirc;ng v&agrave;o bếp l&agrave;m cho m&igrave;nh m&oacute;n tr&agrave; n&oacute;ng thơm ngon ngay th&ocirc;i?</p>', '<p>Matcha l&agrave; bột tr&agrave; nghiền từ l&aacute; tr&agrave; xanh phơi kh&ocirc;, được sử dụng rất phổ biến trong tr&agrave; đạo Nhật Bản với v&ocirc; v&agrave;n c&aacute;c c&ocirc;ng dụng v&ocirc; c&ugrave;ng hữu hiệu với sức khỏe cũng như sắc đẹp. C&oacute; thể n&oacute;i matcha ch&iacute;nh l&agrave; thần dược tuyệt vời của ph&aacute;i đẹp tại xứ sở hoa anh đ&agrave;o. Trong những ng&agrave;y gi&oacute; m&ugrave;a về, một li tr&agrave; matcha sẽ l&agrave; cứu c&aacute;nh tuyệt vời cho bạn, kh&ocirc;ng chỉ l&agrave;m ấm cơ thể nhanh ch&oacute;ng m&agrave; c&ograve;n cải thiện l&agrave;n da kh&ocirc; nẻ của bạn do c&aacute;i lạnh. C&ograve;n chần chừ g&igrave; m&agrave; kh&ocirc;ng v&agrave;o bếp l&agrave;m cho m&igrave;nh m&oacute;n tr&agrave; n&oacute;ng thơm ngon ngay th&ocirc;i?</p>\n\n<p>&nbsp;</p>\n\n<ul>\n	<li><a href=\"http://www.amthuc365.vn/t26234c74/mon-an-suc-khoe/2018/10/chuyen-gi-se-xay-ra-khi-ban-uong-qua-nhieu-nuoc.html\">Chuyện g&igrave; sẽ xảy ra khi bạn uống qu&aacute; nhiều nước?</a></li>\n	<li><a href=\"http://www.amthuc365.vn/t26245c151/sinh-to-che-kem/2018/10/tong-hop-cac-cong-thuc-sinh-to-rau-hoa-qua-thom-ngon-bo-duong-nhat.html\">Tổng hợp c&aacute;c c&ocirc;ng thức sinh tố rau &ndash; hoa quả thơm ngon, bổ dưỡng nhất</a></li>\n	<li><a href=\"http://www.amthuc365.vn/t26237c74/mon-an-suc-khoe/2018/10/rat-nhieu-nguoi-mac-phai-cac-sai-lam-nay-khi-uong-tra-ban-co-khong.html\">Rất nhiều người mắc phải c&aacute;c sai lầm n&agrave;y khi uống tr&agrave;, bạn c&oacute; kh&ocirc;ng?</a></li>\n	<li><a href=\"http://www.amthuc365.vn/t26271c70/van-hoa-am-thuc/2018/10/dieu-gi-khien-am-thuc-nhat-ban-hap-dan-nhu-vay.html\">Điều g&igrave; khiến ẩm thực Nhật Bản hấp dẫn như vậy?</a></li>\n	<li><a href=\"http://www.amthuc365.vn/t26279c74/mon-an-suc-khoe/2018/11/nhung-mon-uong-giup-chua-nhiet-mieng-hieu-qua-nhat.html\">Những m&oacute;n uống gi&uacute;p chữa nhiệt miệng hiệu quả nhất</a></li>\n</ul>\n\n<p>&nbsp;</p>\n\n<h2>1. Tr&agrave; matcha usucha</h2>\n\n<p>Usucha l&agrave; c&aacute;i t&ecirc;n d&ugrave;ng để chỉ m&oacute;n tr&agrave; nhạt, được l&agrave;m từ bột matcha v&agrave; nước ấm, rất phổ biến trong tr&agrave; đạo Nhật Bản. M&oacute;n tr&agrave; n&agrave;y c&oacute; hương vị nhẹ nh&agrave;ng, &ecirc;m dịu, rất th&iacute;ch hợp để nh&acirc;m nhi c&ugrave;ng một cuốn s&aacute;ch hay trong ng&agrave;y lạnh.</p>\n\n<h3>Nguy&ecirc;n liệu l&agrave;m tr&agrave; usucha Nhật Bản</h3>\n\n<p>- 1&frac12; th&igrave;a c&agrave; ph&ecirc; Bột matha (khoảng 2 gram)</p>\n\n<p>- 60 ml Nước n&oacute;ng</p>\n\n<h3>Hướng dẫn l&agrave;m tr&agrave; usucha Nhật Bản</h3>\n\n<p><strong>Bước 1</strong>: Cho 1&frac12; th&igrave;a bột matcha v&agrave;o một b&aacute;t tr&agrave; nhỏ qua r&acirc;y lọc. Lọc matcha như vậy sẽ loại bỏ được cặn hoặc tr&agrave; v&oacute;n cục, để m&oacute;n tr&agrave; &ecirc;m dịu v&agrave; dễ uống hơn.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Huong dan lam tra matcha usucha bi quyet lam 4 mon tra matcha don gian am ap cho mua dong\" src=\"http://gl.amthuc365.vn/uploads/i/Bi-quyet-lam-4-mon-tra-matcha-don-gian-am-ap-cho-mua-dong-1.jpg\" style=\"height:400px; width:600px\" /></p>\n\n<p>&nbsp;</p>\n\n<p><strong>Bước 2</strong>: Loại nước ho&agrave;n hảo để nấu tr&agrave; usucha l&agrave; tr&agrave; gần s&ocirc;i, khoảng 165 đến 180&deg;F (75 đến 80&deg;C). Đổ nước v&agrave;o một b&aacute;t tr&agrave; kh&aacute;c.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Huong dan lam tra matcha usucha bi quyet lam 4 mon tra matcha don gian am ap cho mua dong\" src=\"http://gl.amthuc365.vn/uploads/i/Bi-quyet-lam-4-mon-tra-matcha-don-gian-am-ap-cho-mua-dong-2.jpg\" style=\"height:400px; width:600px\" /></p>\n\n<p>&nbsp;</p>\n\n<p><strong>Bước 3</strong>: Từ từ đổ nước n&oacute;ng v&agrave;o b&aacute;t tr&agrave;, bước n&agrave;y rất quan trọng v&igrave; nếu đổ nước qu&aacute; nhanh, bột matcha c&oacute; thể bị v&oacute;n cục. Bột matcha một khi đ&atilde; v&oacute;n cục th&igrave; rất kh&oacute; để đ&aacute;nh tan lại.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Huong dan lam tra matcha usucha bi quyet lam 4 mon tra matcha don gian am ap cho mua dong\" src=\"http://gl.amthuc365.vn/uploads/i/Bi-quyet-lam-4-mon-tra-matcha-don-gian-am-ap-cho-mua-dong-3.jpg\" style=\"height:400px; width:600px\" /></p>\n\n<p>&nbsp;</p>\n\n<p><strong>Bước 4</strong>: Khuấy nhanh bột tr&agrave; trong 10 đến 15 gi&acirc;y bằng &ldquo;chasen&rdquo; (chổi đ&aacute;nh tr&agrave; Nhật Bản l&agrave;m bằng tre), theo đường zigzag. Kh&ocirc;ng sử dụng dĩa hay th&igrave;a kim loại v&igrave; điều n&agrave;y sẽ ảnh hưởng đến hương vị v&agrave; m&ugrave;i thơm của tr&agrave;.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Huong dan lam tra matcha usucha bi quyet lam 4 mon tra matcha don gian am ap cho mua dong\" src=\"http://gl.amthuc365.vn/uploads/i/Bi-quyet-lam-4-mon-tra-matcha-don-gian-am-ap-cho-mua-dong-4.jpg\" style=\"height:400px; width:600px\" /></p>\n\n<p>&nbsp;</p>\n\n<p>Khuấy theo đường zigzag sẽ khiến tr&agrave; c&oacute; lớp bọt mỏng, mịn m&agrave;ng v&agrave; hấp dẫn. Nếu muốn nước tr&agrave; trong v&agrave; kh&ocirc;ng c&oacute; bọt, h&atilde;y khuấy theo v&ograve;ng tr&ograve;n.</p>\n\n<p>&nbsp;</p>\n\n<p><strong>Bước 5</strong>: Đổ tr&agrave; trở lại cốc khi n&atilde;y d&ugrave;ng để đựng nước n&oacute;ng v&agrave; uống ngay, v&igrave; nếu để l&acirc;u, bột tr&agrave; thường sẽ lắng xuống đ&aacute;y cốc, khiến m&oacute;n tr&agrave; mất ngon. Nếu th&iacute;ch d&ugrave;ng cốc kh&aacute;c, bạn c&oacute; thể tr&aacute;ng qua nước s&ocirc;i để cốc n&oacute;ng, giữ nhiệt cho tr&agrave; l&acirc;u hơn.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Huong dan lam tra matcha usucha bi quyet lam 4 mon tra matcha don gian am ap cho mua dong\" src=\"http://gl.amthuc365.vn/uploads/i/Bi-quyet-lam-4-mon-tra-matcha-don-gian-am-ap-cho-mua-dong-5.jpg\" style=\"height:400px; width:600px\" /></p>\n\n<p>&nbsp;</p>\n\n<h2>2. Tr&agrave; matcha koicha</h2>\n\n<p>Koicha l&agrave; tr&agrave; pha đậm &ndash; tr&aacute;i ngược với usucha. Trong tr&agrave; koicha, người ta sử dụng lượng bột matcha nhiều hơn 3 lần so với tr&agrave; usucha. M&oacute;n tr&agrave; n&agrave;y c&oacute; hương vị đậm đ&agrave; hơn, v&agrave; thường được thưởng thức trong cốc lớn thay v&igrave; ly tr&agrave; nhỏ.</p>\n\n<h3>Nguy&ecirc;n liệu l&agrave;m tr&agrave; xanh koicha Nhật Bản</h3>\n\n<p>- 3 th&igrave;a c&agrave; ph&ecirc; Bột matcha (khoảng 4 gram)</p>\n\n<p>- 60 ml Nước n&oacute;ng</p>\n\n<h3>Hướng dẫn l&agrave;m tr&agrave; xanh koicha Nhật Bản</h3>\n\n<p><strong>Bước 1</strong>: Cho 3 th&igrave;a bột matcha v&agrave;o một b&aacute;t tr&agrave; nhỏ qua r&acirc;y, rồi đặt n&oacute; một b&ecirc;n. Giống như với usucha, bước n&agrave;y gi&uacute;p loại bỏ bột tr&agrave; v&oacute;n cục, cặn bẩn để m&oacute;n tr&agrave; hấp dẫn hơn.&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Huong dan lam tra matcha koicha bi quyet lam 4 mon tra matcha don gian am ap cho mua dong\" src=\"http://gl.amthuc365.vn/uploads/i/Bi-quyet-lam-4-mon-tra-matcha-don-gian-am-ap-cho-mua-dong-6.jpg\" style=\"height:400px; width:600px\" /></p>\n\n<p>&nbsp;</p>\n\n<p><strong>Bước 2</strong>: Đổ 60 ml nước n&oacute;ng v&agrave;o một cốc tr&agrave; kh&aacute;c. Nhiệt độ nước l&iacute; tưởng cho m&oacute;n koicha l&agrave; trong khoảng 165 đến 180&deg;F (75 đến 80&deg;C). Tuyệt đối kh&ocirc;ng được đổ thẳng nước v&agrave;o bột matcha.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Huong dan lam tra matcha koicha bi quyet lam 4 mon tra matcha don gian am ap cho mua dong\" src=\"http://gl.amthuc365.vn/uploads/i/Bi-quyet-lam-4-mon-tra-matcha-don-gian-am-ap-cho-mua-dong-7.jpg\" style=\"height:400px; width:600px\" /></p>\n\n<p>&nbsp;</p>\n\n<p><strong>Bước 3</strong>: Đổ một nửa lượng nước v&agrave;o b&aacute;t tr&agrave;. Kh&ocirc;ng đổ to&agrave;n bộ nước c&ugrave;ng một l&uacute;c, nếu kh&ocirc;ng tr&agrave; sẽ bị v&oacute;n cục lại ngay.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Huong dan lam tra matcha koicha bi quyet lam 4 mon tra matcha don gian am ap cho mua dong\" src=\"http://gl.amthuc365.vn/uploads/i/Bi-quyet-lam-4-mon-tra-matcha-don-gian-am-ap-cho-mua-dong-8.jpg\" style=\"height:400px; width:600px\" /></p>\n\n<p>&nbsp;</p>\n\n<p><strong>Bước 4</strong>: Khuấy tan tr&agrave; thật nhanh bằng chasen, khuấy theo h&igrave;nh tr&ograve;n. Kh&ocirc;ng n&ecirc;n sử dụng dĩa hay th&igrave;a kim loại v&igrave; điều n&agrave;y sẽ l&agrave;m ảnh hưởng đến hương vị v&agrave; m&ugrave;i thơm của tr&agrave;. Khuấy đều cho đến khi matcha h&ograve;a tan th&agrave;nh bột nh&atilde;o v&agrave; hơi đặc.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Huong dan lam tra matcha koicha bi quyet lam 4 mon tra matcha don gian am ap cho mua dong\" src=\"http://gl.amthuc365.vn/uploads/i/Bi-quyet-lam-4-mon-tra-matcha-don-gian-am-ap-cho-mua-dong-9.jpg\" style=\"height:400px; width:600px\" /></p>\n\n<p>&nbsp;</p>\n\n<p><strong>Bước 5</strong>: Đổ phần nước c&ograve;n lại v&agrave;o b&aacute;t tr&agrave; v&agrave; khuấy đều. Sử dụng chasen để khuấy tiếp theo nửa h&igrave;nh tr&ograve;n, cho đến khi matcha tan gần hết.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Huong dan lam tra matcha koicha bi quyet lam 4 mon tra matcha don gian am ap cho mua dong\" src=\"http://gl.amthuc365.vn/uploads/i/Bi-quyet-lam-4-mon-tra-matcha-don-gian-am-ap-cho-mua-dong-10.jpg\" style=\"height:400px; width:600px\" /></p>\n\n<p>&nbsp;</p>\n\n<p><strong>Bước 6</strong>: Đổ matcha v&agrave;o cốc tr&agrave; v&agrave; uống ngay. Nếu để l&acirc;u, bột matcha sẽ lắng xuống đ&aacute;y cốc.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Huong dan lam tra matcha koicha bi quyet lam 4 mon tra matcha don gian am ap cho mua dong\" src=\"http://gl.amthuc365.vn/uploads/i/Bi-quyet-lam-4-mon-tra-matcha-don-gian-am-ap-cho-mua-dong-11.jpg\" style=\"height:400px; width:600px\" /></p>\n\n<p>&nbsp;</p>\n\n<h2>3. Tr&agrave; matcha latte Nhật Bản</h2>\n\n<p>Matcha latte l&agrave; m&oacute;n uống kh&aacute; quen thuộc của những người y&ecirc;u matcha, c&oacute; thể được mua ở bất k&igrave; qu&aacute;n c&agrave; ph&ecirc; n&agrave;o. M&oacute;n uống n&agrave;y l&agrave; sự h&ograve;a quyện của bột matcha thơm lừng v&agrave; hương vị ngầy ngậy, ngọt ng&agrave;o, quyến rũ của đường sữa, rất ph&ugrave; hợp với những người th&iacute;ch đồ ngọt.</p>\n\n<h3>Nguy&ecirc;n liệu l&agrave;m tr&agrave; matcha latte Nhật Bản</h3>\n\n<p>- 1&frac12; th&igrave;a c&agrave; ph&ecirc; Bột matcha (khoảng 2 gram)</p>\n\n<p>- 1 th&igrave;a canh Nước n&oacute;ng (khoảng 15 ml)</p>\n\n<p>- 240 ml Sữa (sữa dừa, sữa b&ograve;, sữa hạnh nh&acirc;n,... t&ugrave;y &yacute;)</p>\n\n<p>- 1 th&igrave;a c&agrave; ph&ecirc; Mật ong, siro phong, đường (t&ugrave;y &yacute;)</p>\n\n<h3>Hướng dẫn l&agrave;m tr&agrave; matcha latte Nhật Bản</h3>\n\n<p><strong>Bước 1</strong>: Lặp lại giống hai m&oacute;n tr&agrave; tr&ecirc;n, lọc bột matcha qua r&acirc;y v&agrave;o cốc v&agrave; để ri&ecirc;ng ra.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Huong dan lam tra matcha latte bi quyet lam 4 mon tra matcha don gian am ap cho mua dong\" src=\"http://gl.amthuc365.vn/uploads/i/Bi-quyet-lam-4-mon-tra-matcha-don-gian-am-ap-cho-mua-dong-12.jpg\" style=\"height:400px; width:600px\" /></p>\n\n<p>&nbsp;</p>\n\n<p><strong>Bước 2</strong>: Khuấy 1 th&igrave;a canh nước n&oacute;ng v&agrave;o cốc tr&agrave;. Nước phải n&oacute;ng nhưng kh&ocirc;ng s&ocirc;i, khoảng 165 đến 180&deg;F (75 đến 80&deg;C) l&agrave; vừa. Nhanh ch&oacute;ng khuấy tr&agrave; theo đường zigzag để tr&agrave; hơi sủi bọt bằng chasen hoặc c&acirc;y đ&aacute;nh trứng nhỏ, khuấy đến khi bột tan.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Huong dan lam tra matcha latte bi quyet lam 4 mon tra matcha don gian am ap cho mua dong\" src=\"http://gl.amthuc365.vn/uploads/i/Bi-quyet-lam-4-mon-tra-matcha-don-gian-am-ap-cho-mua-dong-13.jpg\" style=\"height:400px; width:600px\" /></p>\n\n<p>&nbsp;</p>\n\n<p><strong>Bước 3</strong>: Đun n&oacute;ng sữa v&agrave; đường hoặc siro bạn đ&atilde; chọn, sử dụng nồi, m&aacute;y l&agrave;m n&oacute;ng sữa, m&aacute;y c&agrave; ph&ecirc; hoặc l&ograve; vi s&oacute;ng đều được. Đừng để sữa s&ocirc;i, chỉ đun đến nhiệt độ khoảng từ 165 đến 180&deg;F (75 đến 80&deg;C).</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Huong dan lam tra matcha latte bi quyet lam 4 mon tra matcha don gian am ap cho mua dong\" src=\"http://gl.amthuc365.vn/uploads/i/Bi-quyet-lam-4-mon-tra-matcha-don-gian-am-ap-cho-mua-dong-14.jpg\" style=\"height:400px; width:600px\" /></p>\n\n<p>&nbsp;</p>\n\n<p><strong>Bước 4</strong>: Đ&aacute;nh sữa trong khoảng 10 gi&acirc;y nếu muốn. Bạn c&oacute; thể l&agrave;m bước bằng m&aacute;y xay c&agrave; ph&ecirc; espresso, hoặc đổ ra cốc v&agrave; đ&aacute;nh bằng tay.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Huong dan lam tra matcha latte bi quyet lam 4 mon tra matcha don gian am ap cho mua dong\" src=\"http://gl.amthuc365.vn/uploads/i/Bi-quyet-lam-4-mon-tra-matcha-don-gian-am-ap-cho-mua-dong-15.jpg\" style=\"height:400px; width:600px\" /></p>\n\n<p>&nbsp;</p>\n\n<p><strong>Bước 5</strong>: Đổ sữa n&oacute;ng v&agrave;o cốc tr&agrave; matcha. Giữ một c&aacute;i th&igrave;a lớn b&ecirc;n trong của cốc sữa để giữ lại bọt. Đổ sữa theo lượng m&agrave; bạn muốn.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Huong dan lam tra matcha latte bi quyet lam 4 mon tra matcha don gian am ap cho mua dong\" src=\"http://gl.amthuc365.vn/uploads/i/Bi-quyet-lam-4-mon-tra-matcha-don-gian-am-ap-cho-mua-dong-16.jpg\" style=\"height:400px; width:600px\" /></p>\n\n<p>&nbsp;</p>\n\n<p><strong>Bước 6</strong>: D&ugrave;ng th&igrave;a m&uacute;c bọt sữa c&ograve;n lại trong cốc, trải đều l&ecirc;n tr&ecirc;n cốc latte vừa pha. Rắc một &iacute;t bột matcha l&ecirc;n để trang tr&iacute; v&agrave; thưởng thức ngay.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Huong dan lam tra matcha latte bi quyet lam 4 mon tra matcha don gian am ap cho mua dong\" src=\"http://gl.amthuc365.vn/uploads/i/Bi-quyet-lam-4-mon-tra-matcha-don-gian-am-ap-cho-mua-dong-17.jpg\" style=\"height:400px; width:600px\" /></p>\n\n<p>&nbsp;</p>\n\n<h2>4. Tr&agrave; matcha latte đ&aacute;</h2>\n\n<p>Tuy vẫn l&agrave; matcha latte, nhưng nếu muốn d&ugrave;ng lạnh, bạn sẽ phải pha chế theo một c&aacute;ch kh&aacute;c. Thi thoảng uống một cốc matcha lạnh trong m&ugrave;a đ&ocirc;ng cũng rất th&uacute; vị phải kh&ocirc;ng?</p>\n\n<h3>Nguy&ecirc;n liệu l&agrave;m tr&agrave; matcha latte đ&aacute;</h3>\n\n<p>- 1&frac12; th&igrave;a c&agrave; ph&ecirc; Bột matcha (khoảng 2 gram)</p>\n\n<p>- 1 th&igrave;a canh Nước n&oacute;ng (khoảng 15 ml)</p>\n\n<p>- 240 ml Sữa lạnh (sữa dừa, sữa tươi, sữa hạnh nh&acirc;n,... t&ugrave;y &yacute;)</p>\n\n<p>- 1 th&igrave;a c&agrave; ph&ecirc; Mật ong, siro phong, đường (t&ugrave;y &yacute;)</p>\n\n<p>- 5 &ndash; 7 vi&ecirc;n đ&aacute;</p>\n\n<h3>Hướng dẫn l&agrave;m tr&agrave; matcha latte đ&aacute;</h3>\n\n<p><strong>Bước 1</strong>: Cho bột matcha v&agrave;o cốc qua r&acirc;y giống c&aacute;c m&oacute;n tr&agrave; tr&ecirc;n để loại bỏ bột v&oacute;n cục v&agrave; cặn bẩn.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Huong dan lam tra matcha latte da bi quyet lam 4 mon tra matcha don gian am ap cho mua dong\" src=\"http://gl.amthuc365.vn/uploads/i/Bi-quyet-lam-4-mon-tra-matcha-don-gian-am-ap-cho-mua-dong-18.jpg\" style=\"height:400px; width:600px\" /></p>\n\n<p>&nbsp;</p>\n\n<p><strong>Bước 2</strong>: Th&ecirc;m một &iacute;t đường hoặc siro đ&atilde; chọn nếu muốn. Nếu th&iacute;ch vị ngọt, bạn n&ecirc;n cho đường v&agrave;o ngay từ bước n&agrave;y.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Huong dan lam tra matcha latte da bi quyet lam 4 mon tra matcha don gian am ap cho mua dong\" src=\"http://gl.amthuc365.vn/uploads/i/Bi-quyet-lam-4-mon-tra-matcha-don-gian-am-ap-cho-mua-dong-19.jpg\" style=\"height:400px; width:600px\" /></p>\n\n<p>&nbsp;</p>\n\n<p><strong>Bước 3</strong>: Khuẩy 1 th&igrave;a canh nước n&oacute;ng (15 ml) v&agrave;o bột tr&agrave;. Nước kh&ocirc;ng n&ecirc;n để s&ocirc;i qu&aacute;, khoảng 165 đến 180&deg;F (75 đến 80&deg;C) l&agrave; vừa đủ. Sau khi đổ nước v&agrave;o, khuấy nhanh theo đường zigzag bằng chasen hoặc c&acirc;y đ&aacute;nh trứng kim loại, cho đến khi bột matcha tan v&agrave; kh&ocirc;ng bị v&oacute;n cục.&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Huong dan lam tra matcha latte da bi quyet lam 4 mon tra matcha don gian am ap cho mua dong\" src=\"http://gl.amthuc365.vn/uploads/i/Bi-quyet-lam-4-mon-tra-matcha-don-gian-am-ap-cho-mua-dong-20.jpg\" style=\"height:400px; width:600px\" /></p>\n\n<p>&nbsp;</p>\n\n<p><strong>Bước 4</strong>: Khuấy sữa lạnh v&agrave;o cốc, h&atilde;y cho bao nhi&ecirc;u sữa t&ugrave;y th&iacute;ch, cho đến khi sữa h&ograve;a quyện ho&agrave;n to&agrave;n v&agrave;o bột tr&agrave;, tạo th&agrave;nh hỗn hợp xanh nhạt đẹp mắt.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Huong dan lam tra matcha latte da bi quyet lam 4 mon tra matcha don gian am ap cho mua dong\" src=\"http://gl.amthuc365.vn/uploads/i/Bi-quyet-lam-4-mon-tra-matcha-don-gian-am-ap-cho-mua-dong-21.jpg\" style=\"height:400px; width:600px\" /></p>\n\n<p>&nbsp;</p>\n\n<p><strong>Bước 5</strong>: Cho đ&aacute; v&agrave;o hỗn hợp. Nếu kh&ocirc;ng muốn matcha latte bị nhạt vị, bạn c&oacute; thể d&ugrave;ng đ&aacute; đ&ocirc;ng lạnh từ sữa. Rắc bột matcha l&ecirc;n để trang tr&iacute; v&agrave; uống ngay, v&igrave; nếu để l&acirc;u bột matcha sẽ lắng xuống đ&aacute;y cốc, l&agrave;m mất vị ngon của tr&agrave;.&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Huong dan lam tra matcha latte da bi quyet lam 4 mon tra matcha don gian am ap cho mua dong\" src=\"http://gl.amthuc365.vn/uploads/i/Bi-quyet-lam-4-mon-tra-matcha-don-gian-am-ap-cho-mua-dong-22.jpg\" style=\"height:400px; width:600px\" /></p>\n\n<p>&nbsp;</p>\n\n<p><strong>Bạn đ&atilde; nắm r&otilde; 4 b&iacute; quyết l&agrave;m c&aacute;c m&oacute;n tr&agrave; matcha si&ecirc;u đơn giản, thơm ngon v&agrave; hấp dẫn n&agrave;y chưa n&agrave;o? H&atilde;y lưu lại ngay để v&agrave;o bếp trổ t&agrave;i trong những ng&agrave;y cuối tuần gi&oacute; lạnh nh&eacute;. Chắc chắn một t&aacute;ch tr&agrave; nhỏ b&eacute; m&agrave; ngon đến kh&ocirc;ng cưỡng lại được n&agrave;y sẽ sưởi ấm bạn rất nhiều đấy.</strong></p>\n\n<p>&nbsp;</p>\n\n<p><em>Nguồn: sưu tầm v&agrave; tổng hợp</em></p>', 1, 1, 1, '2021-03-11 20:47:58', '2021-03-11 20:47:58'),
(7, 'Tuyệt đối đừng nấu thịt lợn với món này nếu không muốn \"đổ bệnh\"', 'tuyet-doi-dung-nau-thit-lon-voi-mon-nay-neu-khong-muon-do-benh', 4, 'uploads/article/1615539110_maxresdefault.jpg', '<p>Thịt lợn l&agrave; thực phẩm quen thuộc với c&aacute;c bữa ăn gia đ&igrave;nh với hương vị thơm ngon, c&oacute; nhiều kiểu c&aacute;ch chế biến độc đ&aacute;o, ngon miệng. Tuy nhi&ecirc;n, kh&ocirc;ng phải ai cũng biết n&ecirc;n kết hợp thịt lợn với m&oacute;n g&igrave; cho chuẩn. Một số m&oacute;n ăn khi ăn c&ugrave;ng với thịt lợn c&oacute; thể g&acirc;y nguy hiểm kh&ocirc;n lường với sức khỏe của bạn. C&ugrave;ng amthuc365 t&igrave;m hiểu xem đ&oacute; l&agrave; những loại n&agrave;o nh&eacute;.</p>', '<p>Thịt lợn l&agrave; thực phẩm quen thuộc với c&aacute;c bữa ăn gia đ&igrave;nh với hương vị thơm ngon, c&oacute; nhiều kiểu c&aacute;ch chế biến độc đ&aacute;o, ngon miệng. Tuy nhi&ecirc;n, kh&ocirc;ng phải ai cũng biết n&ecirc;n kết hợp thịt lợn với m&oacute;n g&igrave; cho chuẩn. Một số m&oacute;n ăn khi ăn c&ugrave;ng với thịt lợn c&oacute; thể g&acirc;y nguy hiểm kh&ocirc;n lường với sức khỏe của bạn. C&ugrave;ng amthuc365 t&igrave;m hiểu xem đ&oacute; l&agrave; những loại n&agrave;o nh&eacute;.&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<h2>1. Thịt b&ograve; &ndash; &ldquo;đại kỵ&rdquo; của thịt lợn</h2>\n\n<p>D&ugrave; c&ugrave;ng l&agrave; thịt nhưng h&agrave;m lượng dinh dưỡng của hai loại n&agrave;y lại ho&agrave;n to&agrave;n kh&aacute;c nhau. Thịt lợn c&oacute; t&iacute;nh h&agrave;n c&ograve;n thịt b&ograve; l&agrave; t&iacute;nh &ocirc;n, khi chế biến chung sẽ l&agrave;m giảm đi đ&aacute;ng kể c&aacute;c chất dinh dưỡng c&oacute; trong cả 2 loại thịt.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Tuyet doi khong duoc nau thit bo voi thit lon neu khong muon do benh\" src=\"http://gl.amthuc365.vn/uploads/i/Tuyet-doi-dung-nau-thit-lon-voi-mon-nay-neu-khong-muon-do-benh-1.jpg\" style=\"height:400px; width:600px\" /></p>\n\n<p>&nbsp;</p>\n\n<p><em>Thịt b&ograve; v&agrave; thịt lợn l&agrave; &quot;đại kỵ&quot; trong nấu nướng</em></p>\n\n<p>Tốt nhất, bạn n&ecirc;n nấu ri&ecirc;ng hai loại để đảm bảo m&ugrave;i vị v&agrave; chất dinh dưỡng của hai nguy&ecirc;n liệu n&agrave;y. Những m&oacute;n ăn với thịt b&ograve; v&agrave; thịt lợn nấu ri&ecirc;ng cũng thơm ngon, hấp dẫn v&agrave; dễ chế biến hơn rất nhiều.</p>\n\n<p>&gt;&gt;&gt;&gt;Xem th&ecirc;m:&nbsp;<strong><a href=\"http://www.amthuc365.vn/t26195c167/cam-nang-huu-ich/2018/08/tat-tan-tat-cac-thuc-pham-tuyet-doi-khong-nen-ket-hop-cung-thit-bo.html\">Tất tần tật c&aacute;c thực phẩm tuyệt đối kh&ocirc;ng n&ecirc;n kết hợp c&ugrave;ng thịt b&ograve;</a></strong></p>\n\n<p>&nbsp;</p>\n\n<h2>2. Gan d&ecirc; với thịt lợn?</h2>\n\n<p>C&oacute; ai rất m&ecirc; mẩn m&oacute;n gan x&agrave;o với thịt lợn kh&ocirc;ng? Tuy nhi&ecirc;n, c&aacute;ch nấu nướng n&agrave;y lại nguy hiểm &ldquo;chết người&rdquo; đấy nh&eacute;. Gan, đặc biệt l&agrave; gan d&ecirc; c&oacute; m&ugrave;i g&acirc;y v&agrave; hơi h&ocirc;i, khi x&agrave;o c&ugrave;ng thịt lợn sẽ khiến cho m&ugrave;i vị m&oacute;n ăn c&agrave;ng trở n&ecirc;n kh&oacute; chịu, g&acirc;y phản cảm với người thưởng thức m&oacute;n ăn.&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Tuyet doi khong duoc nau gan de voi thit lon neu khong muon do benh\" src=\"http://gl.amthuc365.vn/uploads/i/Tuyet-doi-dung-nau-thit-lon-voi-mon-nay-neu-khong-muon-do-benh-2.jpg\" style=\"height:400px; width:600px\" /></p>\n\n<p>&nbsp;</p>\n\n<p><em>Gan d&ecirc; c&oacute; thể chế biến th&agrave;nh v&ocirc; v&agrave;n m&oacute;n ngon, nhưng tuyệt đối kh&ocirc;ng phải với thịt lợn</em></p>\n\n<p>Ch&iacute;nh v&igrave; thế, h&atilde;y t&aacute;ch ri&ecirc;ng gan động vật v&agrave; thịt lợn trong một m&acirc;m cơm nh&eacute;.</p>\n\n<p>&nbsp;</p>\n\n<h2>3. Để thịt lợn tr&aacute;nh xa t&ocirc;m, ốc&nbsp;</h2>\n\n<p>Theo nhiều chuy&ecirc;n gia dinh dưỡng, ăn thịt lợn chung với c&aacute;c loại t&ocirc;m, ốc c&oacute; thể g&acirc;y ra triệu chứng lạnh bụng, kh&oacute; ti&ecirc;u, rối loạn ti&ecirc;u h&oacute;a. Đối với những người yếu bụng th&igrave; đ&acirc;y l&agrave; sự kết hợp nguy hiểm v&ocirc; c&ugrave;ng.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Tuyet doi khong duoc nau tom, oc voi thit lon neu khong muon do benh\" src=\"http://gl.amthuc365.vn/uploads/i/Tuyet-doi-dung-nau-thit-lon-voi-mon-nay-neu-khong-muon-do-benh-3.jpg\" style=\"height:400px; width:600px\" /></p>\n\n<p>&nbsp;</p>\n\n<p><em>C&aacute;c m&oacute;n t&ocirc;m, ốc sẽ ngon l&agrave;nh, bổ dưỡng hơn nếu kh&ocirc;ng được nấu chung với thịt lợn</em></p>\n\n<p>V&igrave; thế, để đảm bảo sức khỏe hệ ti&ecirc;u h&oacute;a, h&atilde;y nhớ rằng t&ocirc;m, ốc v&agrave; thịt lợn lu&ocirc;n phải nằm tr&ecirc;n c&aacute;c đĩa thức ăn ri&ecirc;ng biệt thay v&igrave; được chế biến chung th&agrave;nh một m&oacute;n ăn nh&eacute;.</p>\n\n<p>&nbsp;</p>\n\n<h2>4. C&aacute;c loại rau thơm, l&aacute; mơ kh&ocirc;ng n&ecirc;n đi k&egrave;m thịt lợn</h2>\n\n<p>Thịt lợn chứa rất nhiều protein, n&ecirc;n khi ăn c&ugrave;ng l&aacute; mơ c&oacute; thể g&acirc;y kết tủa lượng đạm khiến người ăn kh&ocirc;ng thể hấp thu được, từ đ&oacute; dẫn đến kh&oacute; ti&ecirc;u, ngộ độc hoặc nhiễm độc l&acirc;u d&agrave;i cho cơ thể. Những người sức khỏe yếu tuyệt đối phải ghi nhớ để l&aacute; mơ tr&aacute;nh xa thịt lợn nh&eacute;.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Tuyet doi khong duoc nau la mo voi thit lon neu khong muon do benh\" src=\"http://gl.amthuc365.vn/uploads/i/Tuyet-doi-dung-nau-thit-lon-voi-mon-nay-neu-khong-muon-do-benh-4.jpg\" style=\"height:400px; width:600px\" /></p>\n\n<p>&nbsp;</p>\n\n<p><em>Kết hợp l&aacute; mơ với thịt lợn l&agrave; cực k&igrave; tai hại</em></p>\n\n<p>B&ecirc;n cạnh đ&oacute;, rau thơm c&oacute; t&iacute;nh &ocirc;n, giống như thịt b&ograve;, cũng rất tương khắc với thịt lợn. Sự tr&aacute;i ngược n&agrave;y khiến hai loại nguy&ecirc;n liệu kh&oacute; m&agrave; kết hợp với nhau được.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Tuyet doi khong duoc nau rau thom voi thit lon neu khong muon do benh\" src=\"http://gl.amthuc365.vn/uploads/i/Tuyet-doi-dung-nau-thit-lon-voi-mon-nay-neu-khong-muon-do-benh-6.jpg\" style=\"height:400px; width:600px\" /></p>\n\n<p>&nbsp;</p>\n\n<p><em>Rau thơm, cũng giống thịt b&ograve;, kh&ocirc;ng thể kết hợp với thịt lợn</em></p>\n\n<p>&nbsp;</p>\n\n<h2>5. Đậu tương cũng l&agrave; &ldquo;kẻ th&ugrave;&rdquo; của thịt lợn</h2>\n\n<p>Đậu tương l&agrave; một trong những thực phẩm gi&agrave;u dinh dưỡng v&agrave; được y&ecirc;u th&iacute;ch với 60 &ndash; 80% l&agrave; phốt pho. Khi kết hợp chế biến đậu tương với thịt lợn, h&agrave;m lượng phốt pho trong đậu tương c&oacute; khả năng l&agrave;m giảm gi&aacute; trị dinh dưỡng của thịt lợn, thịt c&agrave;ng nạc th&igrave; c&agrave;ng bị mất dinh dưỡng.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Tuyet doi khong duoc nau dau tuong voi thit lon neu khong muon do benh\" src=\"http://gl.amthuc365.vn/uploads/i/Tuyet-doi-dung-nau-thit-lon-voi-mon-nay-neu-khong-muon-do-benh-7.jpg\" style=\"height:400px; width:600px\" /></p>\n\n<p>&nbsp;</p>\n\n<p><em>Những m&oacute;n ăn với đậu tương v&agrave; thịt lợn sẽ đem đến hậu quả kh&ocirc;n lường cho sức khỏe</em></p>\n\n<p>V&igrave; thế, h&atilde;y lưu &yacute; tuyệt đối kh&ocirc;ng được kết hợp đậu tương với thịt lợn trong c&ugrave;ng một m&oacute;n ăn nh&eacute;.</p>\n\n<p>&nbsp;</p>\n\n<h2>6. Gừng v&agrave; thịt lợn phải &quot;tr&aacute;nh xa&quot; nhau&nbsp;</h2>\n\n<p>Nhiều người c&oacute; th&oacute;i quen sử dụng gừng để ướp v&agrave; khử m&ugrave;i tanh của thịt sống. Tuy nhi&ecirc;n, đ&acirc;y l&agrave; hai nguy&ecirc;n liệu tương khắc, khi ăn c&ugrave;ng nhau sẽ g&acirc;y c&aacute;c triệu chứng phong thấp, nổi nốt v&ocirc; c&ugrave;ng kh&oacute; chịu.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Tuyet doi khong duoc nau gung voi thit lon neu khong muon do benh\" src=\"http://gl.amthuc365.vn/uploads/i/Tuyet-doi-dung-nau-thit-lon-voi-mon-nay-neu-khong-muon-do-benh-8.jpg\" style=\"height:400px; width:600px\" /></p>\n\n<p>&nbsp;</p>\n\n<p><em>D&ugrave;ng gừng để ướp thịt lợn l&agrave; sai lầm tai hại</em></p>\n\n<p>&nbsp;</p>\n\n<p><strong>Với c&aacute;c loại thực phẩm &quot;đại kỵ&quot; với thịt lợn m&agrave; amthuc365 vừa n&ecirc;u tr&ecirc;n, h&atilde;y lưu &yacute; để mỗi bữa cơm gia đ&igrave;nh đều thơm ngon, đầy đủ dinh dưỡng v&agrave; an to&agrave;n cho sức khỏe nh&eacute;.&nbsp;</strong></p>', 1, 1, 1, '2021-03-11 20:51:12', '2021-03-12 01:51:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `is_active` smallint(6) NOT NULL DEFAULT 1,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banners`
--

INSERT INTO `banners` (`id`, `title`, `slug`, `image`, `url`, `target`, `position`, `is_active`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'banner1', 'banner1', 'uploads/banner/1615481948_1611389365_1607484695_bg_1.jpg', NULL, '_blank', 0, 1, 1, '2021-03-11 09:59:08', '2021-03-11 09:59:08'),
(2, 'banner2', 'banner2', 'uploads/banner/1615481969_1611389406_1607485153_bg_2.jpg', NULL, '_blank', 0, 1, 1, '2021-03-11 09:59:29', '2021-03-11 09:59:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `is_active` smallint(6) NOT NULL DEFAULT 1,
  `is_hot` smallint(6) NOT NULL DEFAULT 1,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `position`, `is_active`, `is_hot`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Rau, củ quả', 'rau-cu-qua', 'uploads/category/1615478359_1612002391_slide_survey.jpg', 1, 1, 0, 1, '2021-03-11 08:59:19', '2021-03-11 08:59:19'),
(2, 'Trái cây', 'trai-cay', 'uploads/category/1615478478_1611307509_1607754455_bg-1.jpg', 0, 1, 0, 1, '2021-03-11 09:01:18', '2021-03-11 09:01:18'),
(3, 'Nấm', 'nam', 'uploads/category/1615478507_cach-dung-nam-lim-xanh-rung.jpg', 0, 1, 0, 1, '2021-03-11 09:01:47', '2021-03-11 09:01:47'),
(4, 'Thịt', 'thit', 'uploads/category/1615478539_1612001967_u1mgld89kri3ytgjbz2gejn81lady8ci0vooy2ek37jxksslr3sn1zyn9puwv4uj-.jpg', 2, 1, 0, 1, '2021-03-11 09:02:19', '2021-03-11 09:02:19'),
(5, 'Hải Sản', 'hai-san', 'uploads/category/1615478554_1612517851_seafood-background-fresh-mussels-molluscs-oysters-octopus-razor-shells-shrimps-crab-crawfish-crayfish-seaweed-lemon-spices_80743-788.jpg', 2, 1, 0, 1, '2021-03-11 09:02:34', '2021-03-11 09:02:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `percent` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL,
  `is_active` smallint(6) NOT NULL DEFAULT 1,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id`, `product_id`, `image`, `url`, `position`, `is_active`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'uploads/productImage/1615479321_1611373473_1607531979_bap-cai.jpg', NULL, 0, 1, 1, '2021-03-11 09:15:21', '2021-03-11 09:15:21'),
(2, 1, 'uploads/productImage/1615479343_1611307509_1607754455_bg-1.jpg', NULL, 0, 1, 1, '2021-03-11 09:15:43', '2021-03-11 09:15:43'),
(3, 2, 'uploads/productImage/1615479471_1611374425_1607541074_product-4.jpg', NULL, 0, 1, 1, '2021-03-11 09:17:51', '2021-03-11 09:17:51'),
(4, 2, 'uploads/productImage/1615479476_1611307509_1607754455_bg-1.jpg', NULL, 0, 1, 1, '2021-03-11 09:17:56', '2021-03-11 09:17:56'),
(5, 3, 'uploads/productImage/1615479615_1611375443_1607543055_rau-can-tay.jpg', NULL, 0, 1, 1, '2021-03-11 09:20:15', '2021-03-11 09:20:15'),
(6, 3, 'uploads/productImage/1615479622_1611307509_1607754455_bg-1.jpg', NULL, 0, 1, 1, '2021-03-11 09:20:22', '2021-03-11 09:20:22'),
(7, 4, 'uploads/productImage/1615479713_1611375524_1607592439_Nam_dui_ga.jpg', NULL, 0, 1, 1, '2021-03-11 09:21:53', '2021-03-11 09:21:53'),
(8, 4, 'uploads/productImage/1615479718_1611307509_1607754455_bg-1.jpg', NULL, 0, 1, 1, '2021-03-11 09:21:58', '2021-03-11 09:21:58'),
(9, 5, 'uploads/productImage/1615479809_1611375582_1607592591_nam-kim-cham-han-quoc.png', NULL, 0, 1, 1, '2021-03-11 09:23:29', '2021-03-11 09:23:29'),
(10, 5, 'uploads/productImage/1615479814_1611307509_1607754455_bg-1.jpg', NULL, 0, 1, 1, '2021-03-11 09:23:34', '2021-03-11 09:23:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2021_03_03_122756_create_articles_table', 1),
(4, '2021_03_03_124334_create_banners_table', 1),
(5, '2021_03_03_124804_create_categories_table', 1),
(6, '2021_03_03_125330_create_contacts_table', 1),
(7, '2021_03_03_125554_create_coupons_table', 1),
(8, '2021_03_03_125950_create_orders_table', 1),
(9, '2021_03_03_130536_create_order_details_table', 1),
(10, '2021_03_03_130810_create_order_status_table', 1),
(11, '2021_03_03_130913_create_permissions_table', 1),
(12, '2021_03_03_131134_create_permission_table_table', 1),
(13, '2021_03_03_131505_create_products_table', 1),
(14, '2021_03_03_132253_create_images_table', 1),
(15, '2021_03_03_132857_create_roles_table', 1),
(16, '2021_03_03_151944_create_role_permission_table', 1),
(17, '2021_03_03_152926_create_settings_table', 1),
(18, '2021_03_03_153349_create_tables_table', 1),
(19, '2021_03_03_153544_create_user_role_table', 1),
(20, '2021_03_03_153848_create_vendors_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_price` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `code`, `fullname`, `mail`, `address1`, `address2`, `phone`, `discount`, `note`, `coupon`, `total_price`, `status_id`, `payment_id`, `created_at`, `updated_at`) VALUES
(1, 'DH-12032021-1615540505', 'khach hang 1', 'huycan1482@gmail.com', 'dia chi 1', 'dia chi 2', '1241242131', NULL, 'ko có', NULL, 36135, 2, 1, '2021-02-12 02:15:05', '2021-02-12 02:51:58'),
(2, 'DH-12032021-1615540592', 'khach hang 1', 'huycan1482@gmail.com', 'dia chi 1', 'dia chi 2', '1241242131', NULL, 'ko có', NULL, 36135, 4, 1, '2021-03-12 02:16:32', '2021-03-12 02:31:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `price` int(11) NOT NULL,
  `number` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `name`, `image`, `sku`, `order_id`, `product_id`, `price`, `number`, `created_at`, `updated_at`) VALUES
(1, 'Bí đao', 'uploads/product/1615480708_1611837994_1607543462_bi-dao.jpg', NULL, 2, 12, 2250, 1.06, '2021-03-12 02:16:32', '2021-03-12 02:16:32'),
(2, 'Thịt cá lóc', 'uploads/product/1615480390_1611375761_phan-biet-ca-loc-viet-nam-va-trung-quoc-201909041507591318.jpg', NULL, 2, 9, 25000, 0.95, '2021-03-12 02:16:32', '2021-03-12 02:16:32'),
(3, 'Xoài chín', 'uploads/product/1615480227_1611375716_1607592985_qua_xoai.png', NULL, 2, 7, 5000, 2.00, '2021-03-12 02:16:32', '2021-03-12 02:16:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_status`
--

CREATE TABLE `order_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_status`
--

INSERT INTO `order_status` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Mới', '2021-03-12 09:17:22', '2021-03-12 09:17:22'),
(2, 'Đang xử lí', '2021-03-12 09:17:43', '2021-03-12 09:17:43'),
(3, 'Hoàn thành', '2021-03-12 09:17:43', '2021-03-12 09:17:43'),
(4, 'Hủy', '2021-03-12 09:17:43', '2021-03-12 09:17:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` smallint(6) NOT NULL DEFAULT 1,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `is_active`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'create', 1, 1, '2021-03-11 10:37:10', '2021-03-11 10:37:10'),
(2, 'view', 1, 1, '2021-03-11 10:37:10', '2021-03-11 10:37:10'),
(3, 'update', 1, 1, '2021-03-11 10:37:10', '2021-03-11 10:37:10'),
(4, 'delete', 1, 1, '2021-03-11 10:37:10', '2021-03-11 10:37:10'),
(5, 'active', 1, 1, '2021-03-11 10:37:10', '2021-03-11 10:37:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_table`
--

CREATE TABLE `permission_table` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) NOT NULL,
  `table_id` bigint(20) NOT NULL,
  `action_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` smallint(6) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission_table`
--

INSERT INTO `permission_table` (`id`, `permission_id`, `table_id`, `action_code`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'CREATE', 1, '2021-03-11 03:38:46', '2021-03-11 03:38:46'),
(2, 2, 1, 'VIEW', 1, '2021-03-11 03:38:46', '2021-03-11 03:38:46'),
(3, 3, 1, 'UPDATE', 1, '2021-03-11 03:38:46', '2021-03-11 03:38:46'),
(4, 4, 1, 'DELETE', 1, '2021-03-11 03:38:46', '2021-03-11 03:38:46'),
(5, 5, 1, 'ACTIVE', 1, '2021-03-11 03:38:46', '2021-03-11 03:38:46'),
(6, 1, 2, 'CREATE', 1, '2021-03-11 03:39:04', '2021-03-11 03:39:04'),
(7, 2, 2, 'VIEW', 1, '2021-03-11 03:39:04', '2021-03-11 03:39:04'),
(8, 3, 2, 'UPDATE', 1, '2021-03-11 03:39:04', '2021-03-11 03:39:04'),
(9, 4, 2, 'DELETE', 1, '2021-03-11 03:39:04', '2021-03-11 03:39:04'),
(10, 5, 2, 'ACTIVE', 1, '2021-03-11 03:39:04', '2021-03-11 03:39:04'),
(11, 1, 3, 'CREATE', 1, '2021-03-11 03:39:11', '2021-03-11 03:39:11'),
(12, 2, 3, 'VIEW', 1, '2021-03-11 03:39:11', '2021-03-11 03:39:11'),
(13, 3, 3, 'UPDATE', 1, '2021-03-11 03:39:11', '2021-03-11 03:39:11'),
(14, 4, 3, 'DELETE', 1, '2021-03-11 03:39:11', '2021-03-11 03:39:11'),
(15, 5, 3, 'ACTIVE', 1, '2021-03-11 03:39:11', '2021-03-11 03:39:11'),
(16, 1, 4, 'CREATE', 1, '2021-03-11 03:39:25', '2021-03-11 03:39:25'),
(17, 2, 4, 'VIEW', 1, '2021-03-11 03:39:25', '2021-03-11 03:39:25'),
(18, 3, 4, 'UPDATE', 1, '2021-03-11 03:39:25', '2021-03-11 03:39:25'),
(19, 4, 4, 'DELETE', 1, '2021-03-11 03:39:25', '2021-03-11 03:39:25'),
(20, 5, 4, 'ACTIVE', 1, '2021-03-11 03:39:25', '2021-03-11 03:39:25'),
(21, 1, 5, 'CREATE', 1, '2021-03-11 03:39:37', '2021-03-11 03:39:37'),
(22, 2, 5, 'VIEW', 1, '2021-03-11 03:39:37', '2021-03-11 03:39:37'),
(23, 3, 5, 'UPDATE', 1, '2021-03-11 03:39:37', '2021-03-11 03:39:37'),
(24, 4, 5, 'DELETE', 1, '2021-03-11 03:39:37', '2021-03-11 03:39:37'),
(25, 5, 5, 'ACTIVE', 1, '2021-03-11 03:39:37', '2021-03-11 03:39:37'),
(26, 1, 6, 'CREATE', 1, '2021-03-11 03:39:48', '2021-03-11 03:39:48'),
(27, 2, 6, 'VIEW', 1, '2021-03-11 03:39:48', '2021-03-11 03:39:48'),
(28, 3, 6, 'UPDATE', 1, '2021-03-11 03:39:48', '2021-03-11 03:39:48'),
(29, 4, 6, 'DELETE', 1, '2021-03-11 03:39:48', '2021-03-11 03:39:48'),
(30, 5, 6, 'ACTIVE', 1, '2021-03-11 03:39:48', '2021-03-11 03:39:48'),
(31, 1, 7, 'CREATE', 1, '2021-03-11 03:39:58', '2021-03-11 03:39:58'),
(32, 2, 7, 'VIEW', 1, '2021-03-11 03:39:58', '2021-03-11 03:39:58'),
(33, 3, 7, 'UPDATE', 1, '2021-03-11 03:39:58', '2021-03-11 03:39:58'),
(34, 4, 7, 'DELETE', 1, '2021-03-11 03:39:58', '2021-03-11 03:39:58'),
(35, 5, 7, 'ACTIVE', 1, '2021-03-11 03:39:58', '2021-03-11 03:39:58'),
(36, 1, 8, 'CREATE', 1, '2021-03-11 03:40:12', '2021-03-11 03:40:12'),
(37, 2, 8, 'VIEW', 1, '2021-03-11 03:40:12', '2021-03-11 03:40:12'),
(38, 3, 8, 'UPDATE', 1, '2021-03-11 03:40:12', '2021-03-11 03:40:12'),
(39, 4, 8, 'DELETE', 1, '2021-03-11 03:40:12', '2021-03-11 03:40:12'),
(40, 5, 8, 'ACTIVE', 1, '2021-03-11 03:40:12', '2021-03-11 03:40:12'),
(41, 1, 9, 'CREATE', 1, '2021-03-11 03:40:28', '2021-03-11 03:40:28'),
(42, 2, 9, 'VIEW', 1, '2021-03-11 03:40:28', '2021-03-11 03:40:28'),
(43, 3, 9, 'UPDATE', 1, '2021-03-11 03:40:28', '2021-03-11 03:40:28'),
(44, 4, 9, 'DELETE', 1, '2021-03-11 03:40:28', '2021-03-11 03:40:28'),
(45, 5, 9, 'ACTIVE', 1, '2021-03-11 03:40:28', '2021-03-11 03:40:28'),
(46, 1, 10, 'CREATE', 1, '2021-03-11 03:40:35', '2021-03-11 03:40:35'),
(47, 2, 10, 'VIEW', 1, '2021-03-11 03:40:35', '2021-03-11 03:40:35'),
(48, 3, 10, 'UPDATE', 1, '2021-03-11 03:40:35', '2021-03-11 03:40:35'),
(49, 4, 10, 'DELETE', 1, '2021-03-11 03:40:35', '2021-03-11 03:40:35'),
(50, 5, 10, 'ACTIVE', 1, '2021-03-11 03:40:35', '2021-03-11 03:40:35'),
(51, 1, 11, 'CREATE', 1, '2021-03-11 03:40:49', '2021-03-11 03:40:49'),
(52, 2, 11, 'VIEW', 1, '2021-03-11 03:40:49', '2021-03-11 03:40:49'),
(53, 3, 11, 'UPDATE', 1, '2021-03-11 03:40:49', '2021-03-11 03:40:49'),
(54, 4, 11, 'DELETE', 1, '2021-03-11 03:40:49', '2021-03-11 03:40:49'),
(55, 5, 11, 'ACTIVE', 1, '2021-03-11 03:40:49', '2021-03-11 03:40:49'),
(56, 1, 12, 'CREATE', 1, '2021-03-11 03:40:59', '2021-03-11 03:40:59'),
(57, 2, 12, 'VIEW', 1, '2021-03-11 03:40:59', '2021-03-11 03:40:59'),
(58, 3, 12, 'UPDATE', 1, '2021-03-11 03:40:59', '2021-03-11 03:40:59'),
(59, 4, 12, 'DELETE', 1, '2021-03-11 03:40:59', '2021-03-11 03:40:59'),
(60, 5, 12, 'ACTIVE', 1, '2021-03-11 03:40:59', '2021-03-11 03:40:59'),
(61, 1, 13, 'CREATE', 1, '2021-03-11 03:41:08', '2021-03-11 03:41:08'),
(62, 2, 13, 'VIEW', 1, '2021-03-11 03:41:08', '2021-03-11 03:41:08'),
(63, 3, 13, 'UPDATE', 1, '2021-03-11 03:41:08', '2021-03-11 03:41:08'),
(64, 4, 13, 'DELETE', 1, '2021-03-11 03:41:08', '2021-03-11 03:41:08'),
(65, 5, 13, 'ACTIVE', 1, '2021-03-11 03:41:08', '2021-03-11 03:41:08'),
(66, 1, 14, 'CREATE', 1, '2021-03-11 03:41:41', '2021-03-11 03:41:41'),
(67, 2, 14, 'VIEW', 1, '2021-03-11 03:41:41', '2021-03-11 03:41:41'),
(68, 3, 14, 'UPDATE', 1, '2021-03-11 03:41:41', '2021-03-11 03:41:41'),
(69, 4, 14, 'DELETE', 1, '2021-03-11 03:41:41', '2021-03-11 03:41:41'),
(70, 5, 14, 'ACTIVE', 1, '2021-03-11 03:41:41', '2021-03-11 03:41:41'),
(71, 1, 15, 'CREATE', 1, '2021-03-11 03:41:52', '2021-03-11 03:41:52'),
(72, 2, 15, 'VIEW', 1, '2021-03-11 03:41:52', '2021-03-11 03:41:52'),
(73, 3, 15, 'UPDATE', 1, '2021-03-11 03:41:52', '2021-03-11 03:41:52'),
(74, 4, 15, 'DELETE', 1, '2021-03-11 03:41:52', '2021-03-11 03:41:52'),
(75, 5, 15, 'ACTIVE', 1, '2021-03-11 03:41:52', '2021-03-11 03:41:52'),
(76, 1, 16, 'CREATE', 1, '2021-03-11 03:42:02', '2021-03-11 03:42:02'),
(77, 2, 16, 'VIEW', 1, '2021-03-11 03:42:02', '2021-03-11 03:42:02'),
(78, 3, 16, 'UPDATE', 1, '2021-03-11 03:42:02', '2021-03-11 03:42:02'),
(79, 4, 16, 'DELETE', 1, '2021-03-11 03:42:02', '2021-03-11 03:42:02'),
(80, 5, 16, 'ACTIVE', 1, '2021-03-11 03:42:02', '2021-03-11 03:42:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale` int(11) DEFAULT 0,
  `position` int(11) NOT NULL,
  `is_active` smallint(6) NOT NULL DEFAULT 1,
  `is_hot` smallint(6) NOT NULL DEFAULT 1,
  `category_id` bigint(20) NOT NULL,
  `vendor_id` bigint(20) NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `NSX` date NOT NULL,
  `HSD` date NOT NULL,
  `season_start` date NOT NULL,
  `season_end` date NOT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `image`, `number`, `price`, `sku`, `sale`, `position`, `is_active`, `is_hot`, `category_id`, `vendor_id`, `summary`, `description`, `NSX`, `HSD`, `season_start`, `season_end`, `unit`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Bắp cải xanh', 'bap-cai-xanh', 'uploads/product/1615479115_1611373473_1607531979_bap-cai.jpg', 10, 5000, NULL, 0, 0, 1, 0, 1, 1, '<p>&quot;Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn&quot;</p>', '<h2>Lorem Ipsum l&agrave; g&igrave;?</h2>\n\n<p>Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.</p>\n\n<p>&nbsp;</p>\n\n<h2>Tại sao lại sử dụng n&oacute;?</h2>\n\n<p>Ch&uacute;ng ta vẫn biết rằng, l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa dễ g&acirc;y rối tr&iacute; v&agrave; cản trở việc tập trung v&agrave;o yếu tố tr&igrave;nh b&agrave;y văn bản. Lorem Ipsum c&oacute; ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu &ldquo;Nội dung, nội dung, nội dung&rdquo; l&agrave; n&oacute; khiến văn bản giống thật hơn, b&igrave;nh thường hơn. Nhiều phần mềm thiết kế giao diện web v&agrave; d&agrave;n trang ng&agrave;y nay đ&atilde; sử dụng Lorem Ipsum l&agrave;m đoạn văn bản giả, v&agrave; nếu bạn thử t&igrave;m c&aacute;c đoạn &ldquo;Lorem ipsum&rdquo; tr&ecirc;n mạng th&igrave; sẽ kh&aacute;m ph&aacute; ra nhiều trang web hiện vẫn đang trong qu&aacute; tr&igrave;nh x&acirc;y dựng. C&oacute; nhiều phi&ecirc;n bản kh&aacute;c nhau đ&atilde; xuất hiện, đ&ocirc;i khi do v&ocirc; t&igrave;nh, nhiều khi do cố &yacute; (xen th&ecirc;m v&agrave;o những c&acirc;u h&agrave;i hước hay th&ocirc;ng tục).</p>\n\n<p>&nbsp;</p>\n\n<h2>N&oacute; đến từ đ&acirc;u?</h2>\n\n<p>Tr&aacute;i với quan điểm chung của số đ&ocirc;ng, Lorem Ipsum kh&ocirc;ng phải chỉ l&agrave; một đoạn văn bản ngẫu nhi&ecirc;n. Người ta t&igrave;m thấy nguồn gốc của n&oacute; từ những t&aacute;c phẩm văn học la-tinh cổ điển xuất hiện từ năm 45 trước C&ocirc;ng Nguy&ecirc;n, nghĩa l&agrave; n&oacute; đ&atilde; c&oacute; khoảng hơn 2000 tuổi. Một gi&aacute;o sư của trường Hampden-Sydney College (bang Virginia &ndash; Mỹ) quan t&acirc;m tới một trong những từ la-tinh kh&oacute; hiểu nhất, &ldquo;consectetur&rdquo;, tr&iacute;ch từ một đoạn của Lorem Ipsum, v&agrave; đ&atilde; nghi&ecirc;n cứu tất cả c&aacute;c ứng dụng của từ n&agrave;y trong văn học cổ điển, để từ đ&oacute; t&igrave;m ra nguồn gốc kh&ocirc;ng thể chối c&atilde;i của Lorem Ipsum. Thật ra, n&oacute; được t&igrave;m thấy trong c&aacute;c đoạn 1.10.32 v&agrave; 1.10.33 của &ldquo;De Finibus Bonorum et Malorum&rdquo; (Đỉnh tối thượng của C&aacute;i Tốt v&agrave; C&aacute;i Xấu) viết bởi Cicero v&agrave;o năm 45 trước C&ocirc;ng Nguy&ecirc;n. Cuốn s&aacute;ch n&agrave;y l&agrave; một luận thuyết đạo l&iacute; rất phổ biến trong thời k&igrave; Phục Hưng.</p>', '2021-03-16', '2021-03-19', '2021-03-01', '2021-04-30', 'kg', 1, '2021-03-11 09:11:55', '2021-03-11 09:11:55'),
(2, 'Bắp cải tím', 'bap-cai-tim', 'uploads/product/1615479459_1611374425_1607541074_product-4.jpg', 10, 4000, NULL, 20, 0, 1, 0, 1, 1, '<p>&quot;Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn&quot;</p>', '<h2>Lorem Ipsum l&agrave; g&igrave;?</h2>\n\n<p>Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.</p>\n\n<p>&nbsp;</p>\n\n<h2>Tại sao lại sử dụng n&oacute;?</h2>\n\n<p>Ch&uacute;ng ta vẫn biết rằng, l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa dễ g&acirc;y rối tr&iacute; v&agrave; cản trở việc tập trung v&agrave;o yếu tố tr&igrave;nh b&agrave;y văn bản. Lorem Ipsum c&oacute; ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu &ldquo;Nội dung, nội dung, nội dung&rdquo; l&agrave; n&oacute; khiến văn bản giống thật hơn, b&igrave;nh thường hơn. Nhiều phần mềm thiết kế giao diện web v&agrave; d&agrave;n trang ng&agrave;y nay đ&atilde; sử dụng Lorem Ipsum l&agrave;m đoạn văn bản giả, v&agrave; nếu bạn thử t&igrave;m c&aacute;c đoạn &ldquo;Lorem ipsum&rdquo; tr&ecirc;n mạng th&igrave; sẽ kh&aacute;m ph&aacute; ra nhiều trang web hiện vẫn đang trong qu&aacute; tr&igrave;nh x&acirc;y dựng. C&oacute; nhiều phi&ecirc;n bản kh&aacute;c nhau đ&atilde; xuất hiện, đ&ocirc;i khi do v&ocirc; t&igrave;nh, nhiều khi do cố &yacute; (xen th&ecirc;m v&agrave;o những c&acirc;u h&agrave;i hước hay th&ocirc;ng tục).</p>\n\n<p>&nbsp;</p>\n\n<h2>N&oacute; đến từ đ&acirc;u?</h2>\n\n<p>Tr&aacute;i với quan điểm chung của số đ&ocirc;ng, Lorem Ipsum kh&ocirc;ng phải chỉ l&agrave; một đoạn văn bản ngẫu nhi&ecirc;n. Người ta t&igrave;m thấy nguồn gốc của n&oacute; từ những t&aacute;c phẩm văn học la-tinh cổ điển xuất hiện từ năm 45 trước C&ocirc;ng Nguy&ecirc;n, nghĩa l&agrave; n&oacute; đ&atilde; c&oacute; khoảng hơn 2000 tuổi. Một gi&aacute;o sư của trường Hampden-Sydney College (bang Virginia &ndash; Mỹ) quan t&acirc;m tới một trong những từ la-tinh kh&oacute; hiểu nhất, &ldquo;consectetur&rdquo;, tr&iacute;ch từ một đoạn của Lorem Ipsum, v&agrave; đ&atilde; nghi&ecirc;n cứu tất cả c&aacute;c ứng dụng của từ n&agrave;y trong văn học cổ điển, để từ đ&oacute; t&igrave;m ra nguồn gốc kh&ocirc;ng thể chối c&atilde;i của Lorem Ipsum. Thật ra, n&oacute; được t&igrave;m thấy trong c&aacute;c đoạn 1.10.32 v&agrave; 1.10.33 của &ldquo;De Finibus Bonorum et Malorum&rdquo; (Đỉnh tối thượng của C&aacute;i Tốt v&agrave; C&aacute;i Xấu) viết bởi Cicero v&agrave;o năm 45 trước C&ocirc;ng Nguy&ecirc;n. Cuốn s&aacute;ch n&agrave;y l&agrave; một luận thuyết đạo l&iacute; rất phổ biến trong thời k&igrave; Phục Hưng.</p>', '2021-03-02', '2021-03-05', '2021-03-01', '2021-04-30', 'kg', 1, '2021-03-11 09:17:39', '2021-03-11 09:17:39'),
(3, 'Rau cần tây', 'rau-can-tay', 'uploads/product/1615479605_1611375443_1607543055_rau-can-tay.jpg', 10, 6000, NULL, 10, 0, 1, 0, 1, 1, '<p>&quot;Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn&quot;</p>', '<h2>Lorem Ipsum l&agrave; g&igrave;?</h2>\n\n<p>Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.</p>\n\n<p>&nbsp;</p>\n\n<h2>Tại sao lại sử dụng n&oacute;?</h2>\n\n<p>Ch&uacute;ng ta vẫn biết rằng, l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa dễ g&acirc;y rối tr&iacute; v&agrave; cản trở việc tập trung v&agrave;o yếu tố tr&igrave;nh b&agrave;y văn bản. Lorem Ipsum c&oacute; ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu &ldquo;Nội dung, nội dung, nội dung&rdquo; l&agrave; n&oacute; khiến văn bản giống thật hơn, b&igrave;nh thường hơn. Nhiều phần mềm thiết kế giao diện web v&agrave; d&agrave;n trang ng&agrave;y nay đ&atilde; sử dụng Lorem Ipsum l&agrave;m đoạn văn bản giả, v&agrave; nếu bạn thử t&igrave;m c&aacute;c đoạn &ldquo;Lorem ipsum&rdquo; tr&ecirc;n mạng th&igrave; sẽ kh&aacute;m ph&aacute; ra nhiều trang web hiện vẫn đang trong qu&aacute; tr&igrave;nh x&acirc;y dựng. C&oacute; nhiều phi&ecirc;n bản kh&aacute;c nhau đ&atilde; xuất hiện, đ&ocirc;i khi do v&ocirc; t&igrave;nh, nhiều khi do cố &yacute; (xen th&ecirc;m v&agrave;o những c&acirc;u h&agrave;i hước hay th&ocirc;ng tục).</p>\n\n<p>&nbsp;</p>\n\n<h2>N&oacute; đến từ đ&acirc;u?</h2>\n\n<p>Tr&aacute;i với quan điểm chung của số đ&ocirc;ng, Lorem Ipsum kh&ocirc;ng phải chỉ l&agrave; một đoạn văn bản ngẫu nhi&ecirc;n. Người ta t&igrave;m thấy nguồn gốc của n&oacute; từ những t&aacute;c phẩm văn học la-tinh cổ điển xuất hiện từ năm 45 trước C&ocirc;ng Nguy&ecirc;n, nghĩa l&agrave; n&oacute; đ&atilde; c&oacute; khoảng hơn 2000 tuổi. Một gi&aacute;o sư của trường Hampden-Sydney College (bang Virginia &ndash; Mỹ) quan t&acirc;m tới một trong những từ la-tinh kh&oacute; hiểu nhất, &ldquo;consectetur&rdquo;, tr&iacute;ch từ một đoạn của Lorem Ipsum, v&agrave; đ&atilde; nghi&ecirc;n cứu tất cả c&aacute;c ứng dụng của từ n&agrave;y trong văn học cổ điển, để từ đ&oacute; t&igrave;m ra nguồn gốc kh&ocirc;ng thể chối c&atilde;i của Lorem Ipsum. Thật ra, n&oacute; được t&igrave;m thấy trong c&aacute;c đoạn 1.10.32 v&agrave; 1.10.33 của &ldquo;De Finibus Bonorum et Malorum&rdquo; (Đỉnh tối thượng của C&aacute;i Tốt v&agrave; C&aacute;i Xấu) viết bởi Cicero v&agrave;o năm 45 trước C&ocirc;ng Nguy&ecirc;n. Cuốn s&aacute;ch n&agrave;y l&agrave; một luận thuyết đạo l&iacute; rất phổ biến trong thời k&igrave; Phục Hưng.</p>', '2021-03-17', '2021-03-23', '2021-03-01', '2021-03-31', 'kg', 1, '2021-03-11 09:20:05', '2021-03-11 09:20:05'),
(4, 'Nấm đùi gà', 'nam-dui-ga', 'uploads/product/1615479703_1611375524_1607592439_Nam_dui_ga.jpg', 10, 3000, NULL, 0, 0, 1, 0, 3, 1, '<p>&quot;Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn&quot;</p>', '<h2>Lorem Ipsum l&agrave; g&igrave;?</h2>\n\n<p>Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.</p>\n\n<p>&nbsp;</p>\n\n<h2>Tại sao lại sử dụng n&oacute;?</h2>\n\n<p>Ch&uacute;ng ta vẫn biết rằng, l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa dễ g&acirc;y rối tr&iacute; v&agrave; cản trở việc tập trung v&agrave;o yếu tố tr&igrave;nh b&agrave;y văn bản. Lorem Ipsum c&oacute; ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu &ldquo;Nội dung, nội dung, nội dung&rdquo; l&agrave; n&oacute; khiến văn bản giống thật hơn, b&igrave;nh thường hơn. Nhiều phần mềm thiết kế giao diện web v&agrave; d&agrave;n trang ng&agrave;y nay đ&atilde; sử dụng Lorem Ipsum l&agrave;m đoạn văn bản giả, v&agrave; nếu bạn thử t&igrave;m c&aacute;c đoạn &ldquo;Lorem ipsum&rdquo; tr&ecirc;n mạng th&igrave; sẽ kh&aacute;m ph&aacute; ra nhiều trang web hiện vẫn đang trong qu&aacute; tr&igrave;nh x&acirc;y dựng. C&oacute; nhiều phi&ecirc;n bản kh&aacute;c nhau đ&atilde; xuất hiện, đ&ocirc;i khi do v&ocirc; t&igrave;nh, nhiều khi do cố &yacute; (xen th&ecirc;m v&agrave;o những c&acirc;u h&agrave;i hước hay th&ocirc;ng tục).</p>\n\n<p>&nbsp;</p>\n\n<h2>N&oacute; đến từ đ&acirc;u?</h2>\n\n<p>Tr&aacute;i với quan điểm chung của số đ&ocirc;ng, Lorem Ipsum kh&ocirc;ng phải chỉ l&agrave; một đoạn văn bản ngẫu nhi&ecirc;n. Người ta t&igrave;m thấy nguồn gốc của n&oacute; từ những t&aacute;c phẩm văn học la-tinh cổ điển xuất hiện từ năm 45 trước C&ocirc;ng Nguy&ecirc;n, nghĩa l&agrave; n&oacute; đ&atilde; c&oacute; khoảng hơn 2000 tuổi. Một gi&aacute;o sư của trường Hampden-Sydney College (bang Virginia &ndash; Mỹ) quan t&acirc;m tới một trong những từ la-tinh kh&oacute; hiểu nhất, &ldquo;consectetur&rdquo;, tr&iacute;ch từ một đoạn của Lorem Ipsum, v&agrave; đ&atilde; nghi&ecirc;n cứu tất cả c&aacute;c ứng dụng của từ n&agrave;y trong văn học cổ điển, để từ đ&oacute; t&igrave;m ra nguồn gốc kh&ocirc;ng thể chối c&atilde;i của Lorem Ipsum. Thật ra, n&oacute; được t&igrave;m thấy trong c&aacute;c đoạn 1.10.32 v&agrave; 1.10.33 của &ldquo;De Finibus Bonorum et Malorum&rdquo; (Đỉnh tối thượng của C&aacute;i Tốt v&agrave; C&aacute;i Xấu) viết bởi Cicero v&agrave;o năm 45 trước C&ocirc;ng Nguy&ecirc;n. Cuốn s&aacute;ch n&agrave;y l&agrave; một luận thuyết đạo l&iacute; rất phổ biến trong thời k&igrave; Phục Hưng.</p>', '2021-03-01', '2021-03-04', '2021-03-01', '2021-05-31', 'kg', 1, '2021-03-11 09:21:43', '2021-03-11 09:21:43'),
(5, 'Nấm kim châm', 'nam-kim-cham', 'uploads/product/1615479799_1611375582_1607592591_nam-kim-cham-han-quoc.png', 10, 10000, NULL, 0, 0, 1, 0, 3, 1, '<p>&quot;Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn&quot;</p>', '<h2>Lorem Ipsum l&agrave; g&igrave;?</h2>\n\n<p>Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.</p>\n\n<p>&nbsp;</p>\n\n<h2>Tại sao lại sử dụng n&oacute;?</h2>\n\n<p>Ch&uacute;ng ta vẫn biết rằng, l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa dễ g&acirc;y rối tr&iacute; v&agrave; cản trở việc tập trung v&agrave;o yếu tố tr&igrave;nh b&agrave;y văn bản. Lorem Ipsum c&oacute; ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu &ldquo;Nội dung, nội dung, nội dung&rdquo; l&agrave; n&oacute; khiến văn bản giống thật hơn, b&igrave;nh thường hơn. Nhiều phần mềm thiết kế giao diện web v&agrave; d&agrave;n trang ng&agrave;y nay đ&atilde; sử dụng Lorem Ipsum l&agrave;m đoạn văn bản giả, v&agrave; nếu bạn thử t&igrave;m c&aacute;c đoạn &ldquo;Lorem ipsum&rdquo; tr&ecirc;n mạng th&igrave; sẽ kh&aacute;m ph&aacute; ra nhiều trang web hiện vẫn đang trong qu&aacute; tr&igrave;nh x&acirc;y dựng. C&oacute; nhiều phi&ecirc;n bản kh&aacute;c nhau đ&atilde; xuất hiện, đ&ocirc;i khi do v&ocirc; t&igrave;nh, nhiều khi do cố &yacute; (xen th&ecirc;m v&agrave;o những c&acirc;u h&agrave;i hước hay th&ocirc;ng tục).</p>\n\n<p>&nbsp;</p>\n\n<h2>N&oacute; đến từ đ&acirc;u?</h2>\n\n<p>Tr&aacute;i với quan điểm chung của số đ&ocirc;ng, Lorem Ipsum kh&ocirc;ng phải chỉ l&agrave; một đoạn văn bản ngẫu nhi&ecirc;n. Người ta t&igrave;m thấy nguồn gốc của n&oacute; từ những t&aacute;c phẩm văn học la-tinh cổ điển xuất hiện từ năm 45 trước C&ocirc;ng Nguy&ecirc;n, nghĩa l&agrave; n&oacute; đ&atilde; c&oacute; khoảng hơn 2000 tuổi. Một gi&aacute;o sư của trường Hampden-Sydney College (bang Virginia &ndash; Mỹ) quan t&acirc;m tới một trong những từ la-tinh kh&oacute; hiểu nhất, &ldquo;consectetur&rdquo;, tr&iacute;ch từ một đoạn của Lorem Ipsum, v&agrave; đ&atilde; nghi&ecirc;n cứu tất cả c&aacute;c ứng dụng của từ n&agrave;y trong văn học cổ điển, để từ đ&oacute; t&igrave;m ra nguồn gốc kh&ocirc;ng thể chối c&atilde;i của Lorem Ipsum. Thật ra, n&oacute; được t&igrave;m thấy trong c&aacute;c đoạn 1.10.32 v&agrave; 1.10.33 của &ldquo;De Finibus Bonorum et Malorum&rdquo; (Đỉnh tối thượng của C&aacute;i Tốt v&agrave; C&aacute;i Xấu) viết bởi Cicero v&agrave;o năm 45 trước C&ocirc;ng Nguy&ecirc;n. Cuốn s&aacute;ch n&agrave;y l&agrave; một luận thuyết đạo l&iacute; rất phổ biến trong thời k&igrave; Phục Hưng.</p>', '2021-03-01', '2021-03-03', '2021-02-01', '2021-03-31', 'kg', 1, '2021-03-11 09:23:19', '2021-03-11 09:23:19'),
(6, 'Táo NewZealand', 'tao-newzealand', 'uploads/product/1615480138_1611375661_1607593350_Tao_Newzealand.png', 10, 20000, NULL, 0, 0, 1, 0, 2, 1, '<p>&quot;Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn&quot;</p>', '<h2>Lorem Ipsum l&agrave; g&igrave;?</h2>\n\n<p>Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.</p>\n\n<p>&nbsp;</p>\n\n<h2>Tại sao lại sử dụng n&oacute;?</h2>\n\n<p>Ch&uacute;ng ta vẫn biết rằng, l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa dễ g&acirc;y rối tr&iacute; v&agrave; cản trở việc tập trung v&agrave;o yếu tố tr&igrave;nh b&agrave;y văn bản. Lorem Ipsum c&oacute; ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu &ldquo;Nội dung, nội dung, nội dung&rdquo; l&agrave; n&oacute; khiến văn bản giống thật hơn, b&igrave;nh thường hơn. Nhiều phần mềm thiết kế giao diện web v&agrave; d&agrave;n trang ng&agrave;y nay đ&atilde; sử dụng Lorem Ipsum l&agrave;m đoạn văn bản giả, v&agrave; nếu bạn thử t&igrave;m c&aacute;c đoạn &ldquo;Lorem ipsum&rdquo; tr&ecirc;n mạng th&igrave; sẽ kh&aacute;m ph&aacute; ra nhiều trang web hiện vẫn đang trong qu&aacute; tr&igrave;nh x&acirc;y dựng. C&oacute; nhiều phi&ecirc;n bản kh&aacute;c nhau đ&atilde; xuất hiện, đ&ocirc;i khi do v&ocirc; t&igrave;nh, nhiều khi do cố &yacute; (xen th&ecirc;m v&agrave;o những c&acirc;u h&agrave;i hước hay th&ocirc;ng tục).</p>\n\n<p>&nbsp;</p>\n\n<h2>N&oacute; đến từ đ&acirc;u?</h2>\n\n<p>Tr&aacute;i với quan điểm chung của số đ&ocirc;ng, Lorem Ipsum kh&ocirc;ng phải chỉ l&agrave; một đoạn văn bản ngẫu nhi&ecirc;n. Người ta t&igrave;m thấy nguồn gốc của n&oacute; từ những t&aacute;c phẩm văn học la-tinh cổ điển xuất hiện từ năm 45 trước C&ocirc;ng Nguy&ecirc;n, nghĩa l&agrave; n&oacute; đ&atilde; c&oacute; khoảng hơn 2000 tuổi. Một gi&aacute;o sư của trường Hampden-Sydney College (bang Virginia &ndash; Mỹ) quan t&acirc;m tới một trong những từ la-tinh kh&oacute; hiểu nhất, &ldquo;consectetur&rdquo;, tr&iacute;ch từ một đoạn của Lorem Ipsum, v&agrave; đ&atilde; nghi&ecirc;n cứu tất cả c&aacute;c ứng dụng của từ n&agrave;y trong văn học cổ điển, để từ đ&oacute; t&igrave;m ra nguồn gốc kh&ocirc;ng thể chối c&atilde;i của Lorem Ipsum. Thật ra, n&oacute; được t&igrave;m thấy trong c&aacute;c đoạn 1.10.32 v&agrave; 1.10.33 của &ldquo;De Finibus Bonorum et Malorum&rdquo; (Đỉnh tối thượng của C&aacute;i Tốt v&agrave; C&aacute;i Xấu) viết bởi Cicero v&agrave;o năm 45 trước C&ocirc;ng Nguy&ecirc;n. Cuốn s&aacute;ch n&agrave;y l&agrave; một luận thuyết đạo l&iacute; rất phổ biến trong thời k&igrave; Phục Hưng.</p>', '2021-03-01', '2021-03-06', '2021-03-01', '2021-03-31', 'kg', 1, '2021-03-11 09:28:58', '2021-03-11 09:28:58'),
(7, 'Xoài chín', 'xoai-chin', 'uploads/product/1615480227_1611375716_1607592985_qua_xoai.png', 10, 5000, NULL, 0, 0, 1, 1, 2, 1, '<p>&quot;Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn&quot;</p>', '<h2>Lorem Ipsum l&agrave; g&igrave;?</h2>\n\n<p>Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.</p>\n\n<p>&nbsp;</p>\n\n<h2>Tại sao lại sử dụng n&oacute;?</h2>\n\n<p>Ch&uacute;ng ta vẫn biết rằng, l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa dễ g&acirc;y rối tr&iacute; v&agrave; cản trở việc tập trung v&agrave;o yếu tố tr&igrave;nh b&agrave;y văn bản. Lorem Ipsum c&oacute; ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu &ldquo;Nội dung, nội dung, nội dung&rdquo; l&agrave; n&oacute; khiến văn bản giống thật hơn, b&igrave;nh thường hơn. Nhiều phần mềm thiết kế giao diện web v&agrave; d&agrave;n trang ng&agrave;y nay đ&atilde; sử dụng Lorem Ipsum l&agrave;m đoạn văn bản giả, v&agrave; nếu bạn thử t&igrave;m c&aacute;c đoạn &ldquo;Lorem ipsum&rdquo; tr&ecirc;n mạng th&igrave; sẽ kh&aacute;m ph&aacute; ra nhiều trang web hiện vẫn đang trong qu&aacute; tr&igrave;nh x&acirc;y dựng. C&oacute; nhiều phi&ecirc;n bản kh&aacute;c nhau đ&atilde; xuất hiện, đ&ocirc;i khi do v&ocirc; t&igrave;nh, nhiều khi do cố &yacute; (xen th&ecirc;m v&agrave;o những c&acirc;u h&agrave;i hước hay th&ocirc;ng tục).</p>\n\n<p>&nbsp;</p>\n\n<h2>N&oacute; đến từ đ&acirc;u?</h2>\n\n<p>Tr&aacute;i với quan điểm chung của số đ&ocirc;ng, Lorem Ipsum kh&ocirc;ng phải chỉ l&agrave; một đoạn văn bản ngẫu nhi&ecirc;n. Người ta t&igrave;m thấy nguồn gốc của n&oacute; từ những t&aacute;c phẩm văn học la-tinh cổ điển xuất hiện từ năm 45 trước C&ocirc;ng Nguy&ecirc;n, nghĩa l&agrave; n&oacute; đ&atilde; c&oacute; khoảng hơn 2000 tuổi. Một gi&aacute;o sư của trường Hampden-Sydney College (bang Virginia &ndash; Mỹ) quan t&acirc;m tới một trong những từ la-tinh kh&oacute; hiểu nhất, &ldquo;consectetur&rdquo;, tr&iacute;ch từ một đoạn của Lorem Ipsum, v&agrave; đ&atilde; nghi&ecirc;n cứu tất cả c&aacute;c ứng dụng của từ n&agrave;y trong văn học cổ điển, để từ đ&oacute; t&igrave;m ra nguồn gốc kh&ocirc;ng thể chối c&atilde;i của Lorem Ipsum. Thật ra, n&oacute; được t&igrave;m thấy trong c&aacute;c đoạn 1.10.32 v&agrave; 1.10.33 của &ldquo;De Finibus Bonorum et Malorum&rdquo; (Đỉnh tối thượng của C&aacute;i Tốt v&agrave; C&aacute;i Xấu) viết bởi Cicero v&agrave;o năm 45 trước C&ocirc;ng Nguy&ecirc;n. Cuốn s&aacute;ch n&agrave;y l&agrave; một luận thuyết đạo l&iacute; rất phổ biến trong thời k&igrave; Phục Hưng.</p>', '2021-03-02', '2021-03-06', '2021-03-01', '2021-04-14', 'kg', 1, '2021-03-11 09:30:27', '2021-03-11 09:55:30'),
(8, 'Đùi gà công nghiệp', 'dui-ga-cong-nghiep', 'uploads/product/1615480317_1611375744_243-2431471_chicken-meat-hd-png-download.png', 10, 30000, NULL, 10, 0, 1, 0, 4, 1, '<p>&quot;Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn&quot;</p>', '<h2>Lorem Ipsum l&agrave; g&igrave;?</h2>\n\n<p>Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.</p>\n\n<p>&nbsp;</p>\n\n<h2>Tại sao lại sử dụng n&oacute;?</h2>\n\n<p>Ch&uacute;ng ta vẫn biết rằng, l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa dễ g&acirc;y rối tr&iacute; v&agrave; cản trở việc tập trung v&agrave;o yếu tố tr&igrave;nh b&agrave;y văn bản. Lorem Ipsum c&oacute; ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu &ldquo;Nội dung, nội dung, nội dung&rdquo; l&agrave; n&oacute; khiến văn bản giống thật hơn, b&igrave;nh thường hơn. Nhiều phần mềm thiết kế giao diện web v&agrave; d&agrave;n trang ng&agrave;y nay đ&atilde; sử dụng Lorem Ipsum l&agrave;m đoạn văn bản giả, v&agrave; nếu bạn thử t&igrave;m c&aacute;c đoạn &ldquo;Lorem ipsum&rdquo; tr&ecirc;n mạng th&igrave; sẽ kh&aacute;m ph&aacute; ra nhiều trang web hiện vẫn đang trong qu&aacute; tr&igrave;nh x&acirc;y dựng. C&oacute; nhiều phi&ecirc;n bản kh&aacute;c nhau đ&atilde; xuất hiện, đ&ocirc;i khi do v&ocirc; t&igrave;nh, nhiều khi do cố &yacute; (xen th&ecirc;m v&agrave;o những c&acirc;u h&agrave;i hước hay th&ocirc;ng tục).</p>\n\n<p>&nbsp;</p>\n\n<h2>N&oacute; đến từ đ&acirc;u?</h2>\n\n<p>Tr&aacute;i với quan điểm chung của số đ&ocirc;ng, Lorem Ipsum kh&ocirc;ng phải chỉ l&agrave; một đoạn văn bản ngẫu nhi&ecirc;n. Người ta t&igrave;m thấy nguồn gốc của n&oacute; từ những t&aacute;c phẩm văn học la-tinh cổ điển xuất hiện từ năm 45 trước C&ocirc;ng Nguy&ecirc;n, nghĩa l&agrave; n&oacute; đ&atilde; c&oacute; khoảng hơn 2000 tuổi. Một gi&aacute;o sư của trường Hampden-Sydney College (bang Virginia &ndash; Mỹ) quan t&acirc;m tới một trong những từ la-tinh kh&oacute; hiểu nhất, &ldquo;consectetur&rdquo;, tr&iacute;ch từ một đoạn của Lorem Ipsum, v&agrave; đ&atilde; nghi&ecirc;n cứu tất cả c&aacute;c ứng dụng của từ n&agrave;y trong văn học cổ điển, để từ đ&oacute; t&igrave;m ra nguồn gốc kh&ocirc;ng thể chối c&atilde;i của Lorem Ipsum. Thật ra, n&oacute; được t&igrave;m thấy trong c&aacute;c đoạn 1.10.32 v&agrave; 1.10.33 của &ldquo;De Finibus Bonorum et Malorum&rdquo; (Đỉnh tối thượng của C&aacute;i Tốt v&agrave; C&aacute;i Xấu) viết bởi Cicero v&agrave;o năm 45 trước C&ocirc;ng Nguy&ecirc;n. Cuốn s&aacute;ch n&agrave;y l&agrave; một luận thuyết đạo l&iacute; rất phổ biến trong thời k&igrave; Phục Hưng.</p>', '2021-03-01', '2021-03-31', '2021-03-01', '2021-12-31', 'kg', 1, '2021-03-11 09:31:57', '2021-03-11 09:31:57'),
(9, 'Thịt cá lóc', 'thit-ca-loc', 'uploads/product/1615480390_1611375761_phan-biet-ca-loc-viet-nam-va-trung-quoc-201909041507591318.jpg', 10, 25000, NULL, 0, 0, 1, 1, 5, 1, '<p>&quot;Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn&quot;</p>', '<h2>Lorem Ipsum l&agrave; g&igrave;?</h2>\n\n<p>Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.</p>\n\n<p>&nbsp;</p>\n\n<h2>Tại sao lại sử dụng n&oacute;?</h2>\n\n<p>Ch&uacute;ng ta vẫn biết rằng, l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa dễ g&acirc;y rối tr&iacute; v&agrave; cản trở việc tập trung v&agrave;o yếu tố tr&igrave;nh b&agrave;y văn bản. Lorem Ipsum c&oacute; ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu &ldquo;Nội dung, nội dung, nội dung&rdquo; l&agrave; n&oacute; khiến văn bản giống thật hơn, b&igrave;nh thường hơn. Nhiều phần mềm thiết kế giao diện web v&agrave; d&agrave;n trang ng&agrave;y nay đ&atilde; sử dụng Lorem Ipsum l&agrave;m đoạn văn bản giả, v&agrave; nếu bạn thử t&igrave;m c&aacute;c đoạn &ldquo;Lorem ipsum&rdquo; tr&ecirc;n mạng th&igrave; sẽ kh&aacute;m ph&aacute; ra nhiều trang web hiện vẫn đang trong qu&aacute; tr&igrave;nh x&acirc;y dựng. C&oacute; nhiều phi&ecirc;n bản kh&aacute;c nhau đ&atilde; xuất hiện, đ&ocirc;i khi do v&ocirc; t&igrave;nh, nhiều khi do cố &yacute; (xen th&ecirc;m v&agrave;o những c&acirc;u h&agrave;i hước hay th&ocirc;ng tục).</p>\n\n<p>&nbsp;</p>\n\n<h2>N&oacute; đến từ đ&acirc;u?</h2>\n\n<p>Tr&aacute;i với quan điểm chung của số đ&ocirc;ng, Lorem Ipsum kh&ocirc;ng phải chỉ l&agrave; một đoạn văn bản ngẫu nhi&ecirc;n. Người ta t&igrave;m thấy nguồn gốc của n&oacute; từ những t&aacute;c phẩm văn học la-tinh cổ điển xuất hiện từ năm 45 trước C&ocirc;ng Nguy&ecirc;n, nghĩa l&agrave; n&oacute; đ&atilde; c&oacute; khoảng hơn 2000 tuổi. Một gi&aacute;o sư của trường Hampden-Sydney College (bang Virginia &ndash; Mỹ) quan t&acirc;m tới một trong những từ la-tinh kh&oacute; hiểu nhất, &ldquo;consectetur&rdquo;, tr&iacute;ch từ một đoạn của Lorem Ipsum, v&agrave; đ&atilde; nghi&ecirc;n cứu tất cả c&aacute;c ứng dụng của từ n&agrave;y trong văn học cổ điển, để từ đ&oacute; t&igrave;m ra nguồn gốc kh&ocirc;ng thể chối c&atilde;i của Lorem Ipsum. Thật ra, n&oacute; được t&igrave;m thấy trong c&aacute;c đoạn 1.10.32 v&agrave; 1.10.33 của &ldquo;De Finibus Bonorum et Malorum&rdquo; (Đỉnh tối thượng của C&aacute;i Tốt v&agrave; C&aacute;i Xấu) viết bởi Cicero v&agrave;o năm 45 trước C&ocirc;ng Nguy&ecirc;n. Cuốn s&aacute;ch n&agrave;y l&agrave; một luận thuyết đạo l&iacute; rất phổ biến trong thời k&igrave; Phục Hưng.</p>', '2021-03-01', '2021-03-03', '2021-03-01', '2021-12-31', 'kg', 1, '2021-03-11 09:33:10', '2021-03-11 09:55:19'),
(10, 'Rau khoai lang', 'rau-khoai-lang', 'uploads/product/1615480468_1611837840_1607543196_Rau-khoai-.png', 10, 3000, NULL, 0, 0, 1, 0, 1, 1, '<p>&quot;Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn&quot;</p>', '<h2>Lorem Ipsum l&agrave; g&igrave;?</h2>\n\n<p>Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.</p>\n\n<p>&nbsp;</p>\n\n<h2>Tại sao lại sử dụng n&oacute;?</h2>\n\n<p>Ch&uacute;ng ta vẫn biết rằng, l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa dễ g&acirc;y rối tr&iacute; v&agrave; cản trở việc tập trung v&agrave;o yếu tố tr&igrave;nh b&agrave;y văn bản. Lorem Ipsum c&oacute; ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu &ldquo;Nội dung, nội dung, nội dung&rdquo; l&agrave; n&oacute; khiến văn bản giống thật hơn, b&igrave;nh thường hơn. Nhiều phần mềm thiết kế giao diện web v&agrave; d&agrave;n trang ng&agrave;y nay đ&atilde; sử dụng Lorem Ipsum l&agrave;m đoạn văn bản giả, v&agrave; nếu bạn thử t&igrave;m c&aacute;c đoạn &ldquo;Lorem ipsum&rdquo; tr&ecirc;n mạng th&igrave; sẽ kh&aacute;m ph&aacute; ra nhiều trang web hiện vẫn đang trong qu&aacute; tr&igrave;nh x&acirc;y dựng. C&oacute; nhiều phi&ecirc;n bản kh&aacute;c nhau đ&atilde; xuất hiện, đ&ocirc;i khi do v&ocirc; t&igrave;nh, nhiều khi do cố &yacute; (xen th&ecirc;m v&agrave;o những c&acirc;u h&agrave;i hước hay th&ocirc;ng tục).</p>\n\n<p>&nbsp;</p>\n\n<h2>N&oacute; đến từ đ&acirc;u?</h2>\n\n<p>Tr&aacute;i với quan điểm chung của số đ&ocirc;ng, Lorem Ipsum kh&ocirc;ng phải chỉ l&agrave; một đoạn văn bản ngẫu nhi&ecirc;n. Người ta t&igrave;m thấy nguồn gốc của n&oacute; từ những t&aacute;c phẩm văn học la-tinh cổ điển xuất hiện từ năm 45 trước C&ocirc;ng Nguy&ecirc;n, nghĩa l&agrave; n&oacute; đ&atilde; c&oacute; khoảng hơn 2000 tuổi. Một gi&aacute;o sư của trường Hampden-Sydney College (bang Virginia &ndash; Mỹ) quan t&acirc;m tới một trong những từ la-tinh kh&oacute; hiểu nhất, &ldquo;consectetur&rdquo;, tr&iacute;ch từ một đoạn của Lorem Ipsum, v&agrave; đ&atilde; nghi&ecirc;n cứu tất cả c&aacute;c ứng dụng của từ n&agrave;y trong văn học cổ điển, để từ đ&oacute; t&igrave;m ra nguồn gốc kh&ocirc;ng thể chối c&atilde;i của Lorem Ipsum. Thật ra, n&oacute; được t&igrave;m thấy trong c&aacute;c đoạn 1.10.32 v&agrave; 1.10.33 của &ldquo;De Finibus Bonorum et Malorum&rdquo; (Đỉnh tối thượng của C&aacute;i Tốt v&agrave; C&aacute;i Xấu) viết bởi Cicero v&agrave;o năm 45 trước C&ocirc;ng Nguy&ecirc;n. Cuốn s&aacute;ch n&agrave;y l&agrave; một luận thuyết đạo l&iacute; rất phổ biến trong thời k&igrave; Phục Hưng.</p>', '2021-03-01', '2021-03-08', '2021-03-01', '2022-02-28', 'kg', 1, '2021-03-11 09:34:28', '2021-03-11 09:34:28'),
(11, 'Rau cải xanh', 'rau-cai-xanh', 'uploads/product/1615480635_1611837900_1607543319_cai xanh.jpg', 10, 5000, NULL, 0, 0, 1, 0, 1, 1, '<p>&quot;Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn&quot;</p>', '<h2>Lorem Ipsum l&agrave; g&igrave;?</h2>\n\n<p>Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.</p>\n\n<p>&nbsp;</p>\n\n<h2>Tại sao lại sử dụng n&oacute;?</h2>\n\n<p>Ch&uacute;ng ta vẫn biết rằng, l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa dễ g&acirc;y rối tr&iacute; v&agrave; cản trở việc tập trung v&agrave;o yếu tố tr&igrave;nh b&agrave;y văn bản. Lorem Ipsum c&oacute; ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu &ldquo;Nội dung, nội dung, nội dung&rdquo; l&agrave; n&oacute; khiến văn bản giống thật hơn, b&igrave;nh thường hơn. Nhiều phần mềm thiết kế giao diện web v&agrave; d&agrave;n trang ng&agrave;y nay đ&atilde; sử dụng Lorem Ipsum l&agrave;m đoạn văn bản giả, v&agrave; nếu bạn thử t&igrave;m c&aacute;c đoạn &ldquo;Lorem ipsum&rdquo; tr&ecirc;n mạng th&igrave; sẽ kh&aacute;m ph&aacute; ra nhiều trang web hiện vẫn đang trong qu&aacute; tr&igrave;nh x&acirc;y dựng. C&oacute; nhiều phi&ecirc;n bản kh&aacute;c nhau đ&atilde; xuất hiện, đ&ocirc;i khi do v&ocirc; t&igrave;nh, nhiều khi do cố &yacute; (xen th&ecirc;m v&agrave;o những c&acirc;u h&agrave;i hước hay th&ocirc;ng tục).</p>\n\n<p>&nbsp;</p>\n\n<h2>N&oacute; đến từ đ&acirc;u?</h2>\n\n<p>Tr&aacute;i với quan điểm chung của số đ&ocirc;ng, Lorem Ipsum kh&ocirc;ng phải chỉ l&agrave; một đoạn văn bản ngẫu nhi&ecirc;n. Người ta t&igrave;m thấy nguồn gốc của n&oacute; từ những t&aacute;c phẩm văn học la-tinh cổ điển xuất hiện từ năm 45 trước C&ocirc;ng Nguy&ecirc;n, nghĩa l&agrave; n&oacute; đ&atilde; c&oacute; khoảng hơn 2000 tuổi. Một gi&aacute;o sư của trường Hampden-Sydney College (bang Virginia &ndash; Mỹ) quan t&acirc;m tới một trong những từ la-tinh kh&oacute; hiểu nhất, &ldquo;consectetur&rdquo;, tr&iacute;ch từ một đoạn của Lorem Ipsum, v&agrave; đ&atilde; nghi&ecirc;n cứu tất cả c&aacute;c ứng dụng của từ n&agrave;y trong văn học cổ điển, để từ đ&oacute; t&igrave;m ra nguồn gốc kh&ocirc;ng thể chối c&atilde;i của Lorem Ipsum. Thật ra, n&oacute; được t&igrave;m thấy trong c&aacute;c đoạn 1.10.32 v&agrave; 1.10.33 của &ldquo;De Finibus Bonorum et Malorum&rdquo; (Đỉnh tối thượng của C&aacute;i Tốt v&agrave; C&aacute;i Xấu) viết bởi Cicero v&agrave;o năm 45 trước C&ocirc;ng Nguy&ecirc;n. Cuốn s&aacute;ch n&agrave;y l&agrave; một luận thuyết đạo l&iacute; rất phổ biến trong thời k&igrave; Phục Hưng.</p>', '2021-03-01', '2021-03-07', '2021-03-01', '2022-02-15', 'kg', 1, '2021-03-11 09:37:15', '2021-03-11 09:37:15'),
(12, 'Bí đao', 'bi-dao', 'uploads/product/1615480708_1611837994_1607543462_bi-dao.jpg', 10, 3000, NULL, 25, 0, 1, 1, 2, 1, '<p>&quot;Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn&quot;</p>', '<h2>Lorem Ipsum l&agrave; g&igrave;?</h2>\n\n<p>Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.</p>\n\n<p>&nbsp;</p>\n\n<h2>Tại sao lại sử dụng n&oacute;?</h2>\n\n<p>Ch&uacute;ng ta vẫn biết rằng, l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa dễ g&acirc;y rối tr&iacute; v&agrave; cản trở việc tập trung v&agrave;o yếu tố tr&igrave;nh b&agrave;y văn bản. Lorem Ipsum c&oacute; ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu &ldquo;Nội dung, nội dung, nội dung&rdquo; l&agrave; n&oacute; khiến văn bản giống thật hơn, b&igrave;nh thường hơn. Nhiều phần mềm thiết kế giao diện web v&agrave; d&agrave;n trang ng&agrave;y nay đ&atilde; sử dụng Lorem Ipsum l&agrave;m đoạn văn bản giả, v&agrave; nếu bạn thử t&igrave;m c&aacute;c đoạn &ldquo;Lorem ipsum&rdquo; tr&ecirc;n mạng th&igrave; sẽ kh&aacute;m ph&aacute; ra nhiều trang web hiện vẫn đang trong qu&aacute; tr&igrave;nh x&acirc;y dựng. C&oacute; nhiều phi&ecirc;n bản kh&aacute;c nhau đ&atilde; xuất hiện, đ&ocirc;i khi do v&ocirc; t&igrave;nh, nhiều khi do cố &yacute; (xen th&ecirc;m v&agrave;o những c&acirc;u h&agrave;i hước hay th&ocirc;ng tục).</p>\n\n<p>&nbsp;</p>\n\n<h2>N&oacute; đến từ đ&acirc;u?</h2>\n\n<p>Tr&aacute;i với quan điểm chung của số đ&ocirc;ng, Lorem Ipsum kh&ocirc;ng phải chỉ l&agrave; một đoạn văn bản ngẫu nhi&ecirc;n. Người ta t&igrave;m thấy nguồn gốc của n&oacute; từ những t&aacute;c phẩm văn học la-tinh cổ điển xuất hiện từ năm 45 trước C&ocirc;ng Nguy&ecirc;n, nghĩa l&agrave; n&oacute; đ&atilde; c&oacute; khoảng hơn 2000 tuổi. Một gi&aacute;o sư của trường Hampden-Sydney College (bang Virginia &ndash; Mỹ) quan t&acirc;m tới một trong những từ la-tinh kh&oacute; hiểu nhất, &ldquo;consectetur&rdquo;, tr&iacute;ch từ một đoạn của Lorem Ipsum, v&agrave; đ&atilde; nghi&ecirc;n cứu tất cả c&aacute;c ứng dụng của từ n&agrave;y trong văn học cổ điển, để từ đ&oacute; t&igrave;m ra nguồn gốc kh&ocirc;ng thể chối c&atilde;i của Lorem Ipsum. Thật ra, n&oacute; được t&igrave;m thấy trong c&aacute;c đoạn 1.10.32 v&agrave; 1.10.33 của &ldquo;De Finibus Bonorum et Malorum&rdquo; (Đỉnh tối thượng của C&aacute;i Tốt v&agrave; C&aacute;i Xấu) viết bởi Cicero v&agrave;o năm 45 trước C&ocirc;ng Nguy&ecirc;n. Cuốn s&aacute;ch n&agrave;y l&agrave; một luận thuyết đạo l&iacute; rất phổ biến trong thời k&igrave; Phục Hưng.</p>', '2021-03-01', '2021-03-10', '2021-03-01', '2022-04-12', 'kg', 1, '2021-03-11 09:38:28', '2021-03-11 09:55:09'),
(13, 'Bí đỏ', 'bi-do', 'uploads/product/1615480811_1611838045_1607543574_bi_do.jpg', 10, 5000, NULL, 0, 0, 1, 0, 1, 1, '<p>&quot;Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn&quot;</p>', '<h2>Lorem Ipsum l&agrave; g&igrave;?</h2>\n\n<p>Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.</p>\n\n<p>&nbsp;</p>\n\n<h2>Tại sao lại sử dụng n&oacute;?</h2>\n\n<p>Ch&uacute;ng ta vẫn biết rằng, l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa dễ g&acirc;y rối tr&iacute; v&agrave; cản trở việc tập trung v&agrave;o yếu tố tr&igrave;nh b&agrave;y văn bản. Lorem Ipsum c&oacute; ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu &ldquo;Nội dung, nội dung, nội dung&rdquo; l&agrave; n&oacute; khiến văn bản giống thật hơn, b&igrave;nh thường hơn. Nhiều phần mềm thiết kế giao diện web v&agrave; d&agrave;n trang ng&agrave;y nay đ&atilde; sử dụng Lorem Ipsum l&agrave;m đoạn văn bản giả, v&agrave; nếu bạn thử t&igrave;m c&aacute;c đoạn &ldquo;Lorem ipsum&rdquo; tr&ecirc;n mạng th&igrave; sẽ kh&aacute;m ph&aacute; ra nhiều trang web hiện vẫn đang trong qu&aacute; tr&igrave;nh x&acirc;y dựng. C&oacute; nhiều phi&ecirc;n bản kh&aacute;c nhau đ&atilde; xuất hiện, đ&ocirc;i khi do v&ocirc; t&igrave;nh, nhiều khi do cố &yacute; (xen th&ecirc;m v&agrave;o những c&acirc;u h&agrave;i hước hay th&ocirc;ng tục).</p>\n\n<p>&nbsp;</p>\n\n<h2>N&oacute; đến từ đ&acirc;u?</h2>\n\n<p>Tr&aacute;i với quan điểm chung của số đ&ocirc;ng, Lorem Ipsum kh&ocirc;ng phải chỉ l&agrave; một đoạn văn bản ngẫu nhi&ecirc;n. Người ta t&igrave;m thấy nguồn gốc của n&oacute; từ những t&aacute;c phẩm văn học la-tinh cổ điển xuất hiện từ năm 45 trước C&ocirc;ng Nguy&ecirc;n, nghĩa l&agrave; n&oacute; đ&atilde; c&oacute; khoảng hơn 2000 tuổi. Một gi&aacute;o sư của trường Hampden-Sydney College (bang Virginia &ndash; Mỹ) quan t&acirc;m tới một trong những từ la-tinh kh&oacute; hiểu nhất, &ldquo;consectetur&rdquo;, tr&iacute;ch từ một đoạn của Lorem Ipsum, v&agrave; đ&atilde; nghi&ecirc;n cứu tất cả c&aacute;c ứng dụng của từ n&agrave;y trong văn học cổ điển, để từ đ&oacute; t&igrave;m ra nguồn gốc kh&ocirc;ng thể chối c&atilde;i của Lorem Ipsum. Thật ra, n&oacute; được t&igrave;m thấy trong c&aacute;c đoạn 1.10.32 v&agrave; 1.10.33 của &ldquo;De Finibus Bonorum et Malorum&rdquo; (Đỉnh tối thượng của C&aacute;i Tốt v&agrave; C&aacute;i Xấu) viết bởi Cicero v&agrave;o năm 45 trước C&ocirc;ng Nguy&ecirc;n. Cuốn s&aacute;ch n&agrave;y l&agrave; một luận thuyết đạo l&iacute; rất phổ biến trong thời k&igrave; Phục Hưng.</p>', '2021-03-02', '2021-03-04', '2021-02-01', '2022-04-30', 'kg', 1, '2021-03-11 09:40:11', '2021-03-11 09:40:11');
INSERT INTO `products` (`id`, `name`, `slug`, `image`, `number`, `price`, `sku`, `sale`, `position`, `is_active`, `is_hot`, `category_id`, `vendor_id`, `summary`, `description`, `NSX`, `HSD`, `season_start`, `season_end`, `unit`, `user_id`, `created_at`, `updated_at`) VALUES
(14, 'Súp lơ xanh', 'sup-lo-xanh', 'uploads/product/1615480866_1611838219_1607589241_bong cai xanh.jpg', 10, 3000, NULL, 0, 0, 1, 0, 1, 1, '<p>&quot;Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn&quot;</p>', '<h2>Lorem Ipsum l&agrave; g&igrave;?</h2>\n\n<p>Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.</p>\n\n<p>&nbsp;</p>\n\n<h2>Tại sao lại sử dụng n&oacute;?</h2>\n\n<p>Ch&uacute;ng ta vẫn biết rằng, l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa dễ g&acirc;y rối tr&iacute; v&agrave; cản trở việc tập trung v&agrave;o yếu tố tr&igrave;nh b&agrave;y văn bản. Lorem Ipsum c&oacute; ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu &ldquo;Nội dung, nội dung, nội dung&rdquo; l&agrave; n&oacute; khiến văn bản giống thật hơn, b&igrave;nh thường hơn. Nhiều phần mềm thiết kế giao diện web v&agrave; d&agrave;n trang ng&agrave;y nay đ&atilde; sử dụng Lorem Ipsum l&agrave;m đoạn văn bản giả, v&agrave; nếu bạn thử t&igrave;m c&aacute;c đoạn &ldquo;Lorem ipsum&rdquo; tr&ecirc;n mạng th&igrave; sẽ kh&aacute;m ph&aacute; ra nhiều trang web hiện vẫn đang trong qu&aacute; tr&igrave;nh x&acirc;y dựng. C&oacute; nhiều phi&ecirc;n bản kh&aacute;c nhau đ&atilde; xuất hiện, đ&ocirc;i khi do v&ocirc; t&igrave;nh, nhiều khi do cố &yacute; (xen th&ecirc;m v&agrave;o những c&acirc;u h&agrave;i hước hay th&ocirc;ng tục).</p>\n\n<p>&nbsp;</p>\n\n<h2>N&oacute; đến từ đ&acirc;u?</h2>\n\n<p>Tr&aacute;i với quan điểm chung của số đ&ocirc;ng, Lorem Ipsum kh&ocirc;ng phải chỉ l&agrave; một đoạn văn bản ngẫu nhi&ecirc;n. Người ta t&igrave;m thấy nguồn gốc của n&oacute; từ những t&aacute;c phẩm văn học la-tinh cổ điển xuất hiện từ năm 45 trước C&ocirc;ng Nguy&ecirc;n, nghĩa l&agrave; n&oacute; đ&atilde; c&oacute; khoảng hơn 2000 tuổi. Một gi&aacute;o sư của trường Hampden-Sydney College (bang Virginia &ndash; Mỹ) quan t&acirc;m tới một trong những từ la-tinh kh&oacute; hiểu nhất, &ldquo;consectetur&rdquo;, tr&iacute;ch từ một đoạn của Lorem Ipsum, v&agrave; đ&atilde; nghi&ecirc;n cứu tất cả c&aacute;c ứng dụng của từ n&agrave;y trong văn học cổ điển, để từ đ&oacute; t&igrave;m ra nguồn gốc kh&ocirc;ng thể chối c&atilde;i của Lorem Ipsum. Thật ra, n&oacute; được t&igrave;m thấy trong c&aacute;c đoạn 1.10.32 v&agrave; 1.10.33 của &ldquo;De Finibus Bonorum et Malorum&rdquo; (Đỉnh tối thượng của C&aacute;i Tốt v&agrave; C&aacute;i Xấu) viết bởi Cicero v&agrave;o năm 45 trước C&ocirc;ng Nguy&ecirc;n. Cuốn s&aacute;ch n&agrave;y l&agrave; một luận thuyết đạo l&iacute; rất phổ biến trong thời k&igrave; Phục Hưng.</p>', '2021-03-11', '2021-03-20', '2021-01-04', '2022-06-01', 'kg', 1, '2021-03-11 09:41:06', '2021-03-11 09:41:06'),
(15, 'Cà chua', 'ca-chua', 'uploads/product/1615480930_1611838339_1607589606_ca_chua.png', 10, 2000, NULL, 0, 0, 1, 1, 1, 1, '<p>&quot;Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn&quot;</p>', '<h2>Lorem Ipsum l&agrave; g&igrave;?</h2>\n\n<p>Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.</p>\n\n<p>&nbsp;</p>\n\n<h2>Tại sao lại sử dụng n&oacute;?</h2>\n\n<p>Ch&uacute;ng ta vẫn biết rằng, l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa dễ g&acirc;y rối tr&iacute; v&agrave; cản trở việc tập trung v&agrave;o yếu tố tr&igrave;nh b&agrave;y văn bản. Lorem Ipsum c&oacute; ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu &ldquo;Nội dung, nội dung, nội dung&rdquo; l&agrave; n&oacute; khiến văn bản giống thật hơn, b&igrave;nh thường hơn. Nhiều phần mềm thiết kế giao diện web v&agrave; d&agrave;n trang ng&agrave;y nay đ&atilde; sử dụng Lorem Ipsum l&agrave;m đoạn văn bản giả, v&agrave; nếu bạn thử t&igrave;m c&aacute;c đoạn &ldquo;Lorem ipsum&rdquo; tr&ecirc;n mạng th&igrave; sẽ kh&aacute;m ph&aacute; ra nhiều trang web hiện vẫn đang trong qu&aacute; tr&igrave;nh x&acirc;y dựng. C&oacute; nhiều phi&ecirc;n bản kh&aacute;c nhau đ&atilde; xuất hiện, đ&ocirc;i khi do v&ocirc; t&igrave;nh, nhiều khi do cố &yacute; (xen th&ecirc;m v&agrave;o những c&acirc;u h&agrave;i hước hay th&ocirc;ng tục).</p>\n\n<p>&nbsp;</p>\n\n<h2>N&oacute; đến từ đ&acirc;u?</h2>\n\n<p>Tr&aacute;i với quan điểm chung của số đ&ocirc;ng, Lorem Ipsum kh&ocirc;ng phải chỉ l&agrave; một đoạn văn bản ngẫu nhi&ecirc;n. Người ta t&igrave;m thấy nguồn gốc của n&oacute; từ những t&aacute;c phẩm văn học la-tinh cổ điển xuất hiện từ năm 45 trước C&ocirc;ng Nguy&ecirc;n, nghĩa l&agrave; n&oacute; đ&atilde; c&oacute; khoảng hơn 2000 tuổi. Một gi&aacute;o sư của trường Hampden-Sydney College (bang Virginia &ndash; Mỹ) quan t&acirc;m tới một trong những từ la-tinh kh&oacute; hiểu nhất, &ldquo;consectetur&rdquo;, tr&iacute;ch từ một đoạn của Lorem Ipsum, v&agrave; đ&atilde; nghi&ecirc;n cứu tất cả c&aacute;c ứng dụng của từ n&agrave;y trong văn học cổ điển, để từ đ&oacute; t&igrave;m ra nguồn gốc kh&ocirc;ng thể chối c&atilde;i của Lorem Ipsum. Thật ra, n&oacute; được t&igrave;m thấy trong c&aacute;c đoạn 1.10.32 v&agrave; 1.10.33 của &ldquo;De Finibus Bonorum et Malorum&rdquo; (Đỉnh tối thượng của C&aacute;i Tốt v&agrave; C&aacute;i Xấu) viết bởi Cicero v&agrave;o năm 45 trước C&ocirc;ng Nguy&ecirc;n. Cuốn s&aacute;ch n&agrave;y l&agrave; một luận thuyết đạo l&iacute; rất phổ biến trong thời k&igrave; Phục Hưng.</p>', '2021-03-12', '2021-03-22', '2021-01-04', '2022-06-29', 'kg', 1, '2021-03-11 09:42:10', '2021-03-11 09:55:00'),
(16, 'Cà rốt', 'ca-rot', 'uploads/product/1615481132_1611838409_1607590012_ca rot.png', 10, 4000, NULL, 0, 0, 1, 0, 1, 1, '<p>&quot;Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn&quot;</p>', '<h2>Lorem Ipsum l&agrave; g&igrave;?</h2>\n\n<p>Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.</p>\n\n<p>&nbsp;</p>\n\n<h2>Tại sao lại sử dụng n&oacute;?</h2>\n\n<p>Ch&uacute;ng ta vẫn biết rằng, l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa dễ g&acirc;y rối tr&iacute; v&agrave; cản trở việc tập trung v&agrave;o yếu tố tr&igrave;nh b&agrave;y văn bản. Lorem Ipsum c&oacute; ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu &ldquo;Nội dung, nội dung, nội dung&rdquo; l&agrave; n&oacute; khiến văn bản giống thật hơn, b&igrave;nh thường hơn. Nhiều phần mềm thiết kế giao diện web v&agrave; d&agrave;n trang ng&agrave;y nay đ&atilde; sử dụng Lorem Ipsum l&agrave;m đoạn văn bản giả, v&agrave; nếu bạn thử t&igrave;m c&aacute;c đoạn &ldquo;Lorem ipsum&rdquo; tr&ecirc;n mạng th&igrave; sẽ kh&aacute;m ph&aacute; ra nhiều trang web hiện vẫn đang trong qu&aacute; tr&igrave;nh x&acirc;y dựng. C&oacute; nhiều phi&ecirc;n bản kh&aacute;c nhau đ&atilde; xuất hiện, đ&ocirc;i khi do v&ocirc; t&igrave;nh, nhiều khi do cố &yacute; (xen th&ecirc;m v&agrave;o những c&acirc;u h&agrave;i hước hay th&ocirc;ng tục).</p>\n\n<p>&nbsp;</p>\n\n<h2>N&oacute; đến từ đ&acirc;u?</h2>\n\n<p>Tr&aacute;i với quan điểm chung của số đ&ocirc;ng, Lorem Ipsum kh&ocirc;ng phải chỉ l&agrave; một đoạn văn bản ngẫu nhi&ecirc;n. Người ta t&igrave;m thấy nguồn gốc của n&oacute; từ những t&aacute;c phẩm văn học la-tinh cổ điển xuất hiện từ năm 45 trước C&ocirc;ng Nguy&ecirc;n, nghĩa l&agrave; n&oacute; đ&atilde; c&oacute; khoảng hơn 2000 tuổi. Một gi&aacute;o sư của trường Hampden-Sydney College (bang Virginia &ndash; Mỹ) quan t&acirc;m tới một trong những từ la-tinh kh&oacute; hiểu nhất, &ldquo;consectetur&rdquo;, tr&iacute;ch từ một đoạn của Lorem Ipsum, v&agrave; đ&atilde; nghi&ecirc;n cứu tất cả c&aacute;c ứng dụng của từ n&agrave;y trong văn học cổ điển, để từ đ&oacute; t&igrave;m ra nguồn gốc kh&ocirc;ng thể chối c&atilde;i của Lorem Ipsum. Thật ra, n&oacute; được t&igrave;m thấy trong c&aacute;c đoạn 1.10.32 v&agrave; 1.10.33 của &ldquo;De Finibus Bonorum et Malorum&rdquo; (Đỉnh tối thượng của C&aacute;i Tốt v&agrave; C&aacute;i Xấu) viết bởi Cicero v&agrave;o năm 45 trước C&ocirc;ng Nguy&ecirc;n. Cuốn s&aacute;ch n&agrave;y l&agrave; một luận thuyết đạo l&iacute; rất phổ biến trong thời k&igrave; Phục Hưng.</p>', '2021-03-01', '2021-03-06', '2021-01-04', '2022-01-20', 'kg', 1, '2021-03-11 09:45:32', '2021-03-11 09:45:32'),
(17, 'Ớt chuông đỏ', 'ot-chuong-do', 'uploads/product/1615481412_1611838479_1607591300_ot_chuong_do.jpg', 10, 5000, NULL, 0, 0, 1, 0, 1, 1, '<p>&quot;Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn&quot;</p>', '<h2>Lorem Ipsum l&agrave; g&igrave;?</h2>\n\n<p>Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.</p>\n\n<p>&nbsp;</p>\n\n<h2>Tại sao lại sử dụng n&oacute;?</h2>\n\n<p>Ch&uacute;ng ta vẫn biết rằng, l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa dễ g&acirc;y rối tr&iacute; v&agrave; cản trở việc tập trung v&agrave;o yếu tố tr&igrave;nh b&agrave;y văn bản. Lorem Ipsum c&oacute; ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu &ldquo;Nội dung, nội dung, nội dung&rdquo; l&agrave; n&oacute; khiến văn bản giống thật hơn, b&igrave;nh thường hơn. Nhiều phần mềm thiết kế giao diện web v&agrave; d&agrave;n trang ng&agrave;y nay đ&atilde; sử dụng Lorem Ipsum l&agrave;m đoạn văn bản giả, v&agrave; nếu bạn thử t&igrave;m c&aacute;c đoạn &ldquo;Lorem ipsum&rdquo; tr&ecirc;n mạng th&igrave; sẽ kh&aacute;m ph&aacute; ra nhiều trang web hiện vẫn đang trong qu&aacute; tr&igrave;nh x&acirc;y dựng. C&oacute; nhiều phi&ecirc;n bản kh&aacute;c nhau đ&atilde; xuất hiện, đ&ocirc;i khi do v&ocirc; t&igrave;nh, nhiều khi do cố &yacute; (xen th&ecirc;m v&agrave;o những c&acirc;u h&agrave;i hước hay th&ocirc;ng tục).</p>\n\n<p>&nbsp;</p>\n\n<h2>N&oacute; đến từ đ&acirc;u?</h2>\n\n<p>Tr&aacute;i với quan điểm chung của số đ&ocirc;ng, Lorem Ipsum kh&ocirc;ng phải chỉ l&agrave; một đoạn văn bản ngẫu nhi&ecirc;n. Người ta t&igrave;m thấy nguồn gốc của n&oacute; từ những t&aacute;c phẩm văn học la-tinh cổ điển xuất hiện từ năm 45 trước C&ocirc;ng Nguy&ecirc;n, nghĩa l&agrave; n&oacute; đ&atilde; c&oacute; khoảng hơn 2000 tuổi. Một gi&aacute;o sư của trường Hampden-Sydney College (bang Virginia &ndash; Mỹ) quan t&acirc;m tới một trong những từ la-tinh kh&oacute; hiểu nhất, &ldquo;consectetur&rdquo;, tr&iacute;ch từ một đoạn của Lorem Ipsum, v&agrave; đ&atilde; nghi&ecirc;n cứu tất cả c&aacute;c ứng dụng của từ n&agrave;y trong văn học cổ điển, để từ đ&oacute; t&igrave;m ra nguồn gốc kh&ocirc;ng thể chối c&atilde;i của Lorem Ipsum. Thật ra, n&oacute; được t&igrave;m thấy trong c&aacute;c đoạn 1.10.32 v&agrave; 1.10.33 của &ldquo;De Finibus Bonorum et Malorum&rdquo; (Đỉnh tối thượng của C&aacute;i Tốt v&agrave; C&aacute;i Xấu) viết bởi Cicero v&agrave;o năm 45 trước C&ocirc;ng Nguy&ecirc;n. Cuốn s&aacute;ch n&agrave;y l&agrave; một luận thuyết đạo l&iacute; rất phổ biến trong thời k&igrave; Phục Hưng.</p>', '2021-03-01', '2021-03-04', '2021-03-01', '2021-03-31', 'kg', 1, '2021-03-11 09:50:12', '2021-03-11 09:50:12'),
(18, 'Cà chua bi', 'ca-chua-bi', 'uploads/product/1615481519_1611838540_1607589748_ca chua bi.jpg', 10, 5000, NULL, 10, 0, 1, 0, 1, 1, '<p>&quot;Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn&quot;</p>', '<h2>Lorem Ipsum l&agrave; g&igrave;?</h2>\n\n<p>Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.</p>\n\n<p>&nbsp;</p>\n\n<h2>Tại sao lại sử dụng n&oacute;?</h2>\n\n<p>Ch&uacute;ng ta vẫn biết rằng, l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa dễ g&acirc;y rối tr&iacute; v&agrave; cản trở việc tập trung v&agrave;o yếu tố tr&igrave;nh b&agrave;y văn bản. Lorem Ipsum c&oacute; ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu &ldquo;Nội dung, nội dung, nội dung&rdquo; l&agrave; n&oacute; khiến văn bản giống thật hơn, b&igrave;nh thường hơn. Nhiều phần mềm thiết kế giao diện web v&agrave; d&agrave;n trang ng&agrave;y nay đ&atilde; sử dụng Lorem Ipsum l&agrave;m đoạn văn bản giả, v&agrave; nếu bạn thử t&igrave;m c&aacute;c đoạn &ldquo;Lorem ipsum&rdquo; tr&ecirc;n mạng th&igrave; sẽ kh&aacute;m ph&aacute; ra nhiều trang web hiện vẫn đang trong qu&aacute; tr&igrave;nh x&acirc;y dựng. C&oacute; nhiều phi&ecirc;n bản kh&aacute;c nhau đ&atilde; xuất hiện, đ&ocirc;i khi do v&ocirc; t&igrave;nh, nhiều khi do cố &yacute; (xen th&ecirc;m v&agrave;o những c&acirc;u h&agrave;i hước hay th&ocirc;ng tục).</p>\n\n<p>&nbsp;</p>\n\n<h2>N&oacute; đến từ đ&acirc;u?</h2>\n\n<p>Tr&aacute;i với quan điểm chung của số đ&ocirc;ng, Lorem Ipsum kh&ocirc;ng phải chỉ l&agrave; một đoạn văn bản ngẫu nhi&ecirc;n. Người ta t&igrave;m thấy nguồn gốc của n&oacute; từ những t&aacute;c phẩm văn học la-tinh cổ điển xuất hiện từ năm 45 trước C&ocirc;ng Nguy&ecirc;n, nghĩa l&agrave; n&oacute; đ&atilde; c&oacute; khoảng hơn 2000 tuổi. Một gi&aacute;o sư của trường Hampden-Sydney College (bang Virginia &ndash; Mỹ) quan t&acirc;m tới một trong những từ la-tinh kh&oacute; hiểu nhất, &ldquo;consectetur&rdquo;, tr&iacute;ch từ một đoạn của Lorem Ipsum, v&agrave; đ&atilde; nghi&ecirc;n cứu tất cả c&aacute;c ứng dụng của từ n&agrave;y trong văn học cổ điển, để từ đ&oacute; t&igrave;m ra nguồn gốc kh&ocirc;ng thể chối c&atilde;i của Lorem Ipsum. Thật ra, n&oacute; được t&igrave;m thấy trong c&aacute;c đoạn 1.10.32 v&agrave; 1.10.33 của &ldquo;De Finibus Bonorum et Malorum&rdquo; (Đỉnh tối thượng của C&aacute;i Tốt v&agrave; C&aacute;i Xấu) viết bởi Cicero v&agrave;o năm 45 trước C&ocirc;ng Nguy&ecirc;n. Cuốn s&aacute;ch n&agrave;y l&agrave; một luận thuyết đạo l&iacute; rất phổ biến trong thời k&igrave; Phục Hưng.</p>', '2021-03-01', '2021-03-05', '2021-03-14', '2021-03-24', 'kg', 1, '2021-03-11 09:51:59', '2021-03-11 09:51:59'),
(19, 'Rau xà lách', 'rau-xa-lach', 'uploads/product/1615481570_1611838723_1607591485_Xa_lach_roman.jpg', 10, 8000, NULL, 0, 0, 1, 0, 1, 1, '<p>&quot;Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn&quot;</p>', '<h2>Lorem Ipsum l&agrave; g&igrave;?</h2>\n\n<p>Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.</p>\n\n<p>&nbsp;</p>\n\n<h2>Tại sao lại sử dụng n&oacute;?</h2>\n\n<p>Ch&uacute;ng ta vẫn biết rằng, l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa dễ g&acirc;y rối tr&iacute; v&agrave; cản trở việc tập trung v&agrave;o yếu tố tr&igrave;nh b&agrave;y văn bản. Lorem Ipsum c&oacute; ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu &ldquo;Nội dung, nội dung, nội dung&rdquo; l&agrave; n&oacute; khiến văn bản giống thật hơn, b&igrave;nh thường hơn. Nhiều phần mềm thiết kế giao diện web v&agrave; d&agrave;n trang ng&agrave;y nay đ&atilde; sử dụng Lorem Ipsum l&agrave;m đoạn văn bản giả, v&agrave; nếu bạn thử t&igrave;m c&aacute;c đoạn &ldquo;Lorem ipsum&rdquo; tr&ecirc;n mạng th&igrave; sẽ kh&aacute;m ph&aacute; ra nhiều trang web hiện vẫn đang trong qu&aacute; tr&igrave;nh x&acirc;y dựng. C&oacute; nhiều phi&ecirc;n bản kh&aacute;c nhau đ&atilde; xuất hiện, đ&ocirc;i khi do v&ocirc; t&igrave;nh, nhiều khi do cố &yacute; (xen th&ecirc;m v&agrave;o những c&acirc;u h&agrave;i hước hay th&ocirc;ng tục).</p>\n\n<p>&nbsp;</p>\n\n<h2>N&oacute; đến từ đ&acirc;u?</h2>\n\n<p>Tr&aacute;i với quan điểm chung của số đ&ocirc;ng, Lorem Ipsum kh&ocirc;ng phải chỉ l&agrave; một đoạn văn bản ngẫu nhi&ecirc;n. Người ta t&igrave;m thấy nguồn gốc của n&oacute; từ những t&aacute;c phẩm văn học la-tinh cổ điển xuất hiện từ năm 45 trước C&ocirc;ng Nguy&ecirc;n, nghĩa l&agrave; n&oacute; đ&atilde; c&oacute; khoảng hơn 2000 tuổi. Một gi&aacute;o sư của trường Hampden-Sydney College (bang Virginia &ndash; Mỹ) quan t&acirc;m tới một trong những từ la-tinh kh&oacute; hiểu nhất, &ldquo;consectetur&rdquo;, tr&iacute;ch từ một đoạn của Lorem Ipsum, v&agrave; đ&atilde; nghi&ecirc;n cứu tất cả c&aacute;c ứng dụng của từ n&agrave;y trong văn học cổ điển, để từ đ&oacute; t&igrave;m ra nguồn gốc kh&ocirc;ng thể chối c&atilde;i của Lorem Ipsum. Thật ra, n&oacute; được t&igrave;m thấy trong c&aacute;c đoạn 1.10.32 v&agrave; 1.10.33 của &ldquo;De Finibus Bonorum et Malorum&rdquo; (Đỉnh tối thượng của C&aacute;i Tốt v&agrave; C&aacute;i Xấu) viết bởi Cicero v&agrave;o năm 45 trước C&ocirc;ng Nguy&ecirc;n. Cuốn s&aacute;ch n&agrave;y l&agrave; một luận thuyết đạo l&iacute; rất phổ biến trong thời k&igrave; Phục Hưng.</p>', '2021-03-01', '2021-03-02', '2021-03-01', '2021-03-31', 'kg', 1, '2021-03-11 09:52:50', '2021-03-11 09:52:50'),
(20, 'Súp lơ trắng', 'sup-lo-trang', 'uploads/product/1615482307_5bd0a2a443506a9334f2c62b13702825.jfif', 10, 5000, NULL, 0, 0, 1, 0, 1, 1, '<p>&quot;Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn&quot;</p>', '<h2>Lorem Ipsum l&agrave; g&igrave;?</h2>\n\n<p>Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.</p>\n\n<p>&nbsp;</p>\n\n<h2>Tại sao lại sử dụng n&oacute;?</h2>\n\n<p>Ch&uacute;ng ta vẫn biết rằng, l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa dễ g&acirc;y rối tr&iacute; v&agrave; cản trở việc tập trung v&agrave;o yếu tố tr&igrave;nh b&agrave;y văn bản. Lorem Ipsum c&oacute; ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu &ldquo;Nội dung, nội dung, nội dung&rdquo; l&agrave; n&oacute; khiến văn bản giống thật hơn, b&igrave;nh thường hơn. Nhiều phần mềm thiết kế giao diện web v&agrave; d&agrave;n trang ng&agrave;y nay đ&atilde; sử dụng Lorem Ipsum l&agrave;m đoạn văn bản giả, v&agrave; nếu bạn thử t&igrave;m c&aacute;c đoạn &ldquo;Lorem ipsum&rdquo; tr&ecirc;n mạng th&igrave; sẽ kh&aacute;m ph&aacute; ra nhiều trang web hiện vẫn đang trong qu&aacute; tr&igrave;nh x&acirc;y dựng. C&oacute; nhiều phi&ecirc;n bản kh&aacute;c nhau đ&atilde; xuất hiện, đ&ocirc;i khi do v&ocirc; t&igrave;nh, nhiều khi do cố &yacute; (xen th&ecirc;m v&agrave;o những c&acirc;u h&agrave;i hước hay th&ocirc;ng tục).</p>\n\n<p>&nbsp;</p>\n\n<h2>N&oacute; đến từ đ&acirc;u?</h2>\n\n<p>Tr&aacute;i với quan điểm chung của số đ&ocirc;ng, Lorem Ipsum kh&ocirc;ng phải chỉ l&agrave; một đoạn văn bản ngẫu nhi&ecirc;n. Người ta t&igrave;m thấy nguồn gốc của n&oacute; từ những t&aacute;c phẩm văn học la-tinh cổ điển xuất hiện từ năm 45 trước C&ocirc;ng Nguy&ecirc;n, nghĩa l&agrave; n&oacute; đ&atilde; c&oacute; khoảng hơn 2000 tuổi. Một gi&aacute;o sư của trường Hampden-Sydney College (bang Virginia &ndash; Mỹ) quan t&acirc;m tới một trong những từ la-tinh kh&oacute; hiểu nhất, &ldquo;consectetur&rdquo;, tr&iacute;ch từ một đoạn của Lorem Ipsum, v&agrave; đ&atilde; nghi&ecirc;n cứu tất cả c&aacute;c ứng dụng của từ n&agrave;y trong văn học cổ điển, để từ đ&oacute; t&igrave;m ra nguồn gốc kh&ocirc;ng thể chối c&atilde;i của Lorem Ipsum. Thật ra, n&oacute; được t&igrave;m thấy trong c&aacute;c đoạn 1.10.32 v&agrave; 1.10.33 của &ldquo;De Finibus Bonorum et Malorum&rdquo; (Đỉnh tối thượng của C&aacute;i Tốt v&agrave; C&aacute;i Xấu) viết bởi Cicero v&agrave;o năm 45 trước C&ocirc;ng Nguy&ecirc;n. Cuốn s&aacute;ch n&agrave;y l&agrave; một luận thuyết đạo l&iacute; rất phổ biến trong thời k&igrave; Phục Hưng.</p>', '2021-03-03', '2021-03-06', '2021-03-01', '2021-03-31', 'kg', 1, '2021-03-11 10:05:07', '2021-03-11 10:05:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` smallint(6) NOT NULL DEFAULT 1,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `is_active`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 1, 1, '2021-03-11 03:52:12', '2021-03-11 03:52:12'),
(2, 'Manager', 1, 1, '2021-03-11 03:54:06', '2021-03-11 03:54:06'),
(3, 'User', 1, 1, '2021-03-11 03:54:13', '2021-03-11 03:54:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_permission`
--

CREATE TABLE `role_permission` (
  `id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `permissionTable_id` bigint(20) NOT NULL,
  `is_active` smallint(6) NOT NULL DEFAULT 1,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_permission`
--

INSERT INTO `role_permission` (`id`, `role_id`, `permissionTable_id`, `is_active`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 3, 6, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(2, 3, 7, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(3, 3, 8, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(4, 3, 9, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(5, 3, 11, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(6, 3, 12, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(7, 3, 13, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(8, 3, 14, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(9, 3, 16, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(10, 3, 17, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(11, 3, 18, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(12, 3, 19, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(13, 3, 21, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(14, 3, 22, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(15, 3, 23, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(16, 3, 24, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(17, 3, 26, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(18, 3, 27, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(19, 3, 28, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(20, 3, 29, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(21, 3, 31, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(22, 3, 32, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(23, 3, 33, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(24, 3, 34, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(25, 3, 36, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(26, 3, 37, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(27, 3, 38, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(28, 3, 39, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(29, 3, 41, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(30, 3, 42, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(31, 3, 43, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(32, 3, 44, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(33, 3, 46, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(34, 3, 47, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(35, 3, 48, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(36, 3, 49, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(37, 3, 56, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(38, 3, 57, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(39, 3, 58, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(40, 3, 59, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(41, 3, 66, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(42, 3, 67, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(43, 3, 68, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(44, 3, 69, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(45, 3, 76, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(46, 3, 77, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(47, 3, 78, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(48, 3, 79, 1, 1, '2021-03-11 05:28:35', '2021-03-11 05:28:35'),
(49, 2, 1, 1, 1, '2021-03-11 05:29:48', '2021-03-11 05:29:48'),
(50, 2, 2, 1, 1, '2021-03-11 05:29:48', '2021-03-11 05:29:48'),
(51, 2, 3, 1, 1, '2021-03-11 05:29:48', '2021-03-11 05:29:48'),
(52, 2, 51, 1, 1, '2021-03-11 05:29:48', '2021-03-11 05:29:48'),
(53, 2, 52, 1, 1, '2021-03-11 05:29:48', '2021-03-11 05:29:48'),
(54, 2, 53, 1, 1, '2021-03-11 05:29:48', '2021-03-11 05:29:48'),
(55, 2, 61, 1, 1, '2021-03-11 05:29:48', '2021-03-11 05:29:48'),
(56, 2, 62, 1, 1, '2021-03-11 05:29:48', '2021-03-11 05:29:48'),
(57, 2, 63, 1, 1, '2021-03-11 05:29:48', '2021-03-11 05:29:48'),
(58, 2, 71, 1, 1, '2021-03-11 05:29:48', '2021-03-11 05:29:48'),
(59, 2, 72, 1, 1, '2021-03-11 05:29:48', '2021-03-11 05:29:48'),
(60, 2, 73, 1, 1, '2021-03-11 05:29:48', '2021-03-11 05:29:48'),
(61, 1, 4, 1, 1, '2021-03-11 05:30:33', '2021-03-11 05:30:33'),
(62, 1, 5, 1, 1, '2021-03-11 05:30:33', '2021-03-11 05:30:33'),
(63, 1, 10, 1, 1, '2021-03-11 05:30:33', '2021-03-11 05:30:33'),
(64, 1, 15, 1, 1, '2021-03-11 05:30:33', '2021-03-11 05:30:33'),
(65, 1, 20, 1, 1, '2021-03-11 05:30:33', '2021-03-11 05:30:33'),
(66, 1, 25, 1, 1, '2021-03-11 05:30:33', '2021-03-11 05:30:33'),
(67, 1, 30, 1, 1, '2021-03-11 05:30:33', '2021-03-11 05:30:33'),
(68, 1, 35, 1, 1, '2021-03-11 05:30:33', '2021-03-11 05:30:33'),
(69, 1, 40, 1, 1, '2021-03-11 05:30:33', '2021-03-11 05:30:33'),
(70, 1, 45, 1, 1, '2021-03-11 05:30:33', '2021-03-11 05:30:33'),
(71, 1, 50, 1, 1, '2021-03-11 05:30:33', '2021-03-11 05:30:33'),
(72, 1, 54, 1, 1, '2021-03-11 05:30:33', '2021-03-11 05:30:33'),
(73, 1, 55, 1, 1, '2021-03-11 05:30:33', '2021-03-11 05:30:33'),
(74, 1, 60, 1, 1, '2021-03-11 05:30:33', '2021-03-11 05:30:33'),
(75, 1, 64, 1, 1, '2021-03-11 05:30:33', '2021-03-11 05:30:33'),
(76, 1, 65, 1, 1, '2021-03-11 05:30:33', '2021-03-11 05:30:33'),
(77, 1, 70, 1, 1, '2021-03-11 05:30:33', '2021-03-11 05:30:33'),
(78, 1, 74, 1, 1, '2021-03-11 05:30:33', '2021-03-11 05:30:33'),
(79, 1, 75, 1, 1, '2021-03-11 05:30:33', '2021-03-11 05:30:33'),
(80, 1, 80, 1, 1, '2021-03-11 05:30:33', '2021-03-11 05:30:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hotline` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introduce` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `company`, `image`, `phone`, `hotline`, `address`, `address2`, `facebook`, `email`, `introduce`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Công ty TNHH Fresh Food', 'uploads/setting/1615477833_1611307531_1607485417_banner_5.jpg', '0749295023', '1800100888', 'Số 1 Hùng Vương', 'Số 2 Giải Phóng', 'https://freshfood', 'freshfood@gmail.com', '<p>Trang giới thiệu giúp khách hàng hiểu rõ hơn về cửa hàng của bạn. Hãy cung cấp thông tin cụ\n                        thể về việc kinh doanh, về cửa hàng, thông tin liên hệ. Điều này sẽ giúp khách hàng cảm thấy\n                        tin tưởng khi mua hàng trên website của bạn.</p>\n                    <p>Một vài gợi ý cho nội dung trang Giới thiệu:</p>\n                    <p>Bạn là ai\n                        Giá trị kinh doanh của bạn là gì\n                        Địa chỉ cửa hàng\n                        Bạn đã kinh doanh trong ngành hàng này bao lâu rồi\n                        Bạn kinh doanh ngành hàng online được bao lâu\n                        Đội ngũ của bạn gồm những ai\n                        Thông tin liên hệ\n                        Liên kết đến các trang mạng xã hội (Twitter, Facebook)\n                        Bạn có thể chỉnh sửa hoặc xoá bài viết này tại đây hoặc thêm những bài viết mới trong phần\n                        quản lý Trang nội dung.</p>', 1, '2021-03-11 15:45:15', '2021-03-11 10:00:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tables`
--

CREATE TABLE `tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` smallint(6) NOT NULL DEFAULT 1,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tables`
--

INSERT INTO `tables` (`id`, `name`, `is_active`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'users', 1, 1, '2021-03-11 03:38:46', '2021-03-11 03:38:46'),
(2, 'articles', 1, 1, '2021-03-11 03:39:04', '2021-03-11 03:39:04'),
(3, 'banners', 1, 1, '2021-03-11 03:39:11', '2021-03-11 03:39:11'),
(4, 'categories', 1, 1, '2021-03-11 03:39:25', '2021-03-11 03:39:25'),
(5, 'contacts', 1, 1, '2021-03-11 03:39:37', '2021-03-11 03:39:37'),
(6, 'coupons', 1, 1, '2021-03-11 03:39:48', '2021-03-11 03:39:48'),
(7, 'images', 1, 1, '2021-03-11 03:39:58', '2021-03-11 03:39:58'),
(8, 'orders', 1, 1, '2021-03-11 03:40:12', '2021-03-11 03:40:12'),
(9, 'order_details', 1, 1, '2021-03-11 03:40:28', '2021-03-11 03:40:28'),
(10, 'order_status', 1, 1, '2021-03-11 03:40:35', '2021-03-11 03:40:35'),
(11, 'permissions', 1, 1, '2021-03-11 03:40:49', '2021-03-11 03:40:49'),
(12, 'products', 1, 1, '2021-03-11 03:40:59', '2021-03-11 03:40:59'),
(13, 'roles', 1, 1, '2021-03-11 03:41:08', '2021-03-11 03:41:08'),
(14, 'settings', 1, 1, '2021-03-11 03:41:41', '2021-03-11 03:41:41'),
(15, 'tables', 1, 1, '2021-03-11 03:41:52', '2021-03-11 03:41:52'),
(16, 'vendors', 1, 1, '2021-03-11 03:42:02', '2021-03-11 03:42:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` smallint(6) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `avatar`, `is_active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'huy', 'huycan1482@gmail.com', NULL, '$2y$10$6PouZxwWd66kQ3yKg2l0mOTt524bkTTcRyZ6jp2OrtXb49fdJN15C', 'uploads/user/1615459003_TA4.jpg', 1, NULL, '2021-03-11 03:36:24', '2021-03-11 03:36:43'),
(2, 'admin', 'admin@gmail.com', NULL, '$2y$10$PZX8E0eWcbTiaym16MjRr.sGLGLwCtY4qxCt2n/RLkGq/OZ1h2Gua', 'uploads/user/1615466794_TA6.jpg', 1, NULL, '2021-03-11 05:46:35', '2021-03-11 05:46:35'),
(3, 'manager', 'manager@gmail.com', NULL, '$2y$10$UlC2R/1h4COBB8vD5n6o5Ocibg7ge.rY4IsFWDqAMY997Q4nWfIeK', 'uploads/user/1615466850_TA7.jpg', 1, NULL, '2021-03-11 05:47:30', '2021-03-11 05:47:30'),
(4, 'user', 'user@gmail.com', NULL, '$2y$10$Hjg5Sf4TU1ouBiaayLSr2OdJMzrvcsnk7K0fi53RC.lcJS6FIramG', 'uploads/user/1615466882_TA3.jpg', 1, NULL, '2021-03-11 05:48:03', '2021-03-11 05:48:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_role`
--

CREATE TABLE `user_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `is_active` smallint(6) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_role`
--

INSERT INTO `user_role` (`id`, `user_id`, `role_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, NULL, NULL),
(2, 1, 2, 1, NULL, NULL),
(3, 1, 3, 1, NULL, NULL),
(4, 4, 3, 1, NULL, NULL),
(5, 3, 2, 1, NULL, NULL),
(6, 3, 3, 1, NULL, NULL),
(7, 2, 1, 1, NULL, NULL),
(8, 2, 2, 1, NULL, NULL),
(9, 2, 3, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `is_active` smallint(6) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vendors`
--

INSERT INTO `vendors` (`id`, `name`, `slug`, `email`, `phone`, `image`, `website`, `address`, `position`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'ncc1', 'ncc1', 'ncc1@gmail.com', '09456679321', 'uploads/vendor/1615478995_1610871449_thu tu.jpg', NULL, 'địa chỉ ncc1', 0, 1, '2021-03-11 09:09:55', '2021-03-11 09:09:55');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `permission_table`
--
ALTER TABLE `permission_table`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role_permission`
--
ALTER TABLE `role_permission`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `permission_table`
--
ALTER TABLE `permission_table`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `role_permission`
--
ALTER TABLE `role_permission`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tables`
--
ALTER TABLE `tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
