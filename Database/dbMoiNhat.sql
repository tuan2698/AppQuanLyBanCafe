USE [master]
GO
/****** Object:  Database [QuanLyBanQuanCafe]    Script Date: 7/11/2020 6:40:36 PM ******/
CREATE DATABASE [QuanLyBanQuanCafe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyBanQuanCafe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\QuanLyBanQuanCafe.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuanLyBanQuanCafe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\QuanLyBanQuanCafe_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
/****** Object:  Table [dbo].[Ban]    Script Date: 7/11/2020 6:40:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ban](
	[MaBan] [int] IDENTITY(1,1) NOT NULL,
	[TenBan] [nvarchar](50) NULL,
	[TrangThai] [nvarchar](50) NULL,
	[MaKhuVuc] [nchar](50) NULL,
 CONSTRAINT [PK_Ban] PRIMARY KEY CLUSTERED 
(
	[MaBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietBan]    Script Date: 7/11/2020 6:40:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietBan](
	[MaBan] [int] NOT NULL,
	[MaKhuVuc] [nchar](50) NOT NULL,
	[GioVao] [date] NULL,
	[GioRa] [date] NULL,
	[MaNhanVien] [nchar](50) NULL,
 CONSTRAINT [PK_ChiTietBan] PRIMARY KEY CLUSTERED 
(
	[MaBan] ASC,
	[MaKhuVuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 7/11/2020 6:40:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaHoaDon] [nchar](50) NOT NULL,
	[MaDanhSachMonDaGoi] [nchar](50) NULL,
	[MaBan] [int] NULL,
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
/****** Object:  Table [dbo].[DanhSachMonDaGoi]    Script Date: 7/11/2020 6:40:36 PM ******/
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
/****** Object:  Table [dbo].[GiamGia]    Script Date: 7/11/2020 6:40:36 PM ******/
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
/****** Object:  Table [dbo].[KhoNguyenLieu]    Script Date: 7/11/2020 6:40:36 PM ******/
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
/****** Object:  Table [dbo].[KhuVuc]    Script Date: 7/11/2020 6:40:36 PM ******/
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
/****** Object:  Table [dbo].[Menu]    Script Date: 7/11/2020 6:40:36 PM ******/
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
/****** Object:  Table [dbo].[NhanVien]    Script Date: 7/11/2020 6:40:36 PM ******/
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
/****** Object:  Table [dbo].[NhomNguyenLieu]    Script Date: 7/11/2020 6:40:36 PM ******/
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
/****** Object:  Table [dbo].[QuanLyThuChi]    Script Date: 7/11/2020 6:40:36 PM ******/
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
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 7/11/2020 6:40:36 PM ******/
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
SET IDENTITY_INSERT [dbo].[Ban] ON 

INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (1, N'Bàn 1', N'Trống', N'T1                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (2, N'Bàn 2', N'Trống', N'T1                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (3, N'Bàn 3', N'Trống', N'T1                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (4, N'Bàn 4', N'Trống', N'T1                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (5, N'Bàn 5', N'Trống', N'T1                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (6, N'Bàn 6', N'Trống', N'T1                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (7, N'Bàn 7', N'Trống', N'T1                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (8, N'Bàn 8', N'Trống', N'T1                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (9, N'Bàn 9', N'Trống', N'T1                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (10, N'Bàn 10', N'Trống', N'T1                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (11, N'Bàn 11', N'Trống', N'T1                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (12, N'Bàn 12', N'Trống', N'T1                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (13, N'Bàn 13', N'Trống', N'T1                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (14, N'Bàn 14', N'Trống', N'T1                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (15, N'Bàn 15', N'Trống', N'T1                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (16, N'Bàn 16', N'Trống', N'T1                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (17, N'Bàn 17', N'Trống', N'T1                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (18, N'Bàn 18', N'Trống', N'T1                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (19, N'Bàn 19', N'Trống', N'T1                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (20, N'Bàn 20', N'Trống', N'T1                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (21, N'Bàn 21', N'Trống', N'T1                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (22, N'Bàn 22', N'Trống', N'T1                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (23, N'Bàn 23', N'Trống', N'T1                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (24, N'Bàn 24', N'Trống', N'T1                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (25, N'Bàn 25', N'Trống', N'T1                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (26, N'Bàn 26', N'Trống', N'T1                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (27, N'Bàn 27', N'Trống', N'T1                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (28, N'Bàn 28', N'Trống', N'T1                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (29, N'Bàn 29', N'Trống', N'T1                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (30, N'Bàn 30', N'Trống', N'T1                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (31, N'Bàn 31', N'Trống', N'T2                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (32, N'Bàn 32', N'Trống', N'T2                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (33, N'Bàn 33', N'Trống', N'T2                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (34, N'Bàn 34', N'Trống', N'T2                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (35, N'Bàn 35', N'Trống', N'T2                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (36, N'Bàn 36', N'Trống', N'T2                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (37, N'Bàn 37', N'Trống', N'T2                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (38, N'Bàn 38', N'Trống', N'T2                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (39, N'Bàn 39', N'Trống', N'T2                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (40, N'Bàn 40', N'Trống', N'T2                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (41, N'Bàn 41', N'Trống', N'T2                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (42, N'Bàn 42', N'Trống', N'T2                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (43, N'Bàn 43', N'Trống', N'T2                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (44, N'Bàn 44', N'Trống', N'T2                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (45, N'Bàn 45', N'Trống', N'T2                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (46, N'Bàn 46', N'Trống', N'T2                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (47, N'Bàn 47', N'Trống', N'T2                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (48, N'Bàn 48', N'Trống', N'T2                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (49, N'Bàn 49', N'Trống', N'T2                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (50, N'Bàn 50', N'Trống', N'T2                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (51, N'Bàn 51', N'Trống', N'T2                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (52, N'Bàn 52', N'Trống', N'T2                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (53, N'Bàn 53', N'Trống', N'T2                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (54, N'Bàn 54', N'Trống', N'T2                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (55, N'Bàn 55', N'Trống', N'T2                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (56, N'Bàn 56', N'Trống', N'T2                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (57, N'Bàn 57', N'Trống', N'T2                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (58, N'Bàn 58', N'Trống', N'T2                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (59, N'Bàn 59', N'Trống', N'T2                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (60, N'Bàn 60', N'Trống', N'T2                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (61, N'Bàn 61', N'Trống', N'T2                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (62, N'Bàn 62', N'Trống', N'T2                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (63, N'Bàn 63', N'Trống', N'T2                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (64, N'Bàn 64', N'Trống', N'T2                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (65, N'Bàn 65', N'Trống', N'T2                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (66, N'Bàn 66', N'Trống', N'T2                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (67, N'Bàn 67', N'Trống', N'T2                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (68, N'Bàn 68', N'Trống', N'T2                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (69, N'Bàn 69', N'Trống', N'T2                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (70, N'Bàn 70', N'Trống', N'T2                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (71, N'Bàn 71', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (72, N'Bàn 72', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (73, N'Bàn 73', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (74, N'Bàn 74', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (75, N'Bàn 75', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (76, N'Bàn 76', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (77, N'Bàn 77', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (78, N'Bàn 78', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (79, N'Bàn 79', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (80, N'Bàn 80', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (81, N'Bàn 81', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (82, N'Bàn 82', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (83, N'Bàn 83', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (84, N'Bàn 84', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (85, N'Bàn 85', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (86, N'Bàn 86', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (87, N'Bàn 87', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (88, N'Bàn 88', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (89, N'Bàn 89', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (90, N'Bàn 90', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (91, N'Bàn 91', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (92, N'Bàn 92', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (93, N'Bàn 93', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (94, N'Bàn 94', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (95, N'Bàn 95', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (96, N'Bàn 96', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (97, N'Bàn 97', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (98, N'Bàn 98', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (99, N'Bàn 99', N'Trống', N'T3                                                ')
GO
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (100, N'Bàn 100', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (101, N'Bàn 101', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (102, N'Bàn 102', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (103, N'Bàn 103', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (104, N'Bàn 104', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (105, N'Bàn 105', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (106, N'Bàn 106', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (107, N'Bàn 107', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (108, N'Bàn 108', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (109, N'Bàn 109', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (110, N'Bàn 110', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (111, N'Bàn 111', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (112, N'Bàn 112', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (113, N'Bàn 113', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (114, N'Bàn 114', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (115, N'Bàn 115', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (116, N'Bàn 116', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (117, N'Bàn 117', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (118, N'Bàn 118', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (119, N'Bàn 119', N'Trống', N'T3                                                ')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai], [MaKhuVuc]) VALUES (120, N'Bàn 120', N'Trống', N'T3                                                ')
SET IDENTITY_INSERT [dbo].[Ban] OFF
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [SoLuongBan]) VALUES (N'T1                                                ', 30)
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [SoLuongBan]) VALUES (N'T2                                                ', 40)
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [SoLuongBan]) VALUES (N'T3                                                ', 50)
ALTER TABLE [dbo].[Ban]  WITH CHECK ADD  CONSTRAINT [FK_Ban_KhuVuc] FOREIGN KEY([MaKhuVuc])
REFERENCES [dbo].[KhuVuc] ([MaKhuVuc])
GO
ALTER TABLE [dbo].[Ban] CHECK CONSTRAINT [FK_Ban_KhuVuc]
GO
ALTER TABLE [dbo].[ChiTietBan]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietBan_Ban] FOREIGN KEY([MaBan])
REFERENCES [dbo].[Ban] ([MaBan])
GO
ALTER TABLE [dbo].[ChiTietBan] CHECK CONSTRAINT [FK_ChiTietBan_Ban]
GO
ALTER TABLE [dbo].[ChiTietBan]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietBan_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[ChiTietBan] CHECK CONSTRAINT [FK_ChiTietBan_NhanVien]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_Ban] FOREIGN KEY([MaBan])
REFERENCES [dbo].[Ban] ([MaBan])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_Ban]
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
