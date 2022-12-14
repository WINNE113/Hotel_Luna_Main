USE [master]
GO
/****** Object:  Database [LUNA_HOTEL]    Script Date: 12/2/2022 9:55:08 PM ******/
CREATE DATABASE [LUNA_HOTEL]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LUNA_HOTEL', FILENAME = N'D:\Program Files\MSSQL15.SQLEXPRESS\MSSQL\DATA\LUNA_HOTEL.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LUNA_HOTEL_log', FILENAME = N'D:\Program Files\MSSQL15.SQLEXPRESS\MSSQL\DATA\LUNA_HOTEL_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [LUNA_HOTEL] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LUNA_HOTEL].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LUNA_HOTEL] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LUNA_HOTEL] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LUNA_HOTEL] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LUNA_HOTEL] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LUNA_HOTEL] SET ARITHABORT OFF 
GO
ALTER DATABASE [LUNA_HOTEL] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [LUNA_HOTEL] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LUNA_HOTEL] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LUNA_HOTEL] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LUNA_HOTEL] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LUNA_HOTEL] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LUNA_HOTEL] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LUNA_HOTEL] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LUNA_HOTEL] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LUNA_HOTEL] SET  ENABLE_BROKER 
GO
ALTER DATABASE [LUNA_HOTEL] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LUNA_HOTEL] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LUNA_HOTEL] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LUNA_HOTEL] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LUNA_HOTEL] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LUNA_HOTEL] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LUNA_HOTEL] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LUNA_HOTEL] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LUNA_HOTEL] SET  MULTI_USER 
GO
ALTER DATABASE [LUNA_HOTEL] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LUNA_HOTEL] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LUNA_HOTEL] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LUNA_HOTEL] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LUNA_HOTEL] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [LUNA_HOTEL] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [LUNA_HOTEL] SET QUERY_STORE = OFF
GO
USE [LUNA_HOTEL]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 12/2/2022 9:55:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[InvoiceNo] [nvarchar](10) NOT NULL,
	[IfLateCheckOut] [bit] NULL,
	[Discount] [decimal](7, 2) NULL,
	[BookingID] [int] NULL,
	[RoomNo] [smallint] NULL,
	[PaymentID] [nvarchar](10) NULL,
 CONSTRAINT [PK__Bill__D796B22685985C8C] PRIMARY KEY CLUSTERED 
