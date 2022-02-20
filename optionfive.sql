USE [Option5]
GO
/****** Object:  Table [dbo].[Agent]    Script Date: 20.02.2022 15:14:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agent](
	[ID] [int] NOT NULL,
	[CompanyName] [nvarchar](50) NOT NULL,
	[IDAgentType] [int] NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[INN] [int] NOT NULL,
	[KPP] [int] NOT NULL,
	[IDDirectorName] [int] NOT NULL,
	[Phone] [nchar](20) NOT NULL,
	[Logotype] [nvarchar](50) NULL,
	[IDPriority] [int] NOT NULL,
	[IDPointOfSales] [int] NOT NULL,
	[IDRole] [nchar](1) NOT NULL,
 CONSTRAINT [PK_Agent] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgentType]    Script Date: 20.02.2022 15:14:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgentType](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_AgentType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DirectorName]    Script Date: 20.02.2022 15:14:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DirectorName](
	[ID] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DirectorName] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 20.02.2022 15:14:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[ID] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[PassportSeries] [int] NOT NULL,
	[Number] [int] NOT NULL,
	[IssuedBy] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[BankDetails] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manager]    Script Date: 20.02.2022 15:14:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manager](
	[ID] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NOT NULL,
	[Phone] [nchar](30) NOT NULL,
	[IDRole] [nchar](1) NOT NULL,
 CONSTRAINT [PK_Manager] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materials]    Script Date: 20.02.2022 15:14:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materials](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[IDMaterialsType] [int] NOT NULL,
	[Image] [nvarchar](1000) NULL,
	[Cost] [money] NOT NULL,
	[QuantityStock] [int] NOT NULL,
	[Minimum] [int] NOT NULL,
	[AmountPackage] [int] NOT NULL,
	[IDUnit] [int] NOT NULL,
 CONSTRAINT [PK_Materials] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialsSupplier]    Script Date: 20.02.2022 15:14:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialsSupplier](
	[ID] [int] NOT NULL,
	[IDMaterials] [int] NOT NULL,
	[IDSupplier] [int] NOT NULL,
 CONSTRAINT [PK_MaterialsSupplier] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialsType]    Script Date: 20.02.2022 15:14:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialsType](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MaterialsType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PointOfSales]    Script Date: 20.02.2022 15:14:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PointOfSales](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PointOfSales] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Priority]    Script Date: 20.02.2022 15:14:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Priority](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Priority] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 20.02.2022 15:14:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Code] [nchar](1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 20.02.2022 15:14:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[IDSupplierType] [int] NOT NULL,
	[INN] [int] NOT NULL,
	[QualitiRating] [int] NOT NULL,
	[StartDate] [date] NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SupplierType]    Script Date: 20.02.2022 15:14:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupplierType](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SupplierType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unit]    Script Date: 20.02.2022 15:14:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Unit] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 20.02.2022 15:14:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[IDRole] [nchar](1) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AgentType] ([ID], [Title]) VALUES (1, N'ОАО')
INSERT [dbo].[AgentType] ([ID], [Title]) VALUES (2, N'Самозанятый')
INSERT [dbo].[AgentType] ([ID], [Title]) VALUES (3, N'ОО')
GO
INSERT [dbo].[DirectorName] ([ID], [FirstName], [LastName], [Patronymic]) VALUES (1, N'Иванов', N'Иван', N'Иванович')
GO
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Patronymic], [DateOfBirth], [PassportSeries], [Number], [IssuedBy], [Address], [BankDetails]) VALUES (1, N'апрвапр', N'апвпвп', N'вапрвапрв', CAST(N'2000-11-11' AS Date), 23553, 5543556, N'рвпвпрвап', N'вапрврвап', N'2345234354')
GO
INSERT [dbo].[Manager] ([ID], [FirstName], [LastName], [Patronymic], [Phone], [IDRole]) VALUES (1, N'тест', N'тест', N'тест', N'12323234                      ', N'm')
GO
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (1, N'Гранулы зеленый 0x3', 1, N'\materials\picture.png', 33037.0000, 937, 31, 10, 2)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (2, N'Рулон зеленый 0x0', 2, N'\materials\material_25.jpeg', 43562.0000, 371, 32, 8, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (3, N'Нарезка серый 1x1', 3, N'\materials\picture.png', 36682.0000, 302, 41, 7, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (4, N'Рулон серый 1x0', 2, N'\materials\material_12.jpeg', 1998.0000, 811, 26, 10, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (5, N'Нарезка белый 1x2', 3, N'\materials\picture.png', 39259.0000, 248, 27, 4, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (6, N'Нарезка зеленый 3x0', 3, N'\materials\material_7.jpeg', 25985.0000, 345, 30, 4, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (7, N'Спрессованный пак синий 0x2', 4, N'\materials\material_24.jpeg', 47443.0000, 881, 14, 9, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (8, N'Спрессованный пак зеленый 2x0', 4, N'\materials\picture.png', 25974.0000, 215, 25, 6, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (9, N'Нарезка белый 3x1', 3, N'\materials\picture.png', 27374.0000, 439, 50, 8, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (10, N'Гранулы цветной 1x3', 1, N'\materials\material_11.jpeg', 16651.0000, 20, 23, 4, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (11, N'Рулон синий 1x0', 2, N'\materials\picture.png', 49990.0000, 972, 40, 9, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (12, N'Спрессованный пак цветной 3x0', 4, N'\materials\picture.png', 36740.0000, 159, 42, 5, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (13, N'Нарезка белый 0x1', 3, N'\materials\picture.png', 32370.0000, 368, 16, 10, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (14, N'Рулон зеленый 1x3', 2, N'\materials\picture.png', 12393.0000, 20, 17, 6, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (15, N'Спрессованный пак белый 1x2', 4, N'\materials\material_16.jpeg', 21359.0000, 27, 28, 2, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (16, N'Спрессованный пак белый 0x2', 4, N'\materials\material_5.jpeg', 36343.0000, 601, 49, 7, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (17, N'Рулон зеленый 2x2', 2, N'\materials\picture.png', 7610.0000, 94, 6, 4, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (18, N'Спрессованный пак зеленый 1x2', 4, N'\materials\material_3.jpeg', 35304.0000, 1, 12, 4, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (19, N'Рулон зеленый 1x1', 2, N'\materials\picture.png', 28235.0000, 884, 5, 1, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (20, N'Нарезка синий 2x1', 3, N'\materials\picture.png', 30327.0000, 82, 44, 7, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (21, N'Гранулы цветной 2x1', 1, N'\materials\picture.png', 33885.0000, 757, 5, 1, 2)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (22, N'Нарезка синий 2x3', 3, N'\materials\material_23.jpeg', 53097.0000, 44, 5, 5, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (23, N'Нарезка серый 2x2', 3, N'\materials\picture.png', 30474.0000, 476, 5, 3, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (24, N'Спрессованный пак серый 0x2', 4, N'\materials\picture.png', 2540.0000, 497, 27, 7, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (25, N'Гранулы серый 3x0', 1, N'\materials\picture.png', 50093.0000, 705, 34, 9, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (26, N'Спрессованный пак серый 3x1', 4, N'\materials\picture.png', 10763.0000, 429, 22, 8, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (27, N'Спрессованный пак зеленый 1x0', 4, N'\materials\material_17.jpeg', 18413.0000, 560, 17, 10, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (28, N'Рулон синий 0x3', 2, N'\materials\material_8.jpeg', 47343.0000, 243, 41, 4, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (29, N'Спрессованный пак цветной 0x3', 4, N'\materials\picture.png', 10544.0000, 610, 41, 2, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (30, N'Рулон белый 3x2', 2, N'\materials\picture.png', 17632.0000, 608, 5, 8, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (31, N'Спрессованный пак зеленый 1x1', 4, N'\materials\picture.png', 13911.0000, 577, 28, 7, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (32, N'Гранулы зеленый 2x0', 1, N'\materials\picture.png', 18961.0000, 708, 11, 2, 2)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (33, N'Нарезка серый 3x3', 3, N'\materials\picture.png', 51486.0000, 149, 18, 5, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (34, N'Рулон синий 2x3', 2, N'\materials\picture.png', 15889.0000, 775, 42, 8, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (35, N'Спрессованный пак цветной 1x2', 4, N'\materials\material_15.jpeg', 1382.0000, 189, 31, 9, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (36, N'Нарезка синий 1x2', 3, N'\materials\picture.png', 40754.0000, 353, 5, 4, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (37, N'Спрессованный пак цветной 2x1', 4, N'\materials\picture.png', 20404.0000, 549, 21, 9, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (38, N'Гранулы белый 1x2', 1, N'\materials\picture.png', 28326.0000, 265, 10, 10, 2)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (39, N'Рулон зеленый 3x2', 2, N'\materials\material_2.jpeg', 40932.0000, 111, 37, 10, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (40, N'Гранулы зеленый 1x2', 1, N'\materials\material_4.jpeg', 36121.0000, 2, 29, 9, 2)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (41, N'Гранулы серый 2x3', 1, N'\materials\picture.png', 30903.0000, 185, 22, 6, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (42, N'Гранулы синий 1x0', 1, N'\materials\picture.png', 19889.0000, 579, 12, 9, 2)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (43, N'Гранулы белый 2x2', 1, N'\materials\picture.png', 11843.0000, 232, 22, 9, 2)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (44, N'Нарезка зеленый 1x1', 3, N'\materials\material_6.jpeg', 53096.0000, 883, 42, 7, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (45, N'Рулон зеленый 0x2', 2, N'\materials\picture.png', 50081.0000, 35, 10, 10, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (46, N'Гранулы белый 2x1', 1, N'\materials\picture.png', 49124.0000, 437, 40, 4, 2)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (47, N'Гранулы зеленый 2x3', 1, N'\materials\picture.png', 19788.0000, 848, 18, 10, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (48, N'Нарезка зеленый 0x3', 3, N'\materials\picture.png', 7884.0000, 943, 25, 4, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (49, N'Рулон белый 0x1', 2, N'\materials\picture.png', 50081.0000, 99, 8, 7, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (50, N'Спрессованный пак синий 2x1', 4, N'\materials\picture.png', 31625.0000, 921, 18, 10, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (51, N'Спрессованный пак серый 3x0', 4, N'\materials\picture.png', 35304.0000, 391, 29, 7, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (52, N'Спрессованный пак зеленый 0x3', 4, N'\materials\picture.png', 18848.0000, 966, 7, 6, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (53, N'Нарезка белый 2x2', 3, N'\materials\material_26.jpeg', 39945.0000, 614, 7, 7, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (54, N'Нарезка синий 2x0', 3, N'\materials\picture.png', 13380.0000, 899, 9, 8, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (55, N'Рулон цветной 1x3', 2, N'\materials\picture.png', 45185.0000, 423, 48, 6, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (56, N'Спрессованный пак серый 1x3', 4, N'\materials\picture.png', 375.0000, 805, 50, 7, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (57, N'Спрессованный пак белый 3x3', 4, N'\materials\picture.png', 28510.0000, 158, 34, 10, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (58, N'Гранулы цветной 0x3', 1, N'\materials\material_20.jpeg', 16202.0000, 641, 35, 3, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (59, N'Нарезка зеленый 0x1', 3, N'\materials\picture.png', 53874.0000, 502, 36, 4, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (60, N'Нарезка белый 0x3', 3, N'\materials\picture.png', 34619.0000, 444, 27, 5, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (61, N'Рулон зеленый 0x1', 2, N'\materials\picture.png', 46510.0000, 60, 14, 2, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (62, N'Нарезка цветной 2x0', 3, N'\materials\picture.png', 49221.0000, 118, 22, 7, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (63, N'Спрессованный пак цветной 2x3', 4, N'\materials\picture.png', 4347.0000, 746, 27, 10, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (64, N'Гранулы цветной 3x0', 1, N'\materials\picture.png', 3273.0000, 151, 25, 4, 2)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (65, N'Спрессованный пак серый 0x3', 4, N'\materials\picture.png', 40699.0000, 386, 34, 9, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (66, N'Спрессованный пак цветной 3x1', 4, N'\materials\picture.png', 45318.0000, 146, 23, 8, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (67, N'Спрессованный пак цветной 3x3', 4, N'\materials\picture.png', 18048.0000, 932, 47, 5, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (68, N'Рулон зеленый 1x0', 2, N'\materials\picture.png', 41572.0000, 124, 5, 3, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (69, N'Спрессованный пак зеленый 3x2', 4, N'\materials\picture.png', 18071.0000, 890, 5, 5, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (70, N'Нарезка зеленый 3x3', 3, N'\materials\picture.png', 30112.0000, 172, 20, 2, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (71, N'Рулон белый 3x1', 2, N'\materials\picture.png', 13360.0000, 613, 13, 10, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (72, N'Нарезка цветной 2x2', 3, N'\materials\material_9.jpeg', 41538.0000, 326, 34, 2, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (73, N'Гранулы цветной 2x0', 1, N'\materials\material_21.jpeg', 2670.0000, 309, 15, 9, 2)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (74, N'Нарезка белый 1x0', 3, N'\materials\picture.png', 16050.0000, 924, 33, 5, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (75, N'Нарезка зеленый 1x2', 3, N'\materials\picture.png', 45568.0000, 339, 8, 4, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (76, N'Нарезка цветной 2x3', 3, N'\materials\picture.png', 32336.0000, 498, 45, 3, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (77, N'Спрессованный пак цветной 0x2', 4, N'\materials\picture.png', 24205.0000, 474, 30, 7, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (78, N'Нарезка синий 3x1', 3, N'\materials\picture.png', 50887.0000, 631, 27, 6, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (79, N'Нарезка серый 2x1', 3, N'\materials\picture.png', 7801.0000, 2, 50, 6, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (80, N'Рулон белый 1x2', 2, N'\materials\picture.png', 17952.0000, 599, 18, 2, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (81, N'Спрессованный пак цветной 2x0', 4, N'\materials\material_13.jpeg', 17965.0000, 211, 46, 5, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (82, N'Нарезка цветной 0x0', 3, N'\materials\picture.png', 4018.0000, 311, 9, 6, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (83, N'Нарезка серый 2x0', 3, N'\materials\picture.png', 35548.0000, 858, 37, 6, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (84, N'Рулон белый 1x0', 2, N'\materials\material_18.jpeg', 37126.0000, 960, 35, 9, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (85, N'Спрессованный пак синий 2x0', 4, N'\materials\material_22.jpeg', 53857.0000, 744, 50, 9, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (86, N'Спрессованный пак цветной 0x1', 4, N'\materials\picture.png', 21081.0000, 175, 50, 7, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (87, N'Спрессованный пак синий 0x3', 4, N'\materials\picture.png', 29128.0000, 349, 41, 4, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (88, N'Рулон синий 2x1', 2, N'\materials\picture.png', 32118.0000, 859, 5, 3, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (89, N'Гранулы белый 3x2', 1, N'\materials\picture.png', 36635.0000, 732, 50, 9, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (90, N'Гранулы зеленый 0x2', 1, N'\materials\picture.png', 46326.0000, 787, 40, 7, 2)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (91, N'Рулон синий 2x2', 2, N'\materials\picture.png', 16303.0000, 426, 17, 4, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (92, N'Рулон серый 3x0', 2, N'\materials\material_10.jpeg', 39760.0000, 34, 17, 8, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (93, N'Гранулы цветной 3x1', 1, N'\materials\material_1.jpeg', 21534.0000, 44, 45, 10, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (94, N'Нарезка синий 2x2', 3, N'\materials\picture.png', 55748.0000, 845, 42, 3, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (95, N'Гранулы зеленый 1x3', 1, N'\materials\picture.png', 48576.0000, 603, 5, 8, 2)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (96, N'Спрессованный пак белый 1x1', 4, N'\materials\picture.png', 16919.0000, 547, 35, 2, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (97, N'Рулон зеленый 0x3', 2, N'\materials\picture.png', 52323.0000, 913, 13, 4, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (98, N'Нарезка синий 3x0', 3, N'\materials\material_19.jpeg', 52955.0000, 696, 42, 8, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (99, N'Нарезка цветной 2x1', 3, N'\materials\picture.png', 9509.0000, 168, 40, 2, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialsType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (100, N'Рулон синий 1x1', 2, N'\materials\material_14.jpeg', 40995.0000, 22, 37, 4, 3)
GO
INSERT [dbo].[MaterialsType] ([ID], [Title]) VALUES (1, N'Гранулы')
INSERT [dbo].[MaterialsType] ([ID], [Title]) VALUES (2, N'Рулон')
INSERT [dbo].[MaterialsType] ([ID], [Title]) VALUES (3, N'Нарезка')
INSERT [dbo].[MaterialsType] ([ID], [Title]) VALUES (4, N'Пресс')
GO
INSERT [dbo].[PointOfSales] ([ID], [Title]) VALUES (1, N'розничные магазины')
INSERT [dbo].[PointOfSales] ([ID], [Title]) VALUES (2, N'интернет магазины')
GO
INSERT [dbo].[Priority] ([ID], [Title]) VALUES (1, N'есть')
INSERT [dbo].[Priority] ([ID], [Title]) VALUES (2, N'нет')
GO
INSERT [dbo].[Role] ([Code], [Title]) VALUES (N'a', N'admin')
INSERT [dbo].[Role] ([Code], [Title]) VALUES (N'g', N'agent')
INSERT [dbo].[Role] ([Code], [Title]) VALUES (N'm', N'manager')
GO
INSERT [dbo].[Supplier] ([ID], [Title], [IDSupplierType], [INN], [QualitiRating], [StartDate]) VALUES (1, N'ОблВектор', 3, 1385540089, 40, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSupplierType], [INN], [QualitiRating], [StartDate]) VALUES (3, N'МонтажНефтьОрион', 1, 1298208597, 45, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSupplierType], [INN], [QualitiRating], [StartDate]) VALUES (4, N'ХозБашкирГла', 4, 1708759159, 10, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSupplierType], [INN], [QualitiRating], [StartDate]) VALUES (5, N'ДизайнТекстил', 1, 2093683523, 69, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSupplierType], [INN], [QualitiRating], [StartDate]) VALUES (6, N'Инфо', 1, 1272826845, 33, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSupplierType], [INN], [QualitiRating], [StartDate]) VALUES (8, N'РыбИнфо', 2, 1418660803, 71, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSupplierType], [INN], [QualitiRating], [StartDate]) VALUES (10, N'ЦементОрион', 3, 1536344749, 43, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSupplierType], [INN], [QualitiRating], [StartDate]) VALUES (11, N'ФинансСервис', 1, 1499914719, 21, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSupplierType], [INN], [QualitiRating], [StartDate]) VALUES (12, N'ТрансМясМясКомплекс', 1, 1184923897, 78, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSupplierType], [INN], [QualitiRating], [StartDate]) VALUES (13, N'ГлавСтрой', 4, 1107467048, 77, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSupplierType], [INN], [QualitiRating], [StartDate]) VALUES (15, N'ТелекомМетизХмель', 1, 1001436679, 67, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSupplierType], [INN], [QualitiRating], [StartDate]) VALUES (16, N'Лифт', 1, 1226636245, 26, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSupplierType], [INN], [QualitiRating], [StartDate]) VALUES (17, N'МонтажОр', 1, 1687338212, 6, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSupplierType], [INN], [QualitiRating], [StartDate]) VALUES (18, N'РыбОбл', 4, 2097643775, 80, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSupplierType], [INN], [QualitiRating], [StartDate]) VALUES (19, N'ГлавСерви', 5, 2112058447, 20, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSupplierType], [INN], [QualitiRating], [StartDate]) VALUES (20, N'СервисБашкирКазТраст', 2, 1549832431, 36, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSupplierType], [INN], [QualitiRating], [StartDate]) VALUES (22, N'РыбВостокХоз', 4, 1311161756, 47, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSupplierType], [INN], [QualitiRating], [StartDate]) VALUES (23, N'Радио', 4, 1104637210, 27, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSupplierType], [INN], [QualitiRating], [StartDate]) VALUES (24, N'РечСофтРе', 4, 1155044386, 77, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSupplierType], [INN], [QualitiRating], [StartDate]) VALUES (25, N'Компания ТелекомРосКрепПром', 4, 1124623718, 71, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSupplierType], [INN], [QualitiRating], [StartDate]) VALUES (26, N'Омск', 3, 1567184813, 90, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSupplierType], [INN], [QualitiRating], [StartDate]) VALUES (27, N'РосЮпитер', 2, 2100448888, 23, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSupplierType], [INN], [QualitiRating], [StartDate]) VALUES (30, N'ТелекомТра', 4, 1144555605, 31, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSupplierType], [INN], [QualitiRating], [StartDate]) VALUES (31, N'Глав', 4, 1859167660, 87, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSupplierType], [INN], [QualitiRating], [StartDate]) VALUES (32, N'ЖелДорСтройВекторКомплекс', 1, 2004254497, 97, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSupplierType], [INN], [QualitiRating], [StartDate]) VALUES (33, N'Вод', 1, 1492095710, 63, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSupplierType], [INN], [QualitiRating], [StartDate]) VALUES (34, N'ТверьМор', 3, 2013469587, 61, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSupplierType], [INN], [QualitiRating], [StartDate]) VALUES (35, N'ЦементИнфоМонтаж', 4, 1389100819, 46, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSupplierType], [INN], [QualitiRating], [StartDate]) VALUES (36, N'Вектор', 3, 1009676137, 22, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSupplierType], [INN], [QualitiRating], [StartDate]) VALUES (37, N'Компания МорКаза', 5, 1177669508, 6, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSupplierType], [INN], [QualitiRating], [StartDate]) VALUES (38, N'Урал', 2, 1439263529, 21, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSupplierType], [INN], [QualitiRating], [StartDate]) VALUES (39, N'ГорТверьЛифт', 1, 1865606765, 50, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSupplierType], [INN], [QualitiRating], [StartDate]) VALUES (40, N'ЭлектроВод', 6, 1521101623, 16, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSupplierType], [INN], [QualitiRating], [StartDate]) VALUES (41, N'АлмазМикроМобайлПром', 1, 1664868343, 94, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSupplierType], [INN], [QualitiRating], [StartDate]) VALUES (42, N'Компания ТомскТверьТ', 1, 1341807682, 26, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSupplierType], [INN], [QualitiRating], [StartDate]) VALUES (43, N'Тверь', 1, 1860530128, 17, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSupplierType], [INN], [QualitiRating], [StartDate]) VALUES (44, N'УралТексти', 4, 1705799898, 54, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSupplierType], [INN], [QualitiRating], [StartDate]) VALUES (45, N'ТверьЛайт', 6, 1499654365, 14, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSupplierType], [INN], [QualitiRating], [StartDate]) VALUES (46, N'ХозСервис', 4, 1656715446, 99, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSupplierType], [INN], [QualitiRating], [StartDate]) VALUES (47, N'КрепМетизВектор', 4, 1209084074, 64, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSupplierType], [INN], [QualitiRating], [StartDate]) VALUES (48, N'ЖелДорХ', 4, 2004002859, 65, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSupplierType], [INN], [QualitiRating], [StartDate]) VALUES (49, N'ВодОбл', 4, 1987741499, 38, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSupplierType], [INN], [QualitiRating], [StartDate]) VALUES (50, N'Электро', 5, 1827769521, 86, NULL)
GO
INSERT [dbo].[SupplierType] ([ID], [Title]) VALUES (1, N'ООО')
INSERT [dbo].[SupplierType] ([ID], [Title]) VALUES (2, N'МФО')
INSERT [dbo].[SupplierType] ([ID], [Title]) VALUES (3, N'МКК')
INSERT [dbo].[SupplierType] ([ID], [Title]) VALUES (4, N'ОАО')
INSERT [dbo].[SupplierType] ([ID], [Title]) VALUES (5, N'ПАО')
INSERT [dbo].[SupplierType] ([ID], [Title]) VALUES (6, N'ЗАО')
GO
INSERT [dbo].[Unit] ([ID], [Title]) VALUES (1, N'м')
INSERT [dbo].[Unit] ([ID], [Title]) VALUES (2, N'л')
INSERT [dbo].[Unit] ([ID], [Title]) VALUES (3, N'кг')
GO
INSERT [dbo].[User] ([ID], [Username], [Password], [IDRole]) VALUES (1, N'admin', N'admin', N'a')
INSERT [dbo].[User] ([ID], [Username], [Password], [IDRole]) VALUES (2, N'manager', N'manager', N'm')
INSERT [dbo].[User] ([ID], [Username], [Password], [IDRole]) VALUES (3, N'agent', N'agent', N'g')
GO
ALTER TABLE [dbo].[Agent]  WITH CHECK ADD  CONSTRAINT [FK_Agent_AgentType] FOREIGN KEY([IDAgentType])
REFERENCES [dbo].[AgentType] ([ID])
GO
ALTER TABLE [dbo].[Agent] CHECK CONSTRAINT [FK_Agent_AgentType]
GO
ALTER TABLE [dbo].[Agent]  WITH CHECK ADD  CONSTRAINT [FK_Agent_DirectorName] FOREIGN KEY([IDDirectorName])
REFERENCES [dbo].[DirectorName] ([ID])
GO
ALTER TABLE [dbo].[Agent] CHECK CONSTRAINT [FK_Agent_DirectorName]
GO
ALTER TABLE [dbo].[Agent]  WITH CHECK ADD  CONSTRAINT [FK_Agent_PointOfSales] FOREIGN KEY([IDPointOfSales])
REFERENCES [dbo].[PointOfSales] ([ID])
GO
ALTER TABLE [dbo].[Agent] CHECK CONSTRAINT [FK_Agent_PointOfSales]
GO
ALTER TABLE [dbo].[Agent]  WITH CHECK ADD  CONSTRAINT [FK_Agent_Priority] FOREIGN KEY([IDPriority])
REFERENCES [dbo].[Priority] ([ID])
GO
ALTER TABLE [dbo].[Agent] CHECK CONSTRAINT [FK_Agent_Priority]
GO
ALTER TABLE [dbo].[Agent]  WITH CHECK ADD  CONSTRAINT [FK_Agent_Role] FOREIGN KEY([IDRole])
REFERENCES [dbo].[Role] ([Code])
GO
ALTER TABLE [dbo].[Agent] CHECK CONSTRAINT [FK_Agent_Role]
GO
ALTER TABLE [dbo].[Manager]  WITH CHECK ADD  CONSTRAINT [FK_Manager_Role] FOREIGN KEY([IDRole])
REFERENCES [dbo].[Role] ([Code])
GO
ALTER TABLE [dbo].[Manager] CHECK CONSTRAINT [FK_Manager_Role]
GO
ALTER TABLE [dbo].[Materials]  WITH CHECK ADD  CONSTRAINT [FK_Materials_MaterialsType] FOREIGN KEY([IDMaterialsType])
REFERENCES [dbo].[MaterialsType] ([ID])
GO
ALTER TABLE [dbo].[Materials] CHECK CONSTRAINT [FK_Materials_MaterialsType]
GO
ALTER TABLE [dbo].[Materials]  WITH CHECK ADD  CONSTRAINT [FK_Materials_Unit] FOREIGN KEY([IDUnit])
REFERENCES [dbo].[Unit] ([ID])
GO
ALTER TABLE [dbo].[Materials] CHECK CONSTRAINT [FK_Materials_Unit]
GO
ALTER TABLE [dbo].[MaterialsSupplier]  WITH CHECK ADD  CONSTRAINT [FK_MaterialsSupplier_Materials] FOREIGN KEY([IDMaterials])
REFERENCES [dbo].[Materials] ([ID])
GO
ALTER TABLE [dbo].[MaterialsSupplier] CHECK CONSTRAINT [FK_MaterialsSupplier_Materials]
GO
ALTER TABLE [dbo].[MaterialsSupplier]  WITH CHECK ADD  CONSTRAINT [FK_MaterialsSupplier_Supplier] FOREIGN KEY([IDSupplier])
REFERENCES [dbo].[Supplier] ([ID])
GO
ALTER TABLE [dbo].[MaterialsSupplier] CHECK CONSTRAINT [FK_MaterialsSupplier_Supplier]
GO
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD  CONSTRAINT [FK_Supplier_SupplierType] FOREIGN KEY([IDSupplierType])
REFERENCES [dbo].[SupplierType] ([ID])
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [FK_Supplier_SupplierType]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([IDRole])
REFERENCES [dbo].[Role] ([Code])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
