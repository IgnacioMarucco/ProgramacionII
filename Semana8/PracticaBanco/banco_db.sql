USE [BancoDb]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 3/10/2024 19:32:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE] [varchar](100) NULL,
	[APELLIDO] [varchar](100) NULL,
	[DNI] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CUENTA]    Script Date: 3/10/2024 19:32:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUENTA](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CBU] [varchar](100) NULL,
	[SALDO] [decimal](18, 2) NULL,
	[TIPO_CUENTA_ID] [int] NULL,
	[ULTIMO_MOVIMIENTO] [datetime] NULL,
	[CLIENTE_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIPO_CUENTA]    Script Date: 3/10/2024 19:32:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIPO_CUENTA](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON 
GO
INSERT [dbo].[Cliente] ([ID], [NOMBRE], [APELLIDO], [DNI]) VALUES (1, N'PEPE', N'PEPITO', N'123456789')
GO
INSERT [dbo].[Cliente] ([ID], [NOMBRE], [APELLIDO], [DNI]) VALUES (2, N'JUAN', N'JUANCITO', N'253545646')
GO
INSERT [dbo].[Cliente] ([ID], [NOMBRE], [APELLIDO], [DNI]) VALUES (3, N'Diego', N'Pineda', N'23332')
GO
INSERT [dbo].[Cliente] ([ID], [NOMBRE], [APELLIDO], [DNI]) VALUES (4, N'ivan', N'jdjdjd', N'454747')
GO
INSERT [dbo].[Cliente] ([ID], [NOMBRE], [APELLIDO], [DNI]) VALUES (5, N'nombre', N'apellido', N'12345')
GO
INSERT [dbo].[Cliente] ([ID], [NOMBRE], [APELLIDO], [DNI]) VALUES (6, N'federico', N'ventanal', N'43934543')
GO
INSERT [dbo].[Cliente] ([ID], [NOMBRE], [APELLIDO], [DNI]) VALUES (7, N'mateo', N'dellacqua', N'42854808')
GO
INSERT [dbo].[Cliente] ([ID], [NOMBRE], [APELLIDO], [DNI]) VALUES (8, N'Eze', N'Miarka', N'33478996')
GO
INSERT [dbo].[Cliente] ([ID], [NOMBRE], [APELLIDO], [DNI]) VALUES (9, N'paolo', N'pacheco', N'43450796')
GO
SET IDENTITY_INSERT [dbo].[Cliente] OFF
GO
SET IDENTITY_INSERT [dbo].[CUENTA] ON 
GO
INSERT [dbo].[CUENTA] ([ID], [CBU], [SALDO], [TIPO_CUENTA_ID], [ULTIMO_MOVIMIENTO], [CLIENTE_ID]) VALUES (1, N'12344343', CAST(2344.00 AS Decimal(18, 2)), 1, CAST(N'2020-08-27T00:00:00.000' AS DateTime), 3)
GO
INSERT [dbo].[CUENTA] ([ID], [CBU], [SALDO], [TIPO_CUENTA_ID], [ULTIMO_MOVIMIENTO], [CLIENTE_ID]) VALUES (2, N'405817171', CAST(1500.50 AS Decimal(18, 2)), 1, CAST(N'2024-08-27T21:14:09.683' AS DateTime), 1)
GO
INSERT [dbo].[CUENTA] ([ID], [CBU], [SALDO], [TIPO_CUENTA_ID], [ULTIMO_MOVIMIENTO], [CLIENTE_ID]) VALUES (3, N'405817171', CAST(1500.50 AS Decimal(18, 2)), 1, CAST(N'2024-08-27T21:28:41.567' AS DateTime), 1)
GO
INSERT [dbo].[CUENTA] ([ID], [CBU], [SALDO], [TIPO_CUENTA_ID], [ULTIMO_MOVIMIENTO], [CLIENTE_ID]) VALUES (4, N'sdfsdfadas', CAST(0.00 AS Decimal(18, 2)), 1, CAST(N'2024-08-27T21:53:28.700' AS DateTime), 7)
GO
INSERT [dbo].[CUENTA] ([ID], [CBU], [SALDO], [TIPO_CUENTA_ID], [ULTIMO_MOVIMIENTO], [CLIENTE_ID]) VALUES (5, N'agus-asdasda', CAST(500.00 AS Decimal(18, 2)), 2, CAST(N'2024-08-27T21:59:36.847' AS DateTime), 7)
GO
INSERT [dbo].[CUENTA] ([ID], [CBU], [SALDO], [TIPO_CUENTA_ID], [ULTIMO_MOVIMIENTO], [CLIENTE_ID]) VALUES (6, N'paolin', CAST(70.00 AS Decimal(18, 2)), 4, CAST(N'2024-08-27T22:00:54.623' AS DateTime), 8)
GO
INSERT [dbo].[CUENTA] ([ID], [CBU], [SALDO], [TIPO_CUENTA_ID], [ULTIMO_MOVIMIENTO], [CLIENTE_ID]) VALUES (7, N'papa-123123asf', CAST(800.00 AS Decimal(18, 2)), 4, CAST(N'2024-08-27T22:04:33.380' AS DateTime), 9)
GO
INSERT [dbo].[CUENTA] ([ID], [CBU], [SALDO], [TIPO_CUENTA_ID], [ULTIMO_MOVIMIENTO], [CLIENTE_ID]) VALUES (8, N'405817171', CAST(1500.50 AS Decimal(18, 2)), 1, CAST(N'2024-08-27T22:08:58.093' AS DateTime), 1)
GO
INSERT [dbo].[CUENTA] ([ID], [CBU], [SALDO], [TIPO_CUENTA_ID], [ULTIMO_MOVIMIENTO], [CLIENTE_ID]) VALUES (9, N'405817171', CAST(1500.50 AS Decimal(18, 2)), 1, CAST(N'2024-09-01T19:16:24.247' AS DateTime), 1)
GO
INSERT [dbo].[CUENTA] ([ID], [CBU], [SALDO], [TIPO_CUENTA_ID], [ULTIMO_MOVIMIENTO], [CLIENTE_ID]) VALUES (10, N'405817171', CAST(1500.50 AS Decimal(18, 2)), 1, CAST(N'2024-09-06T19:29:16.047' AS DateTime), 1)
GO
INSERT [dbo].[CUENTA] ([ID], [CBU], [SALDO], [TIPO_CUENTA_ID], [ULTIMO_MOVIMIENTO], [CLIENTE_ID]) VALUES (11, N'405817171', CAST(1500.50 AS Decimal(18, 2)), 1, CAST(N'2024-09-06T19:44:59.347' AS DateTime), 1)
GO
INSERT [dbo].[CUENTA] ([ID], [CBU], [SALDO], [TIPO_CUENTA_ID], [ULTIMO_MOVIMIENTO], [CLIENTE_ID]) VALUES (12, N'405817171', CAST(1500.50 AS Decimal(18, 2)), 1, CAST(N'2024-09-07T13:47:08.343' AS DateTime), 1)
GO
INSERT [dbo].[CUENTA] ([ID], [CBU], [SALDO], [TIPO_CUENTA_ID], [ULTIMO_MOVIMIENTO], [CLIENTE_ID]) VALUES (13, N'405817171', CAST(1500.50 AS Decimal(18, 2)), 1, CAST(N'2024-09-07T13:47:50.027' AS DateTime), 1)
GO
SET IDENTITY_INSERT [dbo].[CUENTA] OFF
GO
SET IDENTITY_INSERT [dbo].[TIPO_CUENTA] ON 
GO
INSERT [dbo].[TIPO_CUENTA] ([ID], [NOMBRE]) VALUES (1, N'CREDITO')
GO
INSERT [dbo].[TIPO_CUENTA] ([ID], [NOMBRE]) VALUES (2, N'DEBITO')
GO
INSERT [dbo].[TIPO_CUENTA] ([ID], [NOMBRE]) VALUES (3, N'CHEQUES')
GO
INSERT [dbo].[TIPO_CUENTA] ([ID], [NOMBRE]) VALUES (4, N'MERCADOOOO')
GO
SET IDENTITY_INSERT [dbo].[TIPO_CUENTA] OFF
GO
ALTER TABLE [dbo].[CUENTA]  WITH CHECK ADD FOREIGN KEY([CLIENTE_ID])
REFERENCES [dbo].[Cliente] ([ID])
GO
ALTER TABLE [dbo].[CUENTA]  WITH CHECK ADD FOREIGN KEY([TIPO_CUENTA_ID])
REFERENCES [dbo].[TIPO_CUENTA] ([ID])
GO
