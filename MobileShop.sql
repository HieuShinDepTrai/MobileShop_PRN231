USE [master]
GO
/****** Object:  Database [MobileShop]    Script Date: 10/24/2023 11:19:50 AM ******/
CREATE DATABASE [MobileShop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MobileShop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\MobileShop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MobileShop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\MobileShop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [MobileShop] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MobileShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MobileShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MobileShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MobileShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MobileShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MobileShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [MobileShop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MobileShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MobileShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MobileShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MobileShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MobileShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MobileShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MobileShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MobileShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MobileShop] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MobileShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MobileShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MobileShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MobileShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MobileShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MobileShop] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [MobileShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MobileShop] SET RECOVERY FULL 
GO
ALTER DATABASE [MobileShop] SET  MULTI_USER 
GO
ALTER DATABASE [MobileShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MobileShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MobileShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MobileShop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MobileShop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MobileShop] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'MobileShop', N'ON'
GO
ALTER DATABASE [MobileShop] SET QUERY_STORE = ON
GO
ALTER DATABASE [MobileShop] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [MobileShop]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 10/24/2023 11:19:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppConfigs]    Script Date: 10/24/2023 11:19:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppConfigs](
	[Key] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_AppConfigs] PRIMARY KEY CLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppRoleClaims]    Script Date: 10/24/2023 11:19:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppRoles]    Script Date: 10/24/2023 11:19:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppRoles](
	[Id] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[NormalizedName] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserClaims]    Script Date: 10/24/2023 11:19:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserLogins]    Script Date: 10/24/2023 11:19:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserLogins](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](max) NULL,
	[ProviderKey] [nvarchar](max) NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppUserLogins] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserRoles]    Script Date: 10/24/2023 11:19:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AppUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUsers]    Script Date: 10/24/2023 11:19:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUsers](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[NormalizedUserName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[NormalizedEmail] [nvarchar](max) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AppUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserTokens]    Script Date: 10/24/2023 11:19:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserTokens](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 10/24/2023 11:19:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Coupons]    Script Date: 10/24/2023 11:19:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coupons](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](5) NOT NULL,
	[Count] [int] NOT NULL,
	[Promotion] [int] NOT NULL,
	[Describe] [nvarchar](4000) NOT NULL,
 CONSTRAINT [PK_Coupons] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Languages]    Script Date: 10/24/2023 11:19:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Languages](
	[Id] [varchar](5) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[IsDefault] [bit] NOT NULL,
 CONSTRAINT [PK_Languages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 10/24/2023 11:19:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 10/24/2023 11:19:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NULL,
	[CouponId] [int] NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[Status] [int] NOT NULL,
	[ShipName] [nvarchar](max) NULL,
	[ShipAddress] [nvarchar](max) NULL,
	[ShipPhoneNumber] [nvarchar](max) NULL,
	[Total] [decimal](18, 2) NOT NULL,
	[PaymentMethod] [nvarchar](max) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 10/24/2023 11:19:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Stock] [int] NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[Description] [nvarchar](2000) NOT NULL,
	[Details] [nvarchar](max) NULL,
	[Thumbnail] [nvarchar](300) NULL,
	[ProductImage] [nvarchar](300) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 10/24/2023 11:19:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Rating] [int] NOT NULL,
	[Comments] [nvarchar](500) NOT NULL,
	[PublishedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231023081400_InitialDB', N'5.0.4')
GO
INSERT [dbo].[AppRoles] ([Id], [Description], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'8d04dce2-969a-435d-bba4-df3f325983dc', N'Administrator role', N'admin', N'admin', N'c9d1930a-5361-4607-bf7a-3468fc01faa5')
GO
INSERT [dbo].[AppUserRoles] ([UserId], [RoleId]) VALUES (N'69bd714f-9576-45ba-b5b7-f00649be00de', N'8d04dce2-969a-435d-bba4-df3f325983dc')
GO
INSERT [dbo].[AppUsers] ([Id], [Name], [Address], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'566f60d1-46a7-48e0-bab5-08dbd3a098b4', N'Nguyễn Văn Hiếu', N'Ha Noi', N'hieunv3', N'HIEUNV3', N'hieunvhe163104@fpt.edu.vn', N'HIEUNVHE163104@FPT.EDU.VN', 1, N'AQAAAAEAACcQAAAAEDyRVAj96qAF7GYF9AGnez4AGWG2r9ywg/0KB+Jb7elXJaSK/Er6p5/estluH52QRQ==', N'RXKFUF6JBULJ4X32RXVARCKCTAD7HJOP', N'332fc241-7b74-42d4-baa3-0fc1298cb46e', N'0123456789', 0, 0, NULL, 0, 0)
INSERT [dbo].[AppUsers] ([Id], [Name], [Address], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'69bd714f-9576-45ba-b5b7-f00649be00de', N'Nguyễn Văn Hiếu', N'Hà Nội', N'admin', N'ADMIN', N'hieubglgmtcl02@gmail.com', N'hieubglgmtcl02@gmail.com', 1, N'AQAAAAEAACcQAAAAEIuuCFuqoCnEBJePKBeAVJf+1j9pHhMKwN7gT2rRN+yWBk6HUqnbnFF0HVwwFom0TQ==', N'', N'88e94203-dedb-4e65-9398-355a9345d1ee', N'0988561896', 0, 0, NULL, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'iPhone')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'Samsung')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (3, N'Oppo')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (4, N'Vivo')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (5, N'Xiaomi')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (6, N'Nokia')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Coupons] ON 

