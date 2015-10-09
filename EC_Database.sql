USE [EC]
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 10/09/2015 18:57:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[MaTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [nvarchar](50) NOT NULL,
	[MatKhau] [varchar](50) NOT NULL,
	[TenNguoiDung] [nvarchar](50) NOT NULL,
	[Quyen] [int] NOT NULL,
	[SDT] [varchar](20) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[SoBaiDang] [int] NULL,
	[Quan] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_TAIKHOAN] PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TAIKHOAN] ON
INSERT [dbo].[TAIKHOAN] ([MaTaiKhoan], [TenDangNhap], [MatKhau], [TenNguoiDung], [Quyen], [SDT], [DiaChi], [Email], [SoBaiDang], [Quan]) VALUES (1, N'mai_lt', N'12345', N'Mai', 1, N'0123456789', N'116/35 LDC', N'lytieumai06@gmail.com', 12, N'Bình Tân')
SET IDENTITY_INSERT [dbo].[TAIKHOAN] OFF
/****** Object:  Table [dbo].[QUAN]    Script Date: 10/09/2015 18:57:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUAN](
	[Ten] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_QUAN] PRIMARY KEY CLUSTERED 
(
	[Ten] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DANHMUC]    Script Date: 10/09/2015 18:57:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANHMUC](
	[MaDanhMuc] [int] NOT NULL,
	[TenDanhMuc] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_DANHMUC] PRIMARY KEY CLUSTERED 
(
	[MaDanhMuc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DANHMUC] ([MaDanhMuc], [TenDanhMuc]) VALUES (1, N'Thời trang nữ')
INSERT [dbo].[DANHMUC] ([MaDanhMuc], [TenDanhMuc]) VALUES (2, N'Thời trang nam')
INSERT [dbo].[DANHMUC] ([MaDanhMuc], [TenDanhMuc]) VALUES (3, N'Mẹ và bé')
/****** Object:  Table [dbo].[CHUNGTU]    Script Date: 10/09/2015 18:57:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUNGTU](
	[MaChungTu] [nchar](10) NOT NULL,
	[MaTaiKhoan] [int] NOT NULL,
	[NgayLap] [datetime] NOT NULL,
	[TongTien] [int] NOT NULL,
	[SoBaiDang] [int] NOT NULL,
 CONSTRAINT [PK_CHUNGTU] PRIMARY KEY CLUSTERED 
(
	[MaChungTu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHANLOAI]    Script Date: 10/09/2015 18:57:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHANLOAI](
	[MaPhanLoai] [int] NOT NULL,
	[TenPhanLoai] [nvarchar](30) NOT NULL,
	[MaDanhMuc] [int] NOT NULL,
 CONSTRAINT [PK_PHANLOAI] PRIMARY KEY CLUSTERED 
(
	[MaPhanLoai] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[PHANLOAI] ([MaPhanLoai], [TenPhanLoai], [MaDanhMuc]) VALUES (1, N'Áo nữ', 1)
INSERT [dbo].[PHANLOAI] ([MaPhanLoai], [TenPhanLoai], [MaDanhMuc]) VALUES (2, N'Váy, Đầm', 1)
INSERT [dbo].[PHANLOAI] ([MaPhanLoai], [TenPhanLoai], [MaDanhMuc]) VALUES (3, N'Quần nữ', 1)
INSERT [dbo].[PHANLOAI] ([MaPhanLoai], [TenPhanLoai], [MaDanhMuc]) VALUES (4, N'Áo nam', 2)
INSERT [dbo].[PHANLOAI] ([MaPhanLoai], [TenPhanLoai], [MaDanhMuc]) VALUES (5, N'Quần nam', 2)
INSERT [dbo].[PHANLOAI] ([MaPhanLoai], [TenPhanLoai], [MaDanhMuc]) VALUES (6, N'Áo bầu', 3)
INSERT [dbo].[PHANLOAI] ([MaPhanLoai], [TenPhanLoai], [MaDanhMuc]) VALUES (7, N'Áo bé', 3)
/****** Object:  Table [dbo].[DONHANGMUA]    Script Date: 10/09/2015 18:57:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONHANGMUA](
	[MaDonHangMua] [int] NOT NULL,
	[MaTaiKhoanMua] [int] NOT NULL,
	[NgayMua] [datetime] NOT NULL,
	[TongTien] [int] NOT NULL,
 CONSTRAINT [PK_DONHANGMUA] PRIMARY KEY CLUSTERED 
(
	[MaDonHangMua] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONHANGBAN]    Script Date: 10/09/2015 18:57:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONHANGBAN](
	[MaDonHangBan] [int] NOT NULL,
	[MaDonHangMua] [int] NOT NULL,
	[MaTaiKhoanBan] [int] NOT NULL,
	[MaTaiKhoanMua] [int] NOT NULL,
	[TongTien] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
 CONSTRAINT [PK_DONHANGBAN] PRIMARY KEY CLUSTERED 
(
	[MaDonHangBan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BAIDANG]    Script Date: 10/09/2015 18:57:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BAIDANG](
	[MaBaiDang] [int] IDENTITY(1,1) NOT NULL,
	[MaTaiKhoan] [int] NOT NULL,
	[NgayDang] [datetime] NOT NULL,
	[TenSanPham] [nvarchar](100) NOT NULL,
	[DonGia] [int] NOT NULL,
	[MoTa] [nvarchar](max) NOT NULL,
	[HinhAnh] [varbinary](max) NULL,
	[MaPhanLoai] [int] NOT NULL,
	[TrangThai] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_BAIDANG] PRIMARY KEY CLUSTERED 
(
	[MaBaiDang] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[BAIDANG] ON
INSERT [dbo].[BAIDANG] ([MaBaiDang], [MaTaiKhoan], [NgayDang], [TenSanPham], [DonGia], [MoTa], [HinhAnh], [MaPhanLoai], [TrangThai]) VALUES (1, 1, CAST(0x0000A52C00000000 AS DateTime), N'Áo si đa', 12, N'ko có gì cả', NULL, 1, N'1')
INSERT [dbo].[BAIDANG] ([MaBaiDang], [MaTaiKhoan], [NgayDang], [TenSanPham], [DonGia], [MoTa], [HinhAnh], [MaPhanLoai], [TrangThai]) VALUES (2, 1, CAST(0x0000A52C00000000 AS DateTime), N'Quần sịp', 5, N'ko có gì luôn', NULL, 3, N'1')
INSERT [dbo].[BAIDANG] ([MaBaiDang], [MaTaiKhoan], [NgayDang], [TenSanPham], [DonGia], [MoTa], [HinhAnh], [MaPhanLoai], [TrangThai]) VALUES (3, 1, CAST(0x0000A52C00000000 AS DateTime), N'Chân váy', 100, N'ko có', NULL, 2, N'1')
INSERT [dbo].[BAIDANG] ([MaBaiDang], [MaTaiKhoan], [NgayDang], [TenSanPham], [DonGia], [MoTa], [HinhAnh], [MaPhanLoai], [TrangThai]) VALUES (4, 1, CAST(0x0000A52C00000000 AS DateTime), N'Áo em bé', 15, N'ko', NULL, 7, N'1')
SET IDENTITY_INSERT [dbo].[BAIDANG] OFF
/****** Object:  Table [dbo].[CT_DONHANG]    Script Date: 10/09/2015 18:57:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_DONHANG](
	[MaDonHangMua] [int] NOT NULL,
	[MaCTDonHang] [int] NOT NULL,
	[MaTaiKhoanBan] [int] NOT NULL,
	[MaBaiDang] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[MauSac] [nvarchar](10) NOT NULL,
	[KichThuoc] [nvarchar](10) NOT NULL,
	[TinhTrang] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_CT_DONHANG] PRIMARY KEY CLUSTERED 
(
	[MaCTDonHang] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_BAIDANG]    Script Date: 10/09/2015 18:57:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_BAIDANG](
	[MaBaiDang] [int] NOT NULL,
	[MauSac] [nvarchar](10) NOT NULL,
	[KichThuoc] [nvarchar](10) NOT NULL,
	[MaCT] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
 CONSTRAINT [PK_CT_BAIDANG] PRIMARY KEY CLUSTERED 
(
	[MaCT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_BAIDANG_PHANLOAI]    Script Date: 10/09/2015 18:57:37 ******/
