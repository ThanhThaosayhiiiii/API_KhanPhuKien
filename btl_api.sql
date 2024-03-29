create database [BTL_API_KhanPhuKien]
go
USE [BTL_API_KhanPhuKien]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[username] [nchar](20) NOT NULL,
	[password] [nchar](20) NOT NULL,
	[quyen] [bit] NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[MaDonHang] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[TenSanPham] [nvarchar](100) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [decimal](10, 0) NOT NULL,
 CONSTRAINT [PK__ChiTietD__DD39F0EF3763352F] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDonHangNhap]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHangNhap](
	[MaDonHang] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[TenSanPham] [nvarchar](100) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](18, 0) NULL,
 CONSTRAINT [PK__ChiTietD__DD39F0EF5D77BBAD] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDonHang] [int] NOT NULL,
	[MaKhachHang] [int] NULL,
	[DuyetDon] [bit] NOT NULL,
	[NgayTao] [datetime] NOT NULL,
 CONSTRAINT [PK__DonHang__129584AD6BF92D6C] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHangNhap]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHangNhap](
	[MaDonHang] [int] NOT NULL,
	[MaNCC] [int] NULL,
	[NgayTao] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKhachHang] [int] NOT NULL,
	[TenKhachHang] [nvarchar](100) NOT NULL,
	[SoDienThoai] [char](10) NOT NULL,
	[username] [nchar](20) NOT NULL,
	[DiaChi] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK__KhachHan__88D2F0E53A5342CB] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[MaLoai] [int] NOT NULL,
	[TenLoai] [nvarchar](100) NOT NULL,
	[MoTa] [nvarchar](max) NULL,
	[HinhAnhMinhHoa] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [int] NOT NULL,
	[TenNCC] [nvarchar](100) NOT NULL,
	[SoDienThoai] [char](10) NOT NULL,
	[DiaChi] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK__NhaCungC__3A185DEBDFA63DA8] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [int] NOT NULL,
	[TenSanPham] [nvarchar](max) NULL,
	[MaLoai] [int] NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](10, 0) NULL,
	[HinhDaiDien] [nvarchar](max) NULL,
	[HinhAnDi] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Account] ([username], [password], [quyen]) VALUES (N'adminthanhthao      ', N'123456              ', 1)