INSERT [dbo].[Coupons] ([Id], [Code], [Count], [Promotion], [Describe]) VALUES (1, N'HS', 9, 10, N'<p>Nhập mã HS để được chiết khấu 10% tổng giá trị đơn hàng</p>')
SET IDENTITY_INSERT [dbo].[Coupons] OFF
GO
INSERT [dbo].[Languages] ([Id], [Name], [IsDefault]) VALUES (N'en', N'English', 0)
INSERT [dbo].[Languages] ([Id], [Name], [IsDefault]) VALUES (N'vi', N'Tiếng Việt', 1)
GO
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity]) VALUES (1, 1, 1)
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity]) VALUES (2, 2, 1)
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity]) VALUES (2, 7, 1)
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity]) VALUES (3, 5, 1)
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity]) VALUES (3, 18, 1)
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity]) VALUES (4, 1, 1)
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity]) VALUES (5, 4, 3)
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity]) VALUES (5, 5, 1)
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [UserId], [CouponId], [OrderDate], [Status], [ShipName], [ShipAddress], [ShipPhoneNumber], [Total], [PaymentMethod]) VALUES (1, N'566f60d1-46a7-48e0-bab5-08dbd3a098b4', NULL, CAST(N'2023-10-23T16:51:47.8608064' AS DateTime2), 4, N'Nguyễn Văn Hiếu', N'Ha Noi', N'0123456789', CAST(28890000.00 AS Decimal(18, 2)), N'COD')
INSERT [dbo].[Orders] ([Id], [UserId], [CouponId], [OrderDate], [Status], [ShipName], [ShipAddress], [ShipPhoneNumber], [Total], [PaymentMethod]) VALUES (2, N'566f60d1-46a7-48e0-bab5-08dbd3a098b4', NULL, CAST(N'2023-10-23T16:59:48.9397239' AS DateTime2), 4, N'Nguyễn Văn Hiếu', N'Ha Noi', N'0123456789', CAST(35990000.00 AS Decimal(18, 2)), N'COD')
INSERT [dbo].[Orders] ([Id], [UserId], [CouponId], [OrderDate], [Status], [ShipName], [ShipAddress], [ShipPhoneNumber], [Total], [PaymentMethod]) VALUES (3, N'566f60d1-46a7-48e0-bab5-08dbd3a098b4', 1, CAST(N'2023-10-23T17:40:16.3360943' AS DateTime2), 4, N'Nguyễn Văn Hiếu', N'Ha Noi', N'0123456789', CAST(11781000.00 AS Decimal(18, 2)), N'COD')
INSERT [dbo].[Orders] ([Id], [UserId], [CouponId], [OrderDate], [Status], [ShipName], [ShipAddress], [ShipPhoneNumber], [Total], [PaymentMethod]) VALUES (4, N'566f60d1-46a7-48e0-bab5-08dbd3a098b4', NULL, CAST(N'2023-10-23T18:26:17.3695010' AS DateTime2), 5, N'Nguyễn Văn Hiếu', N'Ha Noi', N'0123456789', CAST(28890000.00 AS Decimal(18, 2)), N'COD')
INSERT [dbo].[Orders] ([Id], [UserId], [CouponId], [OrderDate], [Status], [ShipName], [ShipAddress], [ShipPhoneNumber], [Total], [PaymentMethod]) VALUES (5, N'566f60d1-46a7-48e0-bab5-08dbd3a098b4', 1, CAST(N'2023-10-24T10:07:13.4833476' AS DateTime2), 4, N'Nguyễn Văn Hiếu', N'Ha Noi', N'0123456789', CAST(31554000.00 AS Decimal(18, 2)), N'COD')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [DateCreated], [Description], [Details], [Thumbnail], [ProductImage]) VALUES (1, N'iPhone 12 Pro', 1, CAST(28890000.00 AS Decimal(18, 2)), 10, CAST(N'2023-10-23T15:14:00.2652452' AS DateTime2), N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>6.1 inch, OLED, Super Retina XDR, 2532 x 1170 Pixels</td></tr><tr><td>Camera sau</td><td>12.0 MP + 12.0 MP + 12.0 MP</td></tr><tr><td>Camera Selfie</td><td>12.0 MP</td></tr><tr><td>RAM</td><td>6 GB</td></tr><tr><td>Bộ nhớ trong</td><td>128 GB</td></tr><tr><td>CPU</td><td>Apple A14 Bionic</td></tr><tr><td>GPU</td><td>Apple GPU 4 nhân</td></tr><tr><td>Dung lượng pin</td><td>2815 mAh</td></tr><tr><td>Thẻ sim</td><td>2 - 1 eSIM, 1 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>iOS 14</td></tr><tr><td>Xuất xứ</td><td>Trung Quốc</td></tr><tr><td>Thời gian ra mắt</td><td>10/2020</td></tr></tbody></table></figure>', N'Đến với đẳng cấp Pro đích thực, nơi mà những điều đặc biệt đang chờ đón bạn trên iPhone 12 Pro. Từ hệ thống camera Pro chụp thiếu sáng cực đỉnh, kết nối 5G siêu tốc cho đến bộ vi xử lý A14 Bionic nhanh nhất thế giới smartphone, vẫn còn nhiều bất ngờ khác để bạn khám phá.', N'/user-content/aa41caa0-a3d4-44b7-8914-fcecbe5f06d9.jpg', N'/user-content/05664dd5-4258-448c-81e9-7ff7469b1a04.jpg')
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [DateCreated], [Description], [Details], [Thumbnail], [ProductImage]) VALUES (2, N'Samsung Galaxy S21+', 2, CAST(20990000.00 AS Decimal(18, 2)), 4, CAST(N'2023-10-23T15:14:00.2660248' AS DateTime2), N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>6.4 inch, Dynamic AMOLED 2X, FHD+, 1080 x 2340 Pixels</td></tr><tr><td>Camera sau</td><td>12.0 MP + 12.0 MP + 8.0 MP</td></tr><tr><td>Camera Selfie</td><td>32.0 MP</td></tr><tr><td>RAM</td><td>8 GB</td></tr><tr><td>Bộ nhớ trong</td><td>128 GB</td></tr><tr><td>CPU</td><td>Exynos 2100</td></tr><tr><td>Dung lượng pin</td><td>4500 mAh</td></tr><tr><td>Thẻ sim</td><td>2 - 2 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>Android 12</td></tr><tr><td>Xuất xứ</td><td>Việt Nam / Trung Quốc</td></tr><tr><td>Thời gian ra mắt</td><td>01/2022</td></tr></tbody></table></figure>', NULL, N'/user-content/c99fabbf-4b37-4273-b485-e6d563d0ba4b.jpg', N'/user-content/85bf62e6-603b-42cc-b7bf-968e6c3f1e58.jpg')
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [DateCreated], [Description], [Details], [Thumbnail], [ProductImage]) VALUES (3, N'Oppo Reno 5', 3, CAST(8290000.00 AS Decimal(18, 2)), 5, CAST(N'2023-10-23T15:14:00.2660284' AS DateTime2), N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>6.7 inch, AMOLED, FHD+, 1080 x 2412 Pixels</td></tr><tr><td>Camera sau</td><td>64.0 MP + 32.0 MP + 12.0 MP + 8.0 MP</td></tr><tr><td>Camera Selfie</td><td>32.0 MP</td></tr><tr><td>RAM</td><td>8 GB</td></tr><tr><td>Bộ nhớ trong</td><td>128 GB</td></tr><tr><td>CPU</td><td>MediaTek Dimensity 7050 5G</td></tr><tr><td>GPU</td><td>Mali-G68 MC4</td></tr><tr><td>Dung lượng pin</td><td>5000 mAh</td></tr><tr><td>Thẻ sim</td><td>2 - 2 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>Android 13.0</td></tr><tr><td>Xuất xứ</td><td>Trung Quốc</td></tr><tr><td>Thời gian ra mắt</td><td>07/2023</td></tr></tbody></table></figure>', N'Điện thoại OPPO Reno10 5G tự tin là chuyên gia chân dung thế hệ mới toàn năng với camera tele 32MP vượt trội trong ngành, giúp bạn trở thành chuyên gia nhiếp ảnh thực thụ một cách dễ dàng. Kết hợp đó là hiệu năng mượt mà Dimensity 7050, sạc nhanh 67W, sẵn sàng mang tới trải nghiệm di động xuất sắc cho người dùng.', N'/user-content/9a81f92b-eac0-4db6-87e3-d664150f8d91.webp', N'/user-content/acb6ce7f-9b8c-4dc2-9a10-ee6f09f1f009.webp')
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [DateCreated], [Description], [Details], [Thumbnail], [ProductImage]) VALUES (4, N'Vivo V21 5G', 4, CAST(9990000.00 AS Decimal(18, 2)), 2, CAST(N'2023-10-23T15:14:00.2660286' AS DateTime2), N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>6.44 inch, AMOLED, FHD+, 2408 x 1080 Pixels</td></tr><tr><td>Camera sau</td><td>64.0 MP + 8.0 MP + 2.0 MP</td></tr><tr><td>Camera Selfie</td><td>44.0 MP</td></tr><tr><td>RAM</td><td>8 GB</td></tr><tr><td>Bộ nhớ trong</td><td>128 GB</td></tr><tr><td>CPU</td><td>MediaTek Dimensity 800U</td></tr><tr><td>GPU</td><td>Mali-G57 MC3</td></tr><tr><td>Dung lượng pin</td><td>4000 mAh</td></tr><tr><td>Thẻ sim</td><td>2 - 2 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>Android 11</td></tr><tr><td>Xuất xứ</td><td>Trung Quốc</td></tr><tr><td>Thời gian ra mắt</td><td>05/2021</td></tr></tbody></table></figure>', N'Tận hưởng khả năng chụp đêm xuất sắc trên Vivo V21 5G, chiếc điện thoại sở hữu tính năng chống rung quang học cao cấp ở cả camera chính và camera selfie. Bên cạnh đó bạn còn là người làm chủ cuộc chơi với tốc độ từ màn hình 90Hz và mạng 5G siêu tốc.', N'/user-content/b627900b-0257-4f4f-8a1c-bdb9d713d8ff.png', N'/user-content/6efbb2a5-35a7-4ae5-b6ab-f615f6e157ac.png')
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [DateCreated], [Description], [Details], [Thumbnail], [ProductImage]) VALUES (5, N'Xiaomi Redmi Note 10', 5, CAST(5090000.00 AS Decimal(18, 2)), 3, CAST(N'2023-10-23T15:14:00.2660288' AS DateTime2), N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>6.5 inch, IPS LCD, FHD+, 1080 x 2400 Pixels</td></tr><tr><td>Camera sau</td><td>48.0 MP + 2.0 MP + 2.0 MP</td></tr><tr><td>Camera Selfie</td><td>8.0 MP</td></tr><tr><td>RAM</td><td>4 GB</td></tr><tr><td>Bộ nhớ trong</td><td>128 GB</td></tr><tr><td>CPU</td><td>MediaTek Dimensity 700</td></tr><tr><td>GPU</td><td>Mali-G52 MC2</td></tr><tr><td>Dung lượng pin</td><td>5000 mAh</td></tr><tr><td>Thẻ sim</td><td>2 - 2 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>Android 11</td></tr><tr><td>Xuất xứ</td><td>Trung Quốc</td></tr><tr><td>Thời gian ra mắt</td><td>05/2021</td></tr></tbody></table></figure>', N'Làm chủ cuộc chơi tốc độ với Xiaomi Redmi Note 10 5G, nơi bạn được trải nghiệm mạng di động siêu tốc mọi lúc mọi nơi, màn hình 90Hz mượt mà hơn bao giờ hết, sẵn sàng cùng bạn chinh phục mọi thử thách.', N'/user-content/6e8e46f2-4243-4f3e-a09a-8f689fe7fb5c.jpg', N'/user-content/ce059b44-0a93-466a-b821-8ce0da2927a0.jpg')
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [DateCreated], [Description], [Details], [Thumbnail], [ProductImage]) VALUES (6, N'Nokia 5.4', 6, CAST(3290000.00 AS Decimal(18, 2)), 5, CAST(N'2023-10-23T15:14:00.2660289' AS DateTime2), N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>6.39 inch, IPS LCD, HD+, 720 x 1560 Pixels</td></tr><tr><td>Camera sau</td><td>48.0 MP + 5.0 MP + 2.0 MP + 2.0 MP</td></tr><tr><td>Camera Selfie</td><td>16.0 MP</td></tr><tr><td>RAM</td><td>4 GB</td></tr><tr><td>Bộ nhớ trong</td><td>128 GB</td></tr><tr><td>CPU</td><td>Snapdragon 662</td></tr><tr><td>GPU</td><td>Adreno 616</td></tr><tr><td>Dung lượng pin</td><td>4000 mAh</td></tr><tr><td>Thẻ sim</td><td>2 - 2 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>Android 10</td></tr><tr><td>Xuất xứ</td><td>Trung Quốc</td></tr><tr><td>Thời gian ra mắt</td><td>01/2021</td></tr></tbody></table></figure>', N'Nhiếp ảnh chuyên nghiệp
Với 4 camera sau 48MP đẳng cấp, Nokia 5.4 có thể dễ dàng ghi lại mọi vẻ đẹp cuộc sống bằng những bức ảnh sắc nét, sống động nhất. Bên cạnh đó bạn còn có các công cụ chỉnh sửa để hậu kỳ một cách chuyên nghiệp ngay trên điện thoại, trước khi lưu giữ hoặc chia sẻ lên mạng xã hội.

Điện thoại Nokia 5.4 | Camera chuyên nghiệp

Khám phá loạt tính năng chụp ảnh thú vị
Sự kết hợp của camera chính và các camera phụ trên Nokia 5.4 mang đến cho bạn loạt tính năng thú vị không ngờ. Bạn sẽ tỏa sáng hơn trong những bức ảnh chân dung xóa phông làm mờ hậu cảnh đầy nghệ thuật; thỏa sức ghi lại khung cảnh rộng lớn bằng camera góc siêu rộng hay chụp những bức ảnh siêu cận cảnh để khám phá vẻ đẹp thế giới vi mô nhỏ bé.

Điện thoại Nokia 5.4 | Nhiều tính năng chụp ảnh thú vị

Quay video chuẩn điện ảnh
Không chỉ chụp ảnh, bạn còn có thể sáng tạo không ngờ với chế độ quay phim chuẩn điện ảnh và tính năng chỉnh màu chuyên nghiệp. Tự quay những đoạn vlog hay ghi lại các nơi mình đã đi qua, Nokia 5.4 luôn bên bạn để làm những điều thú vị.

Điện thoại Nokia 5.4 | Quay video chuẩn điện ảnh

Tỏa sáng rạng ngời bằng camera trước 16MP
Điện thoại Nokia 5.4 gây bất ngờ với camera trước độ phân giải cao 16MP. Với camera này, thật dễ dàng để bạn ghi lại những bức ảnh “tự sướng” độ nét cao, tự tin tỏa sáng rạng rỡ. Tất nhiên các đoạn gọi video hay livestream của bạn cũng chất lượng hơn rất nhiều.

Điện thoại Nokia 5.4 | Camera trước với độ phân giải cao

Phản hồi nhanh chóng với hiệu năng AI
Trang bị bộ vi xử lý Snapdragon 662, Nokia 5.4 không chỉ mạnh mẽ mà còn hoạt động nhanh hơn từng ngày nhờ khả năng học hỏi của trí tuệ nhân tạo AI. Công nghệ AI sẽ dựa theo thói quen sử dụng của bạn để tiên đoán những việc tiếp theo, qua đó phản hồi nhanh hơn, không để bạn phải chờ đợi.

Điện thoại Nokia 5.4 | Phản hồi nhanh chóng nhờ công nghệ AI

Bền bỉ và an toàn
Thương hiệu Nokia chính là sự bền bỉ và an toàn, kể cả phần cứng lẫn phần mềm. Nokia 5.4 hỗ trợ tới 3 năm cập nhật hệ thống bảo mật, 2 lần cập nhật hệ điều hành lớn cùng thời lượng pin bền bỉ, để bạn có thể yên tâm sử dụng ổn định trong thời gian dài.

Điện thoại Nokia 5.4 | Bền bỉ và an toàn

Màn hình lớn cho những trải nghiệm lớn
Với màn hình lớn 6,39 inch HD+ “đục lỗ” tinh tế, bạn sẽ có không gian hiển thị nội dung tuyệt vời. Dù là truyền phát trực tiếp, chơi game hay duyệt web, vào mạng xã hội, mọi thứ cũng trở nên ấn tượng hơn. Bên cạnh màn hình, thiết kế Nokia 5.4 cũng vô cùng bắt mắt với kiểu dáng Bắc Âu lịch lãm và những màu sắc đậm phong cách.

Điện thoại Nokia 5.4 | Màn hình lớn 6.39 inch

Thời lượng pin lên tới 2 ngày
Thoải mái tận hưởng những điều bạn yêu thích mà không cần quan tâm đến thời lượng pin. Đơn giản vì Nokia 5.4 có thể sử dụng tới 2 ngày liên tục sau một lần sạc đầy. Công nghệ pin thích ứng và sự hỗ trợ của AI cho phép bạn sử dụng lâu hơn, khi các ứng dụng được tối ưu và quản lý điện năng thông minh.

Điện thoại Nokia 5.4 | Dung lượng pin lớn

Hệ điều hành Android One
Luôn đảm bảo tính bảo mật cùng việc thường xuyên cập nhật tính năng mới, đó là những gì hệ điều hành Android One mang lại cho Nokia 5.4. Đây cũng là một lợi thế lớn về phần mềm của Nokia so với các đối thủ khác. Sẵn sàng với Android 11 mới nhất, trải nghiệm giao diện thân thiện và dễ sử dụng, Nokia 5.4 giúp bạn trở thành người dẫn đầu.', N'/user-content/d1b54a4b-f10c-4145-b8d5-9a278483b499.webp', N'/user-content/234bb5c4-89ef-4f8d-84e1-918d115afba3.webp')
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [DateCreated], [Description], [Details], [Thumbnail], [ProductImage]) VALUES (7, N'IPhone X', 1, CAST(15000000.00 AS Decimal(18, 2)), 9, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>5.8 inch, Super AMOLED, 1125 x 2436 Pixels</td></tr><tr><td>Camera sau</td><td>12.0 MP + 12.0 MP</td></tr><tr><td>Camera Selfie</td><td>7.0 MP</td></tr><tr><td>RAM</td><td>4 GB</td></tr><tr><td>Bộ nhớ trong</td><td>64 GB</td></tr><tr><td>CPU</td><td>Apple A12 Bionic</td></tr><tr><td>GPU</td><td>Apple GPU 4 nhân</td></tr><tr><td>Dung lượng pin</td><td>2658 mAh</td></tr><tr><td>Thẻ sim</td><td>1 - 1 eSIM, 1 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>iOS 12</td></tr><tr><td>Xuất xứ</td><td>Trung Quốc</td></tr><tr><td>Thời gian ra mắt</td><td>09/2018</td></tr></tbody></table></figure>', N'iPhone X sở hữu bộ vi xử lý mạnh mẽ và thông minh nhất từ trước tới nay trong thế giới smartphone, đồng thời hệ thống camera kép cũng được nâng lên một tầm cao mới.', N'/user-content/d91f88bc-32af-40d9-b44f-64663d81bb1c.jpg', N'/user-content/fcc542dd-0641-4156-be86-0d3ae3a3d7d8.jpg')
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [DateCreated], [Description], [Details], [Thumbnail], [ProductImage]) VALUES (8, N'IPhone XS Max', 1, CAST(17000000.00 AS Decimal(18, 2)), 10, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>5.8 inch, Super AMOLED, 1125 x 2436 Pixels</td></tr><tr><td>Camera sau</td><td>12.0 MP + 12.0 MP</td></tr><tr><td>Camera Selfie</td><td>7.0 MP</td></tr><tr><td>RAM</td><td>4 GB</td></tr><tr><td>Bộ nhớ trong</td><td>64 GB</td></tr><tr><td>CPU</td><td>Apple A12 Bionic</td></tr><tr><td>GPU</td><td>Apple GPU 4 nhân</td></tr><tr><td>Dung lượng pin</td><td>2658 mAh</td></tr><tr><td>Thẻ sim</td><td>1 - 1 eSIM, 1 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>iOS 12</td></tr><tr><td>Xuất xứ</td><td>Trung Quốc</td></tr><tr><td>Thời gian ra mắt</td><td>09/2018</td></tr></tbody></table></figure>', N'iPhone Xs sở hữu bộ vi xử lý mạnh mẽ và thông minh nhất từ trước tới nay trong thế giới smartphone, đồng thời hệ thống camera kép cũng được nâng lên một tầm cao mới.', N'/user-content/27f75a7b-837e-4c7f-9697-eed0f94a9546.jpg', N'/user-content/c2a3da8e-2b97-428d-a7fa-834770c45281.jpg')
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [DateCreated], [Description], [Details], [Thumbnail], [ProductImage]) VALUES (9, N'IPhone XR', 1, CAST(16000000.00 AS Decimal(18, 2)), 10, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>6.1 inch, IPS LCD, Liquid Retina HD, 828 x 1792 Pixels</td></tr><tr><td>Camera sau</td><td>12.0 MP</td></tr><tr><td>Camera Selfie</td><td>7.0 MP</td></tr><tr><td>RAM</td><td>3 GB</td></tr><tr><td>Bộ nhớ trong</td><td>64 GB</td></tr><tr><td>CPU</td><td>Apple A12 Bionic</td></tr><tr><td>GPU</td><td>Apple GPU 4 nhân</td></tr><tr><td>Dung lượng pin</td><td>2942 mAh</td></tr><tr><td>Thẻ sim</td><td>2 - 1 eSIM, 1 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>iOS 14</td></tr><tr><td>Xuất xứ</td><td>Trung Quốc</td></tr><tr><td>Thời gian ra mắt</td><td>09/2018</td></tr></tbody></table></figure>', N'Chiếc iPhone với màn hình Liquid Retina hoàn toàn mới, công nghệ màn hình LCD tiên tiến nhất đi cùng Face ID nhanh hơn, con chip mạnh mẽ và hệ thống camera xóa phông hoàn hảo. Đó chính là iPhone XR với nhiều màu sắc tuyệt vời đang chờ đón bạn.', N'/user-content/bd4e3548-d357-4cfe-a200-ab4b816fa654.jpg', N'/user-content/5167ba7f-7baf-4334-a692-951e39952640.jpg')
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [DateCreated], [Description], [Details], [Thumbnail], [ProductImage]) VALUES (10, N'IPhone 11 Promax', 1, CAST(24000000.00 AS Decimal(18, 2)), 10, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>6.5 inch, OLED, 1242 x 2688 Pixels</td></tr><tr><td>Camera sau</td><td>12.0 MP + 12.0 MP + 12.0 MP</td></tr><tr><td>Camera Selfie</td><td>12.0 MP</td></tr><tr><td>RAM</td><td>4 GB</td></tr><tr><td>Bộ nhớ trong</td><td>64 GB</td></tr><tr><td>CPU</td><td>Apple A13 Bionic</td></tr><tr><td>GPU</td><td>Apple GPU 4 nhân</td></tr><tr><td>Dung lượng pin</td><td>3969 mAh</td></tr><tr><td>Thẻ sim</td><td>1 - 1 eSIM, 1 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>iOS 14</td></tr><tr><td>Thời gian ra mắt</td><td>11/2019</td></tr></tbody></table></figure>', N'Chiếc iPhone mạnh mẽ nhất, lớn nhất, thời lượng pin tốt nhất đã xuất hiện. iPhone 11 Pro Max chắc chắn là chiếc điện thoại mà ai cũng ao ước khi sở hữu những tính năng xuất sắc nhất, đặc biệt là camera và pin.', N'/user-content/b75b2958-e891-4a02-b76f-e129e1c9fb6f.jpg', N'/user-content/6509da77-651d-4b4e-8086-89efe061a178.jpg')
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [DateCreated], [Description], [Details], [Thumbnail], [ProductImage]) VALUES (11, N'IPhone 13 Promax', 1, CAST(30000000.00 AS Decimal(18, 2)), 10, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>6.7 inch, OLED, Super Retina XDR, 2778 x 1284 Pixels</td></tr><tr><td>Camera sau</td><td>12.0 MP + 12.0 MP + 12.0 MP</td></tr><tr><td>Camera Selfie</td><td>12.0 MP</td></tr><tr><td>RAM</td><td>6 GB</td></tr><tr><td>Bộ nhớ trong</td><td>128 GB</td></tr><tr><td>CPU</td><td>Apple A15 Bionic</td></tr><tr><td>GPU</td><td>Apple GPU 5 nhân</td></tr><tr><td>Dung lượng pin</td><td>4352 mAh</td></tr><tr><td>Thẻ sim</td><td>1 - 1 eSIM, 1 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>iOS 15</td></tr><tr><td>Xuất xứ</td><td>Trung Quốc</td></tr><tr><td>Thời gian ra mắt</td><td>09/2021</td></tr></tbody></table></figure>', N'iPhone 13 Pro Max xứng đáng là một chiếc iPhone lớn nhất, mạnh mẽ nhất và có thời lượng pin dài nhất từ trước đến nay sẽ cho bạn trải nghiệm tuyệt vời, từ những tác vụ bình thường cho đến các ứng dụng chuyên nghiệp.', N'/user-content/4f292e0b-a883-46f9-8001-2949fbd26244.jpg', N'/user-content/7b822484-c692-414e-8121-3ec9b314d553.jpg')
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [DateCreated], [Description], [Details], [Thumbnail], [ProductImage]) VALUES (12, N'IPhone 14 Promax', 1, CAST(35000000.00 AS Decimal(18, 2)), 10, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>6.7 inch, OLED, Super Retina XDR, 2796 x 1290 Pixels</td></tr><tr><td>Camera sau</td><td>48.0 MP + 12.0 MP + 12.0 MP</td></tr><tr><td>Camera Selfie</td><td>12.0 MP</td></tr><tr><td>RAM</td><td>6 GB</td></tr><tr><td>Bộ nhớ trong</td><td>128 GB</td></tr><tr><td>CPU</td><td>Apple A16 Bionic</td></tr><tr><td>GPU</td><td>Apple GPU 5 nhân</td></tr><tr><td>Dung lượng pin</td><td>4323 mAh</td></tr><tr><td>Thẻ sim</td><td>1 - 1 eSIM, 1 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>iOS 16</td></tr><tr><td>Xuất xứ</td><td>Trung Quốc</td></tr><tr><td>Thời gian ra mắt</td><td>09/2022</td></tr></tbody></table></figure>', N'iPhone 14 Pro Max đem đến những trải nghiệm không thể tìm thấy trên mọi thế hệ iPhone trước đó với màu Tím Deep Purple sang trọng, camera 48MP lần đầu xuất hiện, chip A16 Bionic và màn hình “viên thuốc” Dynamic Island linh hoạt, nịnh mắt.', N'/user-content/315e6f09-2f7c-4d8e-9e43-8bd81e2a3b13.jpeg', N'/user-content/bc4d8c62-cfe3-4f0d-aab8-165500ce5eb8.jpeg')
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [DateCreated], [Description], [Details], [Thumbnail], [ProductImage]) VALUES (13, N'IPhone 15 Promax', 1, CAST(40000000.00 AS Decimal(18, 2)), 10, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>6.7 inch, OLED, Super Retina XDR, 2796 x 1290 Pixels</td></tr><tr><td>Camera sau</td><td>48.0 MP + 12.0 MP + 12.0 MP</td></tr><tr><td>Camera Selfie</td><td>12.0 MP</td></tr><tr><td>RAM</td><td>8 GB</td></tr><tr><td>Bộ nhớ trong</td><td>256 GB</td></tr><tr><td>CPU</td><td>Apple A17 Pro</td></tr><tr><td>Dung lượng pin</td><td>29 Giờ</td></tr><tr><td>Thẻ sim</td><td>1 - 1 eSIM, 1 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>iOS 17</td></tr><tr><td>Xuất xứ</td><td>Trung Quốc</td></tr><tr><td>Thời gian ra mắt</td><td>09/2023</td></tr></tbody></table></figure>', N'iPhone 15 Pro Max là chiếc iPhone cao cấp nhất với màn hình lớn nhất, thời lượng pin tốt nhất, cấu hình mạnh nhất và thiết kế khung Titan chuẩn hàng không vũ trụ siêu bền, siêu nhẹ. iPhone 15 Pro Max sở hữu những điểm vượt trội nhất nhà Apple. Theo đó, người dùng sẽ trải nghiệm chiếc iPhone cao cấp với hiệu năng “khủng” chip A17 Pro, khung titan, khả năng zoom nâng cấp, nút tác vụ mới,…', N'/user-content/f4e19525-1df2-42a6-bfb2-559b8e9aaf03.jpeg', N'/user-content/4ac4b1f7-ab67-4537-9408-7697877604bb.jpeg')
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [DateCreated], [Description], [Details], [Thumbnail], [ProductImage]) VALUES (14, N'SamSung S23 Ultra 5G', 2, CAST(30000000.00 AS Decimal(18, 2)), 30, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>6.8 inch, Dynamic AMOLED 2X, QHD+, 1440 x 3088 Pixels</td></tr><tr><td>Camera sau</td><td>200.0 MP + 12.0 MP + 10.0 MP + 10.0 MP</td></tr><tr><td>Camera Selfie</td><td>12.0 MP</td></tr><tr><td>RAM</td><td>8 GB</td></tr><tr><td>Bộ nhớ trong</td><td>256 GB</td></tr><tr><td>CPU</td><td>Snapdragon 8 Gen 2</td></tr><tr><td>Dung lượng pin</td><td>5000 mAh</td></tr><tr><td>Thẻ sim</td><td>1 - 2 Nano SIM hoặc 1 eSIM, 1 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>Android 13.0</td></tr><tr><td>Xuất xứ</td><td>Việt Nam / Trung Quốc</td></tr><tr><td>Thời gian ra mắt</td><td>02/2023</td></tr></tbody></table></figure>', N'Tự hào là điện thoại Galaxy đầu tiên sở hữu cảm biến tuyệt đỉnh 200MP, Samsung Galaxy S23 Ultra đưa người dùng vào không gian nhiếp ảnh tân tiến vượt trội. Sức mạnh còn bùng nổ với vi xử lý Snapdragon mạnh nhất cho cách mạng hiệu năng gaming đột phá. Tất cả được gói gọn trong thiết kế cao cấp và bền vững cho hiện tại và tương lai.', N'/user-content/a8bd3bd2-aaaa-4249-a654-b507bfdb6cd0.webp', N'/user-content/4cc9cf3e-e1ba-4939-b71e-aa844de0e87e.webp')
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [DateCreated], [Description], [Details], [Thumbnail], [ProductImage]) VALUES (15, N'SamSung Galaxy ZFold 4', 2, CAST(40000000.00 AS Decimal(18, 2)), 10, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>7.6 inch, Dynamic AMOLED 2X, WXGA+, Màn hình chính: 2176 x 1812 Pixels</td></tr><tr><td>Camera sau</td><td>50.0 MP + 12.0 MP + 10.0 MP</td></tr><tr><td>Camera Selfie</td><td>10.0 MP + 4.0 MP</td></tr><tr><td>RAM</td><td>12 GB</td></tr><tr><td>Bộ nhớ trong</td><td>256 GB</td></tr><tr><td>CPU</td><td>Snapdragon 8+ Gen 1</td></tr><tr><td>GPU</td><td>Adreno 670</td></tr><tr><td>Dung lượng pin</td><td>4400 mAh</td></tr><tr><td>Thẻ sim</td><td>2 - 1 eSIM, 1 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>Android 12</td></tr><tr><td>Xuất xứ</td><td>Việt Nam</td></tr><tr><td>Thời gian ra mắt</td><td>04/2023</td></tr></tbody></table></figure>', N'Với Samsung Galaxy Z Fold4, smartphone màn hình gập đã trở nên thân thiện, tiện dụng và bền bỉ hơn rất nhiều. Những cải tiến thiết thực trong từng khía cạnh giúp sản phẩm biến hóa linh hoạt hơn và đem lại những trải nghiệm không thể tìm thấy ở đâu khác.', N'/user-content/1da97a14-4aab-4160-b5bf-c9426c0a8497.jpg', N'/user-content/c4fb3cda-fab4-4e90-9d66-d7add03964da.jpg')
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [DateCreated], [Description], [Details], [Thumbnail], [ProductImage]) VALUES (16, N'SamSung Galaxy ZFlip 4', 2, CAST(25000000.00 AS Decimal(18, 2)), 15, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>6.7 inch, Dynamic AMOLED 2X, FHD+, 1080 x 2636 Pixels</td></tr><tr><td>Camera sau</td><td>12.0 MP + 12.0 MP</td></tr><tr><td>Camera Selfie</td><td>10.0 MP</td></tr><tr><td>RAM</td><td>8 GB</td></tr><tr><td>Bộ nhớ trong</td><td>128 GB</td></tr><tr><td>CPU</td><td>Snapdragon 8+ Gen 1</td></tr><tr><td>Dung lượng pin</td><td>3700 mAh</td></tr><tr><td>Thẻ sim</td><td>2 - 1 eSIM, 1 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>Android 12</td></tr><tr><td>Xuất xứ</td><td>Việt Nam</td></tr><tr><td>Thời gian ra mắt</td><td>08/2022</td></tr></tbody></table></figure>', N'Nhỏ gọn và tinh tế, Samsung Galaxy Z Flip4 là chiếc smartphone sinh ra dành cho các tín đồ thời trang. Cơ chế gập duyên dáng, bộ màu sắc nhẹ nhàng và loạt chức năng quay chụp sẽ làm say lòng những người yêu cái đẹp.', N'/user-content/8844c1ca-c420-4969-acbc-8b1f35dfd7eb.jpg', N'/user-content/0645930c-9cec-4385-9151-04d518a43c99.jpg')
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [DateCreated], [Description], [Details], [Thumbnail], [ProductImage]) VALUES (17, N'SamSung Galaxy A23', 2, CAST(10000000.00 AS Decimal(18, 2)), 8, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>6.6 inch, PLS LCD, FHD+, 1080 x 2408 Pixels</td></tr><tr><td>Camera sau</td><td>50.0 MP + 5.0 MP + 2.0 MP + 2.0 MP</td></tr><tr><td>Camera Selfie</td><td>8.0 MP</td></tr><tr><td>RAM</td><td>4 GB</td></tr><tr><td>Bộ nhớ trong</td><td>128 GB</td></tr><tr><td>CPU</td><td>Snapdragon 695 5G</td></tr><tr><td>Dung lượng pin</td><td>5000 mAh</td></tr><tr><td>Thẻ sim</td><td>2 - 2 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>Android 12</td></tr><tr><td>Xuất xứ</td><td>Việt Nam / Trung Quốc</td></tr><tr><td>Thời gian ra mắt</td><td>2022</td></tr></tbody></table></figure>', N'Chiến thần smartphone tầm trung gọi tên Samsung Galaxy A23 5G với những tính năng đột phá từ màn hình 120Hz mượt mà, 4 camera 50MP cho đến hiệu năng “khủng” Snapdragon 695, sẵn sàng cùng bạn khai mở tiềm lực công nghệ tối ưu để tận hưởng cuộc sống tiện lợi và thông minh.', N'/user-content/596a7585-1e03-4170-b2a5-4d36edcb2b5f.jpg', N'/user-content/e11a8ffe-851e-4e73-94b9-f41ee227cae2.jpg')
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [DateCreated], [Description], [Details], [Thumbnail], [ProductImage]) VALUES (18, N'Oppo A95', 3, CAST(8000000.00 AS Decimal(18, 2)), 11, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>6.43 inch, AMOLED, FHD+, 1080 x 2400 Pixels</td></tr><tr><td>Camera sau</td><td>48.0 MP + 2.0 MP + 2.0 MP</td></tr><tr><td>Camera Selfie</td><td>16.0 MP</td></tr><tr><td>RAM</td><td>8 GB</td></tr><tr><td>Bộ nhớ trong</td><td>128 GB</td></tr><tr><td>CPU</td><td>Snapdragon 662</td></tr><tr><td>GPU</td><td>Adreno 610</td></tr><tr><td>Dung lượng pin</td><td>5000 mAh</td></tr><tr><td>Thẻ sim</td><td>2 - 2 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>Android 11</td></tr><tr><td>Xuất xứ</td><td>Trung Quốc</td></tr><tr><td>Thời gian ra mắt</td><td>2021</td></tr></tbody></table></figure>', N'Sở hữu vẻ ngoài hiện đại và sành điệu, OPPO A95 thuyết phục bạn ngay từ ánh nhìn đầu tiên. Không chỉ thế, mẫu điện thoại còn nâng tầm trải nghiệm cùng viên pin lớn, sạc nhanh 33W, hiệu năng ấn tượng và công nghệ mở rộng RAM.', N'/user-content/ff80bc4b-f995-4d44-83cf-868abf3c541b.jpg', N'/user-content/9294da2e-39a9-45e0-9794-5c8655202177.jpg')
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [DateCreated], [Description], [Details], [Thumbnail], [ProductImage]) VALUES (19, N'Oppo Reno 8', 3, CAST(12000000.00 AS Decimal(18, 2)), 6, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>6.4 inch, AMOLED, FHD+, 1080 x 2400 Pixels</td></tr><tr><td>Camera sau</td><td>100.0 MP + 2.0 MP + 2.0 MP</td></tr><tr><td>Camera Selfie</td><td>32.0 MP</td></tr><tr><td>RAM</td><td>8 GB</td></tr><tr><td>Bộ nhớ trong</td><td>256 GB</td></tr><tr><td>CPU</td><td>MediaTek Helio G99</td></tr><tr><td>Dung lượng pin</td><td>5000 mAh</td></tr><tr><td>Thẻ sim</td><td>2 - 2 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>Android 13.0 (ColorOS 13)</td></tr><tr><td>Xuất xứ</td><td>Trung Quốc</td></tr><tr><td>Thời gian ra mắt</td><td>02/2023</td></tr></tbody></table></figure>', N'Chuyên gia chân dung thế hệ mới OPPO Reno8 T 4G cho trải nghiệm hoàn hảo với camera đến 100MP, mang tới khả năng chụp ảnh chuẩn nét trong từng điểm ảnh. Kết hợp đó là loạt ưu điểm sáng giá khác từ thiết kế da sợi thủy tinh đặc biệt cho đến viên pin lớn 5.000mAh và chứng nhận 48 tháng mượt mà.', N'/user-content/05470fed-c5c4-4ebc-9a59-332de02e5cb0.webp', N'/user-content/75c9dae9-2005-468e-907d-bed11c2c3143.webp')
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [DateCreated], [Description], [Details], [Thumbnail], [ProductImage]) VALUES (20, N'Oppo A77s', 3, CAST(9000000.00 AS Decimal(18, 2)), 9, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>6.56 inch, LCD, HD+, 720 x 1612 Pixels</td></tr><tr><td>Camera sau</td><td>50.0 MP + 2.0 MP</td></tr><tr><td>Camera Selfie</td><td>8.0 MP</td></tr><tr><td>RAM</td><td>8 GB</td></tr><tr><td>Bộ nhớ trong</td><td>128 GB</td></tr><tr><td>CPU</td><td>Snapdragon 680</td></tr><tr><td>GPU</td><td>Adreno 610</td></tr><tr><td>Dung lượng pin</td><td>5000 mAh</td></tr><tr><td>Thẻ sim</td><td>2 - 2 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>Android 12</td></tr><tr><td>Xuất xứ</td><td>Trung Quốc</td></tr><tr><td>Thời gian ra mắt</td><td>03/2022</td></tr></tbody></table></figure>', N'Cuộc sống trở nên thú vị hơn khi có người bạn đồng hành trẻ trung, năng động – OPPO A77s. Chiếc điện thoại tầm trung với thiết kế hiện đại, tươi trẻ đi cùng những công nghệ ấn tượng như camera kép AI 50MP, sạc nhanh 33W, Snapdragon 680 và hỗ trợ mở rộng RAM.', N'/user-content/a79e0e20-c5a5-4922-9971-6628bfc76eda.webp', N'/user-content/d8dfc25d-c3ee-4c89-a960-edc490829a53.webp')
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [DateCreated], [Description], [Details], [Thumbnail], [ProductImage]) VALUES (21, N'Vivo V25 Pro 5G', 4, CAST(9990000.00 AS Decimal(18, 2)), 20, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>6.56 inch, Chính: AMOLED, FHD+, 1080 x 2376 Pixel</td></tr><tr><td>Camera sau</td><td>64.0 MP + 8.0 MP + 2.0 MP</td></tr><tr><td>Camera Selfie</td><td>32.0 MP</td></tr><tr><td>RAM</td><td>8 GB</td></tr><tr><td>Bộ nhớ trong</td><td>128 GB</td></tr><tr><td>CPU</td><td>MediaTek Dimensity 1300 5G</td></tr><tr><td>Dung lượng pin</td><td>4830 mAh</td></tr><tr><td>Thẻ sim</td><td>2 - 2 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>Android 12</td></tr><tr><td>Xuất xứ</td><td>Trung Quốc</td></tr><tr><td>Thời gian ra mắt</td><td>11/2022</td></tr></tbody></table></figure>', N'Chiếc flagship vivo V25 Pro 5G đã sẵn sàng để cùng bạn khám phá thế giới, mọi thứ tạo nên một chiếc điện thoại hoàn hảo, từ thiết kế đổi màu cao cấp, camera dẫn đầu xu hướng đến hiệu năng 5G mạnh mẽ. Những trải nghiệm tuyệt vời nhất sẽ luôn bên bạn nếu có chiếc điện thoại này trên tay. ', N'/user-content/3b915b52-93a9-4b44-8f40-2e38249524a4.jpg', N'/user-content/02864537-2775-4c3f-97a1-62174bc911db.jpg')
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [DateCreated], [Description], [Details], [Thumbnail], [ProductImage]) VALUES (22, N'Xiaomi Redmi Note 12', 5, CAST(4090000.00 AS Decimal(18, 2)), 30, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>AMOLED, FHD+, 1080 x 2400 Pixels</td></tr><tr><td>Camera sau</td><td>50.0 MP + 8.0 MP + 2.0 MP</td></tr><tr><td>Camera Selfie</td><td>13.0 MP</td></tr><tr><td>RAM</td><td>4 GB</td></tr><tr><td>Bộ nhớ trong</td><td>128 GB</td></tr><tr><td>GPU</td><td>Adreno 610</td></tr><tr><td>Dung lượng pin</td><td>5000 mAh</td></tr><tr><td>Thẻ sim</td><td>2 - 2 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>Android 13.0</td></tr><tr><td>Xuất xứ</td><td>Trung Quốc</td></tr><tr><td>Thời gian ra mắt</td><td>2023</td></tr></tbody></table></figure>', N'Để nâng tầm trải nghiệm và tận hưởng không gian sống hoàn hảo, Redmi Note 12 là sản phẩm không thể thiếu. Điện thoại sở hữu những thông số mạnh mẽ trong phân khúc 5 triệu đồng. Đây là lựa chọn khó bỏ qua với MiFan nói riêng và người dùng nói chung.', N'/user-content/d55f818f-04e2-4326-bb69-aef1ac040297.png', N'/user-content/5f2cb787-bed8-4a4e-97f2-9a5ba6bc2868.png')
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [DateCreated], [Description], [Details], [Thumbnail], [ProductImage]) VALUES (23, N'Xiaomi 13 Lite', 5, CAST(8790000.00 AS Decimal(18, 2)), 13, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>6.55 inch, AMOLED, FHD+, 1080 x 2400 Pixels</td></tr><tr><td>Camera sau</td><td>50.0 MP + 8.0 MP + 2.0 MP</td></tr><tr><td>Camera Selfie</td><td>32.0 MP + 8.0 MP</td></tr><tr><td>RAM</td><td>8 GB</td></tr><tr><td>Bộ nhớ trong</td><td>128 GB</td></tr><tr><td>CPU</td><td>Snapdragon 7 Gen 1</td></tr><tr><td>GPU</td><td>Qualcomm Adreno</td></tr><tr><td>Dung lượng pin</td><td>4500 mAh</td></tr><tr><td>Thẻ sim</td><td>2 - 2 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>Android 12</td></tr><tr><td>Xuất xứ</td><td>Trung Quốc</td></tr><tr><td>Thời gian ra mắt</td><td>2023</td></tr></tbody></table></figure>', N'Sở hữu một con chip mới mạnh mẽ, hệ thống camera kép ở mặt trước, màn hình sống động hay đơn giản hơn là thiết kế mỏng nhẹ ấn tượng, Xiaomi 13 Lite nhanh chóng chiếm trọn lòng tin người dùng. Với mức giá cực hấp dẫn khi đến tay người dùng, Xiaomi 13 Lite đáng đến từng xu bỏ ra và hứa hẹn sẽ mang về thành công cho thương hiệu đến từ quốc gia tỷ dân. 

', N'/user-content/5b167131-01fb-4a7e-9b3d-90729243a696.jpg', N'/user-content/252347dc-6deb-4faa-b6af-5fdcbed2f96d.jpg')
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [DateCreated], [Description], [Details], [Thumbnail], [ProductImage]) VALUES (24, N'Xiaomi 13T', 5, CAST(11990000.00 AS Decimal(18, 2)), 18, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>6.7 inch, OLED, FHD+, 2712 x 1220 Pixels</td></tr><tr><td>Camera sau</td><td>50.0 MP + 50.0 MP + 12.0 MP</td></tr><tr><td>Camera Selfie</td><td>20.0 MP</td></tr><tr><td>RAM</td><td>12 GB</td></tr><tr><td>Bộ nhớ trong</td><td>256 GB</td></tr><tr><td>CPU</td><td>Dimensity 8200 Ultra</td></tr><tr><td>GPU</td><td>Mali-G610 MC6</td></tr><tr><td>Dung lượng pin</td><td>5000 mAh</td></tr><tr><td>Thẻ sim</td><td>2 - 2 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>Android 13.0</td></tr><tr><td>Xuất xứ</td><td>Trung Quốc</td></tr><tr><td>Thời gian ra mắt</td><td>09/2023</td></tr></tbody></table></figure>', N'Xiaomi 13T xứng đáng là tuyệt tác trong tầm tay bạn nhờ vào hệ thống ống kính Leica mang trải nghiệm hình ảnh hàng đầu, một cấu hình mạnh mẽ và một thiết kế mang đậm tính sáng tạo. Điện thoại Xiaomi mới này sẽ luôn đồng hành cùng bạn trên mọi chặng hành trình với mọi cung bậc cảm xúc khác nhau. ', N'/user-content/b3b5abfa-7811-4bfc-a42e-5824822d11d3.png', N'/user-content/1eaa85b7-a360-4461-95b5-a2c0ebe87bf7.png')
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [DateCreated], [Description], [Details], [Thumbnail], [ProductImage]) VALUES (25, N'Xiaomi Redmi A2', 5, CAST(1990000.00 AS Decimal(18, 2)), 5, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>Chính: 6.52 inch, IPS LCD, HD+, Màn hình chính: 720 x 1600 Pixels</td></tr><tr><td>Camera sau</td><td>8.0 MP</td></tr><tr><td>Camera Selfie</td><td>5.0 MP</td></tr><tr><td>RAM</td><td>2 GB</td></tr><tr><td>Bộ nhớ trong</td><td>32 GB</td></tr><tr><td>CPU</td><td>MediaTek Helio G36</td></tr><tr><td>GPU</td><td>PowerVR GE8320</td></tr><tr><td>Dung lượng pin</td><td>5000 mAh</td></tr><tr><td>Thẻ sim</td><td>2 - 2 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>Android 13.0</td></tr><tr><td>Xuất xứ</td><td>Trung Quốc</td></tr><tr><td>Thời gian ra mắt</td><td>08/2023</td></tr></tbody></table></figure>', N'Là smartphone giá rẻ tiếp theo đến với thị trường Việt Nam, Redmi A2 là lựa chọn hợp lý cho người dùng phổ thông đang tìm kiếm một công cụ hỗ trợ nghe gọi video call, lướt web hoặc vài tác vụ cơ bản khác. Chiếc điện thoại Xiaomi mới này sẽ đảm bảo thời lượng lớn cho 2 ngày sử dụng cùng với một hiệu năng ổn định. ', N'/user-content/f01f2730-b094-43da-87e4-456c370b5860.webp', N'/user-content/ab871af7-a1ff-432d-a44b-4636f4c29fa2.webp')
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [DateCreated], [Description], [Details], [Thumbnail], [ProductImage]) VALUES (26, N'Nokia C32', 6, CAST(3090000.00 AS Decimal(18, 2)), 6, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>6.5 inch, LCD, HD+, 720 x 1600 Pixels</td></tr><tr><td>Camera sau</td><td>50.0 MP + 2.0 MP</td></tr><tr><td>Camera Selfie</td><td>8.0 MP</td></tr><tr><td>RAM</td><td>4 GB</td></tr><tr><td>Bộ nhớ trong</td><td>128 GB</td></tr><tr><td>CPU</td><td>Unisoc SC9863A1</td></tr><tr><td>Dung lượng pin</td><td>5050 mAh</td></tr><tr><td>Thẻ sim</td><td>2 - 2 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>Android 13.0</td></tr><tr><td>Xuất xứ</td><td>Trung Quốc</td></tr><tr><td>Thời gian ra mắt</td><td>2023</td></tr></tbody></table></figure>', N'Nokia C32 sẽ giúp bạn trải nghiệm trọn vẹn những giá trị làm nên thương hiệu của nhà sản xuất Phần Lan, bao gồm cả độ bền bỉ về chất lượng khung vỏ cũng như thời lượng pin. Chiếc điện thoại tập trung vào các trải nghiệm cốt lõi và mang tới giao diện thân thiện nhờ hệ điều hành Android 13.

', N'/user-content/3e422c14-3ce8-4c4a-bb06-c658ddbde34a.jpg', N'/user-content/8f671bb7-738c-47ee-a2a5-86dc6aada864.jpg')
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [DateCreated], [Description], [Details], [Thumbnail], [ProductImage]) VALUES (27, N'Nokia G22', 6, CAST(3490000.00 AS Decimal(18, 2)), 15, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>6.5 inch, HD+, 720 x 1600 Pixels</td></tr><tr><td>Camera sau</td><td>50.0 MP + 2.0 MP + 2.0 MP</td></tr><tr><td>Camera Selfie</td><td>8.0 MP</td></tr><tr><td>RAM</td><td>4 GB</td></tr><tr><td>CPU</td><td>Unisoc T606</td></tr><tr><td>GPU</td><td>Mali-G57 MP1</td></tr><tr><td>Dung lượng pin</td><td>5050 mAh</td></tr><tr><td>Thẻ sim</td><td>2 - 2 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>Android 12</td></tr><tr><td>Xuất xứ</td><td>Trung Quốc</td></tr><tr><td>Thời gian ra mắt</td><td>25/02/2023</td></tr></tbody></table></figure>', N'Nokia G-series luôn thể hiện được sức mạnh bền bỉ trong những năm gần đây và với Nokia G22 cũng không ngoại lệ. Điện thoại sở hữu viên pin ấn tượng, thiết kế bền bỉ và khả năng tự sửa chữa QuickFix mới được trình làng. Nokia G22 tiếp tục hướng đến những trải nghiệm lâu dài cho người dùng.', N'/user-content/fb6b2c09-44c5-4a44-b86d-6a9e43a4f821.webp', N'/user-content/53320b5f-bee9-4e06-b748-19afd4bf00dc.webp')
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [DateCreated], [Description], [Details], [Thumbnail], [ProductImage]) VALUES (28, N'Nokia 215', 6, CAST(990000.00 AS Decimal(18, 2)), 4, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>2.4 inch, TFT LCD, QVGA, 320 x 240 Pixels</td></tr><tr><td>RAM</td><td>64 MB</td></tr><tr><td>Bộ nhớ trong</td><td>128 MB</td></tr><tr><td>CPU</td><td>Unisoc T117</td></tr><tr><td>Dung lượng pin</td><td>1150 mAh</td></tr><tr><td>Thẻ sim</td><td>2 - 2 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>Nokia S30+</td></tr><tr><td>Xuất xứ</td><td>Trung Quốc</td></tr><tr><td>Thời gian ra mắt</td><td>01/2021</td></tr></tbody></table></figure>', N'Giờ đây với Nokia 215 4G, bạn đã có thể tận hưởng mạng 4G siêu tốc trên chiếc điện thoại phổ thông nhỏ gọn và bền bỉ. Tha hồ truy cập mạng Internet tốc độ cao ở bất cứ nơi đâu.', N'/user-content/680e37dd-87d4-4c8c-9512-6da92caf668a.jpg', N'/user-content/4111bda9-8482-4352-9d23-553320c64277.jpg')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Reviews] ON 

INSERT [dbo].[Reviews] ([Id], [UserId], [ProductId], [Rating], [Comments], [PublishedDate]) VALUES (1, N'566f60d1-46a7-48e0-bab5-08dbd3a098b4', 1, 5, N'Ok', CAST(N'2023-10-23T16:27:27.2228233' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Reviews] OFF
GO
/****** Object:  Index [IX_OrderDetails_ProductId]    Script Date: 10/24/2023 11:19:51 AM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_ProductId] ON [dbo].[OrderDetails]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_CouponId]    Script Date: 10/24/2023 11:19:51 AM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_CouponId] ON [dbo].[Orders]
(
	[CouponId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_UserId]    Script Date: 10/24/2023 11:19:51 AM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_UserId] ON [dbo].[Orders]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 10/24/2023 11:19:51 AM ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Reviews_ProductId]    Script Date: 10/24/2023 11:19:51 AM ******/
CREATE NONCLUSTERED INDEX [IX_Reviews_ProductId] ON [dbo].[Reviews]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Reviews_UserId]    Script Date: 10/24/2023 11:19:51 AM ******/
CREATE NONCLUSTERED INDEX [IX_Reviews_UserId] ON [dbo].[Reviews]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [Stock]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products_ProductId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_AppUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUsers] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_AppUsers_UserId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Coupons_CouponId] FOREIGN KEY([CouponId])
REFERENCES [dbo].[Coupons] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Coupons_CouponId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_AppUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_AppUsers_UserId]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_Products_ProductId]
GO
USE [master]
GO
ALTER DATABASE [MobileShop] SET  READ_WRITE 
GO
