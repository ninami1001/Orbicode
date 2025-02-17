USE [TestB]
GO
/****** Object:  Table [dbo].[Jelo]    Script Date: 11/17/2020 11:56:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jelo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [varchar](50) NULL,
	[Cijena] [decimal](18, 0) NULL,
	[RestoranID] [int] NULL,
 CONSTRAINT [PK_JeloDB] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Restoran]    Script Date: 11/17/2020 11:56:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Restoran](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [varchar](50) NULL,
	[Telefon] [varchar](50) NULL,
	[Adresa] [varchar](50) NULL,
 CONSTRAINT [PK_RestoranB] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Jelo] ON 

INSERT [dbo].[Jelo] ([Id], [Naziv], [Cijena], [RestoranID]) VALUES (5, N'Pileća salata', CAST(5 AS Decimal(18, 0)), 6)
INSERT [dbo].[Jelo] ([Id], [Naziv], [Cijena], [RestoranID]) VALUES (6, N'Burito piletina', CAST(6 AS Decimal(18, 0)), 6)
INSERT [dbo].[Jelo] ([Id], [Naziv], [Cijena], [RestoranID]) VALUES (7, N'Sarma', CAST(12 AS Decimal(18, 0)), 7)
INSERT [dbo].[Jelo] ([Id], [Naziv], [Cijena], [RestoranID]) VALUES (8, N'Rizoto', CAST(15 AS Decimal(18, 0)), 5)
INSERT [dbo].[Jelo] ([Id], [Naziv], [Cijena], [RestoranID]) VALUES (9, N'Raznjici', CAST(10 AS Decimal(18, 0)), 5)
SET IDENTITY_INSERT [dbo].[Jelo] OFF
SET IDENTITY_INSERT [dbo].[Restoran] ON 

INSERT [dbo].[Restoran] ([Id], [Naziv], [Telefon], [Adresa]) VALUES (5, N'Chipas', N'061123456', N'Mula Mustafa Baseskija 5')
INSERT [dbo].[Restoran] ([Id], [Naziv], [Telefon], [Adresa]) VALUES (6, N'Montana', N'033444555', N'Zagrebačka 5')
INSERT [dbo].[Restoran] ([Id], [Naziv], [Telefon], [Adresa]) VALUES (7, N'Vatra', N'033444555', N'Vrbanja 1')
INSERT [dbo].[Restoran] ([Id], [Naziv], [Telefon], [Adresa]) VALUES (8, N'Cordoba', N'066123456', N'Titova')
SET IDENTITY_INSERT [dbo].[Restoran] OFF
ALTER TABLE [dbo].[Jelo]  WITH CHECK ADD  CONSTRAINT [FK_JeloDB_RestoranB] FOREIGN KEY([RestoranID])
REFERENCES [dbo].[Restoran] ([Id])
GO
ALTER TABLE [dbo].[Jelo] CHECK CONSTRAINT [FK_JeloDB_RestoranB]
GO
