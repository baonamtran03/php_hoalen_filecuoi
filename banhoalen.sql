-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th12 17, 2024 lúc 04:57 PM
-- Phiên bản máy phục vụ: 8.2.0
-- Phiên bản PHP: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `banhoalen`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

DROP TABLE IF EXISTS `banner`;
CREATE TABLE IF NOT EXISTS `banner` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `title`, `detail`, `image`) VALUES
(1, 'Trao yêu thương  THEO CÁCH Của Riêng Bạn!', 'Đậm chất riêng của mỗi sản phẩm được thể hiện qua những đường cong cách điệu hay những họa tiết đan len tinh xảo đều toát lên được sự cuốn hút đến từ LEN và sự nhiệt huyết của chúng tôi trong từng sản phẩm!', 'http://localhost/shophoalen/admin/pages/settings/uploads/bannerhoa.jpg'),
(2, 'Đan hi bọng – móc yêu thương', 'Qua từng sản phẩm, từng thiết kế, Hoa Len Handmade gửi vào đó những câu chuyện về hoa len và nghề len, những thiết kế đẹp mắt. ', 'http://localhost/shophoalen/admin/pages/settings/uploads/hoabanner.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

DROP TABLE IF EXISTS `binhluan`;
CREATE TABLE IF NOT EXISTS `binhluan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_vietnamese_ci NOT NULL,
  `email` text NOT NULL,
  `noidung` text CHARACTER SET utf8mb3 COLLATE utf8mb3_vietnamese_ci NOT NULL,
  `thoigian` text CHARACTER SET utf8mb3 COLLATE utf8mb3_vietnamese_ci NOT NULL,
  `sanpham` text CHARACTER SET utf8mb3 COLLATE utf8mb3_vietnamese_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_vietnamese_ci NOT NULL,
  `image` text NOT NULL,
  `chitiet` text CHARACTER SET utf8mb3 COLLATE utf8mb3_vietnamese_ci NOT NULL,
  `price` text NOT NULL,
  `soluong` text NOT NULL,
  `tongtien` text NOT NULL,
  `email` text NOT NULL,
  `thoihan` text CHARACTER SET utf8mb3 COLLATE utf8mb3_vietnamese_ci NOT NULL,
  `lienket` text NOT NULL,
  `idsp` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=816 DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `name`, `image`, `chitiet`, `price`, `soluong`, `tongtien`, `email`, `thoihan`, `lienket`, `idsp`) VALUES
(787, 'ÁO KHOÁC & ÁO BLAZER', 'http://localhost/shopquanao/admin/pages/post/uploads/3411302712_2_6_1.jpg', '<p>&Aacute;O KHO&Aacute;C &amp; &Aacute;O BLAZER</p>\r\n', '55555', '110', '6111050', 'admin22@gmail.com', '0', 'quang-ne', '40'),
(788, 'ÁO KHOÁC & ÁO BLAZER', 'http://localhost/shopquanao/admin/pages/post/uploads/3411302712_2_6_1.jpg', '<p>&Aacute;O KHO&Aacute;C &amp; &Aacute;O BLAZER</p>\r\n', '55555', '1', '55555', 'tran@gml.com', '0', 'quang-ne', '40'),
(789, 'ÁO KHOÁC & ÁO BLAZER', 'http://localhost/shopquanao/admin/pages/post/uploads/3411302712_2_6_1.jpg', '<p>&Aacute;O KHO&Aacute;C &amp; &Aacute;O BLAZER</p>\r\n', '55555', '1', '55555', 'admiwwwn@gmail.com', '0', 'quang-ne', '40'),
(815, 'Bó Hoa Con Thỏ Bằng Len', 'http://localhost/shophoalen/admin/pages/post/uploads/hoalentho.jpg', '                                                                                                                Chất liệu: Len milk cotton\r\n\r\n                                                                                    ', '150000', '2', '300000', 'admin@gmail.com', '0', 'bo-hoa-con-tho-bang-len', '40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

DROP TABLE IF EXISTS `danhmuc`;
CREATE TABLE IF NOT EXISTS `danhmuc` (
  `id` int NOT NULL AUTO_INCREMENT,
  `danhmucchinh` text NOT NULL,
  `tendanhmuc` text CHARACTER SET utf8mb3 COLLATE utf8mb3_vietnamese_ci NOT NULL,
  `lienket` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `danhmucchinh`, `tendanhmuc`, `lienket`) VALUES
(9, 'san-pham', 'Dịp lễ ', 'dip-le'),
(10, 'san-pham', 'Hoa len ', 'hoa-len'),
(11, 'san-pham', 'Len trang trí', 'len-trang-tri'),
(12, 'san-pham', 'Quà tặng len', 'qua-tang-len');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

DROP TABLE IF EXISTS `donhang`;
CREATE TABLE IF NOT EXISTS `donhang` (
  `id` int NOT NULL AUTO_INCREMENT,
  `madonhang` text NOT NULL,
  `tennguoimua` text CHARACTER SET utf8mb3 COLLATE utf8mb3_vietnamese_ci NOT NULL,
  `email` text NOT NULL,
  `name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_vietnamese_ci NOT NULL,
  `image` text NOT NULL,
  `price` text NOT NULL,
  `trangthai` text CHARACTER SET utf8mb3 COLLATE utf8mb3_vietnamese_ci NOT NULL,
  `thoihan` text CHARACTER SET utf8mb3 COLLATE utf8mb3_vietnamese_ci NOT NULL,
  `soluong` text NOT NULL,
  `tongtien` text NOT NULL,
  `lienket` text NOT NULL,
  `idsp` text NOT NULL,
  `thoigian` text NOT NULL,
  `diachi` text CHARACTER SET utf8mb3 COLLATE utf8mb3_vietnamese_ci NOT NULL,
  `dienthoai` text CHARACTER SET utf8mb3 COLLATE utf8mb3_vietnamese_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=687 DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `madonhang`, `tennguoimua`, `email`, `name`, `image`, `price`, `trangthai`, `thoihan`, `soluong`, `tongtien`, `lienket`, `idsp`, `thoigian`, `diachi`, `dienthoai`) VALUES