INSERT [dbo].[Account] ([username], [password], [quyen]) VALUES (N'binhbc              ', N'123456              ', 0)
INSERT [dbo].[Account] ([username], [password], [quyen]) VALUES (N'thaoxinggai         ', N'123456              ', 0)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSanPham], [TenSanPham], [SoLuong], [DonGia]) VALUES (1, 1, N'MŨ NÓN CÓI ĐI BIỂN RỘNG VÀNH TRÒN ĐẸP CHO NỮ PHỐI NƠ NHỎ MÀU NÂU TANIN', 1, CAST(245000 AS Decimal(10, 0)))
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSanPham], [TenSanPham], [SoLuong], [DonGia]) VALUES (2, 1, N'MŨ NÓN CÓI ĐI BIỂN RỘNG VÀNH TRÒN ĐẸP CHO NỮ PHỐI NƠ NHỎ MÀU NÂU TANIN', 1, CAST(245000 AS Decimal(10, 0)))
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSanPham], [TenSanPham], [SoLuong], [DonGia]) VALUES (3, 1, N'MŨ NÓN CÓI ĐI BIỂN RỘNG VÀNH TRÒN ĐẸP CHO NỮ PHỐI NƠ NHỎ MÀU NÂU TANIN', 3, CAST(245000 AS Decimal(10, 0)))
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSanPham], [TenSanPham], [SoLuong], [DonGia]) VALUES (3, 5, N'Mũ nón cói đi biển visor nửa đầu đẹp cho nữ cao cấp dây đen', 1, CAST(245000 AS Decimal(10, 0)))
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSanPham], [TenSanPham], [SoLuong], [DonGia]) VALUES (3, 11, N'Khăn quàng choàng cổ nữ đi biển Boho thổ cẩm đẹp cao cấp màu đỏ hoa tiết', 1, CAST(280000 AS Decimal(10, 0)))
GO
INSERT [dbo].[ChiTietDonHangNhap] ([MaDonHang], [MaSanPham], [TenSanPham], [SoLuong], [DonGia]) VALUES (1, 1, N'MŨ NÓN CÓI ĐI BIỂN RỘNG VÀNH TRÒN ĐẸP CHO NỮ PHỐI NƠ NHỎ MÀU NÂU TANIN', 11, CAST(190000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonHangNhap] ([MaDonHang], [MaSanPham], [TenSanPham], [SoLuong], [DonGia]) VALUES (1, 2, N'MŨ NÓN CÓI ĐI BIỂN RỘNG VÀNH TRÒN PHỐI NƠ ĐẸP CHO NỮ', 10, CAST(180000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonHangNhap] ([MaDonHang], [MaSanPham], [TenSanPham], [SoLuong], [DonGia]) VALUES (2, 3, N'Mũ nón cói đi biển rộng vành tròn đẹp cho nữ sợi tự nhiên cao cấp dây trắng', 20, CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonHangNhap] ([MaDonHang], [MaSanPham], [TenSanPham], [SoLuong], [DonGia]) VALUES (2, 4, N'Mũ nón cói đi biển rộng vành tròn đẹp cho nữ form mềm màu nâu sậm kèm nơ', 16, CAST(170000 AS Decimal(18, 0)))
GO
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [DuyetDon], [NgayTao]) VALUES (1, 1, 1, CAST(N'2024-01-06T15:31:29.913' AS DateTime))
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [DuyetDon], [NgayTao]) VALUES (2, 2, 1, CAST(N'2024-01-07T15:44:35.777' AS DateTime))
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [DuyetDon], [NgayTao]) VALUES (3, 3, 0, CAST(N'2024-01-06T23:42:11.690' AS DateTime))
GO
INSERT [dbo].[DonHangNhap] ([MaDonHang], [MaNCC], [NgayTao]) VALUES (1, 1, CAST(N'2023-12-20T07:36:23.997' AS DateTime))
INSERT [dbo].[DonHangNhap] ([MaDonHang], [MaNCC], [NgayTao]) VALUES (2, 2, CAST(N'2023-12-20T07:36:29.420' AS DateTime))
INSERT [dbo].[DonHangNhap] ([MaDonHang], [MaNCC], [NgayTao]) VALUES (3, 3, CAST(N'2023-12-20T15:10:46.027' AS DateTime))
GO
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [username], [DiaChi]) VALUES (1, N'Vũ Thanh Bình', N'0965382843', N'binhbc              ', N'Ngọc Thanh - Kim Động - Hưng Yên')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [username], [DiaChi]) VALUES (2, N'Vũ Thanh Bình', N'0987654321', N'binhbc              ', N'Hưng Yên')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [username], [DiaChi]) VALUES (3, N'Binhbcclc', N'0987654321', N'binhbc              ', N'hy, Xã Đông Phong, Huyện Yên Phong, Tỉnh Bắc Ninh')
GO
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai], [MoTa], [HinhAnhMinhHoa]) VALUES (0, N'0', N'0', N'0')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai], [MoTa], [HinhAnhMinhHoa]) VALUES (1, N'Trang sức', N'trang sức', N'icon_menu_1.png')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai], [MoTa], [HinhAnhMinhHoa]) VALUES (2, N'Mũ nón', N'mũ nón', N'icon_menu_2.png')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai], [MoTa], [HinhAnhMinhHoa]) VALUES (3, N'Khăn quàng', N'khăn', N'icon_menu_3.png')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai], [MoTa], [HinhAnhMinhHoa]) VALUES (4, N'Khăn vuông', N'khăn', N'icon_menu_4.png')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai], [MoTa], [HinhAnhMinhHoa]) VALUES (5, N'Phụ kiện tóc', N'phụ kiện', N'icon_menu_5.png')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai], [MoTa], [HinhAnhMinhHoa]) VALUES (6, N'Dép cói', N'dép', N'icon_menu_6.png')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai], [MoTa], [HinhAnhMinhHoa]) VALUES (7, N'Túi xách & Ví', N'túi', N'icon_menu_7.png')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai], [MoTa], [HinhAnhMinhHoa]) VALUES (8, N'BST Boho Vintage', N'bts', N'icon_menu_8.png')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai], [MoTa], [HinhAnhMinhHoa]) VALUES (9, N'Phụ kiện', N'phụ kiện trẻ em', N'icon_menu_9.png')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai], [MoTa], [HinhAnhMinhHoa]) VALUES (10, N'Hướng dẫn', N'Hướng dẫn', N'icon_menu_10.png')
GO
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SoDienThoai], [DiaChi]) VALUES (1, N'Nhà cung cấp 1', N'0987654321', N'Hưng Yên')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SoDienThoai], [DiaChi]) VALUES (2, N'Nhà cung cấp 2', N'0123456789', N'Hải Dương')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SoDienThoai], [DiaChi]) VALUES (3, N'string', N'string    ', N'string')
GO
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoai], [SoLuong], [DonGia], [HinhDaiDien], [HinhAnDi], [MoTa]) VALUES (0, N'0', 0, 0, CAST(0 AS Decimal(10, 0)), N'0', N'0', N'0')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoai], [SoLuong], [DonGia], [HinhDaiDien], [HinhAnDi], [MoTa]) VALUES (1, N'MŨ NÓN CÓI ĐI BIỂN RỘNG VÀNH TRÒN ĐẸP CHO NỮ PHỐI NƠ NHỎ MÀU NÂU TANIN', 2, 97, CAST(245000 AS Decimal(10, 0)), N'mu_non_di_bien_vintage_071__6__302a08a292054bc4b7e3769d5012e891_1024x1024.jpg', N'8715834439_1514371716_copy_large.jpg', NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoai], [SoLuong], [DonGia], [HinhDaiDien], [HinhAnDi], [MoTa]) VALUES (2, N'MŨ NÓN CÓI ĐI BIỂN RỘNG VÀNH TRÒN PHỐI NƠ ĐẸP CHO NỮ', 2, 102, CAST(245000 AS Decimal(10, 0)), N'non_coi_di_bien_nc018_large.png', N'mu_non_di_bien_vintage_018__1__0d0d359e427f48ee9006aaac36e25267_large.jpg', NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoai], [SoLuong], [DonGia], [HinhDaiDien], [HinhAnDi], [MoTa]) VALUES (3, N'Mũ nón cói đi biển rộng vành tròn đẹp cho nữ sợi tự nhiên cao cấp dây trắng', 2, 100, CAST(245000 AS Decimal(10, 0)), N'non_coi_thoi_trang_nc055__8__large.png', N'non_coi_thoi_trang_nc055__14__large.jpg', NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoai], [SoLuong], [DonGia], [HinhDaiDien], [HinhAnDi], [MoTa]) VALUES (4, N'Mũ nón cói đi biển rộng vành tròn đẹp cho nữ form mềm màu nâu sậm kèm nơ', 2, 100, CAST(245000 AS Decimal(10, 0)), N'8600907693_32571327_large.jpg', N'8600979400_32571327_large.jpg', NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoai], [SoLuong], [DonGia], [HinhDaiDien], [HinhAnDi], [MoTa]) VALUES (5, N'Mũ nón cói đi biển visor nửa đầu đẹp cho nữ cao cấp dây đen', 2, 99, CAST(245000 AS Decimal(10, 0)), N'nc062_c392c2ca131e49deaff84c587b0b80c6_large.jpg', N'non_coi_thoi_trang_nc062__1__large.jpg', NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoai], [SoLuong], [DonGia], [HinhDaiDien], [HinhAnDi], [MoTa]) VALUES (7, N'Mũ nón cói đi biển rộng vành tròn đẹp cho nữ form cứng vành cong thêu chữ M màu nâu đậm', 2, 100, CAST(245000 AS Decimal(10, 0)), N'cf999a63fd40061e5f51_9fb913c3658d4589ba6aea1a6df34479_large.png', N'fbc9136271418a1fd350_c8f61466da634c0e9989dac9a7447e5e_large.jpg', NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoai], [SoLuong], [DonGia], [HinhDaiDien], [HinhAnDi], [MoTa]) VALUES (8, N'Mũ nón cói đi biển rộng vành tròn đẹp cho nữ chụp lồng đèn phối dây dài den màu nâu đậm', 2, 100, CAST(245000 AS Decimal(10, 0)), N'mu_non_di_bien_vintage_173__4__95adc7d52a48457cad0d4bb0731a168a_large.png', N'mu_non_di_bien_vintage_173__4__fa539d39f8c74c5d915e0a5b597e7832_large.png', NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoai], [SoLuong], [DonGia], [HinhDaiDien], [HinhAnDi], [MoTa]) VALUES (9, N'Mũ nón cói đi biển rộng vành tròn đẹp cho nữ form cứng chụp lồng đèn phối dây dài đen màu nâu nhạt', 2, 100, CAST(245000 AS Decimal(10, 0)), N'nc174_13815408d8104520962a6706a6db02e6_large.jpg', N'nc173_174_b2e25cc09c1e48d5b547c67e2c7ff58b_large.jpg', NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoai], [SoLuong], [DonGia], [HinhDaiDien], [HinhAnDi], [MoTa]) VALUES (10, N'Mũ Nồi Nữ Màu Nâu Camel - Mũ Beret Nón Bánh Tiêu', 2, 100, CAST(245000 AS Decimal(10, 0)), N'/mu_noi_beret_2__3__34e9be9865ed4b39a873ab8ab8ad7532_large.jpg', N'img/mu_noi_beret_2__2__b3bb1bdeae6d4d2ca96fc09e1e1d0a4d_large.png', NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoai], [SoLuong], [DonGia], [HinhDaiDien], [HinhAnDi], [MoTa]) VALUES (11, N'Khăn quàng choàng cổ nữ đi biển Boho thổ cẩm đẹp cao cấp màu đỏ hoa tiết', 3, 99, CAST(280000 AS Decimal(10, 0)), N'khan-choang-co-kc071-_6_-recovered_large.png', N'kc071__48__ecc073bed712476c85056710557e834d_large.png', NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoai], [SoLuong], [DonGia], [HinhDaiDien], [HinhAnDi], [MoTa]) VALUES (12, N'Khăn quàng choàng cổ len cashmere giữ ấm màu nâu Tây trơn cao cấp đẹp sang trọng', 3, 100, CAST(280000 AS Decimal(10, 0)), N'khan_choang_co_kc075__2__-_copy_f36acd6bf08c4ad89be0867bf5b8d665_large.png', N'khan_choang_co_kc075__6__large.jpg', NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoai], [SoLuong], [DonGia], [HinhDaiDien], [HinhAnDi], [MoTa]) VALUES (13, N'Khăn quàng choàng cổ len cashmere giữ ấm màu vàng nghệ cao cấp đẹp sang trọng', 3, 100, CAST(280000 AS Decimal(10, 0)), N'kc079__0__9254d026b7d54c39ae2ac9360c557525_grande_3578ab31c5c641e5a99086acfeb69f4e_large.png', N'khan_choang_co_kc079__1__large.jpg', NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoai], [SoLuong], [DonGia], [HinhDaiDien], [HinhAnDi], [MoTa]) VALUES (14, N'Khăn quàng choàng cổ lụa cao cấp cho nữ văn phòng sở đẹp lụa hoa sen trắng xanh', 3, 100, CAST(280000 AS Decimal(10, 0)), N'khan_choang_co_lua_ks021__9__large.jpg', N'khan_choang_co_lua_ks021__4__large.jpg', NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoai], [SoLuong], [DonGia], [HinhDaiDien], [HinhAnDi], [MoTa]) VALUES (15, N'Khăn quàng choàng cổ nữ đi biển Boho thổ cẩm đẹp cao cấp họa tiết caro màu xanh dương', 3, 100, CAST(280000 AS Decimal(10, 0)), N'khan_choang_co_kc032_1__large.png', N'khan_choang_co_kc032_2__large.png', NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoai], [SoLuong], [DonGia], [HinhDaiDien], [HinhAnDi], [MoTa]) VALUES (16, N'Khăn quàng choàng cổ len cashmere giữ ấm màu đỏ đô trơn cao cấp đẹp sang trọng', 3, 100, CAST(280000 AS Decimal(10, 0)), N'khan_choang_co_kc076__4__88da00936b0f41d4901a4318d819289a_large.jpg', N'anhkhan1.png', NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoai], [SoLuong], [DonGia], [HinhDaiDien], [HinhAnDi], [MoTa]) VALUES (17, N'Khăn quàng choàng cổ nữ đi biển Boho thổ cẩm đẹp cao cấp họa tiết màu đỏ xanh dương', 3, 100, CAST(280000 AS Decimal(10, 0)), N'khan_choang_co_kc042_large.png', N'anhkhan2.png', NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoai], [SoLuong], [DonGia], [HinhDaiDien], [HinhAnDi], [MoTa]) VALUES (18, N'Khăn quàng choàng cổ len cashmere giữ ấm màu xám trơn cao cấp đẹp sang trọng', 3, 100, CAST(280000 AS Decimal(10, 0)), N'kc081__0__bb6d764331b44c7993114d64400531bf_large.png', N'khan_choang_co_kc081__4__large.jpg', NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoai], [SoLuong], [DonGia], [HinhDaiDien], [HinhAnDi], [MoTa]) VALUES (19, N'Khăn quàng choàng cổ len cashmere giữ ấm màu đỏ trơn cao cấp đẹp sang trọng', 3, 100, CAST(280000 AS Decimal(10, 0)), N'anhkan3.png', N'khan_choang_co_kc082__2__large.jpg', NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoai], [SoLuong], [DonGia], [HinhDaiDien], [HinhAnDi], [MoTa]) VALUES (20, N'Khăn quàng choàng cổ len cashmere giữ ấm màu hồng nhạt trơn cao cấp đẹp sang trọng', 3, 100, CAST(280000 AS Decimal(10, 0)), N'anhkhan4.png', N'khan_choang_co_kc094__8__large.jpg', NULL)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__LoaiSP__AD2A4A278CFEB6F0]    Script Date: 1/7/2024 8:30:03 PM ******/
ALTER TABLE [dbo].[LoaiSP] ADD UNIQUE NONCLUSTERED 
(
	[TenLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [DF_Account_quyen]  DEFAULT ((0)) FOR [quyen]
GO
ALTER TABLE [dbo].[ChiTietDonHang] ADD  CONSTRAINT [DF_ChiTietDonHang_MaSanPham]  DEFAULT ((0)) FOR [MaSanPham]
GO
ALTER TABLE [dbo].[ChiTietDonHangNhap] ADD  CONSTRAINT [DF_ChiTietDonHangNhap_MaSanPham]  DEFAULT ((0)) FOR [MaSanPham]
GO
ALTER TABLE [dbo].[DonHang] ADD  CONSTRAINT [DF_DonHang_DuyetDon]  DEFAULT ((0)) FOR [DuyetDon]
GO
ALTER TABLE [dbo].[DonHang] ADD  CONSTRAINT [DF__DonHang__NgayTao__4BAC3F29]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[DonHangNhap] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietDo__MaDon__5070F446] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DonHang] ([MaDonHang])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK__ChiTietDo__MaDon__5070F446]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietDo__MaSan__5165187F] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
ON UPDATE CASCADE
ON DELETE SET DEFAULT
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK__ChiTietDo__MaSan__5165187F]
GO
ALTER TABLE [dbo].[ChiTietDonHangNhap]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietDo__MaDon__47DBAE45] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DonHangNhap] ([MaDonHang])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietDonHangNhap] CHECK CONSTRAINT [FK__ChiTietDo__MaDon__47DBAE45]
GO
ALTER TABLE [dbo].[ChiTietDonHangNhap]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietDo__MaSan__48CFD27E] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
ON UPDATE CASCADE
ON DELETE SET DEFAULT
GO
ALTER TABLE [dbo].[ChiTietDonHangNhap] CHECK CONSTRAINT [FK__ChiTietDo__MaSan__48CFD27E]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK__DonHang__MaKhach__4CA06362] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK__DonHang__MaKhach__4CA06362]
GO
ALTER TABLE [dbo].[DonHangNhap]  WITH CHECK ADD  CONSTRAINT [FK__DonHangNh__MaNCC__440B1D61] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DonHangNhap] CHECK CONSTRAINT [FK__DonHangNh__MaNCC__440B1D61]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_Account] FOREIGN KEY([username])
REFERENCES [dbo].[Account] ([username])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_Account]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK__SanPham__MaLoai__3C69FB99] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiSP] ([MaLoai])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK__SanPham__MaLoai__3C69FB99]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [CK__ChiTietDo__SoLuo__4F7CD00D] CHECK  (([SoLuong]>=(0)))
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [CK__ChiTietDo__SoLuo__4F7CD00D]
GO
ALTER TABLE [dbo].[ChiTietDonHangNhap]  WITH CHECK ADD  CONSTRAINT [CK__ChiTietDo__SoLuo__46E78A0C] CHECK  (([SoLuong]>=(0)))
GO
ALTER TABLE [dbo].[ChiTietDonHangNhap] CHECK CONSTRAINT [CK__ChiTietDo__SoLuo__46E78A0C]
GO
/****** Object:  StoredProcedure [dbo].[admin_login]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[admin_login] @user nchar(20),@pass nchar(20)
as
begin
	select * from Account where username=@user and password=@pass and quyen=1
end
GO
/****** Object:  StoredProcedure [dbo].[ban_DuyetDon]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ban_DuyetDon] (@id int)
as
begin
	update DonHang set DuyetDon=1 where MaDonHang=@id
	--UPDATE SanPham
	--SET SoLuong = SoLuong - ChiTietDonHang.SoLuong
	--FROM SanPham
	--INNER JOIN ChiTietDonHang ON SanPham.MaSanPham = ChiTietDonHang.MaSanPham
	--WHERE ChiTietDonHang.MaDonHang = @id;
end
GO
/****** Object:  StoredProcedure [dbo].[ban_huydonhang]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ban_huydonhang](@MaDonHang int)
as
begin
	UPDATE SanPham
	SET SoLuong = SanPham.SoLuong + ChiTietDonHang.SoLuong
	FROM SanPham
	INNER JOIN ChiTietDonHang ON SanPham.MaSanPham = ChiTietDonHang.MaSanPham
	WHERE ChiTietDonHang.MaDonHang = @MaDonHang;
	declare @MaKH int;
	select @MaKH=MaKhachHang from DonHang where MaDonHang=@MaDonHang
	delete KhachHang where MaKhachHang=@MaKH
end
GO
/****** Object:  StoredProcedure [dbo].[ban_showdonchuaduyet]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ban_showdonchuaduyet]
as
begin
	select dh.MaDonHang,kh.MaKhachHang,kh.TenKhachHang,kh.SoDienThoai,kh.DiaChi,dh.NgayTao,sum(ct.DonGia*ct.SoLuong) as TongHD
	from KhachHang kh join DonHang dh on dh.MaKhachHang=kh.MaKhachHang 
		join ChiTietDonHang ct on ct.MaDonHang=dh.MaDonHang
	where DuyetDon=0
	group by dh.MaDonHang,kh.MaKhachHang,kh.TenKhachHang,kh.SoDienThoai,kh.DiaChi,dh.NgayTao
end
GO
/****** Object:  StoredProcedure [dbo].[ban_showdondaduyet]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ban_showdondaduyet]
as
begin
	select dh.MaDonHang,kh.MaKhachHang,kh.TenKhachHang,kh.SoDienThoai,kh.DiaChi,dh.NgayTao,sum(ct.DonGia*ct.SoLuong) as TongHD
	from KhachHang kh join DonHang dh on dh.MaKhachHang=kh.MaKhachHang 
		join ChiTietDonHang ct on ct.MaDonHang=dh.MaDonHang
	where DuyetDon=1
	group by dh.MaDonHang,kh.MaKhachHang,kh.TenKhachHang,kh.SoDienThoai,kh.DiaChi,dh.NgayTao
end
GO
/****** Object:  StoredProcedure [dbo].[ban_showdonhang]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ban_showdonhang] (@MaDonHang int)
as
begin
	select dh.MaDonHang,kh.MaKhachHang,kh.TenKhachHang,kh.SoDienThoai,kh.DiaChi,dh.NgayTao,sum(ct.DonGia*ct.SoLuong) as TongHD
	from KhachHang kh join DonHang dh on dh.MaKhachHang=kh.MaKhachHang 
		join ChiTietDonHang ct on ct.MaDonHang=dh.MaDonHang
	where dh.MaDonHang=@MaDonHang
	group by dh.MaDonHang,kh.MaKhachHang,kh.TenKhachHang,kh.SoDienThoai,kh.DiaChi,dh.NgayTao
end
GO
/****** Object:  StoredProcedure [dbo].[ban_xemChiTietDonHang]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ban_xemChiTietDonHang] (@MaDonHang int)
as
begin
	select *,SoLuong*DonGia as Tong from ChiTietDonHang where MaDonHang=@MaDonHang
end
GO
/****** Object:  StoredProcedure [dbo].[CreateAccount]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateAccount]
    @Username NVARCHAR(50),
    @Password NVARCHAR(50),
    @ResultMessage NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @UsernameExists BIT;

    -- Kiểm tra xem tên người dùng đã tồn tại chưa
    SELECT @UsernameExists = CASE WHEN COUNT(*) > 0 THEN 1 ELSE 0 END
    FROM Account
    WHERE Username = @Username;

    -- Nếu tên người dùng đã tồn tại, trả về thông báo
    IF @UsernameExists = 1
    BEGIN
        SET @ResultMessage = N'Tài khoản đã tồn tại.';
    END
    ELSE
    BEGIN
        -- Nếu tên người dùng chưa tồn tại, thực hiện thêm mới
        INSERT INTO Account(Username, Password,quyen)
        VALUES (@Username, @Password,0);

        SET @ResultMessage = N'Tạo tài khoản thành công.';
    END
	select *,@ResultMessage from Account where username=@Username
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllLoaiSP]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllLoaiSP]
AS
BEGIN
    SELECT *
    FROM LoaiSP where MaLoai!=0;
END;
GO
/****** Object:  StoredProcedure [dbo].[GetAllSanPham]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[GetAllSanPham]
AS
BEGIN
    SELECT *
    FROM SanPham where MaSanPham!=0;
END;
GO
/****** Object:  StoredProcedure [dbo].[GetLoaiSPById]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetLoaiSPById]
    @MaLoai int
AS
BEGIN
    SELECT *
    FROM LoaiSP
    WHERE MaLoai = @MaLoai and MaLoai!=0;
END;
GO
/****** Object:  StoredProcedure [dbo].[GetSanPhamById]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetSanPhamById]
    @MaSanPham int
AS
BEGIN
    SELECT *
    FROM SanPham
    WHERE MaSanPham = @MaSanPham and MaSanPham!=0;
END;
GO
/****** Object:  StoredProcedure [dbo].[Lsp_SuaLoaiSP]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Lsp_SuaLoaiSP]
    @MaLoai int,
    @Ten_Loai nvarchar(100),
    @MoTa nvarchar(max),
	@HinhAnhMinhHoa nvarchar(max)
AS
BEGIN
    UPDATE LoaiSP
    SET TenLoai = @Ten_Loai, MoTa = @MoTa,HinhAnhMinhHoa=@HinhAnhMinhHoa
    WHERE MaLoai = @MaLoai and MaLoai!=0;
END;
GO
/****** Object:  StoredProcedure [dbo].[Lsp_ThemLoaiSP]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Lsp_ThemLoaiSP]
    (
    @Ten_Loai nvarchar(100),
    @MoTa nvarchar(max),
	@HinhAnhMinhHoa nvarchar(max))
AS
BEGIN
	declare @NextMaLoai int;
	select @NextMaLoai=isnull(max(MaLoai),0)+1 from LoaiSP;
    INSERT INTO LoaiSP (MaLoai, TenLoai, MoTa,HinhAnhMinhHoa)
    VALUES (@NextMaLoai, @Ten_Loai, @MoTa,@HinhAnhMinhHoa);
END;
GO
/****** Object:  StoredProcedure [dbo].[ngdung_createdonhang]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ngdung_createdonhang]
(@TenKhachHang nvarchar(50),
@user nchar(20),
@SoDienThoai nchar(10),
@DiaChi nvarchar(100),
@list_json_chitiethoadon NVARCHAR(MAX))
as
begin

	DECLARE @MaKhachHang INT;
	select  @MaKhachHang= isnull(max(MaKhachHang),0)+ 1 from KhachHang;
        INSERT INTO KhachHang(MaKhachHang,TenKhachHang, SoDienThoai, DiaChi,username) VALUES(@MaKhachHang,@TenKhachHang,  @SoDienThoai, @DiaChi,@user);
		DECLARE @Madhn INT;
		select @Madhn= isnull(max(MaDonHang),0)+ 1 from DonHang;
		insert into DonHang(MaDonHang,MaKhachHang) values(@Madhn,@MaKhachHang);
	
		IF(@list_json_chitiethoadon IS NOT NULL)
                    BEGIN
                        INSERT INTO ChiTietDonHang
						 (MaDonHang,
						 MaSanPham, 
						  TenSanPham,
                          SoLuong, 
                          DonGia               
                        )
                    SELECT @Madhn, 
							JSON_VALUE(p.value, '$.maSanPham'),
							JSON_VALUE(p.value, '$.tenSanPham'),
                            JSON_VALUE(p.value, '$.soLuong'), 
                            JSON_VALUE(p.value, '$.donGia')    
                    FROM OPENJSON(@list_json_chitiethoadon) AS p ;
                END;
	UPDATE SanPham
	SET SoLuong = SanPham.SoLuong - ChiTietDonHang.SoLuong
	FROM SanPham
	INNER JOIN ChiTietDonHang ON SanPham.MaSanPham = ChiTietDonHang.MaSanPham
	WHERE ChiTietDonHang.MaDonHang = @Madhn;

	exec ngdung_getdonhangbyID @Madhn
end
GO
/****** Object:  StoredProcedure [dbo].[ngdung_getchitietsp]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ngdung_getchitietsp] @id int
as
begin
	select sp.*, (select * from SanPham where MaLoai=sp.MaLoai and MaSanPham!=0 and MaSanPham!= sp.MaSanPham for json path) as listSP_tt from SanPham sp where sp.MaSanPham!=0 and sp.MaSanPham=@id
end
GO
/****** Object:  StoredProcedure [dbo].[ngdung_getdonhangbyID]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ngdung_getdonhangbyID] @id int
as
begin
 select dh.MaDonHang,kh.TenKhachHang,kh.SoDienThoai,kh.DiaChi,(select * from ChiTietDonHang where MaDonHang=dh.MaDonHang for json path) as list_chitietDH from KhachHang kh join DonHang dh on dh.MaKhachHang=kh.MaKhachHang 
	where dh.MaDonHang=@id;
end
GO
/****** Object:  StoredProcedure [dbo].[ngdung_getdonhangbyuser]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ngdung_getdonhangbyuser] @user nchar(20)
as
begin
	select dh.MaDonHang,kh.TenKhachHang,kh.SoDienThoai,kh.DiaChi,sum(ct.SoLuong * ct.DonGia) as TongHD from KhachHang kh join DonHang dh on dh.MaKhachHang=kh.MaKhachHang
		join ChiTietDonHang ct on ct.MaDonHang=dh.MaDonHang 
		where kh.username=@user
	group by dh.MaDonHang,kh.TenKhachHang,kh.SoDienThoai,kh.DiaChi
end
GO
/****** Object:  StoredProcedure [dbo].[ngdung_loadDanhMuc]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ngdung_loadDanhMuc] 
as
begin
	select * from LoaiSP where MaLoai!=0
end
GO
/****** Object:  StoredProcedure [dbo].[ngdung_loadSanPham_byLoai]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ngdung_loadSanPham_byLoai] @id int 
as
begin
	select * from SanPham where MaLoai!=0 and MaLoai=@id and MaSanPham!=0
end
GO
/****** Object:  StoredProcedure [dbo].[ngdung_sanpham_byname]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ngdung_sanpham_byname] @name nvarchar(max)
as
begin
	select * from SanPham where TenSanPham like N'% '+@name +' %' and MaSanPham!=0
end
GO
/****** Object:  StoredProcedure [dbo].[nguoidung_login]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[nguoidung_login] @user nchar(20),@pass nchar(20)
as
begin
	select * from Account where username=@user and password=@pass
end
GO
/****** Object:  StoredProcedure [dbo].[nhap_create_hdn]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[nhap_create_hdn]
(@TenNCC nvarchar(50),
@SoDienThoai nchar(10),
@DiaChi nvarchar(100),
@list_json_chitiethoadon NVARCHAR(MAX))
as
begin

	DECLARE @Mancc INT;
	select  @Mancc= isnull(max(MaNCC),0)+ 1 from NhaCungCap;
        INSERT INTO NhaCungCap(MaNCC,TenNCC, SoDienThoai, DiaChi) VALUES(@Mancc,@TenNCC,  @SoDienThoai, @DiaChi);
		DECLARE @Madhn INT;
		select @Madhn= isnull(max(MaDonHang),0)+ 1 from DonHangNhap;
		insert into DonHangNhap(MaDonHang,MaNCC) values(@Madhn,@Mancc);
	
		IF(@list_json_chitiethoadon IS NOT NULL)
                    BEGIN
                        INSERT INTO ChiTietDonHangNhap
						 (MaDonHang,
						 MaSanPham, 
						  TenSanPham,
                          SoLuong, 
                          DonGia               
                        )
                    SELECT @Madhn, 
							JSON_VALUE(p.value, '$.MaSanPham'),
							JSON_VALUE(p.value, '$.TenSanPham'),
                            JSON_VALUE(p.value, '$.SoLuong'), 
                            JSON_VALUE(p.value, '$.DonGia')    
                    FROM OPENJSON(@list_json_chitiethoadon) AS p ;
                END;
	UPDATE SanPham
	SET SoLuong = SanPham.SoLuong + ChiTietDonHangNhap.SoLuong
	FROM SanPham
	INNER JOIN ChiTietDonHangNhap ON SanPham.MaSanPham = ChiTietDonHangNhap.MaSanPham
	WHERE ChiTietDonHangNhap.MaDonHang = @Madhn;
end
GO
/****** Object:  StoredProcedure [dbo].[nhap_get_donhang_nhap]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[nhap_get_donhang_nhap] (@MaDonHang int)
as
begin
select dh.MaDonHang,ncc.MaNCC,ncc.TenNCC,ncc.SoDienThoai,dh.NgayTao,sum(ct.SoLuong * ct.DonGia) as TongHD
	from NhaCungCap ncc join DonHangNhap dh on ncc.MaNCC=dh.MaNCC
		join ChiTietDonHangNhap ct on ct.MaDonHang=dh.MaDonHang
	where dh.MaDonHang=@MaDonHang
	group by dh.MaDonHang,ncc.MaNCC,ncc.TenNCC,ncc.SoDienThoai,dh.NgayTao
end
GO
/****** Object:  StoredProcedure [dbo].[nhap_get_donhang_nhap_trongkhoangTG]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[nhap_get_donhang_nhap_trongkhoangTG] (@ngayMin date,@ngayMax date)
as
begin
select dh.MaDonHang,ncc.MaNCC,ncc.TenNCC,ncc.SoDienThoai,dh.NgayTao,sum(ct.SoLuong * ct.DonGia) as TongHD
	from NhaCungCap ncc join DonHangNhap dh on ncc.MaNCC=dh.MaNCC
		join ChiTietDonHangNhap ct on ct.MaDonHang=dh.MaDonHang
	where dh.NgayTao between @ngayMin and @ngayMax
	group by dh.MaDonHang,ncc.MaNCC,ncc.TenNCC,ncc.SoDienThoai,dh.NgayTao
end
GO
/****** Object:  StoredProcedure [dbo].[nhap_hienCT_dhnhap]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[nhap_hienCT_dhnhap] (@MaDonHang int)
as
begin
	select *,SoLuong*DonGia as Tong from ChiTietDonHangNhap where MaDonHang=@MaDonHang
end
GO
/****** Object:  StoredProcedure [dbo].[nhap_hienDanhSach_dhnhap]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[nhap_hienDanhSach_dhnhap]
as
begin
	select dh.MaDonHang,ncc.MaNCC,ncc.TenNCC,ncc.SoDienThoai,dh.NgayTao,sum(ct.SoLuong * ct.DonGia) as TongHD
	from NhaCungCap ncc join DonHangNhap dh on ncc.MaNCC=dh.MaNCC
		join ChiTietDonHangNhap ct on ct.MaDonHang=dh.MaDonHang
	group by dh.MaDonHang,ncc.MaNCC,ncc.TenNCC,ncc.SoDienThoai,dh.NgayTao
end
GO
/****** Object:  StoredProcedure [dbo].[SuaSanPham]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SuaSanPham]
    @MaSanPham int,
    @TenSanPham nvarchar(max),
    @MaLoai int,
    @SoLuong int,
    @DonGia decimal(10,0),
    @HinhDaiDien nvarchar(max),
    @HinhAnDi nvarchar(max),
    @MoTa nvarchar(max)
AS
BEGIN
    UPDATE SanPham
    SET TenSanPham = @TenSanPham, MaLoai = @MaLoai, SoLuong = @SoLuong, DonGia = @DonGia, 
        HinhDaiDien = @HinhDaiDien, HinhAnDi = @HinhAnDi, MoTa = @MoTa
    WHERE MaSanPham = @MaSanPham and MaSanPham!=0;
END;
GO
/****** Object:  StoredProcedure [dbo].[ThemSanPham]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ThemSanPham]
    @MaSanPham int,
    @TenSanPham nvarchar(max),
    @MaLoai int,
    @SoLuong int,
    @DonGia decimal(10,0),
    @HinhDaiDien nvarchar(max),
    @HinhAnDi nvarchar(max),
    @MoTa nvarchar(max)
AS
BEGIN
	declare @NextMaSP int;
	select @NextMaSP=isnull(max(MaSanPham),0)+1 from SanPham
    INSERT INTO SanPham (MaSanPham, TenSanPham, MaLoai, SoLuong, DonGia, HinhDaiDien, HinhAnDi, MoTa)
    VALUES (@NextMaSP, @TenSanPham, @MaLoai, @SoLuong, @DonGia, @HinhDaiDien, @HinhAnDi, @MoTa);
END;
GO
/****** Object:  StoredProcedure [dbo].[thk_ctdoanhthu_thang_nay]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--chi tiết
create proc [dbo].[thk_ctdoanhthu_thang_nay]
as
begin
	select ct.MaSanPham,sp.TenSanPham,sum(ct.SoLuong) as SoLuongBan,ct.DonGia, sum(ct.SoLuong)*ct.DonGia as Tong
	from DonHang dh
	join ChiTietDonHang ct ON ct.MaDonHang = dh.MaDonHang
	join SanPham sp on sp.MaSanPham=ct.MaSanPham
	where year(dh.NgayTao) = year(getdate())
	and month(dh.NgayTao) = month(getdate()) and dh.DuyetDon=1
	group by ct.MaSanPham,sp.TenSanPham,ct.DonGia
end
GO
/****** Object:  StoredProcedure [dbo].[thk_ctdoanhthu_today]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--get chi tiết
create proc [dbo].[thk_ctdoanhthu_today]
as
begin
	select ct.MaSanPham,sp.TenSanPham,sum(ct.SoLuong) as SoLuongBan,ct.DonGia, sum(ct.SoLuong)*ct.DonGia as Tong
	from DonHang dh
	join ChiTietDonHang ct ON ct.MaDonHang = dh.MaDonHang
	join SanPham sp on sp.MaSanPham=ct.MaSanPham
	where  convert(date, dh.NgayTao)=convert(date, getDate())and dh.DuyetDon=1
	group by ct.MaSanPham,sp.TenSanPham,ct.DonGia
end
GO
/****** Object:  StoredProcedure [dbo].[thk_doanhthu_theothang_namnay]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[thk_doanhthu_theothang_namnay]
as
begin
	select MONTH(dh.NgayTao) AS Month, SUM(ct.DonGia * ct.SoLuong) as DoanhThu
	from DonHang dh
	join ChiTietDonHang ct ON ct.MaDonHang = dh.MaDonHang
	where year(dh.NgayTao) = year(getdate())
	and dh.DuyetDon=1
	group by MONTH(dh.NgayTao)
end
GO
/****** Object:  StoredProcedure [dbo].[thk_get_doanhthu_today]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--thống kê doanh thu hôm nay
create proc [dbo].[thk_get_doanhthu_today]
as
begin
	select sum(ct.DonGia * ct.SoLuong) as DoanhThu
	from DonHang dh join ChiTietDonHang ct on ct.MaDonHang=dh.MaDonHang 
	where convert(date, dh.NgayTao)=convert(date, getDate()) and dh.DuyetDon=1
end;
GO
/****** Object:  StoredProcedure [dbo].[thk_get_sp_ton]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[thk_get_sp_ton]
as
begin
	select MaSanPham, TenSanPham,MaLoai,SoLuong,DonGia from SanPham where MaSanPham !=0 order by SoLuong desc
end;
GO
/****** Object:  StoredProcedure [dbo].[thk_getspBanChay]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--thống kê sản phẩm bán chạy khoảng thời gian bất kỳ
CREATE proc [dbo].[thk_getspBanChay] (@top int,@ngayMin date, @ngayMax date)
as
begin
	select top(@top) with ties ct.MaSanPham,ct.TenSanPham,sum(ct.SoLuong) as SoLuongDaBan,ct.DonGia, sum(ct.SoLuong *ct.DonGia) as Tong
	from DonHang dh join ChiTietDonHang ct on ct.MaDonHang=dh.MaDonHang
	where dh.NgayTao between @ngayMin and @ngayMax and dh.DuyetDon=1
	group by ct.MaSanPham,ct.TenSanPham,ct.SoLuong,ct.DonGia
	order by sum(ct.SoLuong) desc
end
GO
/****** Object:  StoredProcedure [dbo].[tk_doanhthu_thangnay]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- thống kê doanh thu tháng này
create proc [dbo].[tk_doanhthu_thangnay]
as
begin
	select SUM(ct.DonGia * ct.SoLuong) as DoanhThu
	from DonHang dh
	join ChiTietDonHang ct ON ct.MaDonHang = dh.MaDonHang
	where year(dh.NgayTao) = year(getdate())
	and month(dh.NgayTao) = month(getdate())
	and dh.DuyetDon=1;
end
GO
/****** Object:  StoredProcedure [dbo].[XoaHDN]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[XoaHDN](@MaDonHang int)
as
begin
	UPDATE SanPham
	SET SoLuong = SanPham.SoLuong - ChiTietDonHangNhap.SoLuong
	FROM SanPham
	INNER JOIN ChiTietDonHangNhap ON SanPham.MaSanPham = ChiTietDonHangNhap.MaSanPham
	WHERE ChiTietDonHangNhap.MaDonHang = @MaDonHang;
	declare @MaNCC int;
	select @MaNCC=MaNCC from DonHangNhap where MaDonHang=@MaDonHang
	delete NhaCungCap where MaNCC=@MaNCC
end
GO
/****** Object:  StoredProcedure [dbo].[XoaLoaiSP]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XoaLoaiSP]
    @MaLoai int
AS
BEGIN
    DELETE FROM LoaiSP
    WHERE MaLoai = @MaLoai and MaLoai!=0;
END;
GO
/****** Object:  StoredProcedure [dbo].[XoaSanPham]    Script Date: 1/7/2024 8:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XoaSanPham]
    @MaSanPham int
AS
BEGIN
    DELETE FROM SanPham
    WHERE MaSanPham = @MaSanPham and MaSanPham!=0;
END;
GO
