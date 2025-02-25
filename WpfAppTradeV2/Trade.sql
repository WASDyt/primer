USE [Trade]
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 23.10.2024 14:39:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturer](
	[ManufacturerID] [int] NOT NULL,
	[name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Manufacturer] PRIMARY KEY CLUSTERED 
(
	[ManufacturerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 23.10.2024 14:39:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[DeliveryDate] [datetime] NOT NULL,
	[PickupPointID] [int] NOT NULL,
	[ClientID] [int] NULL,
	[ReceiveCode] [nchar](10) NULL,
	[OrderStatusID] [int] NULL,
 CONSTRAINT [PK__Order__C3905BAF682FDF8F] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 23.10.2024 14:39:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[OrderProductID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_OrderProduct] PRIMARY KEY CLUSTERED 
(
	[OrderProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 23.10.2024 14:39:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[OrderStatusID] [int] NOT NULL,
	[name] [nvarchar](max) NULL,
 CONSTRAINT [PK_OrderStatus] PRIMARY KEY CLUSTERED 
(
	[OrderStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PickupPoint]    Script Date: 23.10.2024 14:39:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PickupPoint](
	[PointID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
 CONSTRAINT [PK_PickupPoint] PRIMARY KEY CLUSTERED 
(
	[PointID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 23.10.2024 14:39:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductArticleNumber] [nvarchar](max) NULL,
	[ProductName] [nvarchar](max) NULL,
	[ProductDescription] [nvarchar](max) NULL,
	[ProductCategoryID] [int] NULL,
	[ManufacturerID] [int] NULL,
	[ProductCost] [real] NULL,
	[ProductDiscountAmount] [int] NULL,
	[ProductQuantityInStock] [int] NULL,
	[MeasurementID] [int] NULL,
	[SupplierID] [int] NULL,
	[ProductPhoto] [nvarchar](max) NULL,
	[ProductDiscountMax] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 23.10.2024 14:39:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[ProductCategoryID] [int] NOT NULL,
	[name] [nvarchar](max) NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[ProductCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductMeasurement]    Script Date: 23.10.2024 14:39:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductMeasurement](
	[MeasurementID] [int] NOT NULL,
	[name] [nchar](10) NULL,
 CONSTRAINT [PK_ProductMeasurement] PRIMARY KEY CLUSTERED 
(
	[MeasurementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 23.10.2024 14:39:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 23.10.2024 14:39:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[SupplierID] [int] NOT NULL,
	[name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 23.10.2024 14:39:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserSurname] [nchar](10) NULL,
	[UserName] [nchar](10) NULL,
	[UserPatronymic] [nvarchar](100) NOT NULL,
	[UserLogin] [nvarchar](max) NOT NULL,
	[UserPassword] [nvarchar](max) NOT NULL,
	[UserRole] [int] NOT NULL,
 CONSTRAINT [PK__User__1788CCACD9A6E9AE] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Manufacturer] ([ManufacturerID], [name]) VALUES (1, N'X-Match')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [name]) VALUES (2, N'Perfetto Sport')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [name]) VALUES (3, N'ROMANA Next')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [name]) VALUES (4, N'Moby Kids')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [name]) VALUES (5, N'playToday')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [name]) VALUES (6, N'Совтехстром')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [name]) VALUES (7, N'Abtoys')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [name]) VALUES (8, N'DFC')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [name]) VALUES (9, N'Nordway')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [name]) VALUES (10, N'Ridex')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [name]) VALUES (11, N'Salomon')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [name]) VALUES (12, N'Mikasa')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [name]) VALUES (13, N'Molten')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [name]) VALUES (14, N'Colton')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [name]) VALUES (15, N'Atemi')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [name]) VALUES (16, N'Green Hill')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [name]) VALUES (17, N'SKIF')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [name]) VALUES (18, N'Starfit')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [name]) VALUES (19, N'Bradex')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [name]) VALUES (20, N'Demix')
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [OrderDate], [DeliveryDate], [PickupPointID], [ClientID], [ReceiveCode], [OrderStatusID]) VALUES (2, CAST(N'2022-05-15T00:00:00.000' AS DateTime), CAST(N'2022-05-21T00:00:00.000' AS DateTime), 18, 7, N'401       ', 1)
INSERT [dbo].[Order] ([OrderID], [OrderDate], [DeliveryDate], [PickupPointID], [ClientID], [ReceiveCode], [OrderStatusID]) VALUES (3, CAST(N'2022-05-16T00:00:00.000' AS DateTime), CAST(N'2022-05-22T00:00:00.000' AS DateTime), 20, 8, N'402       ', 1)
INSERT [dbo].[Order] ([OrderID], [OrderDate], [DeliveryDate], [PickupPointID], [ClientID], [ReceiveCode], [OrderStatusID]) VALUES (4, CAST(N'2022-05-17T00:00:00.000' AS DateTime), CAST(N'2022-05-23T00:00:00.000' AS DateTime), 20, 9, N'403       ', 2)
INSERT [dbo].[Order] ([OrderID], [OrderDate], [DeliveryDate], [PickupPointID], [ClientID], [ReceiveCode], [OrderStatusID]) VALUES (5, CAST(N'2022-05-18T00:00:00.000' AS DateTime), CAST(N'2022-05-24T00:00:00.000' AS DateTime), 22, 10, N'404       ', 1)
INSERT [dbo].[Order] ([OrderID], [OrderDate], [DeliveryDate], [PickupPointID], [ClientID], [ReceiveCode], [OrderStatusID]) VALUES (6, CAST(N'2022-05-19T00:00:00.000' AS DateTime), CAST(N'2022-05-25T00:00:00.000' AS DateTime), 22, NULL, N'405       ', 1)
INSERT [dbo].[Order] ([OrderID], [OrderDate], [DeliveryDate], [PickupPointID], [ClientID], [ReceiveCode], [OrderStatusID]) VALUES (7, CAST(N'2022-05-19T00:00:00.000' AS DateTime), CAST(N'2022-05-25T00:00:00.000' AS DateTime), 16, NULL, N'406       ', 1)
INSERT [dbo].[Order] ([OrderID], [OrderDate], [DeliveryDate], [PickupPointID], [ClientID], [ReceiveCode], [OrderStatusID]) VALUES (8, CAST(N'2022-05-21T00:00:00.000' AS DateTime), CAST(N'2022-05-27T00:00:00.000' AS DateTime), 16, NULL, N'407       ', 2)
INSERT [dbo].[Order] ([OrderID], [OrderDate], [DeliveryDate], [PickupPointID], [ClientID], [ReceiveCode], [OrderStatusID]) VALUES (9, CAST(N'2022-05-22T00:00:00.000' AS DateTime), CAST(N'2022-05-28T00:00:00.000' AS DateTime), 18, NULL, N'408       ', 2)
INSERT [dbo].[Order] ([OrderID], [OrderDate], [DeliveryDate], [PickupPointID], [ClientID], [ReceiveCode], [OrderStatusID]) VALUES (10, CAST(N'2022-05-23T00:00:00.000' AS DateTime), CAST(N'2022-05-29T00:00:00.000' AS DateTime), 24, NULL, N'409       ', 1)
INSERT [dbo].[Order] ([OrderID], [OrderDate], [DeliveryDate], [PickupPointID], [ClientID], [ReceiveCode], [OrderStatusID]) VALUES (11, CAST(N'2022-05-24T00:00:00.000' AS DateTime), CAST(N'2022-05-30T00:00:00.000' AS DateTime), 24, NULL, N'410       ', 2)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderProduct] ON 

