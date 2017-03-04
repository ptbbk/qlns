-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2017 at 12:35 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlns`
--

-- --------------------------------------------------------

--
-- Table structure for table `chucdanh`
--

CREATE TABLE `chucdanh` (
  `id` int(11) NOT NULL,
  `id_KhoiChucDanh` int(11) DEFAULT NULL,
  `id_NguoiDung` int(11) DEFAULT NULL,
  `ten_chuc_danh` varchar(30) DEFAULT NULL,
  `he_so_chuc_danh` float DEFAULT NULL,
  `thoi_gian_tao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `huanluyen`
--

CREATE TABLE `huanluyen` (
  `id` int(11) NOT NULL,
  `id_NhanVien` int(11) DEFAULT NULL,
  `id_KhoaHuanLuyen` int(11) DEFAULT NULL,
  `id_NguoiDung` int(11) NOT NULL,
  `ket_qua` varchar(100) DEFAULT NULL,
  `thoi_gian_tao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ketqua`
--

CREATE TABLE `ketqua` (
  `id` int(11) NOT NULL,
  `id_NguoiDung` int(11) DEFAULT NULL,
  `ten_ket_qua` varchar(50) DEFAULT NULL,
  `gia_tri` int(11) DEFAULT NULL,
  `thoi_gian_tao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `khoahuanluyen`
--

CREATE TABLE `khoahuanluyen` (
  `id` int(11) NOT NULL,
  `id_NguoiDung` int(11) DEFAULT NULL,
  `ten_khoa_hl` varchar(200) DEFAULT NULL,
  `ten_giao_vien` varchar(50) DEFAULT NULL,
  `ngay_bat_dau` date DEFAULT NULL,
  `ngay_ket_thuc` date DEFAULT NULL,
  `kinh_phi_gv` float DEFAULT NULL,
  `kinh_phi_dao_tao` float DEFAULT NULL,
  `thoi_gian_tao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `khoichucdanh`
--

CREATE TABLE `khoichucdanh` (
  `id` int(11) NOT NULL,
  `id_NguoiDung` int(11) DEFAULT NULL,
  `ten_khoi` varchar(30) DEFAULT NULL,
  `thoi_gian_tao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kiemtrata`
--

CREATE TABLE `kiemtrata` (
  `id` int(11) NOT NULL,
  `id_NhanVien` int(11) DEFAULT NULL,
  `id_KetQua` int(11) DEFAULT NULL,
  `id_NguoiDung` int(11) DEFAULT NULL,
  `ngay_kiem_tra` date DEFAULT NULL,
  `ghi_chu` varchar(100) DEFAULT NULL,
  `thoi_gian_tao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ktkl`
--

CREATE TABLE `ktkl` (
  `id` int(11) NOT NULL,
  `id_NhanVien` int(11) DEFAULT NULL,
  `id_LoaiKhenThuongKyLuat` int(11) DEFAULT NULL,
  `id_NguoiDung` int(11) DEFAULT NULL,
  `so_quyet_dinh` varchar(10) DEFAULT NULL,
  `hinh_thuc` varchar(20) DEFAULT NULL,
  `noi_dung` varchar(100) DEFAULT NULL,
  `thoi_gian_tao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lichsunhanvien`
--

CREATE TABLE `lichsunhanvien` (
  `id` int(11) NOT NULL,
  `id_NhanVien` int(11) DEFAULT NULL,
  `id_NguoiDung` int(11) DEFAULT NULL,
  `ma_lich_su` varchar(10) DEFAULT NULL,
  `lich_su` varchar(500) DEFAULT NULL,
  `ngay_thay_doi` date DEFAULT NULL,
  `thoi_gian_tao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `loaihdld`
--

CREATE TABLE `loaihdld` (
  `id` int(11) NOT NULL,
  `id_NguoiDung` int(11) DEFAULT NULL,
  `ten_hop_dong` varchar(30) DEFAULT NULL,
  `thoi_gian_tao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `loaiktkl`
--

CREATE TABLE `loaiktkl` (
  `id` int(11) NOT NULL,
  `id_NguoiDung` int(11) DEFAULT NULL,
  `ten_ktkl` varchar(100) DEFAULT NULL,
  `thoi_gian_tao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `loainangdinh`
--

CREATE TABLE `loainangdinh` (
  `id` int(11) NOT NULL,
  `id_NguoiDung` int(11) DEFAULT NULL,
  `ten_loai` varchar(100) DEFAULT NULL,
  `thoi_gian_tao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `loainguoidung`
--

CREATE TABLE `loainguoidung` (
  `id` int(11) NOT NULL,
  `ten_kieu` varchar(30) DEFAULT NULL,
  `thoi_gian_tao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `loainguoidung_quyen`
--

CREATE TABLE `loainguoidung_quyen` (
  `id` int(11) NOT NULL,
  `id_LoaiNguoiDung` int(11) NOT NULL,
  `id_Quyen` int(11) NOT NULL,
  `thoi_gian_tao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nangdinh`
--

CREATE TABLE `nangdinh` (
  `id` int(11) NOT NULL,
  `id_LoaiNangDinh` int(11) DEFAULT NULL,
  `id_NguoiDung` int(11) DEFAULT NULL,
  `ten_nang_dinh` varchar(100) DEFAULT NULL,
  `so_nam_hieu_luc` int(11) DEFAULT NULL,
  `thoi_gian_tao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE `nguoidung` (
  `id` int(11) NOT NULL,
  `id_LoaiNguoiDung` int(11) DEFAULT NULL,
  `ten` varchar(15) DEFAULT NULL,
  `mat_khau` varchar(64) DEFAULT NULL,
  `ten_day_du` varchar(50) DEFAULT NULL,
  `truy_cap_lan_cuoi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `id` int(11) NOT NULL,
  `id_PhongBan` int(11) DEFAULT NULL,
  `id_ChucDanh` int(11) DEFAULT NULL,
  `id_LoaiHDLD` int(11) DEFAULT NULL,
  `id_TrinhDo` int(11) DEFAULT NULL,
  `id_TrinhDoHDLD` int(11) DEFAULT NULL,
  `id_NguoiDung` int(11) DEFAULT NULL,
  `so_ho_so` varchar(10) NOT NULL,
  `ho_ten` varchar(100) NOT NULL,
  `ngay_sinh` date DEFAULT NULL,
  `gioi_tinh` int(11) DEFAULT NULL,
  `noi_sinh` varchar(100) NOT NULL,
  `que_quan` varchar(100) NOT NULL,
  `thuong_tru` varchar(200) NOT NULL,
  `thang_nam_cong_tac` date DEFAULT NULL,
  `thang_nam_vao_hk` date DEFAULT NULL,
  `trinh_do_chuyen_mon` varchar(100) DEFAULT NULL,
  `cac_van_bang_chung_chi` varchar(100) DEFAULT NULL,
  `ngay_nhap_ngu` date DEFAULT NULL,
  `ngay_xuat_ngu` date DEFAULT NULL,
  `cap_bac_quan_nhan` varchar(30) DEFAULT NULL,
  `ngay_ki_hdld` date DEFAULT NULL,
  `so_hdld` varchar(10) DEFAULT NULL,
  `ngay_hieu_luc_hdld` date DEFAULT NULL,
  `ngay_het_hieu_luc_hdld` date DEFAULT NULL,
  `so_cmtnd` varchar(15) DEFAULT NULL,
  `ngay_cap_cmtnd` date DEFAULT NULL,
  `noi_cap_cmtnd` varchar(30) DEFAULT NULL,
  `dang_vien` int(11) DEFAULT NULL,
  `doi_tuong_chinh_sach` int(11) DEFAULT NULL,
  `ma_so_bhxh` varchar(15) DEFAULT NULL,
  `ma_so_thue` varchar(15) DEFAULT NULL,
  `chi_tiet` varchar(1000) DEFAULT NULL,
  `thoi_gian_tao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien_nangdinh`
--

CREATE TABLE `nhanvien_nangdinh` (
  `id` int(11) NOT NULL,
  `id_NhanVien` int(11) DEFAULT NULL,
  `id_NangDinh` int(11) DEFAULT NULL,
  `id_NguoiDung` int(11) DEFAULT NULL,
  `ket_qua` int(11) DEFAULT NULL,
  `so_nang_dinh` varchar(10) DEFAULT NULL,
  `ngay_hieu_luc` date DEFAULT NULL,
  `ngay_het_hieu_luc` date DEFAULT NULL,
  `cap_lai_giay_phep` int(11) DEFAULT NULL,
  `thoi_gian_tao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `phongban`
--

CREATE TABLE `phongban` (
  `id` int(11) NOT NULL,
  `id_cha` int(11) DEFAULT NULL,
  `id_NguoiDung` int(11) DEFAULT NULL,
  `ten_phong_ban` varchar(30) DEFAULT NULL,
  `thoi_gian_tao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quyen`
--

CREATE TABLE `quyen` (
  `id` int(1) NOT NULL,
  `mo_ta_quyen` varchar(64) DEFAULT NULL,
  `thoi_gian_tao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `trinhdo`
--

CREATE TABLE `trinhdo` (
  `id` int(11) NOT NULL,
  `id_NguoiDung` int(11) DEFAULT NULL,
  `trinh_do` varchar(30) DEFAULT NULL,
  `thoi_gian_tao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chucdanh`
--
ALTER TABLE `chucdanh`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_khoichucdanh` (`id_KhoiChucDanh`),
  ADD KEY `FK_NguoiDung` (`id_NguoiDung`);

--
-- Indexes for table `huanluyen`
--
ALTER TABLE `huanluyen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_NhanVien` (`id_NhanVien`),
  ADD KEY `FK_KhoaHuanLuyen` (`id_KhoaHuanLuyen`),
  ADD KEY `FK_NguoiDung_huanluyen` (`id_NguoiDung`);

--
-- Indexes for table `ketqua`
--
ALTER TABLE `ketqua`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_NguoiDung_ketqua` (`id_NguoiDung`);

--
-- Indexes for table `khoahuanluyen`
--
ALTER TABLE `khoahuanluyen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_nguoidung_khoahuanluyen` (`id_NguoiDung`);

--
-- Indexes for table `khoichucdanh`
--
ALTER TABLE `khoichucdanh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kiemtrata`
--
ALTER TABLE `kiemtrata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_NhanVien_kiemtrata` (`id_NhanVien`),
  ADD KEY `FK_KetQua` (`id_KetQua`);

--
-- Indexes for table `ktkl`
--
ALTER TABLE `ktkl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_NhanVien_ktkl` (`id_NhanVien`),
  ADD KEY `FK_LoaiKhenThuongKyLuat` (`id_LoaiKhenThuongKyLuat`);

--
-- Indexes for table `lichsunhanvien`
--
ALTER TABLE `lichsunhanvien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_NhanVien_lichsunhanvien` (`id_NhanVien`);

--
-- Indexes for table `loaihdld`
--
ALTER TABLE `loaihdld`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loaiktkl`
--
ALTER TABLE `loaiktkl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loainangdinh`
--
ALTER TABLE `loainangdinh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loainguoidung`
--
ALTER TABLE `loainguoidung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loainguoidung_quyen`
--
ALTER TABLE `loainguoidung_quyen`
  ADD PRIMARY KEY (`id`,`id_LoaiNguoiDung`,`id_Quyen`),
  ADD KEY `FK_LoaiNguoiDung_lngdungquyen` (`id_LoaiNguoiDung`),
  ADD KEY `FK_Quyen` (`id_Quyen`);

--
-- Indexes for table `nangdinh`
--
ALTER TABLE `nangdinh`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_LoaiNangDinh` (`id_LoaiNangDinh`);

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_LoaiNguoiDung_nguoidung` (`id_LoaiNguoiDung`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_PhongBan` (`id_PhongBan`),
  ADD KEY `FK_ChucDanh` (`id_ChucDanh`),
  ADD KEY `FK_LoaiHDLD` (`id_LoaiHDLD`),
  ADD KEY `FK_TrinhDo` (`id_TrinhDo`),
  ADD KEY `FK_TrinhDoHDLD` (`id_TrinhDoHDLD`);

--
-- Indexes for table `nhanvien_nangdinh`
--
ALTER TABLE `nhanvien_nangdinh`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_NhanVien_nvnd` (`id_NhanVien`),
  ADD KEY `FK_NangDinh` (`id_NangDinh`);

--
-- Indexes for table `phongban`
--
ALTER TABLE `phongban`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quyen`
--
ALTER TABLE `quyen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trinhdo`
--
ALTER TABLE `trinhdo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chucdanh`
--
ALTER TABLE `chucdanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `huanluyen`
--
ALTER TABLE `huanluyen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ketqua`
--
ALTER TABLE `ketqua`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `khoahuanluyen`
--
ALTER TABLE `khoahuanluyen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `khoichucdanh`
--
ALTER TABLE `khoichucdanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kiemtrata`
--
ALTER TABLE `kiemtrata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ktkl`
--
ALTER TABLE `ktkl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lichsunhanvien`
--
ALTER TABLE `lichsunhanvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `loaihdld`
--
ALTER TABLE `loaihdld`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `loaiktkl`
--
ALTER TABLE `loaiktkl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `loainangdinh`
--
ALTER TABLE `loainangdinh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `loainguoidung`
--
ALTER TABLE `loainguoidung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `loainguoidung_quyen`
--
ALTER TABLE `loainguoidung_quyen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nangdinh`
--
ALTER TABLE `nangdinh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nhanvien_nangdinh`
--
ALTER TABLE `nhanvien_nangdinh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `phongban`
--
ALTER TABLE `phongban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `quyen`
--
ALTER TABLE `quyen`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `trinhdo`
--
ALTER TABLE `trinhdo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `chucdanh`
--
ALTER TABLE `chucdanh`
  ADD CONSTRAINT `FK_khoichucdanh` FOREIGN KEY (`id_KhoiChucDanh`) REFERENCES `khoichucdanh` (`id`);

--
-- Constraints for table `huanluyen`
--
ALTER TABLE `huanluyen`
  ADD CONSTRAINT `FK_KhoaHuanLuyen` FOREIGN KEY (`id_KhoaHuanLuyen`) REFERENCES `khoahuanluyen` (`id`),
  ADD CONSTRAINT `FK_NhanVien` FOREIGN KEY (`id_NhanVien`) REFERENCES `nhanvien` (`id`);

--
-- Constraints for table `kiemtrata`
--
ALTER TABLE `kiemtrata`
  ADD CONSTRAINT `FK_KetQua` FOREIGN KEY (`id_KetQua`) REFERENCES `ketqua` (`id`),
  ADD CONSTRAINT `FK_NhanVien_kiemtrata` FOREIGN KEY (`id_NhanVien`) REFERENCES `nhanvien` (`id`);

--
-- Constraints for table `ktkl`
--
ALTER TABLE `ktkl`
  ADD CONSTRAINT `FK_LoaiKhenThuongKyLuat` FOREIGN KEY (`id_LoaiKhenThuongKyLuat`) REFERENCES `ktkl` (`id`),
  ADD CONSTRAINT `FK_NhanVien_ktkl` FOREIGN KEY (`id_NhanVien`) REFERENCES `nhanvien` (`id`);

--
-- Constraints for table `lichsunhanvien`
--
ALTER TABLE `lichsunhanvien`
  ADD CONSTRAINT `FK_NhanVien_lichsunhanvien` FOREIGN KEY (`id_NhanVien`) REFERENCES `nhanvien` (`id`);

--
-- Constraints for table `loainguoidung_quyen`
--
ALTER TABLE `loainguoidung_quyen`
  ADD CONSTRAINT `FK_LoaiNguoiDung_lngdungquyen` FOREIGN KEY (`id_LoaiNguoiDung`) REFERENCES `loainguoidung` (`id`),
  ADD CONSTRAINT `FK_Quyen` FOREIGN KEY (`id_Quyen`) REFERENCES `quyen` (`id`);

--
-- Constraints for table `nangdinh`
--
ALTER TABLE `nangdinh`
  ADD CONSTRAINT `FK_LoaiNangDinh` FOREIGN KEY (`id_LoaiNangDinh`) REFERENCES `loainangdinh` (`id`);

--
-- Constraints for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD CONSTRAINT `FK_LoaiNguoiDung_nguoidung` FOREIGN KEY (`id_LoaiNguoiDung`) REFERENCES `loainguoidung` (`id`);

--
-- Constraints for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `FK_ChucDanh` FOREIGN KEY (`id_ChucDanh`) REFERENCES `chucdanh` (`id`),
  ADD CONSTRAINT `FK_LoaiHDLD` FOREIGN KEY (`id_LoaiHDLD`) REFERENCES `loaihdld` (`id`),
  ADD CONSTRAINT `FK_PhongBan` FOREIGN KEY (`id_PhongBan`) REFERENCES `phongban` (`id`),
  ADD CONSTRAINT `FK_TrinhDo` FOREIGN KEY (`id_TrinhDo`) REFERENCES `trinhdo` (`id`),
  ADD CONSTRAINT `FK_TrinhDoHDLD` FOREIGN KEY (`id_TrinhDoHDLD`) REFERENCES `trinhdo` (`id`);

--
-- Constraints for table `nhanvien_nangdinh`
--
ALTER TABLE `nhanvien_nangdinh`
  ADD CONSTRAINT `FK_NangDinh` FOREIGN KEY (`id_NangDinh`) REFERENCES `nangdinh` (`id`),
  ADD CONSTRAINT `FK_NhanVien_nvnd` FOREIGN KEY (`id_NhanVien`) REFERENCES `nhanvien` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
