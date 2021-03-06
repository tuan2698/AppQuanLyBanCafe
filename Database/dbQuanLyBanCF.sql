USE [master]
GO
/****** Object:  Database [QuanLyBanQuanCafe]    Script Date: 31/05/2020 7:56:55 SA ******/
CREATE DATABASE [QuanLyBanQuanCafe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyBanQuanCafe', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\QuanLyBanQuanCafe.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuanLyBanQuanCafe_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\QuanLyBanQuanCafe_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QuanLyBanQuanCafe] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyBanQuanCafe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyBanQuanCafe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyBanQuanCafe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyBanQuanCafe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyBanQuanCafe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyBanQuanCafe] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyBanQuanCafe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyBanQuanCafe] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyBanQuanCafe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyBanQuanCafe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyBanQuanCafe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyBanQuanCafe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyBanQuanCafe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyBanQuanCafe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyBanQuanCafe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyBanQuanCafe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyBanQuanCafe] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLyBanQuanCafe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyBanQuanCafe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyBanQuanCafe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyBanQuanCafe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyBanQuanCafe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyBanQuanCafe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyBanQuanCafe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyBanQuanCafe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyBanQuanCafe] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyBanQuanCafe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyBanQuanCafe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyBanQuanCafe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyBanQuanCafe] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [QuanLyBanQuanCafe]
GO
/****** Object:  Table [dbo].[ChiTietBan]    Script Date: 31/05/2020 7:56:55 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietBan](
	[MaBan] [nchar](50) NOT NULL,
	[MaKhuVuc] [nchar](50) NULL,
	[GioVao] [date] NULL,
	[GioRa] [date] NULL,
	[MaNhanVien] [nchar](50) NULL,
 CONSTRAINT [PK_ChiTietBan] PRIMARY KEY CLUSTERED 
(
	[MaBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 31/05/2020 7:56:55 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaHoaDon] [nchar](50) NOT NULL,
	[MaDanhSachMonDaGoi] [nchar](50) NULL,
	[MaBan] [nchar](50) NULL,
	[SoLuong] [int] NULL,
	[MaGiamGia] [nchar](50) NULL,
	[ThanhTien] [money] NULL,
	[PhuThu] [money] NULL,
	[NgayXuat] [date] NULL,
 CONSTRAINT [PK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DanhSachMonDaGoi]    Script Date: 31/05/2020 7:56:55 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhSachMonDaGoi](
	[MaDanhSachMonGoi] [nchar](50) NOT NULL,
	[MaBan] [nchar](50) NULL,
	[MaMon] [nchar](50) NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_DanhSachMonDaGoi] PRIMARY KEY CLUSTERED 
(
	[MaDanhSachMonGoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GiamGia]    Script Date: 31/05/2020 7:56:55 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiamGia](
	[MaGiamGia] [nchar](50) NOT NULL,
	[TenSuKien] [nchar](50) NULL,
	[PhantramGiam] [int] NULL,
 CONSTRAINT [PK_GiamGia] PRIMARY KEY CLUSTERED 
(
	[MaGiamGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhoNguyenLieu]    Script Date: 31/05/2020 7:56:55 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhoNguyenLieu](
	[MaNguyenLieu] [nchar](50) NOT NULL,
	[TenNguyenLieu] [nchar](50) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [money] NULL,
	[DVT] [nchar](10) NULL,
	[NgayNhap] [date] NULL,
	[ThanhTien] [money] NULL,
 CONSTRAINT [PK_KhoNguyenLieu] PRIMARY KEY CLUSTERED 
(
	[MaNguyenLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhuVuc]    Script Date: 31/05/2020 7:56:55 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuVuc](
	[MaKhuVuc] [nchar](50) NOT NULL,
	[SoLuongBan] [int] NULL,
 CONSTRAINT [PK_KhuVuc] PRIMARY KEY CLUSTERED 
(
	[MaKhuVuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Menu]    Script Date: 31/05/2020 7:56:55 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[MaMon] [nchar](50) NOT NULL,
	[TenMon] [nchar](50) NULL,
	[Gia] [money] NULL,
	[DVT] [nchar](10) NULL,
	[MaNhom] [nchar](50) NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 31/05/2020 7:56:55 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [nchar](50) NOT NULL,
	[TenNhanVien] [nchar](50) NULL,
	[PhanQuyen] [nchar](50) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhomNguyenLieu]    Script Date: 31/05/2020 7:56:55 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhomNguyenLieu](
	[MaNhom] [nchar](50) NOT NULL,
	[TenSP] [nchar](50) NULL,
	[MaNguyenLieu] [nchar](50) NULL,
	[SoLuongSuDung] [int] NULL,
 CONSTRAINT [PK_NhomNguyenLieu] PRIMARY KEY CLUSTERED 
(
	[MaNhom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QuanLyThuChi]    Script Date: 31/05/2020 7:56:55 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuanLyThuChi](
	[MaHoaDon] [nchar](50) NOT NULL,
	[MaNguyenLieu] [nchar](50) NOT NULL,
	[NgayThongKe] [date] NULL,
	[TongSo] [money] NULL,
 CONSTRAINT [PK_QuanLyThuChi] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC,
	[MaNguyenLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 31/05/2020 7:56:55 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TenTaiKhoan] [nchar](50) NOT NULL,
	[MatKhau] [nchar](50) NULL,
	[MaNhanVien] [nchar](50) NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[TenTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[ChiTietBan]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietBan_KhuVuc] FOREIGN KEY([MaKhuVuc])
REFERENCES [dbo].[KhuVuc] ([MaKhuVuc])
GO
ALTER TABLE [dbo].[ChiTietBan] CHECK CONSTRAINT [FK_ChiTietBan_KhuVuc]
GO
ALTER TABLE [dbo].[ChiTietBan]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietBan_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[ChiTietBan] CHECK CONSTRAINT [FK_ChiTietBan_NhanVien]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_ChiTietBan] FOREIGN KEY([MaBan])
REFERENCES [dbo].[ChiTietBan] ([MaBan])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_ChiTietBan]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_DanhSachMonDaGoi] FOREIGN KEY([MaDanhSachMonDaGoi])
REFERENCES [dbo].[DanhSachMonDaGoi] ([MaDanhSachMonGoi])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_DanhSachMonDaGoi]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_GiamGia] FOREIGN KEY([MaGiamGia])
REFERENCES [dbo].[GiamGia] ([MaGiamGia])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_GiamGia]
GO
ALTER TABLE [dbo].[DanhSachMonDaGoi]  WITH CHECK ADD  CONSTRAINT [FK_DanhSachMonDaGoi_Menu] FOREIGN KEY([MaMon])
REFERENCES [dbo].[Menu] ([MaMon])
GO
ALTER TABLE [dbo].[DanhSachMonDaGoi] CHECK CONSTRAINT [FK_DanhSachMonDaGoi_Menu]
GO
ALTER TABLE [dbo].[Menu]  WITH CHECK ADD  CONSTRAINT [FK_Menu_NhomNguyenLieu] FOREIGN KEY([MaNhom])
REFERENCES [dbo].[NhomNguyenLieu] ([MaNhom])
GO
ALTER TABLE [dbo].[Menu] CHECK CONSTRAINT [FK_Menu_NhomNguyenLieu]
GO
ALTER TABLE [dbo].[NhomNguyenLieu]  WITH CHECK ADD  CONSTRAINT [FK_NhomNguyenLieu_KhoNguyenLieu] FOREIGN KEY([MaNguyenLieu])
REFERENCES [dbo].[KhoNguyenLieu] ([MaNguyenLieu])
GO
ALTER TABLE [dbo].[NhomNguyenLieu] CHECK CONSTRAINT [FK_NhomNguyenLieu_KhoNguyenLieu]
GO
ALTER TABLE [dbo].[QuanLyThuChi]  WITH CHECK ADD  CONSTRAINT [FK_QuanLyThuChi_ChiTietHoaDon] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[ChiTietHoaDon] ([MaHoaDon])
GO
ALTER TABLE [dbo].[QuanLyThuChi] CHECK CONSTRAINT [FK_QuanLyThuChi_ChiTietHoaDon]
GO
ALTER TABLE [dbo].[QuanLyThuChi]  WITH CHECK ADD  CONSTRAINT [FK_QuanLyThuChi_KhoNguyenLieu] FOREIGN KEY([MaNguyenLieu])
REFERENCES [dbo].[KhoNguyenLieu] ([MaNguyenLieu])
GO
ALTER TABLE [dbo].[QuanLyThuChi] CHECK CONSTRAINT [FK_QuanLyThuChi_KhoNguyenLieu]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_NhanVien]
GO
USE [master]
GO
ALTER DATABASE [QuanLyBanQuanCafe] SET  READ_WRITE 
GO