INSERT [dbo].[OrderProduct] ([OrderID], [ProductID], [Quantity], [OrderProductID]) VALUES (2, 9, 2, 1)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductID], [Quantity], [OrderProductID]) VALUES (2, 10, 2, 2)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductID], [Quantity], [OrderProductID]) VALUES (3, 11, 3, 3)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductID], [Quantity], [OrderProductID]) VALUES (3, 12, 3, 4)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductID], [Quantity], [OrderProductID]) VALUES (4, 14, 10, 5)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductID], [Quantity], [OrderProductID]) VALUES (4, 15, 10, 6)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductID], [Quantity], [OrderProductID]) VALUES (5, 16, 1, 7)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductID], [Quantity], [OrderProductID]) VALUES (5, 17, 1, 8)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductID], [Quantity], [OrderProductID]) VALUES (6, 19, 10, 9)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductID], [Quantity], [OrderProductID]) VALUES (6, 20, 10, 10)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductID], [Quantity], [OrderProductID]) VALUES (7, 21, 2, 11)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductID], [Quantity], [OrderProductID]) VALUES (7, 22, 2, 12)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductID], [Quantity], [OrderProductID]) VALUES (8, 23, 1, 13)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductID], [Quantity], [OrderProductID]) VALUES (8, 24, 1, 14)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductID], [Quantity], [OrderProductID]) VALUES (9, 25, 3, 15)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductID], [Quantity], [OrderProductID]) VALUES (9, 26, 3, 16)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductID], [Quantity], [OrderProductID]) VALUES (10, 31, 1, 17)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductID], [Quantity], [OrderProductID]) VALUES (10, 32, 1, 18)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductID], [Quantity], [OrderProductID]) VALUES (11, 36, 5, 19)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductID], [Quantity], [OrderProductID]) VALUES (11, 37, 5, 20)
SET IDENTITY_INSERT [dbo].[OrderProduct] OFF
GO
INSERT [dbo].[OrderStatus] ([OrderStatusID], [name]) VALUES (1, N'Новый')
INSERT [dbo].[OrderStatus] ([OrderStatusID], [name]) VALUES (2, N'Завершен')
GO
SET IDENTITY_INSERT [dbo].[PickupPoint] ON 

