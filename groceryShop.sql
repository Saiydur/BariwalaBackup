USE [GroceryShop]
GO
/****** Object:  Table [dbo].[ProductsCategory]    Script Date: 8/19/2021 2:32:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductsCategory](
	[catId] [int] NOT NULL,
	[catName] [varchar](255) NOT NULL,
 CONSTRAINT [PK_Products_Catergorey] PRIMARY KEY CLUSTERED 
(
	[catId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductsTable]    Script Date: 8/19/2021 2:32:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductsTable](
	[productId] [int] NOT NULL,
	[productName] [varchar](255) NOT NULL,
	[productQuantity] [float] NOT NULL,
	[productPrice] [float] NOT NULL,
	[catId] [int] NOT NULL,
 CONSTRAINT [PK_ProductsTable] PRIMARY KEY CLUSTERED 
(
	[productId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UsersInfo]    Script Date: 8/19/2021 2:32:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersInfo](
	[userName] [nvarchar](255) NOT NULL,
	[userPhoneNumber] [nvarchar](255) NOT NULL,
	[userType] [nvarchar](255) NOT NULL,
	[userPassword] [nvarchar](255) NOT NULL,
	[userId] [int] NOT NULL,
 CONSTRAINT [PK_UsersInfo] PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[ProductsCategory] ([catId], [catName]) VALUES (1, N'Drinks')
INSERT [dbo].[ProductsCategory] ([catId], [catName]) VALUES (2, N'Snacks')
INSERT [dbo].[ProductsCategory] ([catId], [catName]) VALUES (3, N'Soap')
INSERT [dbo].[ProductsCategory] ([catId], [catName]) VALUES (4, N'Kitchen Grocery')
INSERT [dbo].[ProductsCategory] ([catId], [catName]) VALUES (5, N'Rafid')
INSERT [dbo].[ProductsTable] ([productId], [productName], [productQuantity], [productPrice], [catId]) VALUES (1, N'Coca-Cola', 500, 35, 1)
INSERT [dbo].[ProductsTable] ([productId], [productName], [productQuantity], [productPrice], [catId]) VALUES (2, N'Kurkure', 200, 50, 2)
INSERT [dbo].[ProductsTable] ([productId], [productName], [productQuantity], [productPrice], [catId]) VALUES (3, N'Tibbat', 10, 30, 3)
INSERT [dbo].[ProductsTable] ([productId], [productName], [productQuantity], [productPrice], [catId]) VALUES (4, N'Pepsi', 10, 20, 1)
INSERT [dbo].[UsersInfo] ([userName], [userPhoneNumber], [userType], [userPassword], [userId]) VALUES (N'admin', N'+880', N'Admin', N'admin', 1)
INSERT [dbo].[UsersInfo] ([userName], [userPhoneNumber], [userType], [userPassword], [userId]) VALUES (N'm', N'4785454', N'Manager', N'1', 2)
ALTER TABLE [dbo].[ProductsTable]  WITH CHECK ADD  CONSTRAINT [FK_ProductsTable_ProductsCategory] FOREIGN KEY([catId])
REFERENCES [dbo].[ProductsCategory] ([catId])
GO
ALTER TABLE [dbo].[ProductsTable] CHECK CONSTRAINT [FK_ProductsTable_ProductsCategory]
GO