(673, 'SHOPQUANAO_DOSK5', 'aa', 'admin@gmail.com', 'Bó Hoa Con Thỏ Bằng Len', 'http://localhost/shopquanao/admin/pages/post/uploads/hoalentho.jpg', '15000', 'Đã Đặt Hàng', '', '3', '45000', 'bo-hoa-con-tho-bang-len', '40', '08/12/24 11:32:50', 'dsad', '0337586860'),
(674, 'shophoalen_3TJIN', 'tran', 'admin@gmail.com', 'Bó Hoa Cưới Bằng Len ', 'http://localhost/shophoalen/admin/pages/post/uploads/bo-hoa-cuoi-bang-len-2-768x768.png', '600000', 'Đã Đặt Hàng', '', '1', '600000', 'https://shopee.vn/Hoa-H%E1%BB%93ng-M%C3%B3c-B%C3%B3-Hoa-H%E1%BB%93ng-D%E1%BB%87t-Kim-Len-B%C3%B3-Hoa-Handmade-D%E1%BB%87t-Qu%C3%A0-T%E1%BA%B7ng-Ng%C3%A0y-C%E1%BB%A7a-M%E1%BA%B9-B%C3%B3-Hoa-Ng%C3%A0y-Nh%C3%A0-Gi%C3%A1o-Qu%C3%A0-T%E1%BA%B7ng-i.413355979.28105489581?sp_atk=1c5d8601-1843-4d17-85ec-f194bc12025c&xptdk=1c5d8601-1843-4d17-85ec-f194bc12025c', '41', '08/12/24 11:45:07', 'tran', '0988888888'),
(675, 'shophoalen_GBJBU', 'namtran', 'user@gmail.com', 'Bó Hoa Con Thỏ Bằng Len', 'http://localhost/shophoalen/admin/pages/post/uploads/hoalentho.jpg', '150000', 'Đã Đặt Hàng', '', '1', '150000', 'bo-hoa-con-tho-bang-len', '40', '12/12/24 13:26:20', 'tran', '0987337474'),
(676, 'shophoalen_WVUS2', 'namtran', 'admin@gmail.com', 'Bó Hoa Con Thỏ Bằng Len', 'http://localhost/shophoalen/admin/pages/post/uploads/hoalentho.jpg', '150000', 'Đã Đặt Hàng', '', '1', '150000', 'bo-hoa-con-tho-bang-len', '40', '12/12/24 15:00:48', 'cao lo', '0123456789'),
(677, 'shophoalen_ZCGST', 'namtran', 'admin@gmail.com', 'Bó Hoa Con Thỏ Bằng Len', 'http://localhost/shophoalen/admin/pages/post/uploads/hoalentho.jpg', '150000', 'Đã Đặt Hàng', '', '1', '150000', 'bo-hoa-con-tho-bang-len', '40', '13/12/24 8:42:25', 'cao lo', '0987337474'),
(678, 'shophoalen_PXEK8', 'namtran', 'admin@gmail.com', 'Bó hoa hướng dương bằng len handmade giá tốt', 'http://localhost/shophoalen/admin/pages/post/uploads/bo-hoa-huong-duong-bang-len-dep.png', '300000', 'Đã Đặt Hàng', '', '1', '300000', 'https://hoalenhandmade.com/bo-hoa-huong-duong-bang-len/', '42', '13/12/24 8:58:42', 'tran', '0987337474'),
(679, 'shophoalen_JHX35', 'aa', 'admin@gmail.com', 'Bó Hoa Cưới Bằng Len ', 'http://localhost/shophoalen/admin/pages/post/uploads/bo-hoa-cuoi-bang-len-2-768x768.png', '600000', 'Đã Đặt Hàng', '', '1', '600000', 'https://shopee.vn/Hoa-H%E1%BB%93ng-M%C3%B3c-B%C3%B3-Hoa-H%E1%BB%93ng-D%E1%BB%87t-Kim-Len-B%C3%B3-Hoa-Handmade-D%E1%BB%87t-Qu%C3%A0-T%E1%BA%B7ng-Ng%C3%A0y-C%E1%BB%A7a-M%E1%BA%B9-B%C3%B3-Hoa-Ng%C3%A0y-Nh%C3%A0-Gi%C3%A1o-Qu%C3%A0-T%E1%BA%B7ng-i.413355979.28105489581?sp_atk=1c5d8601-1843-4d17-85ec-f194bc12025c&xptdk=1c5d8601-1843-4d17-85ec-f194bc12025c', '41', '13/12/24 9:02:39', 'cao lo', '0987337474'),
(680, 'shophoalen_X1630', 'Trân', 'admin@gmail.com', 'Bó Hoa Cưới Bằng Len ', 'http://localhost/shophoalen/admin/pages/post/uploads/bo-hoa-cuoi-bang-len-2-768x768.png', '600000', 'Đã Đặt Hàng', '', '1', '600000', 'https://shopee.vn/Hoa-H%E1%BB%93ng-M%C3%B3c-B%C3%B3-Hoa-H%E1%BB%93ng-D%E1%BB%87t-Kim-Len-B%C3%B3-Hoa-Handmade-D%E1%BB%87t-Qu%C3%A0-T%E1%BA%B7ng-Ng%C3%A0y-C%E1%BB%A7a-M%E1%BA%B9-B%C3%B3-Hoa-Ng%C3%A0y-Nh%C3%A0-Gi%C3%A1o-Qu%C3%A0-T%E1%BA%B7ng-i.413355979.28105489581?sp_atk=1c5d8601-1843-4d17-85ec-f194bc12025c&xptdk=1c5d8601-1843-4d17-85ec-f194bc12025c', '41', '13/12/24 9:10:12', '180 Cao Lỗ', '0337586860'),
(681, 'shophoalen_EJMZA', 'Trân', 'admin@gmail.com', 'Túi Len Đi Biển Hoa Daisy Handmade', 'http://localhost/shophoalen/admin/pages/post/uploads/tui_len.jpg', '50000', 'Đã Đặt Hàng', '', '1', '50000', 'tui-len-di-bien-hoa-daisy-handmade', '50', '13/12/24 9:10:13', '180 Cao Lỗ', '0337586860'),
(682, 'shophoalen_P8SE1', 'tran', 'admin@gmail.com', 'Móc Khóa Hình Thú Dễ Thương', 'http://localhost/shophoalen/admin/pages/post/uploads/convat.jpg', '100000', 'Đã Đặt Hàng', '', '2', '200000', 'moc-khoa-hinh-thu-de-thuong', '51', '15/12/24 10:11:39', 'cao lo', '0988888888'),
(683, 'shophoalen_BHFVD', 'tran', 'admin@gmail.com', 'Bó hoa tulip bằng len tone hồng trắng', 'http://localhost/shophoalen/admin/pages/post/uploads/Bo-hoa-tulip-5-canh.png', '368000', 'Đã Đặt Hàng', '', '1', '368000', 'bo-hoa-tulip-bang-len-tone-hong-trang', '49', '15/12/24 10:11:39', 'cao lo', '0988888888'),
(684, 'shophoalen_132X1', 'tran', 'admin@gmail.com', 'Bó Hoa Con Thỏ Bằng Len', 'http://localhost/shophoalen/admin/pages/post/uploads/hoalentho.jpg', '150000', 'Đã Đặt Hàng', '', '99', '14850000', 'bo-hoa-con-tho-bang-len', '40', '15/12/24 10:11:40', 'cao lo', '0988888888'),
(685, 'shophoalen_GWHYS', 'namtran', 'admin@gmail.com', 'Bó Hoa Cưới Bằng Len ', 'http://localhost/shophoalen/admin/pages/post/uploads/bo-hoa-cuoi-bang-len-2-768x768.png', '600000', 'Đã Đặt Hàng', '', '1', '599000', 'https://shopee.vn/Hoa-H%E1%BB%93ng-M%C3%B3c-B%C3%B3-Hoa-H%E1%BB%93ng-D%E1%BB%87t-Kim-Len-B%C3%B3-Hoa-Handmade-D%E1%BB%87t-Qu%C3%A0-T%E1%BA%B7ng-Ng%C3%A0y-C%E1%BB%A7a-M%E1%BA%B9-B%C3%B3-Hoa-Ng%C3%A0y-Nh%C3%A0-Gi%C3%A1o-Qu%C3%A0-T%E1%BA%B7ng-i.413355979.28105489581?sp_atk=1c5d8601-1843-4d17-85ec-f194bc12025c&xptdk=1c5d8601-1843-4d17-85ec-f194bc12025c', '41', '17/12/24 16:15:24', ' s', '0988888888'),
(686, 'shophoalen_O2OWR', 'namtran', 'admin@gmail.com', 'Bó Hoa Con Thỏ Bằng Len', 'http://localhost/shophoalen/admin/pages/post/uploads/hoalentho.jpg', '150000', 'Đã Đặt Hàng', '', '2', '299000', 'bo-hoa-con-tho-bang-len', '40', '17/12/24 16:15:24', ' s', '0988888888');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `faq`
--