INSERT [dbo].[PickupPoint] ([PointID], [name]) VALUES (1, N'344288, г. Дубна, ул. Чехова, 1')
INSERT [dbo].[PickupPoint] ([PointID], [name]) VALUES (2, N'614164, г.Дубна,  ул. Степная, 30')
INSERT [dbo].[PickupPoint] ([PointID], [name]) VALUES (3, N'394242, г. Дубна, ул. Коммунистическая, 43')
INSERT [dbo].[PickupPoint] ([PointID], [name]) VALUES (4, N'660540, г. Дубна, ул. Солнечная, 25')
INSERT [dbo].[PickupPoint] ([PointID], [name]) VALUES (5, N'125837, г. Дубна, ул. Шоссейная, 40')
INSERT [dbo].[PickupPoint] ([PointID], [name]) VALUES (6, N'125703, г. Дубна, ул. Партизанская, 49')
INSERT [dbo].[PickupPoint] ([PointID], [name]) VALUES (7, N'625283, г. Дубна, ул. Победы, 46')
INSERT [dbo].[PickupPoint] ([PointID], [name]) VALUES (8, N'614611, г. Дубна, ул. Молодежная, 50')
INSERT [dbo].[PickupPoint] ([PointID], [name]) VALUES (9, N'454311, г.Дубна, ул. Новая, 19')
INSERT [dbo].[PickupPoint] ([PointID], [name]) VALUES (10, N'660007, г.Дубна, ул. Октябрьская, 19')
INSERT [dbo].[PickupPoint] ([PointID], [name]) VALUES (11, N'603036, г. Дубна, ул. Садовая, 4')
INSERT [dbo].[PickupPoint] ([PointID], [name]) VALUES (12, N'450983, г.Дубна, ул. Комсомольская, 26')
INSERT [dbo].[PickupPoint] ([PointID], [name]) VALUES (13, N'394782, г. Дубна, ул. Чехова, 3')
INSERT [dbo].[PickupPoint] ([PointID], [name]) VALUES (14, N'603002, г. Дубна, ул. Дзержинского, 28')
INSERT [dbo].[PickupPoint] ([PointID], [name]) VALUES (15, N'450558, г. Дубна, ул. Набережная, 30')
INSERT [dbo].[PickupPoint] ([PointID], [name]) VALUES (16, N'394060, г.Дубна, ул. Фрунзе, 43')
INSERT [dbo].[PickupPoint] ([PointID], [name]) VALUES (17, N'410661, г. Дубна, ул. Школьная, 50')
INSERT [dbo].[PickupPoint] ([PointID], [name]) VALUES (18, N'625590, г. Дубна, ул. Коммунистическая, 20')
INSERT [dbo].[PickupPoint] ([PointID], [name]) VALUES (19, N'625683, г. Дубна, ул. 8 Марта')
INSERT [dbo].[PickupPoint] ([PointID], [name]) VALUES (20, N'400562, г. Дубна, ул. Зеленая, 32')
INSERT [dbo].[PickupPoint] ([PointID], [name]) VALUES (21, N'614510, г. Дубна, ул. Маяковского, 47')
INSERT [dbo].[PickupPoint] ([PointID], [name]) VALUES (22, N'410542, г. Дубна, ул. Светлая, 46')
INSERT [dbo].[PickupPoint] ([PointID], [name]) VALUES (23, N'620839, г. Дубна, ул. Цветочная, 8')
INSERT [dbo].[PickupPoint] ([PointID], [name]) VALUES (24, N'443890, г. Дубна, ул. Коммунистическая, 1')
INSERT [dbo].[PickupPoint] ([PointID], [name]) VALUES (25, N'603379, г. Дубна, ул. Спортивная, 46')
INSERT [dbo].[PickupPoint] ([PointID], [name]) VALUES (26, N'603721, г. Дубна, ул. Гоголя, 41')
INSERT [dbo].[PickupPoint] ([PointID], [name]) VALUES (27, N'410172, г. Дубна, ул. Северная, 13')
INSERT [dbo].[PickupPoint] ([PointID], [name]) VALUES (28, N'420151, г. Дубна, ул. Вишневая, 32')
INSERT [dbo].[PickupPoint] ([PointID], [name]) VALUES (29, N'125061, г. Дубна, ул. Подгорная, 8')
INSERT [dbo].[PickupPoint] ([PointID], [name]) VALUES (30, N'630370, г. Дубна, ул. Шоссейная, 24')
INSERT [dbo].[PickupPoint] ([PointID], [name]) VALUES (31, N'614753, г. Дубна, ул. Полевая, 35')
INSERT [dbo].[PickupPoint] ([PointID], [name]) VALUES (32, N'426030, г. Дубна, ул. Маяковского, 44')
INSERT [dbo].[PickupPoint] ([PointID], [name]) VALUES (33, N'450375, г. Дубна ул. Клубная, 44')
INSERT [dbo].[PickupPoint] ([PointID], [name]) VALUES (34, N'625560, г. Дубна, ул. Некрасова, 12')
INSERT [dbo].[PickupPoint] ([PointID], [name]) VALUES (35, N'630201, г. Дубна, ул. Комсомольская, 17')
INSERT [dbo].[PickupPoint] ([PointID], [name]) VALUES (36, N'190949, г. Дубна, ул. Мичурина, 26')
SET IDENTITY_INSERT [dbo].[PickupPoint] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [MeasurementID], [SupplierID], [ProductPhoto], [ProductDiscountMax]) VALUES (9, N'A112T4', N'Боксерская груша', N'Боксерская груша X-Match черная', 1, 1, 778, 5, 6, 1, 1, N'..\Resources\A112T4.jpg', 30)
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [MeasurementID], [SupplierID], [ProductPhoto], [ProductDiscountMax]) VALUES (10, N'G598Y6', N'Спортивный мат', N'Спортивный мат 100x100x10 см Perfetto Sport № 3 бежевый', 1, 2, 2390, 2, 16, 1, 2, N'..\Resources\G598Y6.jpg', 15)
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [MeasurementID], [SupplierID], [ProductPhoto], [ProductDiscountMax]) VALUES (11, N'F746E6', N'Шведская стенка', N'Шведская стенка ROMANA Next, pastel', 1, 3, 9900, 3, 0, 1, 2, N'..\Resources\F746E6.jpg', 10)
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [MeasurementID], [SupplierID], [ProductPhoto], [ProductDiscountMax]) VALUES (12, N'D830R5', N'Тренажер прыжков', N'Тренажер для прыжков Moby Kids Moby-Jumper со счетчиком', 1, 4, 1120, 4, 8, 1, 1, N'..\Resources\D830R5.jpg', 15)
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [MeasurementID], [SupplierID], [ProductPhoto], [ProductDiscountMax]) VALUES (13, N'B538G6', N'Спортивный костюм', N'Спортивный костюм playToday (футболка + шорты)', 2, 5, 839, 3, 17, 1, 1, N'..\Resources\B538G6.jpg', 5)
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [MeasurementID], [SupplierID], [ProductPhoto], [ProductDiscountMax]) VALUES (14, N'D648N7', N'Набор для хоккея', N'Набор для хоккея Совтехстром', 1, 6, 350, 4, 7, 1, 2, N'..\Resources\D648N7.jpg', 10)
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [MeasurementID], [SupplierID], [ProductPhoto], [ProductDiscountMax]) VALUES (15, N'F735B6', N'Игровой набор', N'Игровой набор Совтехстром Кегли и шары', 1, 6, 320, 2, 9, 1, 2, N'..\Resources\F735B6.jpg', 15)
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [MeasurementID], [SupplierID], [ProductPhoto], [ProductDiscountMax]) VALUES (16, N'F937G4', N'Игровой набор', N'Набор Abtoys Бадминтон и теннис ', 1, 7, 480, 4, 12, 1, 1, N'..\Resources\F937G4.jpg', 10)
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [MeasurementID], [SupplierID], [ProductPhoto], [ProductDiscountMax]) VALUES (17, N'E324U7', N'Велотренажер', N'Велотренажер двойной DFC B804 dual bike', 1, 8, 6480, 5, 5, 1, 1, N'..\Resources\E324U7.jpg', 25)
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [MeasurementID], [SupplierID], [ProductPhoto], [ProductDiscountMax]) VALUES (18, N'G403T5', N'Тюбинг', N'Тюбинг Nordway, 73 см', 1, 9, 1450, 4, 13, 1, 1, N'..\Resources\G403T5.jpg', 15)
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [MeasurementID], [SupplierID], [ProductPhoto], [ProductDiscountMax]) VALUES (19, N'N483G5', N'Клюшка', N'Клюшка Nordway NDW300 (2019/2020) SR лев. 19 150см', 1, 9, 1299, 3, 4, 1, 2, NULL, 10)
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [MeasurementID], [SupplierID], [ProductPhoto], [ProductDiscountMax]) VALUES (20, N'D038G6', N'Лыжный комплект', N'Лыжный комплект беговые NORDWAY XC Classic, 45-45-45мм, 160см', 1, 9, 3000, 4, 23, 1, 2, NULL, 30)
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [MeasurementID], [SupplierID], [ProductPhoto], [ProductDiscountMax]) VALUES (21, N'G480F5', N'Ролики', N'Коньки роликовые Ridex Cricket жен. ABEC 3 кол.:72мм р.:39-42 синий', 1, 10, 1600, 4, 7, 1, 1, NULL, 15)
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [MeasurementID], [SupplierID], [ProductPhoto], [ProductDiscountMax]) VALUES (22, N'C324S5', N'Шлем', N'Шлем г.л./сноуб. Salomon Grom р.:KS черный (L40836800)', 1, 11, 4000, 5, 16, 1, 2, NULL, 10)
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [MeasurementID], [SupplierID], [ProductPhoto], [ProductDiscountMax]) VALUES (23, N'V312R4', N'Мяч', N'Мяч волейбольный MIKASA VT370W, для зала, 5-й размер, желтый/синий', 1, 12, 4150, 2, 5, 1, 2, NULL, 20)
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [MeasurementID], [SupplierID], [ProductPhoto], [ProductDiscountMax]) VALUES (24, N'J4DF5E', N'Насос', N'Насос Molten HP-18-B для мячей мультиколор', 1, 13, 300, 4, 12, 1, 1, NULL, 5)
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [MeasurementID], [SupplierID], [ProductPhoto], [ProductDiscountMax]) VALUES (25, N'G522B5', N'Ласты', N'Ласты Colton CF-02 для плавания р.:33-34 серый/голубой', 1, 14, 1980, 3, 6, 1, 2, NULL, 15)
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [MeasurementID], [SupplierID], [ProductPhoto], [ProductDiscountMax]) VALUES (26, N'K432G6', N'Шапочка для плавания', N'Шапочка для плавания Atemi PU 140 ткань с покрытием желтый', 1, 15, 440, 5, 17, 1, 2, NULL, 25)
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [MeasurementID], [SupplierID], [ProductPhoto], [ProductDiscountMax]) VALUES (27, N'J532D4', N'Перчатки для карате', N'Перчатки для каратэ Green Hill KMС-6083 L красный', 1, 16, 1050, 3, 5, 1, 1, NULL, 15)
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [MeasurementID], [SupplierID], [ProductPhoto], [ProductDiscountMax]) VALUES (28, N'G873H4', N'Велосипед', N'Велосипед SKIF 29 Disc (2021), горный (взрослый), рама: 17", колеса: 29", темно-серый', 1, 17, 14930, 4, 6, 1, 1, NULL, 5)
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [MeasurementID], [SupplierID], [ProductPhoto], [ProductDiscountMax]) VALUES (29, N'V423D4', N'Штанга', N'Штанга Starfit BB-401 30кг пласт. черный ', 1, 18, 5600, 3, 8, 1, 2, NULL, 10)
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [MeasurementID], [SupplierID], [ProductPhoto], [ProductDiscountMax]) VALUES (30, N'K937A5', N'Гиря', N'Гиря Starfit ГМБ4 мягкое 4кг синий/оранжевый', 1, 18, 890, 4, 10, 1, 2, NULL, 5)
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [MeasurementID], [SupplierID], [ProductPhoto], [ProductDiscountMax]) VALUES (31, N'F047J7', N'Коврик', N'Коврик Bradex для мягкой йоги дл.:1730мм ш.:610мм т.:3мм серый', 1, 19, 720, 5, 11, 1, 1, NULL, 15)
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [MeasurementID], [SupplierID], [ProductPhoto], [ProductDiscountMax]) VALUES (32, N'S374B5', N'Ролик для йоги', N'Ролик для йоги Bradex Туба d=14см ш.:33см оранжевый', 1, 19, 700, 3, 12, 1, 1, NULL, 10)
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [MeasurementID], [SupplierID], [ProductPhoto], [ProductDiscountMax]) VALUES (33, N'F687G5', N'Защита голени', N'Защита голени GREEN HILL Panther, L, синий/черный', 1, 16, 1900, 4, 6, 1, 1, NULL, 15)
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [MeasurementID], [SupplierID], [ProductPhoto], [ProductDiscountMax]) VALUES (34, N'N892G6', N'Очки для плавания', N'Очки для плавания Atemi N8401 синий', 1, 15, 500, 5, 14, 1, 2, NULL, 5)
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [MeasurementID], [SupplierID], [ProductPhoto], [ProductDiscountMax]) VALUES (35, N'D893W4', N'Мяч', N'Мяч футбольный DEMIX 1STLS1JWWW, универсальный, 4-й размер, белый/зеленый', 1, 20, 900, 2, 5, 1, 1, NULL, 5)
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [MeasurementID], [SupplierID], [ProductPhoto], [ProductDiscountMax]) VALUES (36, N'N836R5', N'Коньки', N'Коньки ATEMI AKSK01DXS, раздвижные, прогулочные, унисекс, 27-30, черный/зеленый', 1, 15, 2000, 3, 16, 1, 2, NULL, 10)
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [MeasurementID], [SupplierID], [ProductPhoto], [ProductDiscountMax]) VALUES (37, N'D927K3', N'Перчатки ', N'Перчатки Starfit SU-125 атлетические S черный', 1, 18, 660, 4, 3, 1, 2, NULL, 15)
INSERT [dbo].[Product] ([ProductID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [MeasurementID], [SupplierID], [ProductPhoto], [ProductDiscountMax]) VALUES (38, N'V392H7', N'Степ-платформа', N'Степ-платформа Starfit SP-204 серый/черный', 1, 18, 4790, 3, 15, 1, 1, NULL, 10)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
INSERT [dbo].[ProductCategory] ([ProductCategoryID], [name]) VALUES (1, N'Спортивный инвентарь
')
INSERT [dbo].[ProductCategory] ([ProductCategoryID], [name]) VALUES (2, N'Одежда
')
GO
INSERT [dbo].[ProductMeasurement] ([MeasurementID], [name]) VALUES (1, N'шт.       ')
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Администратор')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Менеджер')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Клиент')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
INSERT [dbo].[Supplier] ([SupplierID], [name]) VALUES (1, N'Спортмастер')
INSERT [dbo].[Supplier] ([SupplierID], [name]) VALUES (2, N'Декатлон')
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (1, N'Пахомова  ', N'Аиша      ', N'Анатольевна', N'm4ic8j5qgstw@gmail.com', N'2L6KZG', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (2, N'Жуков     ', N'Роман     ', N'Богданович', N'd43zfg9tlsyv@gmail.com', N'uzWC67', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (3, N'Киселева  ', N'Анастасия ', N'Максимовна', N'8ohgisf6k45w@outlook.com', N'8ntwUp', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (4, N'Григорьева', N'Арина     ', N'Арсентьевна', N'hi1brwj46czx@mail.com', N'YOyhfR', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (5, N'Иванов    ', N'Лев       ', N'Михайлович', N'fvkbcamhlj52@gmail.com', N'RSbvHv', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (6, N'Григорьев ', N'Лев       ', N'Давидович', N'9qxnce8jwruv@gmail.com', N'rwVDh9', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (7, N'Поляков   ', N'Степан    ', N'Егорович', N'dotiex942p1r@gmail.com', N'LdNyos', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (8, N'Леонова   ', N'Алиса     ', N'Кирилловна', N'n0bmi2h1xral@tutanota.com', N'gynQMT', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (9, N'Яковлев   ', N'Платон    ', N'Константинович', N'sfm3t278kdvz@yahoo.com', N'AtnDjr', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (10, N'Ковалева  ', N'Ева       ', N'Яковлевна', N'ilb8rdut0v7e@mail.com', N'JlFRCZ', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (11, N'test      ', N'test      ', N'test', N'test', N'test', 1)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Order]  WITH NOCHECK ADD  CONSTRAINT [FK_Order_OrderStatus] FOREIGN KEY([OrderStatusID])
REFERENCES [dbo].[OrderStatus] ([OrderStatusID])
GO
ALTER TABLE [dbo].[Order] NOCHECK CONSTRAINT [FK_Order_OrderStatus]
GO
ALTER TABLE [dbo].[Order]  WITH NOCHECK ADD  CONSTRAINT [FK_Order_PickupPoint1] FOREIGN KEY([PickupPointID])
REFERENCES [dbo].[PickupPoint] ([PointID])
GO
ALTER TABLE [dbo].[Order] NOCHECK CONSTRAINT [FK_Order_PickupPoint1]
GO
ALTER TABLE [dbo].[Order]  WITH NOCHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([PickupPointID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Order] NOCHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH NOCHECK ADD  CONSTRAINT [FK_OrderProduct_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderProduct] NOCHECK CONSTRAINT [FK_OrderProduct_Order]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH NOCHECK ADD  CONSTRAINT [FK_OrderProduct_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[OrderProduct] NOCHECK CONSTRAINT [FK_OrderProduct_Product]
GO
ALTER TABLE [dbo].[Product]  WITH NOCHECK ADD  CONSTRAINT [FK_Product_Manufacturer] FOREIGN KEY([ManufacturerID])
REFERENCES [dbo].[Manufacturer] ([ManufacturerID])
GO
ALTER TABLE [dbo].[Product] NOCHECK CONSTRAINT [FK_Product_Manufacturer]
GO
ALTER TABLE [dbo].[Product]  WITH NOCHECK ADD  CONSTRAINT [FK_Product_ProductCategory1] FOREIGN KEY([ProductCategoryID])
REFERENCES [dbo].[ProductCategory] ([ProductCategoryID])
GO
ALTER TABLE [dbo].[Product] NOCHECK CONSTRAINT [FK_Product_ProductCategory1]
GO
ALTER TABLE [dbo].[Product]  WITH NOCHECK ADD  CONSTRAINT [FK_Product_ProductMeasurement] FOREIGN KEY([MeasurementID])
REFERENCES [dbo].[ProductMeasurement] ([MeasurementID])
GO
ALTER TABLE [dbo].[Product] NOCHECK CONSTRAINT [FK_Product_ProductMeasurement]
GO
ALTER TABLE [dbo].[Product]  WITH NOCHECK ADD  CONSTRAINT [FK_Product_Supplier] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Supplier] ([SupplierID])
GO
ALTER TABLE [dbo].[Product] NOCHECK CONSTRAINT [FK_Product_Supplier]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK__User__UserRole__398D8EEE] FOREIGN KEY([UserRole])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK__User__UserRole__398D8EEE]
GO
