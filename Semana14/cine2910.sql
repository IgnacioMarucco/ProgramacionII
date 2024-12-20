USE [db_cine]
GO
/****** Object:  Table [dbo].[Generos]    Script Date: 30-10-2024 12:59:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Generos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Generos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Peliculas]    Script Date: 30-10-2024 12:59:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Peliculas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [varchar](100) NOT NULL,
	[director] [varchar](50) NOT NULL,
	[anio] [int] NOT NULL,
	[estreno] [bit] NOT NULL,
	[id_genero] [int] NOT NULL,
	[fecha_baja] [date] NULL,
	[motivo_baja] [varchar](50) NULL,
 CONSTRAINT [PK_Peliculas] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Generos] ON 

INSERT [dbo].[Generos] ([id], [nombre]) VALUES (1, N'Comedia')
SET IDENTITY_INSERT [dbo].[Generos] OFF
GO
SET IDENTITY_INSERT [dbo].[Peliculas] ON 

INSERT [dbo].[Peliculas] ([id], [titulo], [director], [anio], [estreno], [id_genero], [fecha_baja], [motivo_baja]) VALUES (1, N'Pelicula TEST', N'Acme', 2024, 1, 1, CAST(N'2024-10-30' AS Date), N'S/M')
INSERT [dbo].[Peliculas] ([id], [titulo], [director], [anio], [estreno], [id_genero], [fecha_baja], [motivo_baja]) VALUES (2, N'Pelicula POST', N'John Smith', 2012, 0, 1, NULL, NULL)
INSERT [dbo].[Peliculas] ([id], [titulo], [director], [anio], [estreno], [id_genero], [fecha_baja], [motivo_baja]) VALUES (3, N'Pelicula POST', N'ACME', 20224, 1, 1, CAST(N'2024-10-30' AS Date), N'S/M')
INSERT [dbo].[Peliculas] ([id], [titulo], [director], [anio], [estreno], [id_genero], [fecha_baja], [motivo_baja]) VALUES (4, N'X-MAN', N'Un director', 2024, 0, 1, NULL, NULL)
INSERT [dbo].[Peliculas] ([id], [titulo], [director], [anio], [estreno], [id_genero], [fecha_baja], [motivo_baja]) VALUES (5, N'TEST123', N'TEST123', 2024, 1, 1, NULL, NULL)
INSERT [dbo].[Peliculas] ([id], [titulo], [director], [anio], [estreno], [id_genero], [fecha_baja], [motivo_baja]) VALUES (6, N'Peli Nueva', N'DIRE TEST', 2020, 0, 1, NULL, NULL)
INSERT [dbo].[Peliculas] ([id], [titulo], [director], [anio], [estreno], [id_genero], [fecha_baja], [motivo_baja]) VALUES (7, N'TEST 12.48', N'DIRE TEST 12.48', 2023, 1, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Peliculas] OFF
GO
ALTER TABLE [dbo].[Peliculas]  WITH CHECK ADD  CONSTRAINT [FK_Peliculas_Generos] FOREIGN KEY([id_genero])
REFERENCES [dbo].[Generos] ([id])
GO
ALTER TABLE [dbo].[Peliculas] CHECK CONSTRAINT [FK_Peliculas_Generos]
GO
/****** Object:  StoredProcedure [dbo].[SP_ACTUALIZAR_PELICULA]    Script Date: 30-10-2024 12:59:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_ACTUALIZAR_PELICULA]
@id int
AS
BEGIN
	UPDATE Peliculas SET estreno = 0
	WHERE id = @id
	AND estreno = 1
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_PELICULAS]    Script Date: 30-10-2024 12:59:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_CONSULTAR_PELICULAS]
@genero as int
AS
BEGIN
	SELECT t.*, t1.nombre
	FROM Peliculas t, Generos t1
	WHERE t.id_genero = t1.id
	AND t.estreno = 1
	AND t.id_genero = @genero
	AND t.fecha_baja IS NULL
END
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_PELICULA]    Script Date: 30-10-2024 12:59:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_INSERTAR_PELICULA]
@tit varchar(100),
@director varchar(50),
@anio int,
@genero int

AS
BEGIN

	INSERT INTO Peliculas (titulo, director, anio, estreno, id_genero)
	VALUES(@tit, @director, @anio, 1, @genero);
END
GO
/****** Object:  StoredProcedure [dbo].[SP_REGISTRAR_BAJA_PELICULA]    Script Date: 30-10-2024 12:59:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_REGISTRAR_BAJA_PELICULA] 
	@motivo varchar(50),
	@id		int
AS
BEGIN
	Update Peliculas SET fecha_baja = GETDATE(), motivo_baja = @motivo
	WHERE id = @id;
END
GO