ALTER TABLE [dbo].[BAIDANG]  WITH CHECK ADD  CONSTRAINT [FK_BAIDANG_PHANLOAI] FOREIGN KEY([MaPhanLoai])
REFERENCES [dbo].[PHANLOAI] ([MaPhanLoai])
GO
ALTER TABLE [dbo].[BAIDANG] CHECK CONSTRAINT [FK_BAIDANG_PHANLOAI]
GO
/****** Object:  ForeignKey [FK_BAIDANG_TAIKHOAN]    Script Date: 10/09/2015 18:57:37 ******/
ALTER TABLE [dbo].[BAIDANG]  WITH CHECK ADD  CONSTRAINT [FK_BAIDANG_TAIKHOAN] FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[TAIKHOAN] ([MaTaiKhoan])
GO
ALTER TABLE [dbo].[BAIDANG] CHECK CONSTRAINT [FK_BAIDANG_TAIKHOAN]
GO
/****** Object:  ForeignKey [FK_CT_BAIDANG_BAIDANG]    Script Date: 10/09/2015 18:57:37 ******/
ALTER TABLE [dbo].[CT_BAIDANG]  WITH CHECK ADD  CONSTRAINT [FK_CT_BAIDANG_BAIDANG] FOREIGN KEY([MaBaiDang])
REFERENCES [dbo].[BAIDANG] ([MaBaiDang])
GO
ALTER TABLE [dbo].[CT_BAIDANG] CHECK CONSTRAINT [FK_CT_BAIDANG_BAIDANG]
GO
/****** Object:  ForeignKey [FK_CT_DONHANG_BAIDANG]    Script Date: 10/09/2015 18:57:37 ******/
ALTER TABLE [dbo].[CT_DONHANG]  WITH CHECK ADD  CONSTRAINT [FK_CT_DONHANG_BAIDANG] FOREIGN KEY([MaBaiDang])
REFERENCES [dbo].[BAIDANG] ([MaBaiDang])
GO
ALTER TABLE [dbo].[CT_DONHANG] CHECK CONSTRAINT [FK_CT_DONHANG_BAIDANG]
GO
/****** Object:  ForeignKey [FK_CT_DONHANG_DONHANGMUA]    Script Date: 10/09/2015 18:57:37 ******/
ALTER TABLE [dbo].[CT_DONHANG]  WITH CHECK ADD  CONSTRAINT [FK_CT_DONHANG_DONHANGMUA] FOREIGN KEY([MaDonHangMua])
REFERENCES [dbo].[DONHANGMUA] ([MaDonHangMua])
GO
ALTER TABLE [dbo].[CT_DONHANG] CHECK CONSTRAINT [FK_CT_DONHANG_DONHANGMUA]
GO
/****** Object:  ForeignKey [FK_CT_DONHANG_TAIKHOAN]    Script Date: 10/09/2015 18:57:37 ******/
ALTER TABLE [dbo].[CT_DONHANG]  WITH CHECK ADD  CONSTRAINT [FK_CT_DONHANG_TAIKHOAN] FOREIGN KEY([MaTaiKhoanBan])
REFERENCES [dbo].[TAIKHOAN] ([MaTaiKhoan])
GO
ALTER TABLE [dbo].[CT_DONHANG] CHECK CONSTRAINT [FK_CT_DONHANG_TAIKHOAN]
GO
/****** Object:  ForeignKey [FK_CHUNGTU_TAIKHOAN]    Script Date: 10/09/2015 18:57:37 ******/
ALTER TABLE [dbo].[CHUNGTU]  WITH CHECK ADD  CONSTRAINT [FK_CHUNGTU_TAIKHOAN] FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[TAIKHOAN] ([MaTaiKhoan])
GO
ALTER TABLE [dbo].[CHUNGTU] CHECK CONSTRAINT [FK_CHUNGTU_TAIKHOAN]
GO
/****** Object:  ForeignKey [FK_DONHANGBAN_DONHANGMUA]    Script Date: 10/09/2015 18:57:37 ******/
ALTER TABLE [dbo].[DONHANGBAN]  WITH CHECK ADD  CONSTRAINT [FK_DONHANGBAN_DONHANGMUA] FOREIGN KEY([MaDonHangMua])
REFERENCES [dbo].[DONHANGMUA] ([MaDonHangMua])
GO
ALTER TABLE [dbo].[DONHANGBAN] CHECK CONSTRAINT [FK_DONHANGBAN_DONHANGMUA]
GO
/****** Object:  ForeignKey [FK_DONHANGBAN_TAIKHOAN]    Script Date: 10/09/2015 18:57:37 ******/
ALTER TABLE [dbo].[DONHANGBAN]  WITH CHECK ADD  CONSTRAINT [FK_DONHANGBAN_TAIKHOAN] FOREIGN KEY([MaTaiKhoanBan])
REFERENCES [dbo].[TAIKHOAN] ([MaTaiKhoan])
GO
ALTER TABLE [dbo].[DONHANGBAN] CHECK CONSTRAINT [FK_DONHANGBAN_TAIKHOAN]
GO
/****** Object:  ForeignKey [FK_DONHANGBAN_TAIKHOAN1]    Script Date: 10/09/2015 18:57:37 ******/
ALTER TABLE [dbo].[DONHANGBAN]  WITH CHECK ADD  CONSTRAINT [FK_DONHANGBAN_TAIKHOAN1] FOREIGN KEY([MaTaiKhoanMua])
REFERENCES [dbo].[TAIKHOAN] ([MaTaiKhoan])
GO
ALTER TABLE [dbo].[DONHANGBAN] CHECK CONSTRAINT [FK_DONHANGBAN_TAIKHOAN1]
GO
/****** Object:  ForeignKey [FK_DONHANGMUA_TAIKHOAN]    Script Date: 10/09/2015 18:57:37 ******/
ALTER TABLE [dbo].[DONHANGMUA]  WITH CHECK ADD  CONSTRAINT [FK_DONHANGMUA_TAIKHOAN] FOREIGN KEY([MaTaiKhoanMua])
REFERENCES [dbo].[TAIKHOAN] ([MaTaiKhoan])
GO
ALTER TABLE [dbo].[DONHANGMUA] CHECK CONSTRAINT [FK_DONHANGMUA_TAIKHOAN]
GO
/****** Object:  ForeignKey [FK_PHANLOAI_DANHMUC]    Script Date: 10/09/2015 18:57:37 ******/
ALTER TABLE [dbo].[PHANLOAI]  WITH CHECK ADD  CONSTRAINT [FK_PHANLOAI_DANHMUC] FOREIGN KEY([MaDanhMuc])
REFERENCES [dbo].[DANHMUC] ([MaDanhMuc])
GO
ALTER TABLE [dbo].[PHANLOAI] CHECK CONSTRAINT [FK_PHANLOAI_DANHMUC]
GO