(
	[InvoiceNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 12/2/2022 9:55:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[BookingID] [int] IDENTITY(1,1) NOT NULL,
	[GuestID] [int] NOT NULL,
	[BookingStatusID] [char](10) NULL,
	[TotalPrice] [decimal](7, 2) NULL,
	[FullName] [nvarchar](20) NULL,
	[Email] [nvarchar](30) NULL,
	[PhoneNumber] [varchar](15) NULL,
	[Address] [nvarchar](50) NULL,
 CONSTRAINT [PK__Booking__73951ACDC257AB28] PRIMARY KEY CLUSTERED 
(
	[BookingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookingDetail]    Script Date: 12/2/2022 9:55:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[BookingId] [int] NOT NULL,
	[RoomNo] [smallint] NOT NULL,
	[BookingDate] [date] NULL,
	[CheckOutDate] [date] NULL,
	[BookingTime] [time](7) NULL,
	[CheckOutTime] [time](7) NULL,
	[NumOfAdults] [int] NULL,
	[NumOfChildrent] [int] NULL,
	[Price] [decimal](7, 2) NULL,
	[totalPrice] [decimal](7, 2) NULL,
 CONSTRAINT [PK__BookingD__3213E83FD1093053] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookingStatus]    Script Date: 12/2/2022 9:55:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingStatus](
	[BookingStatusID] [char](10) NOT NULL,
	[BookingStatus] [nvarchar](30) NULL,
	[BookingDesc] [nvarchar](50) NULL,
	[BookingActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[BookingStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 12/2/2022 9:55:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityID] [char](5) NOT NULL,
	[CityName] [nvarchar](30) NULL,
	[PostalCode] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 12/2/2022 9:55:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [char](10) NOT NULL,
	[FirstName] [nvarchar](30) NOT NULL,
	[LastName] [nvarchar](30) NOT NULL,
	[DOB] [date] NULL,
	[Gender] [nvarchar](10) NULL,
	[PhoneNo] [int] NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[EmployeePassword] [varchar](50) NULL,
	[Salary] [bigint] NULL,
	[CreatedTime] [time](7) NULL,
	[UpdatedTime] [time](7) NULL,
	[HotelCode] [char](4) NULL,
	[RoleID] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeRole]    Script Date: 12/2/2022 9:55:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeRole](
	[RoleID] [nvarchar](10) NOT NULL,
	[RoleTitle] [nvarchar](30) NOT NULL,
	[RoleDesc] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Guest]    Script Date: 12/2/2022 9:55:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guest](
	[GuestID] [int] IDENTITY(10,1) NOT NULL,
	[FirstName] [nvarchar](20) NOT NULL,
	[LastName] [nvarchar](10) NOT NULL,
	[DOB] [date] NULL,
	[Gen] [nvarchar](10) NULL,
	[PhoneGuestNo] [int] NOT NULL,
	[Email] [nvarchar](30) NOT NULL,
	[GuestPassword] [nvarchar](10) NOT NULL,
	[PassportNo] [int] NULL,
	[GuestAddress] [nvarchar](100) NULL,
	[IsMemberShip] [bit] NULL,
 CONSTRAINT [PK__Guest__0C423C3291C87A15] PRIMARY KEY CLUSTERED 
(
	[GuestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 12/2/2022 9:55:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotel](
	[HotelCode] [char](4) NOT NULL,
	[CityID] [char](5) NULL,
	[HotelAddress] [nvarchar](50) NOT NULL,
	[NumRooms] [smallint] NOT NULL,
	[PhoneHotelNo] [int] NOT NULL,
	[StarRating] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[HotelCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 12/2/2022 9:55:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[PaymentID] [nvarchar](10) NOT NULL,
	[PaymentDate] [date] NULL,
	[PaymentStatusID] [nvarchar](10) NULL,
	[PaymentTypeID] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentStatus]    Script Date: 12/2/2022 9:55:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentStatus](
	[PaymentStatusID] [nvarchar](10) NOT NULL,
	[PaymentStatus] [nvarchar](10) NULL,
	[PaymentActive] [bit] NULL,
	[PaymentDesc] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentType]    Script Date: 12/2/2022 9:55:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentType](
	[PaymentTypeID] [nvarchar](10) NOT NULL,
	[CreditCard] [nvarchar](12) NOT NULL,
	[PaymentExpireDate] [date] NOT NULL,
	[ChequeNo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 12/2/2022 9:55:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[RoomNo] [smallint] NOT NULL,
	[Occupancy] [smallint] NOT NULL,
	[FloorNo] [smallint] NULL,
	[RoomRateID] [nvarchar](10) NULL,
	[RoomTypeName] [nvarchar](20) NULL,
	[HotelCode] [char](4) NULL,
	[RoomStatusID] [nvarchar](10) NULL,
 CONSTRAINT [PK__Room__328651AACB0D64CB] PRIMARY KEY CLUSTERED 
(
	[RoomNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomRate]    Script Date: 12/2/2022 9:55:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomRate](
	[RoomRateID] [nvarchar](10) NOT NULL,
	[RoomRate] [int] NULL,
	[RoomRateDesc] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[RoomRateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomStatus]    Script Date: 12/2/2022 9:55:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomStatus](
	[RoomStatusID] [nvarchar](10) NOT NULL,
	[RoomStatusDesc] [nvarchar](10) NULL,
	[RoomStatus] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[RoomStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomType]    Script Date: 12/2/2022 9:55:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomType](
	[RoomTypeName] [nvarchar](20) NOT NULL,
	[RoomPrice] [decimal](7, 2) NULL,
	[DefaultRoomPrice] [bigint] NULL,
	[RoomImg] [nvarchar](200) NULL,
	[RoomDesc] [text] NULL,
	[BedType] [varchar](20) NULL,
 CONSTRAINT [PK__RoomType__4A6B37684D8196AD] PRIMARY KEY CLUSTERED 
(
	[RoomTypeName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Booking] ON 

INSERT [dbo].[Booking] ([BookingID], [GuestID], [BookingStatusID], [TotalPrice], [FullName], [Email], [PhoneNumber], [Address]) VALUES (9, 1, N'1         ', CAST(100.00 AS Decimal(7, 2)), N'Huu Thang', N'Huu Thang@Gmail.com', N'0332101032', N'27 Tran Hung Dao')
INSERT [dbo].[Booking] ([BookingID], [GuestID], [BookingStatusID], [TotalPrice], [FullName], [Email], [PhoneNumber], [Address]) VALUES (10, 2, N'1         ', CAST(1000.00 AS Decimal(7, 2)), N'Thang Le', N'LeThang@gmail.com', N'033320232', N'27 Tran Hung Dao')
INSERT [dbo].[Booking] ([BookingID], [GuestID], [BookingStatusID], [TotalPrice], [FullName], [Email], [PhoneNumber], [Address]) VALUES (12, 3, N'1         ', CAST(500.00 AS Decimal(7, 2)), N'winn winn', N'lehuuthang12a2thptcl@gmail.com', N'0332101032', N'Hi Hi Hi Cac Ban')
INSERT [dbo].[Booking] ([BookingID], [GuestID], [BookingStatusID], [TotalPrice], [FullName], [Email], [PhoneNumber], [Address]) VALUES (13, 3, N'1         ', CAST(17000.00 AS Decimal(7, 2)), N'winn', N'lehuuthang12a2thptcl@gmail.com', N'0332101032', N'Hi Hi Hi lai La Minh Day')
INSERT [dbo].[Booking] ([BookingID], [GuestID], [BookingStatusID], [TotalPrice], [FullName], [Email], [PhoneNumber], [Address]) VALUES (14, 3, N'1         ', CAST(500.00 AS Decimal(7, 2)), N'winn winn winwin', N'lehuuthang12a2thptcl@gmail.com', N'0332101032', N'lai la minh nua ne')
INSERT [dbo].[Booking] ([BookingID], [GuestID], [BookingStatusID], [TotalPrice], [FullName], [Email], [PhoneNumber], [Address]) VALUES (15, 3, N'1         ', CAST(2000.00 AS Decimal(7, 2)), N'winn winn', N'lehuuthang12a2thptcl@gmail.com', N'0332101032', N'Minh met lam roi')
INSERT [dbo].[Booking] ([BookingID], [GuestID], [BookingStatusID], [TotalPrice], [FullName], [Email], [PhoneNumber], [Address]) VALUES (16, 3, N'1         ', CAST(2000.00 AS Decimal(7, 2)), N'winn winn ne', N'lehuuthang12a2thptcl@gmail.com', N'0332101032', N'That su qua met')
INSERT [dbo].[Booking] ([BookingID], [GuestID], [BookingStatusID], [TotalPrice], [FullName], [Email], [PhoneNumber], [Address]) VALUES (17, 3, N'1         ', CAST(4150.00 AS Decimal(7, 2)), N'winn winn', N'lehuuthang12a2thptcl@gmail.com', N'0332101032', N'Ahihi Fix Duoc Roi Ne')
INSERT [dbo].[Booking] ([BookingID], [GuestID], [BookingStatusID], [TotalPrice], [FullName], [Email], [PhoneNumber], [Address]) VALUES (18, 3, N'1         ', CAST(-10000.00 AS Decimal(7, 2)), N'winn winn', N'lehuuthang12a2thptcl@gmail.com', N'0332101032', N'Minh Lai Den Roi Day')
INSERT [dbo].[Booking] ([BookingID], [GuestID], [BookingStatusID], [TotalPrice], [FullName], [Email], [PhoneNumber], [Address]) VALUES (19, 3, N'1         ', CAST(1000.00 AS Decimal(7, 2)), N'winn winn', N'lehuuthang12a2thptcl@gmail.com', N'0332101032', N'Minh Lai Den day')
INSERT [dbo].[Booking] ([BookingID], [GuestID], [BookingStatusID], [TotalPrice], [FullName], [Email], [PhoneNumber], [Address]) VALUES (20, 3, N'1         ', CAST(1000.00 AS Decimal(7, 2)), N'winn winn', N'lehuuthang12a2thptcl@gmail.com', N'0332101032', N'Test Lai NE')
INSERT [dbo].[Booking] ([BookingID], [GuestID], [BookingStatusID], [TotalPrice], [FullName], [Email], [PhoneNumber], [Address]) VALUES (21, 3, N'1         ', CAST(1800.00 AS Decimal(7, 2)), N'winn winn', N'lehuuthang12a2thptcl@gmail.com', N'0332101032', N'Tao Giau Dat Lan 2 Phong Luon Ne Ba Gia')
INSERT [dbo].[Booking] ([BookingID], [GuestID], [BookingStatusID], [TotalPrice], [FullName], [Email], [PhoneNumber], [Address]) VALUES (22, 3, N'1         ', CAST(8000.00 AS Decimal(7, 2)), N'winn winn', N'thanglhde150360@fpt.edu.vn', N'0332101032', N'Lan Cuoi Ta Nam Tay Nhau')
INSERT [dbo].[Booking] ([BookingID], [GuestID], [BookingStatusID], [TotalPrice], [FullName], [Email], [PhoneNumber], [Address]) VALUES (23, 3, N'1         ', CAST(1000.00 AS Decimal(7, 2)), N'winn winn', N'lehuuthang12a2thptcl@gmail.com', N'0332101032', N'Lai Gap Nhau Nua Roi')
INSERT [dbo].[Booking] ([BookingID], [GuestID], [BookingStatusID], [TotalPrice], [FullName], [Email], [PhoneNumber], [Address]) VALUES (24, 3, N'1         ', CAST(650.00 AS Decimal(7, 2)), N'winn winn', N'lehuuthang12a2thptcl@gmail.com', N'0332101032', N'Xin Thu Loi Toi Lai Toi Day')
INSERT [dbo].[Booking] ([BookingID], [GuestID], [BookingStatusID], [TotalPrice], [FullName], [Email], [PhoneNumber], [Address]) VALUES (25, 3, N'1         ', CAST(1300.00 AS Decimal(7, 2)), N'winn winn', N'lehuuthang12a2thptcl@gmail.com', N'0332101032', N'Lai Den Roi Ne')
INSERT [dbo].[Booking] ([BookingID], [GuestID], [BookingStatusID], [TotalPrice], [FullName], [Email], [PhoneNumber], [Address]) VALUES (26, 3, N'1         ', CAST(1800.00 AS Decimal(7, 2)), N'winn winn', N'lehuuthang12a2thptcl@gmail.com', N'0332101032', N'Met Roi')
INSERT [dbo].[Booking] ([BookingID], [GuestID], [BookingStatusID], [TotalPrice], [FullName], [Email], [PhoneNumber], [Address]) VALUES (27, 3, N'1         ', CAST(150.00 AS Decimal(7, 2)), N'winn winn', N'lehuuthang12a2thptcl@gmail.com', N'0332101032', N'e ban gi oi')
INSERT [dbo].[Booking] ([BookingID], [GuestID], [BookingStatusID], [TotalPrice], [FullName], [Email], [PhoneNumber], [Address]) VALUES (28, 3, N'1         ', CAST(300.00 AS Decimal(7, 2)), N'winn winn', N'lehuuthang12a2thptcl@gmail.com', N'0332101032', N'Dat Hoi Nhieu Roi Nha')
INSERT [dbo].[Booking] ([BookingID], [GuestID], [BookingStatusID], [TotalPrice], [FullName], [Email], [PhoneNumber], [Address]) VALUES (29, 3, N'1         ', CAST(900.00 AS Decimal(7, 2)), N'winn winn', N'lehuuthang12a2thptcl@gmail.com', N'0332101032', N'Hi Lo Cac Ban Minh La To di Code Dao')
INSERT [dbo].[Booking] ([BookingID], [GuestID], [BookingStatusID], [TotalPrice], [FullName], [Email], [PhoneNumber], [Address]) VALUES (30, 3, N'1         ', CAST(1000.00 AS Decimal(7, 2)), N'winn winn', N'lehuuthang12a2thptcl@gmail.com', N'0332101032', N'He Lo Cac Ban Minh La Em Cua ToiDiCodeDao')
INSERT [dbo].[Booking] ([BookingID], [GuestID], [BookingStatusID], [TotalPrice], [FullName], [Email], [PhoneNumber], [Address]) VALUES (31, 3, N'1         ', CAST(1000.00 AS Decimal(7, 2)), N'winn winn', N'lehuuthang12a2thptcl@gmail.com', N'0332101032', N'Mình Là Anh Trai Của ToiDiCode Dao')
SET IDENTITY_INSERT [dbo].[Booking] OFF
GO
SET IDENTITY_INSERT [dbo].[BookingDetail] ON 

INSERT [dbo].[BookingDetail] ([id], [BookingId], [RoomNo], [BookingDate], [CheckOutDate], [BookingTime], [CheckOutTime], [NumOfAdults], [NumOfChildrent], [Price], [totalPrice]) VALUES (2, 9, 3, CAST(N'2022-11-30' AS Date), CAST(N'2022-12-03' AS Date), CAST(N'16:00:00' AS Time), CAST(N'17:00:00' AS Time), 2, 3, CAST(200.00 AS Decimal(7, 2)), CAST(600.00 AS Decimal(7, 2)))
INSERT [dbo].[BookingDetail] ([id], [BookingId], [RoomNo], [BookingDate], [CheckOutDate], [BookingTime], [CheckOutTime], [NumOfAdults], [NumOfChildrent], [Price], [totalPrice]) VALUES (3, 10, 2, CAST(N'2022-11-30' AS Date), CAST(N'2022-12-02' AS Date), CAST(N'11:00:00' AS Time), CAST(N'12:00:00' AS Time), 1, 1, CAST(222.00 AS Decimal(7, 2)), CAST(444.00 AS Decimal(7, 2)))
INSERT [dbo].[BookingDetail] ([id], [BookingId], [RoomNo], [BookingDate], [CheckOutDate], [BookingTime], [CheckOutTime], [NumOfAdults], [NumOfChildrent], [Price], [totalPrice]) VALUES (4, 10, 2, CAST(N'2022-11-30' AS Date), CAST(N'2022-12-02' AS Date), CAST(N'15:03:00' AS Time), CAST(N'12:00:00' AS Time), 1, 1, CAST(222.00 AS Decimal(7, 2)), CAST(444.00 AS Decimal(7, 2)))
INSERT [dbo].[BookingDetail] ([id], [BookingId], [RoomNo], [BookingDate], [CheckOutDate], [BookingTime], [CheckOutTime], [NumOfAdults], [NumOfChildrent], [Price], [totalPrice]) VALUES (5, 17, 3, CAST(N'2022-12-03' AS Date), CAST(N'2022-12-07' AS Date), CAST(N'15:07:00' AS Time), CAST(N'15:07:00' AS Time), 2, 3, CAST(1000.00 AS Decimal(7, 2)), CAST(4000.00 AS Decimal(7, 2)))
INSERT [dbo].[BookingDetail] ([id], [BookingId], [RoomNo], [BookingDate], [CheckOutDate], [BookingTime], [CheckOutTime], [NumOfAdults], [NumOfChildrent], [Price], [totalPrice]) VALUES (6, 17, 23, CAST(N'2022-12-04' AS Date), CAST(N'2022-12-05' AS Date), CAST(N'15:07:00' AS Time), CAST(N'15:07:00' AS Time), 2, 3, CAST(150.00 AS Decimal(7, 2)), CAST(150.00 AS Decimal(7, 2)))
INSERT [dbo].[BookingDetail] ([id], [BookingId], [RoomNo], [BookingDate], [CheckOutDate], [BookingTime], [CheckOutTime], [NumOfAdults], [NumOfChildrent], [Price], [totalPrice]) VALUES (7, 18, 6, CAST(N'2022-11-30' AS Date), CAST(N'2022-12-10' AS Date), CAST(N'19:57:00' AS Time), CAST(N'19:57:00' AS Time), 1, 1, CAST(500.00 AS Decimal(7, 2)), CAST(-10000.00 AS Decimal(7, 2)))
INSERT [dbo].[BookingDetail] ([id], [BookingId], [RoomNo], [BookingDate], [CheckOutDate], [BookingTime], [CheckOutTime], [NumOfAdults], [NumOfChildrent], [Price], [totalPrice]) VALUES (8, 19, 6, CAST(N'2022-12-01' AS Date), CAST(N'2022-12-03' AS Date), CAST(N'19:59:00' AS Time), CAST(N'19:59:00' AS Time), 1, 1, CAST(500.00 AS Decimal(7, 2)), CAST(1000.00 AS Decimal(7, 2)))
INSERT [dbo].[BookingDetail] ([id], [BookingId], [RoomNo], [BookingDate], [CheckOutDate], [BookingTime], [CheckOutTime], [NumOfAdults], [NumOfChildrent], [Price], [totalPrice]) VALUES (9, 20, 6, CAST(N'2022-12-11' AS Date), CAST(N'2022-12-13' AS Date), CAST(N'21:13:00' AS Time), CAST(N'21:13:00' AS Time), 1, 1, CAST(500.00 AS Decimal(7, 2)), CAST(1000.00 AS Decimal(7, 2)))
INSERT [dbo].[BookingDetail] ([id], [BookingId], [RoomNo], [BookingDate], [CheckOutDate], [BookingTime], [CheckOutTime], [NumOfAdults], [NumOfChildrent], [Price], [totalPrice]) VALUES (10, 21, 6, CAST(N'2022-12-14' AS Date), CAST(N'2022-12-17' AS Date), CAST(N'21:16:00' AS Time), CAST(N'21:16:00' AS Time), 1, 1, CAST(500.00 AS Decimal(7, 2)), CAST(1500.00 AS Decimal(7, 2)))
INSERT [dbo].[BookingDetail] ([id], [BookingId], [RoomNo], [BookingDate], [CheckOutDate], [BookingTime], [CheckOutTime], [NumOfAdults], [NumOfChildrent], [Price], [totalPrice]) VALUES (11, 21, 23, CAST(N'2022-12-06' AS Date), CAST(N'2022-12-08' AS Date), CAST(N'21:18:00' AS Time), CAST(N'21:18:00' AS Time), 1, 1, CAST(150.00 AS Decimal(7, 2)), CAST(300.00 AS Decimal(7, 2)))
INSERT [dbo].[BookingDetail] ([id], [BookingId], [RoomNo], [BookingDate], [CheckOutDate], [BookingTime], [CheckOutTime], [NumOfAdults], [NumOfChildrent], [Price], [totalPrice]) VALUES (12, 22, 2, CAST(N'2022-12-03' AS Date), CAST(N'2022-12-10' AS Date), CAST(N'21:34:00' AS Time), CAST(N'21:34:00' AS Time), 2, 3, CAST(1000.00 AS Decimal(7, 2)), CAST(7000.00 AS Decimal(7, 2)))
INSERT [dbo].[BookingDetail] ([id], [BookingId], [RoomNo], [BookingDate], [CheckOutDate], [BookingTime], [CheckOutTime], [NumOfAdults], [NumOfChildrent], [Price], [totalPrice]) VALUES (13, 22, 3, CAST(N'2022-12-08' AS Date), CAST(N'2022-12-09' AS Date), CAST(N'21:46:00' AS Time), CAST(N'21:46:00' AS Time), 3, 2, CAST(1000.00 AS Decimal(7, 2)), CAST(1000.00 AS Decimal(7, 2)))
INSERT [dbo].[BookingDetail] ([id], [BookingId], [RoomNo], [BookingDate], [CheckOutDate], [BookingTime], [CheckOutTime], [NumOfAdults], [NumOfChildrent], [Price], [totalPrice]) VALUES (14, 23, 6, CAST(N'2022-12-18' AS Date), CAST(N'2022-12-20' AS Date), CAST(N'22:36:00' AS Time), CAST(N'22:37:00' AS Time), 1, 1, CAST(500.00 AS Decimal(7, 2)), CAST(1000.00 AS Decimal(7, 2)))
INSERT [dbo].[BookingDetail] ([id], [BookingId], [RoomNo], [BookingDate], [CheckOutDate], [BookingTime], [CheckOutTime], [NumOfAdults], [NumOfChildrent], [Price], [totalPrice]) VALUES (15, 24, 6, CAST(N'2022-12-21' AS Date), CAST(N'2022-12-22' AS Date), CAST(N'22:48:00' AS Time), CAST(N'22:48:00' AS Time), 3, 2, CAST(500.00 AS Decimal(7, 2)), CAST(500.00 AS Decimal(7, 2)))
INSERT [dbo].[BookingDetail] ([id], [BookingId], [RoomNo], [BookingDate], [CheckOutDate], [BookingTime], [CheckOutTime], [NumOfAdults], [NumOfChildrent], [Price], [totalPrice]) VALUES (16, 24, 9, CAST(N'2022-12-03' AS Date), CAST(N'2022-12-04' AS Date), CAST(N'22:48:00' AS Time), CAST(N'22:48:00' AS Time), 1, 1, CAST(150.00 AS Decimal(7, 2)), CAST(150.00 AS Decimal(7, 2)))
INSERT [dbo].[BookingDetail] ([id], [BookingId], [RoomNo], [BookingDate], [CheckOutDate], [BookingTime], [CheckOutTime], [NumOfAdults], [NumOfChildrent], [Price], [totalPrice]) VALUES (17, 25, 1, CAST(N'2022-12-10' AS Date), CAST(N'2022-12-11' AS Date), CAST(N'22:50:00' AS Time), CAST(N'22:50:00' AS Time), 1, 1, CAST(1000.00 AS Decimal(7, 2)), CAST(1000.00 AS Decimal(7, 2)))
INSERT [dbo].[BookingDetail] ([id], [BookingId], [RoomNo], [BookingDate], [CheckOutDate], [BookingTime], [CheckOutTime], [NumOfAdults], [NumOfChildrent], [Price], [totalPrice]) VALUES (18, 25, 9, CAST(N'2022-12-14' AS Date), CAST(N'2022-12-16' AS Date), CAST(N'22:50:00' AS Time), CAST(N'22:50:00' AS Time), 1, 1, CAST(150.00 AS Decimal(7, 2)), CAST(300.00 AS Decimal(7, 2)))
INSERT [dbo].[BookingDetail] ([id], [BookingId], [RoomNo], [BookingDate], [CheckOutDate], [BookingTime], [CheckOutTime], [NumOfAdults], [NumOfChildrent], [Price], [totalPrice]) VALUES (19, 26, 6, CAST(N'2022-12-23' AS Date), CAST(N'2022-12-26' AS Date), CAST(N'22:52:00' AS Time), CAST(N'22:52:00' AS Time), 1, 1, CAST(500.00 AS Decimal(7, 2)), CAST(1500.00 AS Decimal(7, 2)))
INSERT [dbo].[BookingDetail] ([id], [BookingId], [RoomNo], [BookingDate], [CheckOutDate], [BookingTime], [CheckOutTime], [NumOfAdults], [NumOfChildrent], [Price], [totalPrice]) VALUES (20, 26, 14, CAST(N'2022-12-01' AS Date), CAST(N'2022-12-03' AS Date), CAST(N'22:52:00' AS Time), CAST(N'22:52:00' AS Time), 1, 1, CAST(150.00 AS Decimal(7, 2)), CAST(300.00 AS Decimal(7, 2)))
INSERT [dbo].[BookingDetail] ([id], [BookingId], [RoomNo], [BookingDate], [CheckOutDate], [BookingTime], [CheckOutTime], [NumOfAdults], [NumOfChildrent], [Price], [totalPrice]) VALUES (21, 27, 9, CAST(N'2022-12-17' AS Date), CAST(N'2022-12-18' AS Date), CAST(N'22:56:00' AS Time), CAST(N'22:56:00' AS Time), 1, 1, CAST(150.00 AS Decimal(7, 2)), CAST(150.00 AS Decimal(7, 2)))
INSERT [dbo].[BookingDetail] ([id], [BookingId], [RoomNo], [BookingDate], [CheckOutDate], [BookingTime], [CheckOutTime], [NumOfAdults], [NumOfChildrent], [Price], [totalPrice]) VALUES (22, 28, 14, CAST(N'2022-12-17' AS Date), CAST(N'2022-12-19' AS Date), CAST(N'22:57:00' AS Time), CAST(N'22:57:00' AS Time), 2, 3, CAST(150.00 AS Decimal(7, 2)), CAST(300.00 AS Decimal(7, 2)))
INSERT [dbo].[BookingDetail] ([id], [BookingId], [RoomNo], [BookingDate], [CheckOutDate], [BookingTime], [CheckOutTime], [NumOfAdults], [NumOfChildrent], [Price], [totalPrice]) VALUES (23, 29, 9, CAST(N'2022-12-20' AS Date), CAST(N'2022-12-23' AS Date), CAST(N'23:21:00' AS Time), CAST(N'23:21:00' AS Time), 1, 1, CAST(150.00 AS Decimal(7, 2)), CAST(450.00 AS Decimal(7, 2)))
INSERT [dbo].[BookingDetail] ([id], [BookingId], [RoomNo], [BookingDate], [CheckOutDate], [BookingTime], [CheckOutTime], [NumOfAdults], [NumOfChildrent], [Price], [totalPrice]) VALUES (24, 29, 14, CAST(N'2022-12-24' AS Date), CAST(N'2022-12-27' AS Date), CAST(N'23:22:00' AS Time), CAST(N'23:22:00' AS Time), 1, 1, CAST(150.00 AS Decimal(7, 2)), CAST(450.00 AS Decimal(7, 2)))
INSERT [dbo].[BookingDetail] ([id], [BookingId], [RoomNo], [BookingDate], [CheckOutDate], [BookingTime], [CheckOutTime], [NumOfAdults], [NumOfChildrent], [Price], [totalPrice]) VALUES (25, 30, 6, CAST(N'2022-12-27' AS Date), CAST(N'2022-12-29' AS Date), CAST(N'23:25:00' AS Time), CAST(N'23:25:00' AS Time), 1, 1, CAST(500.00 AS Decimal(7, 2)), CAST(1000.00 AS Decimal(7, 2)))
INSERT [dbo].[BookingDetail] ([id], [BookingId], [RoomNo], [BookingDate], [CheckOutDate], [BookingTime], [CheckOutTime], [NumOfAdults], [NumOfChildrent], [Price], [totalPrice]) VALUES (26, 31, 2, CAST(N'2022-12-16' AS Date), CAST(N'2022-12-17' AS Date), CAST(N'23:27:00' AS Time), CAST(N'23:27:00' AS Time), 1, 1, CAST(1000.00 AS Decimal(7, 2)), CAST(1000.00 AS Decimal(7, 2)))
SET IDENTITY_INSERT [dbo].[BookingDetail] OFF
GO
INSERT [dbo].[BookingStatus] ([BookingStatusID], [BookingStatus], [BookingDesc], [BookingActive]) VALUES (N'1         ', N'Success', N'Dat Phong Thanh Cong', NULL)
INSERT [dbo].[BookingStatus] ([BookingStatusID], [BookingStatus], [BookingDesc], [BookingActive]) VALUES (N'2         ', N'In-Process', N'Dang xu ly', NULL)
GO
INSERT [dbo].[City] ([CityID], [CityName], [PostalCode]) VALUES (N'1    ', N'Ha Noi', 8080)
INSERT [dbo].[City] ([CityID], [CityName], [PostalCode]) VALUES (N'2    ', N'Ho Chi Minh', 8081)
INSERT [dbo].[City] ([CityID], [CityName], [PostalCode]) VALUES (N'3    ', N'Da nang', 8082)
INSERT [dbo].[City] ([CityID], [CityName], [PostalCode]) VALUES (N'4    ', N'Hue', 3033)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [DOB], [Gender], [PhoneNo], [Email], [EmployeePassword], [Salary], [CreatedTime], [UpdatedTime], [HotelCode], [RoleID]) VALUES (N'EML01     ', N'Huu ', N'Thang', CAST(N'2001-09-18' AS Date), N'Male', 332101032, N'Lehuuthang@gmail.com', N'root', 3000000, NULL, NULL, N'SE01', N'1')
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [DOB], [Gender], [PhoneNo], [Email], [EmployeePassword], [Salary], [CreatedTime], [UpdatedTime], [HotelCode], [RoleID]) VALUES (N'EML02     ', N'To', N' Kien', CAST(N'2001-01-09' AS Date), N'Female', 423232223, N'Tokien@gmail.com', N'tokien', 2400000, NULL, NULL, N'SE03', N'1')
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [DOB], [Gender], [PhoneNo], [Email], [EmployeePassword], [Salary], [CreatedTime], [UpdatedTime], [HotelCode], [RoleID]) VALUES (N'EML03     ', N'Van', N'Quang', CAST(N'2001-09-24' AS Date), N'Male', 323141232, N'Vanquang@gmail.com', N'vanquang', 32200000, NULL, NULL, N'SE02', N'1')
GO
INSERT [dbo].[EmployeeRole] ([RoleID], [RoleTitle], [RoleDesc]) VALUES (N'1', N'Admin', N'Manager')
INSERT [dbo].[EmployeeRole] ([RoleID], [RoleTitle], [RoleDesc]) VALUES (N'2', N'Employee', N'Work in hotel')
INSERT [dbo].[EmployeeRole] ([RoleID], [RoleTitle], [RoleDesc]) VALUES (N'3', N'User', N'Using to book hotel')
GO
SET IDENTITY_INSERT [dbo].[Guest] ON 

INSERT [dbo].[Guest] ([GuestID], [FirstName], [LastName], [DOB], [Gen], [PhoneGuestNo], [Email], [GuestPassword], [PassportNo], [GuestAddress], [IsMemberShip]) VALUES (1, N'Van ', N'Kien', CAST(N'2001-09-28' AS Date), N'Male', 132131232, N'Vankien@gmail.com', N'vankien', 4040, N'27 Tran Hung Dao-Ngu Hanh Son-Da Nang', 0)
INSERT [dbo].[Guest] ([GuestID], [FirstName], [LastName], [DOB], [Gen], [PhoneGuestNo], [Email], [GuestPassword], [PassportNo], [GuestAddress], [IsMemberShip]) VALUES (2, N'To ', N'Huu', CAST(N'1998-09-19' AS Date), N'Male', 432322323, N'ToHuu@gmail.com', N'tohuu', 4040, N'18 Ngu Hanh Son, Da Nang', 1)
INSERT [dbo].[Guest] ([GuestID], [FirstName], [LastName], [DOB], [Gen], [PhoneGuestNo], [Email], [GuestPassword], [PassportNo], [GuestAddress], [IsMemberShip]) VALUES (3, N'Le', N'Huu Thang', CAST(N'2001-09-18' AS Date), N'Male', 323243432, N'lehuuthang12a2thptcl@gmail.com', N'thang1809', 4040, N'19 Phan Tu, Da Nang', 1)
INSERT [dbo].[Guest] ([GuestID], [FirstName], [LastName], [DOB], [Gen], [PhoneGuestNo], [Email], [GuestPassword], [PassportNo], [GuestAddress], [IsMemberShip]) VALUES (10, N'Nguyen', N'Minh', CAST(N'2001-09-29' AS Date), N'Male', 432233243, N'NguyenMinh@gmail.com', N'nguyenminh', 4040, N'29 Nguyen Minh Huu', 0)
INSERT [dbo].[Guest] ([GuestID], [FirstName], [LastName], [DOB], [Gen], [PhoneGuestNo], [Email], [GuestPassword], [PassportNo], [GuestAddress], [IsMemberShip]) VALUES (33, N'Nguyen Van ', N'A', NULL, NULL, 98978987, N'Nguyenvana@gmail.com', N'vana', NULL, NULL, NULL)
INSERT [dbo].[Guest] ([GuestID], [FirstName], [LastName], [DOB], [Gen], [PhoneGuestNo], [Email], [GuestPassword], [PassportNo], [GuestAddress], [IsMemberShip]) VALUES (34, N'winn', N'winn', NULL, NULL, 332101032, N'lehuuthang12a2@gmail.com', N'ad', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Guest] OFF
GO
INSERT [dbo].[Hotel] ([HotelCode], [CityID], [HotelAddress], [NumRooms], [PhoneHotelNo], [StarRating]) VALUES (N'LNDN', N'3    ', N'50 Trung Nu Vuong, Hai CHau, Da Nang', 50, 987567890, NULL)
INSERT [dbo].[Hotel] ([HotelCode], [CityID], [HotelAddress], [NumRooms], [PhoneHotelNo], [StarRating]) VALUES (N'LNH ', N'4    ', N'50 Le Huan,Thuan Hoa,Thua Thien Hue', 40, 999123678, NULL)
INSERT [dbo].[Hotel] ([HotelCode], [CityID], [HotelAddress], [NumRooms], [PhoneHotelNo], [StarRating]) VALUES (N'LNHN', N'1    ', N'122 Tran Hung Dao, Ba Dinh, Ha Noi', 60, 999123345, NULL)
INSERT [dbo].[Hotel] ([HotelCode], [CityID], [HotelAddress], [NumRooms], [PhoneHotelNo], [StarRating]) VALUES (N'LNSG', N'2    ', N'4 Cao Ba Quat, Quan 1, Ho Chi Minh', 80, 987345678, NULL)
INSERT [dbo].[Hotel] ([HotelCode], [CityID], [HotelAddress], [NumRooms], [PhoneHotelNo], [StarRating]) VALUES (N'SE01', N'1    ', N'962 Ngo Quyen, Son Tra District, Phước Mỹ, Đà Nẵng', 30, 332101032, NULL)
INSERT [dbo].[Hotel] ([HotelCode], [CityID], [HotelAddress], [NumRooms], [PhoneHotelNo], [StarRating]) VALUES (N'SE02', N'2    ', N'District 2, Ho Chi Minh City', 30, 31232132, NULL)
INSERT [dbo].[Hotel] ([HotelCode], [CityID], [HotelAddress], [NumRooms], [PhoneHotelNo], [StarRating]) VALUES (N'SE03', N'3    ', N'Cam Ly Falls, Dalat', 20, 93232312, NULL)
GO
INSERT [dbo].[Room] ([RoomNo], [Occupancy], [FloorNo], [RoomRateID], [RoomTypeName], [HotelCode], [RoomStatusID]) VALUES (1, 2, 1, N'2', N'Standard', N'LNHN', N'1')
INSERT [dbo].[Room] ([RoomNo], [Occupancy], [FloorNo], [RoomRateID], [RoomTypeName], [HotelCode], [RoomStatusID]) VALUES (2, 2, 1, N'3', N'Standard', N'LNHN', N'1')
INSERT [dbo].[Room] ([RoomNo], [Occupancy], [FloorNo], [RoomRateID], [RoomTypeName], [HotelCode], [RoomStatusID]) VALUES (3, 2, 1, N'3', N'Standard', N'LNHN', N'1')
INSERT [dbo].[Room] ([RoomNo], [Occupancy], [FloorNo], [RoomRateID], [RoomTypeName], [HotelCode], [RoomStatusID]) VALUES (4, 4, 2, N'3', N'Executive', N'LNHN', N'2')
INSERT [dbo].[Room] ([RoomNo], [Occupancy], [FloorNo], [RoomRateID], [RoomTypeName], [HotelCode], [RoomStatusID]) VALUES (5, 6, 3, N'1', N'Superior', N'LNHN', N'1')
INSERT [dbo].[Room] ([RoomNo], [Occupancy], [FloorNo], [RoomRateID], [RoomTypeName], [HotelCode], [RoomStatusID]) VALUES (6, 5, 4, N'4', N'President', N'LNSG', N'1')
INSERT [dbo].[Room] ([RoomNo], [Occupancy], [FloorNo], [RoomRateID], [RoomTypeName], [HotelCode], [RoomStatusID]) VALUES (7, 2, 1, N'3', N'Standard', N'LNSG', N'1')
INSERT [dbo].[Room] ([RoomNo], [Occupancy], [FloorNo], [RoomRateID], [RoomTypeName], [HotelCode], [RoomStatusID]) VALUES (8, 3, 1, N'3', N'Executive', N'LNSG', N'3')
INSERT [dbo].[Room] ([RoomNo], [Occupancy], [FloorNo], [RoomRateID], [RoomTypeName], [HotelCode], [RoomStatusID]) VALUES (9, 3, 1, N'3', N'Executive', N'LNSG', N'1')
INSERT [dbo].[Room] ([RoomNo], [Occupancy], [FloorNo], [RoomRateID], [RoomTypeName], [HotelCode], [RoomStatusID]) VALUES (10, 2, 2, N'2', N'Standard', N'LNSG', N'1')
INSERT [dbo].[Room] ([RoomNo], [Occupancy], [FloorNo], [RoomRateID], [RoomTypeName], [HotelCode], [RoomStatusID]) VALUES (11, 2, 2, N'1', N'Standard', N'LNDN', N'2')
INSERT [dbo].[Room] ([RoomNo], [Occupancy], [FloorNo], [RoomRateID], [RoomTypeName], [HotelCode], [RoomStatusID]) VALUES (12, 1, 3, N'4', N'President', N'LNDN', N'3')
INSERT [dbo].[Room] ([RoomNo], [Occupancy], [FloorNo], [RoomRateID], [RoomTypeName], [HotelCode], [RoomStatusID]) VALUES (13, 2, 3, N'3', N'Standard', N'LNDN', N'3')
INSERT [dbo].[Room] ([RoomNo], [Occupancy], [FloorNo], [RoomRateID], [RoomTypeName], [HotelCode], [RoomStatusID]) VALUES (14, 4, 4, N'3', N'Executive', N'LNDN', N'1')
INSERT [dbo].[Room] ([RoomNo], [Occupancy], [FloorNo], [RoomRateID], [RoomTypeName], [HotelCode], [RoomStatusID]) VALUES (15, 4, 1, N'3', N'Executive', N'LNDN', N'1')
INSERT [dbo].[Room] ([RoomNo], [Occupancy], [FloorNo], [RoomRateID], [RoomTypeName], [HotelCode], [RoomStatusID]) VALUES (16, 5, 1, N'2', N'Executive', N'LNDN', N'3')
INSERT [dbo].[Room] ([RoomNo], [Occupancy], [FloorNo], [RoomRateID], [RoomTypeName], [HotelCode], [RoomStatusID]) VALUES (17, 2, 2, N'1', N'Standard', N'LNH ', N'2')
INSERT [dbo].[Room] ([RoomNo], [Occupancy], [FloorNo], [RoomRateID], [RoomTypeName], [HotelCode], [RoomStatusID]) VALUES (18, 2, 2, N'3', N'Standard', N'LNH ', N'2')
INSERT [dbo].[Room] ([RoomNo], [Occupancy], [FloorNo], [RoomRateID], [RoomTypeName], [HotelCode], [RoomStatusID]) VALUES (19, 2, 3, N'3', N'Standard', N'LNH ', N'1')
INSERT [dbo].[Room] ([RoomNo], [Occupancy], [FloorNo], [RoomRateID], [RoomTypeName], [HotelCode], [RoomStatusID]) VALUES (20, 3, 3, N'3', N'Standard', N'LNH ', N'1')
INSERT [dbo].[Room] ([RoomNo], [Occupancy], [FloorNo], [RoomRateID], [RoomTypeName], [HotelCode], [RoomStatusID]) VALUES (21, 6, 4, N'3', N'President', N'LNH ', N'3')
INSERT [dbo].[Room] ([RoomNo], [Occupancy], [FloorNo], [RoomRateID], [RoomTypeName], [HotelCode], [RoomStatusID]) VALUES (22, 4, 1, N'4', N'Executive', N'LNH ', N'2')
INSERT [dbo].[Room] ([RoomNo], [Occupancy], [FloorNo], [RoomRateID], [RoomTypeName], [HotelCode], [RoomStatusID]) VALUES (23, 4, 1, N'4', N'Executive', N'LNH ', N'1')
GO
INSERT [dbo].[RoomRate] ([RoomRateID], [RoomRate], [RoomRateDesc]) VALUES (N'1', 1, N'Bad')
INSERT [dbo].[RoomRate] ([RoomRateID], [RoomRate], [RoomRateDesc]) VALUES (N'2', 2, N'Normal')
INSERT [dbo].[RoomRate] ([RoomRateID], [RoomRate], [RoomRateDesc]) VALUES (N'3', 3, N'Good')
INSERT [dbo].[RoomRate] ([RoomRateID], [RoomRate], [RoomRateDesc]) VALUES (N'4', 4, N'Excellent')
GO
INSERT [dbo].[RoomStatus] ([RoomStatusID], [RoomStatusDesc], [RoomStatus]) VALUES (N'1', N'AVAILABLE', N'phong dang trong')
INSERT [dbo].[RoomStatus] ([RoomStatusID], [RoomStatusDesc], [RoomStatus]) VALUES (N'2', N'BUSY', N'phong dang don')
INSERT [dbo].[RoomStatus] ([RoomStatusID], [RoomStatusDesc], [RoomStatus]) VALUES (N'3', N'ORDERED', N'phong da dat')
INSERT [dbo].[RoomStatus] ([RoomStatusID], [RoomStatusDesc], [RoomStatus]) VALUES (N'RS01', N'Valiable', N'0')
INSERT [dbo].[RoomStatus] ([RoomStatusID], [RoomStatusDesc], [RoomStatus]) VALUES (N'RS02', N'Invaliable', N'1')
GO
INSERT [dbo].[RoomType] ([RoomTypeName], [RoomPrice], [DefaultRoomPrice], [RoomImg], [RoomDesc], [BedType]) VALUES (N'Executive', CAST(150.00 AS Decimal(7, 2)), 1500, N'https://www.ikea.com/images/a-slattum-upholstered-bed-and-various-white-nordli-chests-of-6b6a06f902c303389a40adc08c3512fc.jpg', N'phong cao cap', N'Double')
INSERT [dbo].[RoomType] ([RoomTypeName], [RoomPrice], [DefaultRoomPrice], [RoomImg], [RoomDesc], [BedType]) VALUES (N'One Bedroom', CAST(300.00 AS Decimal(7, 2)), 800000, N'https://q-xx.bstatic.com/xdata/images/hotel/max500/305543468.jpg?k=549798e08f65fd69ccdfbf81e7fa34b69483f3b2ca85d7e9e15b8bdac1fa216e&o=', N'Room size: 65 m²/700 ft²', N'Double')
INSERT [dbo].[RoomType] ([RoomTypeName], [RoomPrice], [DefaultRoomPrice], [RoomImg], [RoomDesc], [BedType]) VALUES (N'President', CAST(500.00 AS Decimal(7, 2)), 15000, N'https://static01.nyt.com/images/2019/03/24/travel/24trending-shophotels1/24trending-shophotels1-superJumbo.jpg', N'phong tong thong', N'Queen')
INSERT [dbo].[RoomType] ([RoomTypeName], [RoomPrice], [DefaultRoomPrice], [RoomImg], [RoomDesc], [BedType]) VALUES (N'Standard', CAST(1000.00 AS Decimal(7, 2)), 500, N'https://static01.nyt.com/images/2019/03/24/travel/24trending-shophotels1/24trending-shophotels1-superJumbo.jpg', N'phong binh thuong', N'Queen')
INSERT [dbo].[RoomType] ([RoomTypeName], [RoomPrice], [DefaultRoomPrice], [RoomImg], [RoomDesc], [BedType]) VALUES (N'Superior', CAST(2000.00 AS Decimal(7, 2)), 1000, N'https://images.livspace-cdn.com/plain/https://d3gq2merok8n5r.cloudfront.net/abhinav/designs-sg-1633500163-pPxOT/jfm-1643951899-MFxd4/living-room-1643951916-nG0qo/lk-sg-lr-0128-1647522693-AEC48/living-', N'phong thuong gia', N'Single')
INSERT [dbo].[RoomType] ([RoomTypeName], [RoomPrice], [DefaultRoomPrice], [RoomImg], [RoomDesc], [BedType]) VALUES (N'Three Bedroom', CAST(3000.00 AS Decimal(7, 2)), 2000000, N'https://q-xx.bstatic.com/xdata/images/hotel/max500/305543453.jpg?k=d9cdf6d36463a6da1883b1f181d4608cd790a0c749b862fbb45a31ce169e70ca&o=', N'Room size: 100 m²/1076 ft²

Outdoor view

Balcony/terrace

2 bathrooms', N'Single')
INSERT [dbo].[RoomType] ([RoomTypeName], [RoomPrice], [DefaultRoomPrice], [RoomImg], [RoomDesc], [BedType]) VALUES (N'Two Bedroom', CAST(5000.00 AS Decimal(7, 2)), 900000, N'https://q-xx.bstatic.com/xdata/images/hotel/max500/305543447.jpg?k=d14a242b5b743f13d19e2b4f76f9cf1dabaea68975018a7f175fd3c45a59a53a&o=', N'Room size: 80 m²/861 ft²

Outdoor view

2 bathrooms', N'Single')
GO
ALTER TABLE [dbo].[BookingStatus] ADD  DEFAULT ('AVAILABLE') FOR [BookingStatus]
GO
ALTER TABLE [dbo].[Employee] ADD  DEFAULT ((1)) FOR [EmployeePassword]
GO
ALTER TABLE [dbo].[RoomStatus] ADD  DEFAULT ('AVAILABLE') FOR [RoomStatus]
GO
ALTER TABLE [dbo].[RoomType] ADD  CONSTRAINT [DF__RoomType__Defaul__48CFD27E]  DEFAULT ((5000000)) FOR [DefaultRoomPrice]
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK__Bill__BookingID__73BA3083] FOREIGN KEY([BookingID])
REFERENCES [dbo].[Booking] ([BookingID])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK__Bill__BookingID__73BA3083]
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK__Bill__PaymentID__76969D2E] FOREIGN KEY([PaymentID])
REFERENCES [dbo].[Payment] ([PaymentID])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK__Bill__PaymentID__76969D2E]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK__Booking__Booking__70DDC3D8] FOREIGN KEY([BookingStatusID])
REFERENCES [dbo].[BookingStatus] ([BookingStatusID])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK__Booking__Booking__70DDC3D8]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK__Booking__GuestID__6EF57B66] FOREIGN KEY([GuestID])
REFERENCES [dbo].[Guest] ([GuestID])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK__Booking__GuestID__6EF57B66]
GO
ALTER TABLE [dbo].[BookingDetail]  WITH CHECK ADD  CONSTRAINT [FK__BookingDe__booki__0880433F] FOREIGN KEY([BookingId])
REFERENCES [dbo].[Booking] ([BookingID])
GO
ALTER TABLE [dbo].[BookingDetail] CHECK CONSTRAINT [FK__BookingDe__booki__0880433F]
GO
ALTER TABLE [dbo].[BookingDetail]  WITH CHECK ADD  CONSTRAINT [FK_BookingDetail_Room] FOREIGN KEY([RoomNo])
REFERENCES [dbo].[Room] ([RoomNo])
GO
ALTER TABLE [dbo].[BookingDetail] CHECK CONSTRAINT [FK_BookingDetail_Room]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD FOREIGN KEY([HotelCode])
REFERENCES [dbo].[Hotel] ([HotelCode])
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[EmployeeRole] ([RoleID])
GO
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD FOREIGN KEY([CityID])
REFERENCES [dbo].[City] ([CityID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([PaymentStatusID])
REFERENCES [dbo].[PaymentStatus] ([PaymentStatusID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([PaymentTypeID])
REFERENCES [dbo].[PaymentType] ([PaymentTypeID])
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK__Room__HotelCode__6383C8BA] FOREIGN KEY([HotelCode])
REFERENCES [dbo].[Hotel] ([HotelCode])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK__Room__HotelCode__6383C8BA]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK__Room__RoomRateID__619B8048] FOREIGN KEY([RoomRateID])
REFERENCES [dbo].[RoomRate] ([RoomRateID])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK__Room__RoomRateID__619B8048]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK__Room__RoomStatus__6477ECF3] FOREIGN KEY([RoomStatusID])
REFERENCES [dbo].[RoomStatus] ([RoomStatusID])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK__Room__RoomStatus__6477ECF3]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK__Room__RoomTypeNa__628FA481] FOREIGN KEY([RoomTypeName])
REFERENCES [dbo].[RoomType] ([RoomTypeName])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK__Room__RoomTypeNa__628FA481]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [CHK_Gender] CHECK  (([Gender]='Male' OR [Gender]='Female'))
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [CHK_Gender]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD CHECK  (([Salary]>(0)))
GO
ALTER TABLE [dbo].[Guest]  WITH CHECK ADD  CONSTRAINT [CHK_Gen] CHECK  (([Gen]='Male' OR [Gen]='Female'))
GO
ALTER TABLE [dbo].[Guest] CHECK CONSTRAINT [CHK_Gen]
GO
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD CHECK  (([StarRating]<(0) AND [StarRating]>(10)))
GO
ALTER TABLE [dbo].[RoomType]  WITH CHECK ADD  CONSTRAINT [CK__RoomType__RoomPr__47DBAE45] CHECK  (([RoomPrice]>(0)))
GO
ALTER TABLE [dbo].[RoomType] CHECK CONSTRAINT [CK__RoomType__RoomPr__47DBAE45]
GO
USE [master]
GO
ALTER DATABASE [LUNA_HOTEL] SET  READ_WRITE 
GO