DROP TABLE IF EXISTS `faq`;
CREATE TABLE IF NOT EXISTS `faq` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `faq`
--

INSERT INTO `faq` (`id`, `title`, `content`) VALUES
(1, 'Hoa len handmade là gì?', '\r\nHoa len handmade là những sản phẩm hoa được làm thủ công từ len, với sự tỉ mỉ và sáng tạo của người thợ. Mỗi sản phẩm là một tác phẩm nghệ thuật độc đáo.\r\nSản phẩm của bạn có bao nhiêu loại hoa?\r\nChúng tôi cung cấp đa dạng các loại hoa len handmade như hoa hồng, hoa cúc, hoa tulip, hoa sen, và nhiều loài hoa khác, phù hợp với nhiều nhu cầu và sở thích.'),
(2, 'Sản phẩm của bạn có bao nhiêu loại hoa?\r\n', 'Chúng tôi cung cấp đa dạng các loại hoa len handmade như hoa hồng, hoa cúc, hoa tulip, hoa sen, và nhiều loài hoa khác, phù hợp với nhiều nhu cầu và sở thích.'),
(3, 'Làm thế nào để đặt hàng?\r\n', 'Bạn có thể dễ dàng đặt hàng thông qua website của chúng tôi. Chọn sản phẩm yêu thích và làm theo hướng dẫn để hoàn tất đơn hàng.\r\n'),
(4, 'Chúng tôi có hỗ trợ các hình thức thanh toán nào?\r\n', 'Chúng tôi hỗ trợ các hình thức thanh toán trực tuyến qua thẻ tín dụng, thẻ ghi nợ, chuyển khoản ngân hàng và thanh toán khi nhận hàng.'),
(5, 'Thời gian giao hàng là bao lâu?\r\n\r\n', 'Thời gian giao hàng tùy thuộc vào khu vực của bạn. Thông thường, chúng tôi sẽ giao hàng trong vòng 3-5 ngày làm việc đối với các đơn hàng trong nội thành, và có thể lâu hơn đối với các khu vực xa.'),
(6, 'Bạn có cung cấp dịch vụ giao hàng nhanh không?\r\n', 'Có, chúng tôi cung cấp dịch vụ giao hàng nhanh cho những đơn hàng cần gấp, với phí dịch vụ thêm.'),
(7, 'Tôi có thể đổi sản phẩm nếu không hài lòng không?\r\n\r\n', 'Nếu bạn không hài lòng với sản phẩm, bạn có thể yêu cầu đổi trả trong vòng 7 ngày kể từ ngày nhận hàng, với điều kiện sản phẩm chưa bị sử dụng hoặc hư hại.'),
(8, 'Làm thế nào để yêu cầu đổi hoặc trả hàng?\r\n', 'Bạn có thể liên hệ với chúng tôi qua email hoặc số điện thoại hỗ trợ khách hàng để yêu cầu đổi trả.'),
(9, 'Làm sao để bảo quản hoa len handmade?\r\n\r\n', 'Hoa len handmade rất dễ chăm sóc. Bạn chỉ cần tránh để hoa tiếp xúc với nước hoặc ánh sáng mặt trời trực tiếp quá lâu. Có thể vệ sinh nhẹ nhàng bằng cách sử dụng cọ mềm hoặc vải khô.'),
(10, 'Hoa len có bền lâu không?\r\n', 'Hoa len handmade rất bền nếu được bảo quản đúng cách. Chúng có thể giữ được hình dạng và màu sắc lâu dài qua thời gian.'),
(11, 'Có thể đặt hoa theo yêu cầu không?\r\n\r\n', 'Chắc chắn! Chúng tôi nhận đặt hoa len handmade theo yêu cầu, bao gồm các màu sắc, kiểu dáng và kích thước khác nhau. Vui lòng liên hệ với chúng tôi để biết thêm chi tiết.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hotro`
--

DROP TABLE IF EXISTS `hotro`;
CREATE TABLE IF NOT EXISTS `hotro` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_vietnamese_ci NOT NULL,
  `email` text NOT NULL,
  `message` text CHARACTER SET utf8mb3 COLLATE utf8mb3_vietnamese_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `magiamgia`
--

DROP TABLE IF EXISTS `magiamgia`;
CREATE TABLE IF NOT EXISTS `magiamgia` (
  `id` int NOT NULL AUTO_INCREMENT,
  `magiam` text NOT NULL,
  `sotien` text NOT NULL,
  `soluong` text NOT NULL,
  `batdau` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `magiamgia`
--

INSERT INTO `magiamgia` (`id`, `magiam`, `sotien`, `soluong`, `batdau`) VALUES
(1, 'Demo', '1000', '5', '10000'),
(2, 'quang-ne', '', '1', ''),
(3, 'quangne', '', '1', ''),
(4, 'quangne', '', '1', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanmem`
--

DROP TABLE IF EXISTS `phanmem`;
CREATE TABLE IF NOT EXISTS `phanmem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `danhmucphu` text NOT NULL,
  `tendanhmuc` text CHARACTER SET utf8mb3 COLLATE utf8mb3_vietnamese_ci NOT NULL,
  `lienket` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `phanmem`
--

INSERT INTO `phanmem` (`id`, `danhmucphu`, `tendanhmuc`, `lienket`) VALUES
(1, 'phanmemauto', 'Phần Mềm Auto', 'man'),
(2, 'phanmemmobile', 'Phần Mềm Mobile', 'essential'),
(3, 'phanmempc', 'Phần Mềm Pc', 'prices');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nameProduct` text CHARACTER SET utf8mb3 COLLATE utf8mb3_vietnamese_ci NOT NULL,
  `price` text NOT NULL,
  `chitiet` text CHARACTER SET utf8mb3 COLLATE utf8mb3_vietnamese_ci NOT NULL,
  `image` text NOT NULL,
  `sale` text CHARACTER SET utf8mb3 COLLATE utf8mb3_vietnamese_ci NOT NULL,
  `lienket` text NOT NULL,
  `danhmuc` text NOT NULL,
  `giagoc` text NOT NULL,
  `meta` text CHARACTER SET utf8mb3 COLLATE utf8mb3_vietnamese_ci NOT NULL,
  `meta_detail` text CHARACTER SET utf8mb3 COLLATE utf8mb3_vietnamese_ci NOT NULL,
  `filter` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `nameProduct`, `price`, `chitiet`, `image`, `sale`, `lienket`, `danhmuc`, `giagoc`, `meta`, `meta_detail`, `filter`) VALUES
(40, 'Bó Hoa Con Thỏ Bằng Len', '150000', '                                                                                                                Chất liệu: Len milk cotton\r\n\r\n                                                                                    ', 'http://localhost:3000/admin/pages/post/uploads/hoalentho.jpg', 'Sale', 'bo-hoa-con-tho-bang-len', 'dip-le', '200000', '                                                                <p>Bó Hoa Con Thỏ</p>                                                ', '                                                <p>Bó Hoa Con Thỏ Bằng Len Dễ thương, quà tặng ý nghĩa</p>                                    ', 'new-arrivals'),
(41, 'Bó Hoa Cưới Bằng Len ', '600000', '<p>Bó Hoa Cưới Bằng Len – chung thuỷ, bền chặt</p>\r\n', 'http://localhost:3000/admin/pages/post/uploads/bo-hoa-cuoi-bang-len-2-768x768.png', 'new', 'https://shopee.vn/Hoa-H%E1%BB%93ng-M%C3%B3c-B%C3%B3-Hoa-H%E1%BB%93ng-D%E1%BB%87t-Kim-Len-B%C3%B3-Hoa-Handmade-D%E1%BB%87t-Qu%C3%A0-T%E1%BA%B7ng-Ng%C3%A0y-C%E1%BB%A7a-M%E1%BA%B9-B%C3%B3-Hoa-Ng%C3%A0y-Nh%C3%A0-Gi%C3%A1o-Qu%C3%A0-T%E1%BA%B7ng-i.413355979.28105489581?sp_atk=1c5d8601-1843-4d17-85ec-f194bc12025c&xptdk=1c5d8601-1843-4d17-85ec-f194bc12025c', 'dip-le', '800000', 'áo ấm áo lạnh', '<p>Hoa Hồng Móc Bó Hoa Hồng Dệt Kim Len Bó Hoa Handmade Dệt</p>\r\n', 'new-arrivals'),
(42, 'Bó hoa hướng dương bằng len handmade giá tốt', '300000', '<p>Sản phẩm bó hoa hướng dương bằng len là món quà quý giá dành tặng cho bạn bè, người yêu, người thân của bạn nhân dịp lễ tốt nghiệp, sinh nhật hay để bày tỏ lòng biết ơn là điều vô cùng ý nghĩa</p>\r\n', 'http://localhost:3000/admin/pages/post/uploads/bo-hoa-huong-duong-bang-len-dep.png', 'sale', 'https://hoalenhandmade.com/bo-hoa-huong-duong-bang-len/', 'dip-le', '134000', 'hoa hướng dương', '<p>Bó hoa hướng dương móc len </p>\r\n', ''),
(43, 'Hoa Đầu Heo bằng Len handmade', '650000', '                            Hoa đầu heo bằng len là một dạng hoa thủ công được tạo ra từ chất liệu len mềm mại và dễ uốn nắn. Được thiết kế theo hình dáng độc đáo của hoa đầu heo, hoa bằng len mang đến sự sáng tạo và độc đáo cho trang trí nội thất và sự kiện. Sự kết hợp giữa tính nghệ thuật và khả năng chế tạo tinh xảo của len đã tạo nên những bông len đẹp mắt và thu hút sự chú ý của mọi người.', 'http://localhost:3000/admin/pages/post/uploads/hoalenheo.jpg', 'new', 'hoa-dau-heo-bang-len-handmade', 'hoa-len', '134000', '                <p>Hoa đầu heo bằng len là một dạng hoa thủ công được tạo ra từ chất liệu len mềm mại và dễ uốn nắn</p>\r\n            ', 'Hoa đầu heo bằng len', 'hot-sales'),
(48, 'Bó hoa mẫu đơn', '385000', 'Bó hoa mẫu đơn đẹp bằng len dùng để\r\nVới tính chất không phai không nhũn và màu sắc đa dạng cùng với những bông hoa tuyệt đẹp từ Hoa Len Handmade, bó hoa mẫu đơn đẹp bằng len có thể dùng trong nhiều trường hợp như sau:\r\n\r\nBó hoa mẫu đơn bằng len có thể được sử dụng để gửi tặng những người phụ nữ xinh đẹp trong gia đình như bà mẹ để thể hiện lòng biết ơn và sự trân trọng.', 'http://localhost:3000/admin/pages/post/uploads/hoahong.png', '', 'bo-hoa-mau-don', 'hoa-len', '460000', 'Bó hoa mẫu đơn đẹp ', '\r\n            Bó hoa mẫu đơn đẹp bằng len thủ công cao cấp', ''),
(49, 'Bó hoa tulip bằng len tone hồng trắng', '368000', 'Với bó hoa tulip bằng len của Hoa Len Handmade, chúng tôi cam kết sản phẩm như hình như mẫu, độ sai lệch màu chỉ 5% tuỳ thiết bị và phương pháp chụp.\r\n\r\nHình bó hoa tulip bên dưới sẽ là minh chứng tuyệt vời cho sản phẩm của chúng tôi, sản phẩm được đan len thủ công từ len milk cotton 125 dày dặn chống sổ lông chống nhăn chống ám mùi.\r\n\r\nSử dụng giấy gói hoa là giấy xốp hàn hoặc giấy bóng cho phủ mica chống nước, đảm bảo vẻ đẹp của bó hoa cũng như mang tính thẩm mĩ cao nhất.', 'http://localhost:3000/admin/pages/post/uploads/Bo-hoa-tulip-5-canh.png', 'New', 'bo-hoa-tulip-bang-len-tone-hong-trang', 'hoa-len', '420000', 'Bó hoa tulip', '\r\n            Món quà trao tay nghĩ ngay tới bó hoa tulip bằng len tone hồng trắng từ Hoa Len Handmade', 'hot-sales'),
(50, 'Túi Len Đi Biển Hoa Daisy Handmade', '50000', 'Túi len handmade được làm 100% đan móc thủ công là sản phẩm có độ bền cao, an toàn và thân thiện với môi trường. Mỗi một sản phẩm chứa đựng rất nhiều tâm huyết của những người thợ thủ công và chắc chắn sẽ là món quà ý nghĩa gửi đến những người thân yêu của bạn ᰔᩚ', 'http://localhost:3000/admin/pages/post/uploads/tui_len.jpg', 'new', 'tui-len-di-bien-hoa-daisy-handmade', 'qua-tang-len', '60000', 'Túi Len Đi Biển Hoa Daisy Handmade', 'Túi len handmade được làm 100% đan móc thủ công là sản phẩm có độ bền cao, an toàn và thân thiện với môi trường.', ''),
(51, 'Móc Khóa Hình Thú Dễ Thương', '100000', 'Móc khóa đầu thú dùng làm quà tặng, quà lưu niệm, quà tặng các ngày lễ. Sản phẩm được giao ngẫu nhiên.', 'http://localhost:3000/admin/pages/post/uploads/convat.jpg', 'sale', 'moc-khoa-hinh-thu-de-thuong', 'len-trang-tri', '120000', 'Móc Khóa Hình Thú Dễ Thương', '\r\n            Móc khóa đầu thú dùng làm quà tặng, quà lưu niệm, quà tặng các ngày lễ. Sản phẩm được giao ngẫu nhiên.', 'hot-sales');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting`
--

DROP TABLE IF EXISTS `setting`;
CREATE TABLE IF NOT EXISTS `setting` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `icon` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `footer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `about` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `logo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `timebusiness` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `keywords` text CHARACTER SET utf8mb3 COLLATE utf8mb3_vietnamese_ci NOT NULL,
  `linkfb` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `js` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `domain` text CHARACTER SET utf8mb3 COLLATE utf8mb3_vietnamese_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `setting`
--

INSERT INTO `setting` (`id`, `title`, `icon`, `phone`, `email`, `address`, `footer`, `content`, `about`, `logo`, `timebusiness`, `keywords`, `linkfb`, `js`, `domain`) VALUES
(1, 'Shop hoa len', 'http://localhost:3000/admin/pages/settings/uploads/z5905228125676_57cdeb3634cd0634aa7dbeff9bacce1a.jpg', '+84337586860', 'Hoalentt@gmail.com', 'Cao Lỗ, phường 4, quận 8, thành phố Hồ Chí Minh', '                                                      ', '                                                        ', '                                                                              ', 'http://localhost:3000/admin/pages/settings/uploads/z5905228125676_57cdeb3634cd0634aa7dbeff9bacce1a.jpg', '                                                                              ', 'thẻ', '', '', 'http://localhost:3000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

DROP TABLE IF EXISTS `tintuc`;
CREATE TABLE IF NOT EXISTS `tintuc` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8mb3 COLLATE utf8mb3_vietnamese_ci NOT NULL,
  `chitiet` text CHARACTER SET utf8mb3 COLLATE utf8mb3_vietnamese_ci NOT NULL,
  `date` text NOT NULL,
  `image` text NOT NULL,
  `lienket` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tintuc`
--

INSERT INTO `tintuc` (`id`, `title`, `chitiet`, `date`, `image`, `lienket`) VALUES
(15, 'Tin tức mới', '                \r\n            Chia sẻ 2 chart móc cá heo phổ biến\r\nChart móc cá heo thường\r\nKý hiệu viết tắt\r\n\r\nSingle crochet: (sc) là mũi đơn (Ký hiệu: X)\r\n\r\nDecrease: (dec) giảm mũi, 2 mũi móc chụm đầu (Ký hiệu: A)\r\n\r\nIncrease: (inc) ký hiệu tăng mũi (Ký hiệu: V)\r\n\r\nVòng 1: Mr 6x –  Ở đây Mr 6x có nghĩa là bạn móc vòng tròn ma thuật mũi đơn 6 lần\r\n\r\nVòng 2: 6v – móc 6 mũi tăng v\r\n\r\nVòng 3: 6(x,v) – móc một mũi đơn x, một mũi tăng v lặp lại 6 lần\r\n\r\nVòng 4 – 5: 18x – móc 18 mũi đơn x\r\n\r\nVòng 6: 3(x,v), 6v, 3(x,v) –  móc một mũi đơn x, một mũi tăng v lặp lại 3 lần; 6 mũi tăng v; một mũi x, một mũi v lặp lại 3 lần\r\n\r\nVòng 7: 30x – móc 30 mũi đơn x\r\n\r\nVòng 8: 3(x,v,x), 6(x,v), 3(x,v,x) – móc 1 mũi đơn x, 1 mũi tăng v, 1 mũi đơn x lặp lại 3 lần; 1 mũi đơn x, 1 mũi đơn v lặp lại 6 lần; 1 mũi đơn x, 1 mũi tăng v, 1 mũi đơn x lặp lại 3 lần\r\n\r\nVòng  9-10: 42x –  móc 42 mũi đơn x\r\n\r\nVòng 11: 11x, 6(x,v,x), 13x –  11 mũi đơn x; 1 mũi đơn x, 1 mũi tăng v, 1 mũi đơn x lặp lại như vậy 6 lần; 13 mũi đơn x\r\n\r\nVòng 12-15: 48x –  móc 48 mũi đơn x\r\n\r\nVòng 16: 12x, a, 20x, a, 12x – 12 mũi đơn x, 1 giảm mũi a, 20 mũi đơn x, 1 giảm mũi a, 12 mũi đơn x\r\n\r\nVòng 17: 46x –  móc 46 mũi đơn x\r\n\r\nVòng 18: 16x, a, 10x ,a , 16x – 16 mũi đơn x, 1 giảm mũi a, 10 mũi đơn x, 1 giảm mũi a, 16 mũi đơn x\r\n\r\nVòng 19: 44x –  44 mũi đơn x\r\n\r\nVòng 20: 16x, a, 8x, a, 16x – 16 mũi đơn x, 1 giảm mũi a, 8 mũi đơn x, 1 giảm mũi a, 16 mũi đơn x\r\n\r\nVòng 21: 42x – móc 42 mũi đơn x\r\n\r\nVòng 22: 3(9x, a), 9x – 9 mũi đơn x, 1 giảm mũi a lặp lại 3 lần; 9 mũi đơn x\r\n\r\nVòng 23: 2(x, v), 2(9x, a), 9x, 2(x,v) – 1 mũi đơn x, 1 mũi tăng v lặp lại 2 lần; 9 mũi đơn x, 1 giảm mũi a lặp lại 2 lần; 1 mũi đơn x, 1 mũi tăng v và lặp lại 2 lần', '13-12-24 03:23:32', 'http://localhost/shophoalen/admin/pages/tintuc/image/z5905228125676_57cdeb3634cd0634aa7dbeff9bacce1a.jpg', 'tin-tuc-moi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_vietnamese_ci NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `phanquyen` text NOT NULL,
  `money` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=653 DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `phanquyen`, `money`) VALUES
(1, 'Ngô Thành Thông', 'hotro.tqnbsoftware@gmail.com', 'Ngothanhthongcode03122k2', '99', '15661'),
(645, 'Admin', 'admin@gmail.com', 'admin', '99', '9999999999'),
(646, 'User', 'user@gmail.com', 'user', '0', '1000000');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
