USE [master]
GO
/****** Object:  Database [Volga]    Script Date: 13.09.2022 11:32:43 ******/
CREATE DATABASE [Volga]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Volga', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Volga.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Volga_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Volga_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Volga] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Volga].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Volga] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Volga] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Volga] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Volga] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Volga] SET ARITHABORT OFF 
GO
ALTER DATABASE [Volga] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Volga] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Volga] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Volga] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Volga] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Volga] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Volga] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Volga] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Volga] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Volga] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Volga] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Volga] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Volga] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Volga] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Volga] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Volga] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Volga] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Volga] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Volga] SET  MULTI_USER 
GO
ALTER DATABASE [Volga] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Volga] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Volga] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Volga] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Volga] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Volga] SET QUERY_STORE = OFF
GO
USE [Volga]
GO
/****** Object:  Table [dbo].[AdditionalProduct]    Script Date: 13.09.2022 11:32:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdditionalProduct](
	[ProductAdditionalID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ProductID] [int] NOT NULL,
 CONSTRAINT [PK_AdditionalProduct] PRIMARY KEY CLUSTERED 
(
	[ProductAdditionalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryEmployee]    Script Date: 13.09.2022 11:32:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryEmployee](
	[CategoryEmployeeID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CategoryEmployee] PRIMARY KEY CLUSTERED 
(
	[CategoryEmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryProduct]    Script Date: 13.09.2022 11:32:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryProduct](
	[CategoryProductID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CategoryProduct] PRIMARY KEY CLUSTERED 
(
	[CategoryProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 13.09.2022 11:32:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[ClientID] [int] NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NOT NULL,
	[Gender] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[DateBirth] [date] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[DateReg] [date] NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Delivery]    Script Date: 13.09.2022 11:32:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Delivery](
	[DeliveryID] [int] NOT NULL,
	[ServiceID] [int] NOT NULL,
	[DateRender] [date] NOT NULL,
	[TimeRender] [time](6) NOT NULL,
	[ClientID] [int] NOT NULL,
 CONSTRAINT [PK_Delivery] PRIMARY KEY CLUSTERED 
(
	[DeliveryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 13.09.2022 11:32:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [int] NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NOT NULL,
	[SeriesPass] [nvarchar](50) NOT NULL,
	[CodePass] [nvarchar](50) NOT NULL,
	[CodePd] [nvarchar](50) NOT NULL,
	[Gender] [nvarchar](50) NOT NULL,
	[CoefSale] [int] NOT NULL,
	[DateBirth] [date] NOT NULL,
	[CategoryEmployeeID] [int] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produc]    Script Date: 13.09.2022 11:32:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produc](
	[ProducID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[DateRegistr] [date] NOT NULL,
 CONSTRAINT [PK_Produc] PRIMARY KEY CLUSTERED 
(
	[ProducID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 13.09.2022 11:32:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CategoryProductID] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[Feature] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
	[Weight] [float] NOT NULL,
	[Width] [float] NOT NULL,
	[Lenght] [float] NOT NULL,
	[ProducID] [int] NOT NULL,
	[PhotoMain] [nvarchar](50) NOT NULL,
	[PhotoAdd] [nvarchar](50) NOT NULL,
	[SeasonID] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sale]    Script Date: 13.09.2022 11:32:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale](
	[SaleID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[TimeSheetID] [int] NOT NULL,
	[TimeSale] [time](6) NOT NULL,
 CONSTRAINT [PK_Sale] PRIMARY KEY CLUSTERED 
(
	[SaleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Season]    Script Date: 13.09.2022 11:32:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Season](
	[SeasonID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Season] PRIMARY KEY CLUSTERED 
(
	[SeasonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 13.09.2022 11:32:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[ServiceID] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[MainPhoto] [nvarchar](100) NOT NULL,
	[Duration] [float] NOT NULL,
	[Price] [float] NOT NULL,
	[Sale] [int] NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[ServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeSheet]    Script Date: 13.09.2022 11:32:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSheet](
	[TimeSheetID] [int] NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[ServiceID] [int] NOT NULL,
 CONSTRAINT [PK_TimeSheet] PRIMARY KEY CLUSTERED 
(
	[TimeSheetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WareHouse]    Script Date: 13.09.2022 11:32:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WareHouse](
	[WareHouseID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Count] [int] NOT NULL,
 CONSTRAINT [PK_WareHouse] PRIMARY KEY CLUSTERED 
(
	[WareHouseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CategoryEmployee] ([CategoryEmployeeID], [Name]) VALUES (1, N'sfsdf')
GO
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (1, N'Васильев', N'Оскар', N'Богданович', N'м', N'7(585)801-94-29 ', CAST(N'1971-01-30' AS Date), N'miturria@verizon.net', CAST(N'2017-05-28' AS Date), N'1.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (2, N'Лазарев', N'Алексей', N'Богданович', N'м', N'7(0055)737-37-48 ', CAST(N'1977-03-10' AS Date), N'claesjac@me.com', CAST(N'2017-01-02' AS Date), N'2.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (3, N'Казаков', N'Дмитрий', N'Русланович', N'м', N'7(51)682-19-40 ', CAST(N'1978-12-15' AS Date), N'ozawa@verizon.net', CAST(N'2016-05-21' AS Date), N'3.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (4, N'Попова', N'Харита', N'Якуновна', N'ж', N'7(335)386-81-06 ', CAST(N'1997-12-16' AS Date), N'firstpr@verizon.net', CAST(N'2016-07-05' AS Date), N'4.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (5, N'Турова', N'Георгина', N'Семёновна', N'ж', N'7(555)321-42-99 ', CAST(N'1974-05-28' AS Date), N'yruan@optonline.net', CAST(N'2018-02-22' AS Date), N'5.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (6, N'Андреев', N'Станислав', N'Максович', N'м', N'7(02)993-91-28 ', CAST(N'1975-10-10' AS Date), N'budinger@mac.com', CAST(N'2017-12-26' AS Date), N'6.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (7, N'Орлова', N'Влада', N'Мартыновна', N'ж', N'7(2506)433-38-35 ', CAST(N'1990-06-26' AS Date), N'rnelson@yahoo.ca', CAST(N'2016-03-21' AS Date), N'7.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (8, N'Костина', N'Любава', N'Авксентьевна', N'ж', N'7(6419)959-21-87 ', CAST(N'1972-07-13' AS Date), N'gordonjcp@hotmail.com', CAST(N'2016-02-26' AS Date), N'8.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (9, N'Александров', N'Станислав', N'Эдуардович', N'м', N'7(18)164-05-12 ', CAST(N'1981-07-04' AS Date), N'bigmauler@aol.com', CAST(N'2018-11-08' AS Date), N'9.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (10, N'Корнилова', N'Анэля', N'Михайловна', N'ж', N'7(20)980-01-60 ', CAST(N'1973-04-02' AS Date), N'jonathan@aol.com', CAST(N'2016-05-22' AS Date), N'10.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (11, N'Морозов', N'Наум', N'Валерьянович', N'м', N'7(636)050-96-13 ', CAST(N'1985-07-04' AS Date), N'salesgeek@mac.com', CAST(N'2016-05-02' AS Date), N'11.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (12, N'Баранова', N'Эльмира', N'Дмитриевна', N'ж', N'7(9240)643-15-50 ', CAST(N'1977-01-15' AS Date), N'jgmyers@comcast.net', CAST(N'2016-07-08' AS Date), N'12.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (13, N'Степанова', N'Амелия', N'Робертовна', N'м', N'7(1217)441-28-42 ', CAST(N'1970-06-06' AS Date), N'rasca@hotmail.com', CAST(N'2017-09-27' AS Date), N'13.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (14, N'Горбачёв', N'Давид', N'Тимурович', N'м', N'7(53)602-85-41 ', CAST(N'1983-05-22' AS Date), N'hedwig@att.net', CAST(N'2018-12-17' AS Date), N'14.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (15, N'Волков', N'Людвиг', N'Витальевич', N'м', N'7(8459)592-05-58 ', CAST(N'1977-12-27' AS Date), N'jrkorson@msn.com', CAST(N'2016-04-27' AS Date), N'15.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (16, N'Комиссарова', N'Амалия', N'Робертовна', N'ж', N'7(22)647-46-32 ', CAST(N'1971-08-18' AS Date), N'jorgb@msn.com', CAST(N'2017-08-04' AS Date), N'16.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (17, N'Большаков', N'Вадим', N'Данилович', N'м', N'7(386)641-13-37 ', CAST(N'1970-05-15' AS Date), N'uncle@gmail.com', CAST(N'2018-08-04' AS Date), N'17.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (18, N'Абрамов', N'Станислав', N'Филатович', N'м', N'7(6545)478-87-79 ', CAST(N'1989-05-18' AS Date), N'solomon@att.net', CAST(N'2016-12-08' AS Date), N'18.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (19, N'Журавлёв', N'Леонтий', N'Яковлевич', N'м', N'7(4403)308-56-96 ', CAST(N'2000-03-02' AS Date), N'cmdrgravy@me.com', CAST(N'2018-01-15' AS Date), N'19.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (20, N'Селиверстов', N'Глеб', N'Максимович', N'м', N'7(20)554-28-68 ', CAST(N'1999-06-20' AS Date), N'jigsaw@sbcglobal.net', CAST(N'2016-01-07' AS Date), N'20.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (21, N'Киселёв', N'Устин', N'Яковлевич', N'м', N'7(83)334-52-76 ', CAST(N'1985-01-08' AS Date), N'dalamb@verizon.net', CAST(N'2018-06-21' AS Date), N'21.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (22, N'Зуев', N'Матвей', N'Иванович', N'м', N'7(5383)893-04-66 ', CAST(N'1981-03-28' AS Date), N'brickbat@verizon.net', CAST(N'2018-12-18' AS Date), N'22.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (23, N'Ершов', N'Глеб', N'Федорович', N'м', N'7(2608)298-40-82 ', CAST(N'1970-06-14' AS Date), N'sjava@aol.com', CAST(N'2016-09-14' AS Date), N'23.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (24, N'Бобылёв', N'Георгий', N'Витальевич', N'м', N'7(88)685-13-51 ', CAST(N'1983-12-19' AS Date), N'csilvers@mac.com', CAST(N'2018-04-06' AS Date), N'24.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (25, N'Ефремов', N'Витольд', N'Авксентьевич', N'м', N'7(93)922-14-03 ', CAST(N'1975-12-02' AS Date), N'kwilliams@yahoo.ca', CAST(N'2018-04-09' AS Date), N'25.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (26, N'Андреева', N'Патрисия', N'Валерьевна', N'ж', N'7(9648)953-81-26 ', CAST(N'1993-11-18' AS Date), N'jigsaw@aol.com', CAST(N'2016-07-17' AS Date), N'26.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (27, N'Ефимова', N'Магда', N'Платоновна', N'ж', N'7(9261)386-15-92 ', CAST(N'1995-08-16' AS Date), N'rbarreira@me.com', CAST(N'2017-08-01' AS Date), N'27.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (28, N'Голубев', N'Иосиф', N'Тимофеевич', N'м', N'7(78)972-73-11 ', CAST(N'1982-05-06' AS Date), N'smcnabb@att.net', CAST(N'2018-08-18' AS Date), N'28.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (29, N'Евсеев', N'Макар', N'Васильевич', N'м', N'7(2141)077-85-70 ', CAST(N'1977-09-13' AS Date), N'parsimony@sbcglobal.net', CAST(N'2018-12-05' AS Date), N'29.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (30, N'Бобров', N'Агафон', N'Лаврентьевич', N'м', N'7(2159)507-39-57 ', CAST(N'1995-07-29' AS Date), N'petersen@comcast.net', CAST(N'2017-05-09' AS Date), N'30.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (31, N'Игнатов', N'Захар', N'Павлович', N'м', N'7(578)574-73-36 ', CAST(N'1998-10-07' AS Date), N'dieman@icloud.com', CAST(N'2017-11-10' AS Date), N'31.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (32, N'Гущина', N'Янита', N'Федоровна', N'ж', N'7(4544)716-68-96 ', CAST(N'1999-03-02' AS Date), N'lishoy@att.net', CAST(N'2018-02-01' AS Date), N'32.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (33, N'Калашников', N'Артур', N'Юрьевич', N'м', N'7(147)947-47-21 ', CAST(N'1972-12-13' AS Date), N'oevans@aol.com', CAST(N'2017-08-20' AS Date), N'33.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (34, N'Дмитриева', N'Элина', N'Даниловна', N'ж', N'7(787)140-48-84 ', CAST(N'1988-12-10' AS Date), N'vmalik@live.com', CAST(N'2017-02-11' AS Date), N'34.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (35, N'Федотова', N'Сандра', N'Владленовна', N'ж', N'7(126)195-25-86 ', CAST(N'1985-03-29' AS Date), N'penna@verizon.net', CAST(N'2016-11-08' AS Date), N'35.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (36, N'Кузьмина', N'Дэнна', N'Витальевна', N'ж', N'7(9940)977-45-73 ', CAST(N'1993-08-24' AS Date), N'nichoj@mac.com', CAST(N'2016-03-27' AS Date), N'36.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (37, N'Колобова', N'Злата', N'Романовна', N'ж', N'7(50)884-07-35 ', CAST(N'1994-08-25' AS Date), N'sinkou@aol.com', CAST(N'2016-12-03' AS Date), N'37.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (38, N'Некрасов', N'Варлам', N'Михайлович', N'м', N'7(019)258-06-35 ', CAST(N'2000-11-12' AS Date), N'dogdude@verizon.net', CAST(N'2017-12-03' AS Date), N'38.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (39, N'Колобов', N'Орест', N'Юлианович', N'м', N'7(1680)508-58-26 ', CAST(N'2001-07-14' AS Date), N'parkes@verizon.net', CAST(N'2017-01-01' AS Date), N'39.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (40, N'Блохин', N'Пантелеймон', N'Феликсович', N'м', N'7(9524)556-48-98 ', CAST(N'1978-03-06' AS Date), N'balchen@comcast.net', CAST(N'2018-02-14' AS Date), N'40.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (41, N'Калинин', N'Петр', N'Иванович', N'м', N'7(90)316-07-17 ', CAST(N'1993-09-08' AS Date), N'aschmitz@hotmail.com', CAST(N'2016-05-26' AS Date), N'41.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (42, N'Беляева', N'Сабрина', N'Федосеевна', N'ж', N'7(6580)534-32-58 ', CAST(N'1972-07-26' AS Date), N'agapow@gmail.com', CAST(N'2017-06-14' AS Date), N'42.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (43, N'Агафонов', N'Юстиниан', N'Олегович', N'м', N'7(303)810-28-78 ', CAST(N'1997-02-02' AS Date), N'staffelb@sbcglobal.net', CAST(N'2016-06-08' AS Date), N'43.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (44, N'Мамонтова', N'Марфа', N'Мироновна', N'ж', N'7(38)095-64-18 ', CAST(N'1984-10-19' AS Date), N'rfoley@verizon.net', CAST(N'2018-02-27' AS Date), N'44.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (45, N'Блинов', N'Евгений', N'Мэлсович', N'м', N'7(0852)321-82-64 ', CAST(N'1994-01-05' AS Date), N'moxfulder@outlook.com', CAST(N'2017-05-07' AS Date), N'45.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (46, N'Воронова', N'Изабелла', N'Вячеславовна', N'ж', N'7(17)433-44-98 ', CAST(N'1999-09-24' AS Date), N'kildjean@sbcglobal.net', CAST(N'2017-12-21' AS Date), N'46.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (47, N'Медведев', N'Святослав', N'Юлианович', N'м', N'7(3520)435-21-20 ', CAST(N'1972-10-04' AS Date), N'hllam@comcast.net', CAST(N'2018-10-13' AS Date), N'47.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (48, N'Куликова', N'Эвелина', N'Вячеславовна', N'ж', N'7(0236)682-42-78 ', CAST(N'1997-11-14' AS Date), N'ilikered@hotmail.com', CAST(N'2018-02-01' AS Date), N'48.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (49, N'Суворова', N'Божена', N'Анатольевна', N'ж', N'7(347)895-86-57 ', CAST(N'1981-03-09' AS Date), N'attwood@aol.com', CAST(N'2016-01-28' AS Date), N'49.jpg')
INSERT [dbo].[Clients] ([ClientID], [Surname], [Name], [Patronymic], [Gender], [Phone], [DateBirth], [Email], [DateReg], [Photo]) VALUES (50, N'Егорова', N'Амалия', N'Дамировна', N'ж', N'7(7486)408-12-26 ', CAST(N'1999-09-28' AS Date), N'drezet@yahoo.com', CAST(N'2016-06-30' AS Date), N'50.jpg')
GO
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (1, 100, CAST(N'2019-11-16' AS Date), CAST(N'11:20:00' AS Time), 1)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (2, 99, CAST(N'2019-01-11' AS Date), CAST(N'18:10:00' AS Time), 1)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (3, 98, CAST(N'2019-12-01' AS Date), CAST(N'14:40:00' AS Time), 1)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (4, 97, CAST(N'2019-02-11' AS Date), CAST(N'13:30:00' AS Time), 2)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (5, 96, CAST(N'2019-09-10' AS Date), CAST(N'18:20:00' AS Time), 3)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (6, 95, CAST(N'2019-02-12' AS Date), CAST(N'19:40:00' AS Time), 4)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (7, 94, CAST(N'2019-04-04' AS Date), CAST(N'09:10:00' AS Time), 5)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (8, 93, CAST(N'2019-05-15' AS Date), CAST(N'09:20:00' AS Time), 6)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (9, 92, CAST(N'2019-01-16' AS Date), CAST(N'14:20:00' AS Time), 7)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (10, 91, CAST(N'2019-01-16' AS Date), CAST(N'09:00:00' AS Time), 8)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (11, 90, CAST(N'2019-03-15' AS Date), CAST(N'10:50:00' AS Time), 9)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (12, 89, CAST(N'2019-01-31' AS Date), CAST(N'12:00:00' AS Time), 10)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (13, 88, CAST(N'2019-11-19' AS Date), CAST(N'15:50:00' AS Time), 45)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (14, 87, CAST(N'2019-01-10' AS Date), CAST(N'08:30:00' AS Time), 21)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (15, 86, CAST(N'2019-04-29' AS Date), CAST(N'15:00:00' AS Time), 26)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (16, 85, CAST(N'2019-10-12' AS Date), CAST(N'08:50:00' AS Time), 22)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (17, 84, CAST(N'2019-02-13' AS Date), CAST(N'18:00:00' AS Time), 46)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (18, 83, CAST(N'2019-02-01' AS Date), CAST(N'18:00:00' AS Time), 45)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (19, 82, CAST(N'2019-11-12' AS Date), CAST(N'18:50:00' AS Time), 23)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (20, 81, CAST(N'2019-01-11' AS Date), CAST(N'12:50:00' AS Time), 12)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (21, 80, CAST(N'2019-03-23' AS Date), CAST(N'19:50:00' AS Time), 6)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (22, 79, CAST(N'2019-06-23' AS Date), CAST(N'08:00:00' AS Time), 24)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (23, 78, CAST(N'2019-05-25' AS Date), CAST(N'17:10:00' AS Time), 42)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (24, 77, CAST(N'2019-02-18' AS Date), CAST(N'18:20:00' AS Time), 12)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (25, 76, CAST(N'2019-07-17' AS Date), CAST(N'08:20:00' AS Time), 4)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (26, 75, CAST(N'2019-08-06' AS Date), CAST(N'16:50:00' AS Time), 5)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (27, 74, CAST(N'2019-12-14' AS Date), CAST(N'08:40:00' AS Time), 8)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (28, 73, CAST(N'2019-06-28' AS Date), CAST(N'14:20:00' AS Time), 9)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (29, 72, CAST(N'2019-06-06' AS Date), CAST(N'19:20:00' AS Time), 12)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (30, 71, CAST(N'2019-06-07' AS Date), CAST(N'17:20:00' AS Time), 34)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (31, 70, CAST(N'2019-04-30' AS Date), CAST(N'18:10:00' AS Time), 45)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (32, 69, CAST(N'2019-08-30' AS Date), CAST(N'11:40:00' AS Time), 15)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (33, 68, CAST(N'2019-05-08' AS Date), CAST(N'14:10:00' AS Time), 23)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (34, 67, CAST(N'2019-10-27' AS Date), CAST(N'16:20:00' AS Time), 38)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (35, 66, CAST(N'2019-01-05' AS Date), CAST(N'08:40:00' AS Time), 12)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (36, 65, CAST(N'2019-03-04' AS Date), CAST(N'17:20:00' AS Time), 1)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (37, 64, CAST(N'2019-09-29' AS Date), CAST(N'13:40:00' AS Time), 1)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (38, 63, CAST(N'2019-01-22' AS Date), CAST(N'10:50:00' AS Time), 1)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (39, 62, CAST(N'2019-12-19' AS Date), CAST(N'19:30:00' AS Time), 9)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (40, 61, CAST(N'2019-11-15' AS Date), CAST(N'17:50:00' AS Time), 22)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (41, 60, CAST(N'2019-07-04' AS Date), CAST(N'17:10:00' AS Time), 22)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (42, 59, CAST(N'2019-08-06' AS Date), CAST(N'11:50:00' AS Time), 1)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (43, 58, CAST(N'2019-11-09' AS Date), CAST(N'13:00:00' AS Time), 12)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (44, 57, CAST(N'2019-02-16' AS Date), CAST(N'18:50:00' AS Time), 12)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (45, 56, CAST(N'2019-03-03' AS Date), CAST(N'17:20:00' AS Time), 8)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (46, 55, CAST(N'2019-05-22' AS Date), CAST(N'16:10:00' AS Time), 11)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (47, 54, CAST(N'2019-07-31' AS Date), CAST(N'18:10:00' AS Time), 9)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (48, 53, CAST(N'2019-08-29' AS Date), CAST(N'19:00:00' AS Time), 17)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (49, 52, CAST(N'2019-10-02' AS Date), CAST(N'10:10:00' AS Time), 5)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (50, 51, CAST(N'2019-03-16' AS Date), CAST(N'11:30:00' AS Time), 12)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (51, 50, CAST(N'2019-08-27' AS Date), CAST(N'11:40:00' AS Time), 18)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (52, 49, CAST(N'2019-06-13' AS Date), CAST(N'11:30:00' AS Time), 40)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (53, 48, CAST(N'2019-08-18' AS Date), CAST(N'16:00:00' AS Time), 21)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (54, 47, CAST(N'2019-12-26' AS Date), CAST(N'16:30:00' AS Time), 13)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (55, 46, CAST(N'2019-11-27' AS Date), CAST(N'18:50:00' AS Time), 45)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (56, 45, CAST(N'2019-09-06' AS Date), CAST(N'19:20:00' AS Time), 12)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (57, 44, CAST(N'2019-09-24' AS Date), CAST(N'13:40:00' AS Time), 15)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (58, 43, CAST(N'2019-03-01' AS Date), CAST(N'11:50:00' AS Time), 13)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (59, 42, CAST(N'2019-09-28' AS Date), CAST(N'10:00:00' AS Time), 12)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (60, 41, CAST(N'2019-03-20' AS Date), CAST(N'10:40:00' AS Time), 14)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (61, 40, CAST(N'2019-11-27' AS Date), CAST(N'11:30:00' AS Time), 18)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (62, 39, CAST(N'2019-01-23' AS Date), CAST(N'18:30:00' AS Time), 32)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (63, 38, CAST(N'2019-10-21' AS Date), CAST(N'10:20:00' AS Time), 12)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (64, 37, CAST(N'2019-08-11' AS Date), CAST(N'12:50:00' AS Time), 11)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (65, 36, CAST(N'2019-01-03' AS Date), CAST(N'14:40:00' AS Time), 12)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (66, 35, CAST(N'2019-12-31' AS Date), CAST(N'08:30:00' AS Time), 43)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (67, 34, CAST(N'2019-08-29' AS Date), CAST(N'10:10:00' AS Time), 39)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (68, 33, CAST(N'2019-01-03' AS Date), CAST(N'18:50:00' AS Time), 45)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (69, 32, CAST(N'2019-04-09' AS Date), CAST(N'11:10:00' AS Time), 12)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (70, 31, CAST(N'2019-12-31' AS Date), CAST(N'19:10:00' AS Time), 43)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (71, 30, CAST(N'2019-10-17' AS Date), CAST(N'13:30:00' AS Time), 21)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (72, 29, CAST(N'2019-05-17' AS Date), CAST(N'13:30:00' AS Time), 22)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (73, 28, CAST(N'2019-11-23' AS Date), CAST(N'18:40:00' AS Time), 24)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (74, 27, CAST(N'2019-07-10' AS Date), CAST(N'15:30:00' AS Time), 25)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (75, 26, CAST(N'2019-06-09' AS Date), CAST(N'13:40:00' AS Time), 35)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (76, 25, CAST(N'2019-01-09' AS Date), CAST(N'10:20:00' AS Time), 36)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (77, 24, CAST(N'2019-08-15' AS Date), CAST(N'18:30:00' AS Time), 4)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (78, 23, CAST(N'2019-07-15' AS Date), CAST(N'14:10:00' AS Time), 5)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (79, 22, CAST(N'2019-12-31' AS Date), CAST(N'18:00:00' AS Time), 6)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (80, 21, CAST(N'2019-12-22' AS Date), CAST(N'09:20:00' AS Time), 7)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (81, 20, CAST(N'2019-12-28' AS Date), CAST(N'16:00:00' AS Time), 12)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (82, 19, CAST(N'2019-06-26' AS Date), CAST(N'10:10:00' AS Time), 34)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (83, 18, CAST(N'2019-04-29' AS Date), CAST(N'12:40:00' AS Time), 34)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (84, 17, CAST(N'2019-04-13' AS Date), CAST(N'09:00:00' AS Time), 11)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (85, 16, CAST(N'2019-01-05' AS Date), CAST(N'16:00:00' AS Time), 8)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (86, 15, CAST(N'2019-03-25' AS Date), CAST(N'18:20:00' AS Time), 12)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (87, 14, CAST(N'2019-11-09' AS Date), CAST(N'18:50:00' AS Time), 11)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (88, 13, CAST(N'2019-04-07' AS Date), CAST(N'10:40:00' AS Time), 14)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (89, 12, CAST(N'2019-11-11' AS Date), CAST(N'18:50:00' AS Time), 29)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (90, 11, CAST(N'2019-01-06' AS Date), CAST(N'15:00:00' AS Time), 28)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (91, 10, CAST(N'2019-08-20' AS Date), CAST(N'19:10:00' AS Time), 27)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (92, 9, CAST(N'2019-04-16' AS Date), CAST(N'13:20:00' AS Time), 17)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (93, 8, CAST(N'2019-12-22' AS Date), CAST(N'15:10:00' AS Time), 10)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (94, 7, CAST(N'2019-01-22' AS Date), CAST(N'16:50:00' AS Time), 27)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (95, 6, CAST(N'2019-09-04' AS Date), CAST(N'08:10:00' AS Time), 6)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (96, 5, CAST(N'2019-01-01' AS Date), CAST(N'14:50:00' AS Time), 10)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (97, 4, CAST(N'2019-01-29' AS Date), CAST(N'16:30:00' AS Time), 42)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (98, 3, CAST(N'2019-07-06' AS Date), CAST(N'11:30:00' AS Time), 17)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (99, 2, CAST(N'2019-12-05' AS Date), CAST(N'10:20:00' AS Time), 19)
INSERT [dbo].[Delivery] ([DeliveryID], [ServiceID], [DateRender], [TimeRender], [ClientID]) VALUES (100, 1, CAST(N'2019-04-05' AS Date), CAST(N'13:20:00' AS Time), 47)
GO
INSERT [dbo].[Employee] ([EmployeeID], [Surname], [Name], [Patronymic], [SeriesPass], [CodePass], [CodePd], [Gender], [CoefSale], [DateBirth], [CategoryEmployeeID]) VALUES (1, N'Борисов', N'Артур', N'Витальевич', N'3244', N'432423', N'4232-23', N'ж', 10, CAST(N'2003-07-30' AS Date), 1)
GO
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (1, N'Занятие с репетитором-носителем китайского языка', N' Китайский язык.jpg', 120, 1950, NULL)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (2, N'Индивидуальный урок немецкого языка с преподавателем-носителем языка', N' Немецкий язык.png', 110, 1340, NULL)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (3, N'Киноклуб китайского языка для студентов', N'киноклуб.jpg', 100, 1990, NULL)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (4, N'Индивидуальный онлайн-урок японского языка по Skype', N'online lessons.jpg', 80, 1000, 20)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (5, N'Киноклуб испанского языка для студентов', N'киноклуб.jpg', 40, 1050, 10)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (6, N'Занятие с русскоязычным репетитором испанского языка', N'Испанский язык.jpg', 50, 1450, 15)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (7, N'Урок в группе итальянского языка для взрослых', N'Итальянский язык.jpg', 40, 1290, NULL)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (8, N'Интенсивный онлайн-курс французского языка для компаний по Skype', N'online lessons.jpg', 40, 1180, 10)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (9, N'Индивидуальный урок французского языка с преподавателем-носителем языка', N'Французский язык.jpg', 40, 1410, 20)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (10, N'Урок в группе французского языка для школьников', N'Французский язык.jpg', 100, 1970, NULL)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (11, N'Занятие с репетитором-носителем английского языка', N'Английский язык.jpg', 110, 910, NULL)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (12, N'Киноклуб французского языка для взрослых', N'киноклуб.jpg', 90, 1170, 10)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (13, N'Киноклуб немецкого языка для взрослых', N'киноклуб.jpg', 100, 1560, 10)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (14, N'Урок в группе японского языка для школьников', N'Японский язык.jpg', 80, 1300, 5)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (15, N'Индивидуальный урок испанского языка с русскоязычным преподавателем', N'Испанский язык.jpg', 60, 1790, 15)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (16, N'Интенсивный онлайн-курс итальянского языка для компаний по Skype', N'online lessons.jpg', 70, 1230, 10)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (17, N'Урок в группе японского языка для студентов', N'Японский язык.jpg', 50, 1860, NULL)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (18, N'Интенсивный курс с преподавателем-носителем английского языка для компаний', N'for company.jpg', 110, 1670, 10)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (19, N'Киноклуб итальянского языка для студентов', N'киноклуб.jpg', 30, 1760, NULL)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (20, N'Урок в группе испанского языка для взрослых', N'Испанский язык.jpg', 30, 1730, 5)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (21, N'Урок в группе испанского языка для студентов', N'Испанский язык.jpg', 100, 1310, 20)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (22, N'Интенсивный онлайн-курс испанского языка для компаний по Skype', N'online lessons.jpg', 120, 1510, NULL)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (23, N'Урок в группе английского языка для школьников', N'Английский язык.jpg', 110, 900, NULL)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (24, N'Занятие с репетитором-носителем испанского языка', N'Испанский язык.jpg', 50, 1090, 5)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (25, N'Интенсивный курс с преподавателем-носителем итальянского языка для компаний', N'for company.jpg', 40, 1190, 20)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (26, N'Урок в группе китайского языка для студентов', N'Китайский язык.jpg', 40, 2000, 20)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (27, N'Индивидуальный урок испанского языка с преподавателем-носителем языка', N'Испанский язык.jpg', 90, 1200, 10)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (28, N'Интенсивный онлайн-курс португальского языка для компаний по Skype', N'online lessons.jpg', 70, 1610, 5)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (29, N'Подготовка к экзамену ACT', N'Подготовка к экзамену ACT.png', 50, 1440, NULL)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (30, N'Урок в группе китайского языка для взрослых', N'Китайский язык.jpg', 70, 1730, 25)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (31, N'Интенсивный онлайн-курс английского языка для компаний по Skype', N'online lessons.jpg', 50, 1160, NULL)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (32, N'Подготовка к экзамену TOEFL', N'Подготовка к экзамену TOEFL.jpg', 100, 1070, 5)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (33, N'Занятие с репетитором-носителем итальянского языка', N'Итальянский язык.jpg', 120, 1370, 5)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (34, N'Урок в группе английского языка для взрослых', N'Английский язык.jpg', 50, 1010, 25)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (35, N'Киноклуб английского языка для взрослых', N'киноклуб.jpg', 70, 1250, 5)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (36, N'Интенсивный курс с преподавателем-носителем французского языка для компаний', N'for company.jpg', 70, 1630, 15)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (37, N'Урок в группе испанского языка для школьников', N'Испанский язык.jpg', 120, 1910, NULL)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (38, N'Подготовка к экзамену GRE', N'Подготовка к экзамену GRE.jpeg', 80, 1300, 20)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (39, N'Урок в группе английского языка для студентов', N'Английский язык.jpg', 80, 960, 25)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (40, N'Занятие с русскоязычным репетитором японского языка', N'Японский язык.jpg', 40, 1260, 10)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (41, N'Индивидуальный онлайн-урок немецкого языка по Skype', N'online lessons.jpg', 90, 970, NULL)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (42, N'Интенсивный курс японского языка с русскоязычным преподавателем для компаний', N'for company.jpg', 80, 1500, NULL)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (43, N'Киноклуб китайского языка для взрослых', N'киноклуб.jpg', 70, 1800, 25)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (44, N'Индивидуальный урок китайского языка с русскоязычным преподавателем', N'Китайский язык.jpg', 120, 1860, 10)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (45, N'Подготовка к экзамену GMAT', N'Подготовка к экзамену GMAT.png', 70, 1150, 5)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (46, N'Подготовка к экзамену IELTS', N'Подготовка к экзамену IELTS.jpg', 120, 1730, NULL)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (47, N'Подготовка к экзамену SAT', N'Подготовка к экзамену SAT.png', 40, 1560, NULL)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (48, N'Урок в группе китайского языка для школьников', N'Китайский язык.jpg', 50, 1180, 15)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (49, N'Киноклуб английского языка для студентов', N'киноклуб.jpg', 80, 980, NULL)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (50, N'Киноклуб португальского языка для студентов', N'киноклуб.jpg', 30, 1170, 15)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (51, N'Киноклуб китайского языка для детей', N'киноклуб.jpg', 100, 1120, 10)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (52, N'Урок в группе немецкого языка для школьников', N'Немецкий язык.png', 30, 1570, 15)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (53, N'Индивидуальный онлайн-урок испанского языка по Skype', N'online lessons.jpg', 70, 1780, 5)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (54, N'Урок в группе немецкого языка для взрослых', N'Немецкий язык.png', 60, 930, 5)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (55, N'Индивидуальный урок китайского языка с преподавателем-носителем языка', N'Китайский язык.jpg', 90, 1480, 20)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (56, N'Занятие с русскоязычным репетитором португальского языка', N'Португальский язык.jpg', 50, 1970, 10)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (57, N'Интенсивный курс китайского языка с русскоязычным преподавателем для компаний', N'for company.jpg', 110, 1470, NULL)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (58, N'Занятие с русскоязычным репетитором немецкого языка', N'Немецкий язык.png', 30, 1420, NULL)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (59, N'Киноклуб английского языка для детей', N'киноклуб.jpg', 40, 1280, 5)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (60, N'Занятие с репетитором-носителем немецкого языка', N'Немецкий язык.png', 120, 1120, NULL)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (61, N'Индивидуальный онлайн-урок китайского языка по Skype', N'online lessons.jpg', 70, 1410, NULL)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (62, N'Индивидуальный урок английского языка с преподавателем-носителем языка', N'Английский язык.jpg', 120, 1300, NULL)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (63, N'Интенсивный курс с преподавателем-носителем немецкого языка для компаний', N'for company.jpg', 120, 1180, 20)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (64, N'Интенсивный онлайн-курс немецкого языка для компаний по Skype', N'online lessons.jpg', 70, 1840, 10)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (65, N'Урок в группе итальянского языка для школьников', N'Итальянский язык.jpg', 100, 1410, 15)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (66, N'Индивидуальный урок итальянского языка с русскоязычным преподавателем', N'Итальянский язык.jpg', 30, 1330, 20)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (67, N'Интенсивный онлайн-курс китайского языка для компаний по Skype', N'online lessons.jpg', 120, 1760, 15)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (68, N'Занятие с русскоязычным репетитором французского языка', N'Французский язык.jpg', 100, 1870, 20)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (69, N'Индивидуальный урок немецкого языка с русскоязычным преподавателем', N'Немецкий язык.png', 30, 990, 5)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (70, N'Индивидуальный онлайн-урок английского языка по Skype', N' online lessons.jpg', 100, 1880, NULL)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (71, N'Индивидуальный урок французского языка с русскоязычным преподавателем', N'Французский язык.jpg', 70, 1390, NULL)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (72, N'Интенсивный курс португальского языка с русскоязычным преподавателем для компаний', N'for company.jpg', 60, 2010, 25)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (73, N'Индивидуальный онлайн-урок французского языка по Skype', N'online lessons.jpg', 120, 2010, NULL)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (74, N'Интенсивный курс английского языка с русскоязычным преподавателем для компаний', N'for company.jpg', 80, 1210, NULL)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (75, N'Урок в группе французского языка для взрослых', N'Французский язык.jpg', 120, 960, 15)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (76, N'Подготовка к экзамену IELTS Speaking Club', N'Подготовка к экзамену IELTS.jpg', 90, 1430, 20)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (77, N'Киноклуб итальянского языка для детей', N'киноклуб.jpg', 70, 1480, NULL)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (78, N'Урок в группе итальянского языка для студентов', N'Итальянский язык.jpg', 110, 1020, NULL)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (79, N'Индивидуальный урок итальянского языка с преподавателем-носителем языка', N'Итальянский язык.jpg', 80, 1690, NULL)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (80, N'Киноклуб немецкого языка для детей', N'киноклуб.jpg', 120, 1670, 5)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (81, N'Киноклуб итальянского языка для взрослых', N'киноклуб.jpg', 110, 1760, NULL)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (82, N'Киноклуб португальского языка для взрослых', N'киноклуб.jpg', 30, 950, 5)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (83, N'Киноклуб португальского языка для детей', N'киноклуб.jpg', 90, 1710, 15)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (84, N'Киноклуб французского языка для детей', N'киноклуб.jpg', 90, 1600, 10)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (85, N'Урок в группе японского языка для взрослых', N'Японский язык.jpg', 80, 1420, 5)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (86, N'Интенсивный курс французского языка с русскоязычным преподавателем для компаний', N'for company.jpg', 40, 1940, NULL)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (87, N'Занятие с русскоязычным репетитором итальянского языка', N'Итальянский язык.jpg', 70, 1620, 20)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (88, N'Индивидуальный урок английского языка с русскоязычным преподавателем', N'Английский язык.jpg', 30, 1910, 10)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (89, N'Интенсивный курс с преподавателем-носителем португальского языка для компаний', N'for company.jpg', 30, 1580, NULL)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (90, N'Интенсивный курс испанского языка с русскоязычным преподавателем для компаний', N'for company.jpg', 90, 1000, 25)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (91, N'Киноклуб немецкого языка для студентов', N'киноклуб.jpg', 50, 1140, 15)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (92, N'Занятие с репетитором-носителем французского языка', N'Английский язык.jpg', 50, 2040, NULL)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (93, N'Урок в группе немецкого языка для студентов', N'Немецкий язык.png', 70, 1240, NULL)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (94, N'Занятие с русскоязычным репетитором китайского языка', N'Китайский язык.jpg', 110, 940, 15)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (95, N'Занятие с репетитором-носителем японского языка', N'Японский язык.jpg', 50, 1100, 25)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (96, N'Урок в группе французского языка для студентов', N'Французский язык.jpg', 30, 1910, NULL)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (97, N'Интенсивный курс итальянского языка с русскоязычным преподавателем для компаний', N'for company.jpg', 110, 900, NULL)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (98, N'Занятие с русскоязычным репетитором английского языка', N'Английский язык.jpg', 90, 1950, 15)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (99, N'Интенсивный курс с преподавателем-носителем испанского языка для компаний', N'for company.jpg', 90, 1660, NULL)
INSERT [dbo].[Service] ([ServiceID], [Name], [MainPhoto], [Duration], [Price], [Sale]) VALUES (100, N'Интенсивный курс с преподавателем-носителем японского языка для компаний', N'for company.jpg', 70, 1380, 20)
GO
ALTER TABLE [dbo].[AdditionalProduct]  WITH CHECK ADD  CONSTRAINT [FK_AdditionalProduct_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[AdditionalProduct] CHECK CONSTRAINT [FK_AdditionalProduct_Product]
GO
ALTER TABLE [dbo].[Delivery]  WITH CHECK ADD  CONSTRAINT [FK_Delivery_Clients] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Clients] ([ClientID])
GO
ALTER TABLE [dbo].[Delivery] CHECK CONSTRAINT [FK_Delivery_Clients]
GO
ALTER TABLE [dbo].[Delivery]  WITH CHECK ADD  CONSTRAINT [FK_Delivery_Service] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Service] ([ServiceID])
GO
ALTER TABLE [dbo].[Delivery] CHECK CONSTRAINT [FK_Delivery_Service]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_CategoryEmployee] FOREIGN KEY([CategoryEmployeeID])
REFERENCES [dbo].[CategoryEmployee] ([CategoryEmployeeID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_CategoryEmployee]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_CategoryProduct] FOREIGN KEY([CategoryProductID])
REFERENCES [dbo].[CategoryProduct] ([CategoryProductID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_CategoryProduct]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Produc] FOREIGN KEY([ProducID])
REFERENCES [dbo].[Produc] ([ProducID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Produc]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Season] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Season] ([SeasonID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Season]
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_Sale_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_Sale_Product]
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_Sale_TimeSheet] FOREIGN KEY([TimeSheetID])
REFERENCES [dbo].[TimeSheet] ([TimeSheetID])
GO
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_Sale_TimeSheet]
GO
ALTER TABLE [dbo].[TimeSheet]  WITH CHECK ADD  CONSTRAINT [FK_TimeSheet_Employee] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[TimeSheet] CHECK CONSTRAINT [FK_TimeSheet_Employee]
GO
ALTER TABLE [dbo].[TimeSheet]  WITH CHECK ADD  CONSTRAINT [FK_TimeSheet_Service] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Service] ([ServiceID])
GO
ALTER TABLE [dbo].[TimeSheet] CHECK CONSTRAINT [FK_TimeSheet_Service]
GO
ALTER TABLE [dbo].[WareHouse]  WITH CHECK ADD  CONSTRAINT [FK_WareHouse_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[WareHouse] CHECK CONSTRAINT [FK_WareHouse_Product]
GO
USE [master]
GO
ALTER DATABASE [Volga] SET  READ_WRITE 
GO
