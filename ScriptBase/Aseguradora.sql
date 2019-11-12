USE [dbAseguradora]
GO
/****** Object:  Table [dbo].[tbDanio]    Script Date: 12/11/2019 07:58:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbDanio](
	[codDanio] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](400) NULL,
	[estado] [int] NULL,
 CONSTRAINT [PK_tbDanio] PRIMARY KEY CLUSTERED 
(
	[codDanio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbDanioResolucion]    Script Date: 12/11/2019 07:58:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbDanioResolucion](
	[codDanio] [int] NOT NULL,
	[codResolucion] [int] NOT NULL,
	[codDanioResolucion] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_tbDetalleReclamo_1] PRIMARY KEY CLUSTERED 
(
	[codDanioResolucion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbPersona]    Script Date: 12/11/2019 07:58:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbPersona](
	[codPersona] [int] IDENTITY(1,1) NOT NULL,
	[primerNombre] [varchar](50) NULL,
	[segundoNombre] [varchar](50) NULL,
	[primerApellido] [varchar](50) NULL,
	[segundoApellido] [varchar](50) NULL,
	[telefono] [varchar](8) NULL,
	[fechaNacimiento] [datetime] NULL,
 CONSTRAINT [PK_tbPersona] PRIMARY KEY CLUSTERED 
(
	[codPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbReclamo]    Script Date: 12/11/2019 07:58:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbReclamo](
	[codReclamo] [int] IDENTITY(1,1) NOT NULL,
	[codSeguro] [int] NULL,
	[codEstado] [int] NULL,
	[codDanioResolucion] [int] NULL,
	[fecha] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_tbReclamo] PRIMARY KEY CLUSTERED 
(
	[codReclamo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbResolucion]    Script Date: 12/11/2019 07:58:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbResolucion](
	[codResolucion] [int] IDENTITY(1,1) NOT NULL,
	[resolucion] [varchar](400) NULL,
	[costoReparacion] [decimal](8, 2) NULL,
	[estado] [int] NULL,
 CONSTRAINT [PK_tbResolucion] PRIMARY KEY CLUSTERED 
(
	[codResolucion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbSeguro]    Script Date: 12/11/2019 07:58:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbSeguro](
	[codSeguro] [int] IDENTITY(1,1) NOT NULL,
	[codPersona] [int] NULL,
	[codVehiculo] [int] NULL,
	[codEstado] [int] NULL,
	[pagoMensual] [decimal](8, 2) NULL,
	[fechaCreación] [datetime] NULL,
	[deducible] [decimal](8, 2) NULL,
 CONSTRAINT [PK_tbSeguro] PRIMARY KEY CLUSTERED 
(
	[codSeguro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbVehiculo]    Script Date: 12/11/2019 07:58:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbVehiculo](
	[codVehiculo] [int] IDENTITY(1,1) NOT NULL,
	[placa] [varchar](15) NULL,
	[marca] [varchar](50) NULL,
	[linea] [varchar](50) NULL,
	[modelo] [int] NULL,
	[color] [varchar](50) NULL,
 CONSTRAINT [PK_tbVehiculo] PRIMARY KEY CLUSTERED 
(
	[codVehiculo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbDanio] ON 

INSERT [dbo].[tbDanio] ([codDanio], [descripcion], [estado]) VALUES (2, N'Llanta pinchada', 1)
INSERT [dbo].[tbDanio] ([codDanio], [descripcion], [estado]) VALUES (3, N'Luces rotas', 1)
INSERT [dbo].[tbDanio] ([codDanio], [descripcion], [estado]) VALUES (4, N'Choque ', 1)
INSERT [dbo].[tbDanio] ([codDanio], [descripcion], [estado]) VALUES (5, N'Volcado', 1)
INSERT [dbo].[tbDanio] ([codDanio], [descripcion], [estado]) VALUES (6, N'Choque lateral', 1)
SET IDENTITY_INSERT [dbo].[tbDanio] OFF
SET IDENTITY_INSERT [dbo].[tbDanioResolucion] ON 

INSERT [dbo].[tbDanioResolucion] ([codDanio], [codResolucion], [codDanioResolucion]) VALUES (2, 1, 1)
INSERT [dbo].[tbDanioResolucion] ([codDanio], [codResolucion], [codDanioResolucion]) VALUES (3, 2, 2)
INSERT [dbo].[tbDanioResolucion] ([codDanio], [codResolucion], [codDanioResolucion]) VALUES (4, 3, 3)
INSERT [dbo].[tbDanioResolucion] ([codDanio], [codResolucion], [codDanioResolucion]) VALUES (5, 4, 4)
SET IDENTITY_INSERT [dbo].[tbDanioResolucion] OFF
SET IDENTITY_INSERT [dbo].[tbPersona] ON 

INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (5, N'Juan ', N'Alberto', N'Gutierrez', N'Rodriguez', N'79512365', CAST(N'2001-02-05T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (6, N'Daniel ', N'Estuardo', N'Cucul', N'Perez', N'79515965', CAST(N'1985-01-02T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (7, N'Jorge ', N'Luis', N'Morales', N'Morales', N'79812165', CAST(N'1999-03-04T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (8, N'Julio ', N'Daniel', N'Juarez', N'Lopez', N'79512365', CAST(N'1982-05-06T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (9, N'Karla ', N'Maria', N'Gutierrez', N'Fernandez', N'79612961', CAST(N'1984-07-08T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (10, N'Francisco ', N'Estuardo', N'Godines', N'Paz', N'79512365', CAST(N'1986-09-12T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (11, N'Pedro ', N'Jose', N'Chen', N'Caal', N'78512365', CAST(N'1998-12-05T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (12, N'Hugo ', N'Estuardo', N'Martinez', N'Calel', N'79519375', CAST(N'1997-02-10T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (13, N'Maria ', N'Alejandra', N'Santos', N'Flores', N'7952365', CAST(N'1996-04-15T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (14, N'Andres ', N'Alejandro', N'Garcia', N'Garcia', N'79522365', CAST(N'1995-06-20T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (15, N'Gerardo ', N'Alberto', N'Gomez', N'Luz', N'99512365', CAST(N'2000-08-23T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (16, N'Anibal ', N'Eliberto', N'Cabnal', N'Paredez', N'28512365', CAST(N'1997-10-25T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (17, N'Selvin ', N'Gabriel', N'Chun', N'Col', N'65912365', CAST(N'1989-12-17T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (18, N'Adriana ', N'Maribel', N'Mesa', N'Maas', N'85123256', CAST(N'1988-03-16T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (19, N'Lucas ', N'Francisco', N'Torres', N'Valdez', N'25683257', CAST(N'1982-05-22T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (20, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (21, N'Adriana', NULL, N'Giraldo', N'Gomez', N'86485243', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (22, N'Adriana', NULL, N'Giraldo', N'Gomez', N'86485243', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (23, N'Adriana', N'Paola', N'Cujar', N'Alarcon', N'65457509', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (24, N'Adriana', N'Marcela', N'Salcedo', N'Segura', N'32768810', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (25, N'Alexander', NULL, N'Duarte', N'Sandoval', N'66321588', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (26, N'Alcira', NULL, N'Santanilla', N'Carvajal', N'67741228', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (27, N'Amparo', NULL, N'Montoya', N'Montoya', N'76104921', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (28, N'Ana', N'Maria', N'Lozano', N'Santos', N'82366178', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (29, N'Andrea', NULL, N'Ariza', N'Zambrano', N'50143850', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (30, N'Andrea', N'Carolina', N'Acuñ', N'Mendoza', N'75999305', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (31, N'Andrea', N'Pilar', N'Cortes', N'Barreto', N'73340489', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (32, N'Andrea', N'Pilar', N'Guzman', N'Rojas', N'34696403', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (33, N'Andrea', N'Paola', N'Gutierrez', N'Romero', N'83981257', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (34, N'Andrea', N'Liliana', N'Samper', N'Martinez', N'27811900', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (35, N'Andrea', N'Marcela', N'Barragan', N'Garcia', N'18328029', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (36, N'Andrea', N'Yohanna', N'Pinzon', N'Yepes', N'55404518', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (37, N'Amelia', NULL, N'Perez', N'Tabares', N'92753748', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (38, N'Alejandra', N'Maria', N'Agudelo', N'Suarez', N'27905365', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (39, N'Alvaro', NULL, N'Calderon', N'Artunduaga', N'25325916', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (40, N'Ayda', N'Catalina', N'Pulido', N'Chaparro', N'91899989', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (41, N'Bertha', N'Ximena', N'Barbosa', N'Torres', N'40273978', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (42, N'Betsabe', NULL, N'Bautista', N'Vargas', N'58493171', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (43, N'Camilo', N'Alexander', N'Bolivar', N'Forero', N'61285502', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (44, N'Carolina', NULL, N'Isaza', N'Ramirez', N'42411419', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (45, N'Cesar', N'Augusto', N'Ramirez', N'Laverde', N'92543935', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (46, N'Celmira', N'Patricia', N'Arroyave', N'Corredor', N'46487539', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (47, N'Claudia', N'Marcela', N'Navarrete', N'Cortes', N'76756641', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (48, N'Claudia', N'Marcelas', N'Lozada', N'Aragon', N'73188124', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (49, N'Claudia', N'Patricia', N'Bolivar', N'Carreñ', N'70102562', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (50, N'Claudia', N'Patricia', N'Gallo', N'Cifuentes', N'30928724', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (51, N'Claudia', N'Pilar', N'Vanegas', N'Ortiz', N'28985530', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (52, N'Constanza', NULL, N'Agudelo', N'Forero', N'58622470', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (53, N'Consuelo', NULL, N'Guerrero', N'Calderon', N'12514562', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (54, N'Consuelo', NULL, N'Reyes', N'Suarez', N'42757334', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (55, N'Cryshna', N'Consuelo', N'Moscoso', N'Peñ', N'42148416', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (56, N'Diana', N'Carolina', N'Palacios', N'Zaque', N'45466255', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (57, N'Diana', N'Marcela', N'Herrera', N'Herrera', N'25125723', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (58, N'Diana', N'Milena', N'Sabogal', N'Ramirez', N'70486255', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (59, N'Diana', N'Patricia', N'Avila', N'Saenz', N'19187652', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (60, N'Diana', N'Patricia', N'Benavidez', N'Solorza', N'21851566', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (61, N'Diego', N'Andres', N'Valero', N'Garay', N'58707580', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (62, N'Dolly', N'Janeth', N'Prada', N'Guzman', N'25137908', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (63, N'Elizabeth', NULL, N'Cardenas', N'Martinez', N'35957576', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (64, N'Elizabeth', NULL, N'Jaimes', N'Sanchez', N'96143434', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (65, N'Elkin', N'Ronald', N'Puche', N'Vega', N'51666426', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (66, N'Erley', NULL, N'Camacho', N'Mendoza', N'53139280', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (67, N'Erika', N'Yineth', N'Villalba', N'Olaya', N'16197449', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (68, N'Erika', N'Andrea', N'Vanegas', N'Herrera', N'93000715', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (69, N'Fabian', NULL, N'Rico', N'Rodriguez', N'59746164', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (70, N'Fanny', N'Esmeralda', N'Paez', N'Gonzalez', N'37481288', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (71, N'Fermin', NULL, N'Ariza', N'Iglesias', N'83759521', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (72, N'France', N'Juranni', N'Cendales', N'Ladino', N'29659438', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (73, N'Gaby', N'Elenith', N'Manzano', N'Uribe', N'33512539', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (74, N'Gilma', NULL, N'Espinosa', N'Diaz', N'67265145', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (75, N'Graciela', NULL, N'Torres', N'Torres', N'43972351', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (76, N'Gloria', N'Amparo', N'Perez', N'Ossa', N'81564075', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (77, N'Gloria', N'Isabel', N'Martinez', N'Parra', N'36052029', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (78, N'Gloria', N'Patricia', N'Lopez', N'Figueroa', N'89681536', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (79, N'Gloria', N'Rocio', N'Cabrera', N'Sanchez', N'14176251', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (80, N'Gustavo', N'Alberto', N'Mendoza', N'Lopez', N'81373734', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (81, N'Gustavo', N'Adolfo', N'Diaz', N'Vera', N'22841413', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (82, N'Hermes', N'Jacobo', N'Garcia', N'Guacaneme', N'26012264', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (83, N'Ingrid', N'Magaly', N'Gonzalez', N'Romero', N'92624961', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (84, N'Ingrid', N'Yaneth', N'Enciso', N'Rodriguez', N'42064535', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (85, N'Isabel', N'Angelina', N'Villareal', N'Torres', N'52033158', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (86, N'Javier', N'Orlando', N'Corredor', N'Garcia', N'65493657', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (87, N'Jenny', N'Paola', N'Rodriguez', N'Moreno', N'99685097', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (88, N'Jenny', NULL, N'Trujillo', N'Toledo', N'94521311', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (89, N'Jesus', N'Alveiro', N'Vergel', N'Greco', N'96191227', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (90, N'Johanna', NULL, N'Ulloa', N'Guarin', N'73888142', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (91, N'Jorge', N'Hernando', N'Dueña', N'Gomez', N'82733067', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (92, N'Jorge', N'Humberto', N'Reina', N'Rueda', N'18477862', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (93, N'Juan', N'Jesus', N'Valencia', N'Arevalo', N'95168380', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (94, N'Karen', N'Ivette', N'Manosalva', N'Gomez', N'37851678', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (95, N'Ketty', NULL, N'Lopez', N'Coneo', N'32546537', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (96, N'Ketty', NULL, N'Lozano', N'Perea', N'48631614', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (97, N'Larisa', N'Helena', N'Gonzales', N'Patarroyo', N'48664883', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (98, N'Laura', N'Gisela', N'Rodriguez', N'Leguizamon', N'68377377', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (99, N'Leonardo', NULL, N'Garzon', N'Ramirez', N'50553581', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (100, N'Leonor', NULL, N'Melo', N'Lopez', N'93591624', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (101, N'Libia', N'Rosmira', N'Gonzalez', N'Niñ', N'39404141', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (102, N'Lilia', N'De', N'Jesus', N'Borda', N'45215511', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (103, N'Lina', N'Jhinet', N'Espitia', N'Leon', N'96455608', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (104, N'Lina', N'Paola', N'Varga', N'Riveros', N'40279258', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (105, N'Ligia', N'Yanetd', N'Guerrero', N'Mahecha', N'86498119', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (106, N'Lucrecia', NULL, N'Pineda', N'Vargas', N'96340918', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (107, N'Luz', N'Marina', N'Morales', N'Garcia', N'60745634', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (108, N'Luis', N'Alejandro', N'Vanegas', N'Vasquez', N'59882198', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (109, N'Luis', N'Fernando', N'Torrado', N'Lemus', N'22588084', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (110, N'Luisa', NULL, N'Fernanda', N'Sanchez', N'73956226', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (111, N'Luisa', N'Fernanda', N'Sanchez', N'Prado', N'27053877', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (112, N'Luisa', N'Fernanda', N'Montenegro', N'Vanegas', N'53615721', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (113, N'Luis', N'Felipe', N'Reinosa', N'Lopez', N'22195306', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (114, N'Luz', N'Elena', N'Vargas', N'Balaguera', N'83735317', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (115, N'Luz', N'Amanda', N'Leon', N'Bernal', N'48801178', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (116, N'Luz', N'Marlen', N'Acosta', N'Baez', N'40623166', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (117, N'Luz', N'Marina', N'Dominguez', N'Ramos', N'14333935', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (118, N'Luz', N'Rosario', N'Arenas', N'Lopez', N'92217966', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (119, N'Luz', N'Maritza', N'Rojas', N'Pinilla', N'31853793', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (120, N'Luz', N'Marina', N'Lagos', N'Camacho', N'58796811', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (121, N'Luz', N'Nancy', N'Lanza', N'Angulo', N'29154220', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (122, N'Madian', NULL, N'Bolivar', N'Sastoque', N'11418318', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (123, N'Magda', N'Liliana', N'Alaix', N'Acosta', N'14956808', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (124, N'Marcela', N'Angeles', N'Garcia', N'Torres', N'94414346', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (125, N'Maria', N'Constanza', N'Niñ', N'Rodriguez', N'74981016', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (126, N'Martha', N'Consuelo', N'Gomez', N'Corredor', N'34664261', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (127, N'Maria', N'Pilar', N'Barajas', N'Tabima', N'90872525', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (128, N'Maria', N'Pilar', N'Castillo', N'Pinilla', N'87113587', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (129, N'Maria', N'Pilar', N'Espitia', N'Martinez', N'56838831', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (130, N'Maria', N'Rosario', N'Lozano', N'Murillo', N'15238398', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (131, N'Maria', N'Elena', N'Lopez', N'Chaparro', N'81965419', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (132, N'Maria', N'Elena', N'Salgado', N'Moreno', N'22106091', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (133, N'Maria', N'Liliana', N'Martinez', N'Rivadeneira', N'15100901', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (134, N'Maria', N'Isabel', N'Mendez', N'Torres', N'83352935', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (135, N'Mary', N'Luz', N'Cortes', N'Muño', N'53903968', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (136, N'Maribel', NULL, N'Patiñ', N'Romero', N'69793923', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (137, N'Martha', N'Adriana', N'Villarreal', N'Masmela', N'82974090', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (138, N'Martha', N'Cecilia', N'Triviñ', N'Mellizos', N'43836852', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (139, N'Martha', N'Elvira', N'Zambrano', N'Ballen', N'79774318', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (140, N'Martha', N'Jeaneth', N'Avila', N'Medina', N'27313193', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (141, N'Martha', N'Patricia', N'Forero', N'Silva', N'49676019', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (142, N'Martha', NULL, N'Villamil', N'Gonzalez', N'94518798', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (143, N'Martha', N'Stella', N'Aguillon', N'Gerenas', N'89312833', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (144, N'Miguel', N'Angel', N'Chaparro', N'Becerra', N'70146024', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (145, N'Miguel', N'Eduardo', N'Perez', N'Mendez', N'62832671', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (146, N'Michael', N'Alexander', N'Murcia', N'Leguizamon', N'25289605', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (147, N'Milton', N'Jose', N'Perilla', N'Bernal', N'86170166', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (148, N'Mirledis', N'Johana', N'Cera', N'Beleñ', N'37793671', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (149, N'Monica', N'Monroy', N'Caicedo', NULL, N'21619765', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (150, N'Monica', N'Alejandra', N'Rios', N'Cordoba', N'78596513', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (151, N'Monica', N'Lourdes', N'Cortina', N'Silva', N'72891117', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (152, N'Monica', N'Liliana', N'Navas', N'Calderon', N'41854713', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (153, N'Monica', NULL, N'Quintero', N'Parra', N'45879879', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (154, N'Monica', N'Yenifer', N'Cuellar', N'Ramirez', N'81277564', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (155, N'Nancy', N'Mireya', N'Gonzalez', N'Tautiva', N'99874781', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (156, N'Nancy', N'Marcela', N'Hernandez', N'Pinilla', N'49636258', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (157, N'Natalia', N'Elvira', N'Torrijos', N'Velasquez', N'77666690', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (158, N'Nayshley', N'Elvira', N'Romero', N'Tapia', N'73022565', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (159, N'Nestor', N'Elias', N'Sabogal', N'Diaz', N'63801238', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (160, N'Nestor', N'Leonardo', N'Patiñ', N'Neira', N'39601297', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (161, N'Nestor', N'Ivan', N'Barrios', N'Jaramillo', N'92427266', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (162, N'Nidia', N'Luz', N'Atehortua', N'Giraldo', N'60640026', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (163, N'Norma', N'Beatriz', N'Jurado', N'Cortes', N'99092729', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (164, N'Norma', N'Constanza', N'Ramirez', N'Paez', N'68560270', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (165, N'Olga', N'Mercedes', N'Higuera', N'Rodriguez', N'33411693', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (166, N'Paola', N'Andrea', N'Diaz', N'Tellez', N'90191112', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (167, N'Paola', N'Andrea', N'Galvis', N'Zamora', N'20559953', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (168, N'Paola', N'Susana', N'Niñ', N'Aguilar', N'10681404', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (169, N'Paulo', NULL, N'Andres', N'Toro', N'47817625', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (170, N'Piedad', N'Constanza', N'Morales', N'Yaruro', N'52238402', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (171, N'Reinaldo', NULL, N'Valbuena', N'Carrero', N'20334556', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (172, N'Rocio', NULL, N'Mora', N'Rodriguez', N'16229028', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (173, N'Rosa', NULL, N'Rodriguez', N'Leon', N'24077665', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (174, N'Rosa', N'Tulia', N'Amezquita', N'Ripe', N'30319950', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (175, N'Rocio', N'Liliana', N'Velasquez', N'Bejarano', N'83969808', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (176, N'Ruby', N'Jacqueline', N'Alfonso', N'Villamil', N'33826105', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (177, N'Sandra', N'Beatriz', N'Sarmiento', N'Bejarano', N'44362720', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (178, N'Sandra', N'Milena', N'Suarez', N'Amaya', N'86564088', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (179, N'Sandra', N'Milena', N'Colmenares', N'Rincon', N'88743257', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (180, N'Sandra', N'Patricia', N'Herrera', N'Sanabria', N'39373616', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (181, N'Sandra', N'Cristina', N'Dueña', N'Ruiz', N'27869567', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (182, N'Sandra', N'Patricia', N'Garzon', N'Jimenez', N'15541076', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (183, N'Sandra', N'Yucely', N'Gonzalez', N'Hernandez', N'86148941', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (184, N'Sandra', N'Patricia', N'Manosalva', N'Agudelo', N'77069151', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (185, N'Sonia', N'Esperanza', N'Alfonso', N'Peñ', N'70006059', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (186, N'Sonia', N'Marcela', N'Cubides', N'Carbonell', N'22524144', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (187, N'Sonia', N'Patricia', N'Camargo', N'Urrea', N'22227993', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (188, N'Tania', N'Marcela', N'Manjarres', N'Garcia', N'18124367', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (189, N'Tania', N'Jimena', N'Trujillo', N'Perez', N'13153104', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (190, N'Victoria', N'Edith', N'Sanchez', N'Torres', N'40093480', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (191, N'Victoria', N'Eugenia', N'Castañed', N'Quiceno', N'33114167', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (192, N'Wilder', NULL, N'Javier', N'Rincon', N'10833344', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (193, N'Wilson', NULL, N'Hernandez', N'Molano', N'90154733', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (194, N'Yadira', N'Ximena', N'Moreno', N'Sarmiento', N'22587543', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (195, N'Yanira', NULL, N'Arias', N'Izquierdo', N'35472941', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (196, N'Yeimi', N'Yamile', N'Castillo', N'Rojas', N'47840488', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (197, N'Yulian', N'Viviana', N'Ariza', N'Mosquera', N'62518462', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (198, N'Yury', N'Lisseth', N'Espitia', N'Villalva', N'96828119', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (199, N'Zandra', N'Lucia', N'Alfonso', N'Peñ', N'52634990', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (200, N'Zulena', NULL, N'Mora', N'Navas', N'93432797', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[tbPersona] OFF
SET IDENTITY_INSERT [dbo].[tbResolucion] ON 

INSERT [dbo].[tbResolucion] ([codResolucion], [resolucion], [costoReparacion], [estado]) VALUES (1, N'Cambio de llantas', CAST(500.00 AS Decimal(8, 2)), 1)
INSERT [dbo].[tbResolucion] ([codResolucion], [resolucion], [costoReparacion], [estado]) VALUES (2, N'Reparacion de luces', CAST(400.00 AS Decimal(8, 2)), 1)
INSERT [dbo].[tbResolucion] ([codResolucion], [resolucion], [costoReparacion], [estado]) VALUES (3, N'Enderezado y pintura', CAST(1500.00 AS Decimal(8, 2)), 1)
INSERT [dbo].[tbResolucion] ([codResolucion], [resolucion], [costoReparacion], [estado]) VALUES (4, N'Grua y reparacion', CAST(2500.00 AS Decimal(8, 2)), 1)
INSERT [dbo].[tbResolucion] ([codResolucion], [resolucion], [costoReparacion], [estado]) VALUES (5, N'Reparacion de puertas', CAST(1000.00 AS Decimal(8, 2)), 1)
SET IDENTITY_INSERT [dbo].[tbResolucion] OFF
SET IDENTITY_INSERT [dbo].[tbSeguro] ON 

INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (4, 5, 3, 0, CAST(0.00 AS Decimal(8, 2)), CAST(N'2019-08-22T13:00:02.373' AS DateTime), CAST(25.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (5, 6, 4, 0, CAST(0.00 AS Decimal(8, 2)), CAST(N'2019-08-22T13:00:02.400' AS DateTime), CAST(25.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (6, 7, 5, 0, CAST(0.00 AS Decimal(8, 2)), CAST(N'2019-08-22T13:00:02.403' AS DateTime), CAST(25.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (7, 8, 6, 0, CAST(0.00 AS Decimal(8, 2)), CAST(N'2019-08-22T13:00:02.403' AS DateTime), CAST(25.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (8, 9, 7, 0, CAST(0.00 AS Decimal(8, 2)), CAST(N'2019-08-22T13:00:02.403' AS DateTime), CAST(25.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (9, 10, 8, 0, CAST(0.00 AS Decimal(8, 2)), CAST(N'2019-08-22T13:00:02.407' AS DateTime), CAST(25.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (10, 11, 9, 0, CAST(0.00 AS Decimal(8, 2)), CAST(N'2019-08-22T13:00:02.407' AS DateTime), CAST(25.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (11, 12, 10, 0, CAST(0.00 AS Decimal(8, 2)), CAST(N'2019-08-22T13:00:02.407' AS DateTime), CAST(25.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (12, 13, 11, 0, CAST(0.00 AS Decimal(8, 2)), CAST(N'2019-08-22T13:00:02.410' AS DateTime), CAST(25.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (13, 14, 12, 0, CAST(0.00 AS Decimal(8, 2)), CAST(N'2019-08-22T13:00:02.410' AS DateTime), CAST(25.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (14, 15, 13, 0, CAST(0.00 AS Decimal(8, 2)), CAST(N'2019-08-22T13:00:02.410' AS DateTime), CAST(25.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (15, 16, 14, 0, CAST(0.00 AS Decimal(8, 2)), CAST(N'2019-08-22T13:00:02.410' AS DateTime), CAST(25.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (16, 17, 15, 0, CAST(0.00 AS Decimal(8, 2)), CAST(N'2019-08-22T13:00:02.413' AS DateTime), CAST(25.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (17, 18, 16, 0, CAST(0.00 AS Decimal(8, 2)), CAST(N'2019-08-22T13:00:02.413' AS DateTime), CAST(25.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (18, 19, 17, 0, CAST(0.00 AS Decimal(8, 2)), CAST(N'2019-08-22T13:00:02.417' AS DateTime), CAST(25.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (19, 20, 17, 0, CAST(1313.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3939.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (20, 21, 18, 0, CAST(691.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2073.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (21, 22, 19, 0, CAST(1179.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3537.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (22, 23, 20, 0, CAST(1018.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3054.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (23, 24, 21, 0, CAST(1161.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3483.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (24, 25, 22, 0, CAST(1028.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3084.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (25, 26, 23, 0, CAST(633.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(1899.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (26, 27, 24, 0, CAST(867.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2601.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (27, 28, 25, 0, CAST(1202.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3606.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (28, 29, 26, 0, CAST(996.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2988.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (29, 30, 27, 0, CAST(1403.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(4209.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (30, 31, 28, 0, CAST(895.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2685.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (31, 32, 29, 0, CAST(1198.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3594.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (32, 33, 30, 0, CAST(598.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(1794.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (33, 34, 31, 0, CAST(1192.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3576.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (34, 35, 32, 0, CAST(831.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2493.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (35, 36, 33, 0, CAST(801.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2403.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (36, 37, 34, 0, CAST(1232.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3696.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (37, 38, 35, 0, CAST(1245.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3735.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (38, 39, 36, 0, CAST(690.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2070.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (39, 40, 37, 0, CAST(711.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2133.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (40, 41, 38, 0, CAST(937.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2811.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (41, 42, 39, 0, CAST(1257.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3771.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (42, 43, 40, 0, CAST(589.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(1767.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (43, 44, 41, 0, CAST(991.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2973.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (44, 45, 42, 0, CAST(1351.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(4053.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (45, 46, 43, 0, CAST(617.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(1851.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (46, 47, 44, 0, CAST(673.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2019.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (47, 48, 45, 0, CAST(709.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2127.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (48, 49, 46, 0, CAST(1333.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3999.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (49, 50, 47, 0, CAST(1311.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3933.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (50, 51, 48, 0, CAST(1264.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3792.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (51, 52, 49, 0, CAST(780.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2340.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (52, 53, 50, 0, CAST(588.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(1764.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (53, 54, 51, 0, CAST(1310.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3930.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (54, 55, 52, 0, CAST(1012.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3036.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (55, 56, 53, 0, CAST(1422.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(4266.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (56, 57, 54, 0, CAST(1433.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(4299.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (57, 58, 55, 0, CAST(1022.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3066.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (58, 59, 56, 0, CAST(617.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(1851.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (59, 60, 57, 0, CAST(1256.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3768.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (60, 61, 58, 0, CAST(1086.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3258.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (61, 62, 59, 0, CAST(980.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2940.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (62, 63, 60, 0, CAST(609.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(1827.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (63, 64, 61, 0, CAST(1011.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3033.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (64, 65, 62, 0, CAST(852.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2556.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (65, 66, 63, 0, CAST(688.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2064.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (66, 67, 64, 0, CAST(649.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(1947.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (67, 68, 65, 0, CAST(514.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(1542.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (68, 69, 66, 0, CAST(1437.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(4311.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (69, 70, 67, 0, CAST(903.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2709.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (70, 71, 68, 0, CAST(1254.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3762.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (71, 72, 69, 0, CAST(1064.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3192.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (72, 73, 70, 0, CAST(937.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2811.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (73, 74, 71, 0, CAST(596.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(1788.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (74, 75, 72, 0, CAST(1240.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3720.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (75, 76, 73, 0, CAST(734.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2202.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (76, 77, 74, 0, CAST(1153.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3459.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (77, 78, 75, 0, CAST(727.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2181.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (78, 79, 76, 0, CAST(746.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2238.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (79, 80, 77, 0, CAST(1306.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3918.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (80, 81, 78, 0, CAST(503.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(1509.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (81, 82, 79, 0, CAST(1081.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3243.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (82, 83, 80, 0, CAST(1446.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(4338.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (83, 84, 81, 0, CAST(1397.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(4191.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (84, 85, 82, 0, CAST(1212.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3636.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (85, 86, 83, 0, CAST(1094.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3282.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (86, 87, 84, 0, CAST(953.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2859.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (87, 88, 85, 0, CAST(1080.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3240.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (88, 89, 86, 0, CAST(884.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2652.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (89, 90, 87, 0, CAST(1381.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(4143.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (90, 91, 88, 0, CAST(1112.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3336.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (91, 92, 89, 0, CAST(741.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2223.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (92, 93, 90, 0, CAST(708.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2124.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (93, 94, 91, 0, CAST(882.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2646.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (94, 95, 92, 0, CAST(732.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2196.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (95, 96, 93, 0, CAST(1353.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(4059.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (96, 97, 94, 0, CAST(1393.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(4179.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (97, 98, 95, 0, CAST(1252.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3756.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (98, 99, 96, 0, CAST(1310.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3930.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (99, 100, 97, 0, CAST(1133.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3399.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (100, 101, 98, 0, CAST(836.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2508.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (101, 102, 99, 0, CAST(744.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2232.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (102, 103, 100, 0, CAST(534.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(1602.00 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (103, 104, 101, 0, CAST(535.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(1605.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (104, 105, 102, 0, CAST(630.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(1890.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (105, 106, 103, 0, CAST(977.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2931.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (106, 107, 104, 0, CAST(724.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2172.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (107, 108, 105, 0, CAST(536.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(1608.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (108, 109, 106, 0, CAST(549.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(1647.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (109, 110, 107, 0, CAST(1178.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3534.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (110, 111, 108, 0, CAST(825.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2475.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (111, 112, 109, 0, CAST(1258.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3774.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (112, 113, 110, 0, CAST(1077.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3231.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (113, 114, 111, 0, CAST(779.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2337.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (114, 115, 112, 0, CAST(1279.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3837.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (115, 116, 113, 0, CAST(1304.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3912.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (116, 117, 114, 0, CAST(1499.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(4497.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (117, 118, 115, 0, CAST(1287.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3861.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (118, 119, 116, 0, CAST(1268.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3804.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (119, 120, 117, 0, CAST(777.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2331.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (120, 121, 118, 0, CAST(928.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2784.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (121, 122, 119, 0, CAST(1179.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3537.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (122, 123, 120, 0, CAST(1380.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(4140.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (123, 124, 121, 0, CAST(698.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2094.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (124, 125, 122, 0, CAST(1496.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(4488.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (125, 126, 123, 0, CAST(668.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2004.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (126, 127, 124, 0, CAST(702.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2106.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (127, 128, 125, 0, CAST(838.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2514.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (128, 129, 126, 0, CAST(789.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2367.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (129, 130, 127, 0, CAST(554.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(1662.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (130, 131, 128, 0, CAST(905.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2715.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (131, 132, 129, 0, CAST(682.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2046.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (132, 133, 130, 0, CAST(1353.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(4059.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (133, 134, 131, 0, CAST(989.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2967.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (134, 135, 132, 0, CAST(1006.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3018.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (135, 136, 133, 0, CAST(1081.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3243.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (136, 137, 134, 0, CAST(1353.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(4059.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (137, 138, 135, 0, CAST(814.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2442.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (138, 139, 136, 0, CAST(1080.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3240.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (139, 140, 137, 0, CAST(1111.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3333.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (140, 141, 138, 0, CAST(982.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2946.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (141, 142, 139, 0, CAST(1196.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3588.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (142, 143, 140, 0, CAST(1110.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3330.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (143, 144, 141, 0, CAST(1261.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3783.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (144, 145, 142, 0, CAST(1365.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(4095.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (145, 146, 143, 0, CAST(921.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2763.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (146, 147, 144, 0, CAST(1183.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3549.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (147, 148, 145, 0, CAST(1249.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3747.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (148, 149, 146, 0, CAST(1416.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(4248.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (149, 150, 147, 0, CAST(638.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(1914.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (150, 151, 148, 0, CAST(1003.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3009.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (151, 152, 149, 0, CAST(959.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2877.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (152, 153, 150, 0, CAST(1495.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(4485.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (153, 154, 151, 0, CAST(976.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2928.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (154, 155, 152, 0, CAST(651.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(1953.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (155, 156, 153, 0, CAST(581.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(1743.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (156, 157, 154, 0, CAST(1166.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3498.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (157, 158, 155, 0, CAST(501.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(1503.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (158, 159, 156, 0, CAST(583.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(1749.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (159, 160, 157, 0, CAST(759.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2277.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (160, 161, 158, 0, CAST(934.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2802.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (161, 162, 159, 0, CAST(914.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2742.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (162, 163, 160, 0, CAST(1457.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(4371.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (163, 164, 161, 0, CAST(1077.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3231.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (164, 165, 162, 0, CAST(615.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(1845.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (165, 166, 163, 0, CAST(1451.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(4353.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (166, 167, 164, 0, CAST(782.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2346.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (167, 168, 165, 0, CAST(930.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2790.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (168, 169, 166, 0, CAST(748.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2244.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (169, 170, 167, 0, CAST(958.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2874.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (170, 171, 168, 0, CAST(796.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2388.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (171, 172, 169, 0, CAST(505.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(1515.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (172, 173, 170, 0, CAST(774.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2322.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (173, 174, 171, 0, CAST(834.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(2502.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (174, 175, 172, 0, CAST(592.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(1776.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (175, 176, 173, 0, CAST(1011.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3033.00 AS Decimal(8, 2)))
INSERT [dbo].[tbSeguro] ([codSeguro], [codPersona], [codVehiculo], [codEstado], [pagoMensual], [fechaCreación], [deducible]) VALUES (176, 177, 174, 0, CAST(1043.00 AS Decimal(8, 2)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(3129.00 AS Decimal(8, 2)))
SET IDENTITY_INSERT [dbo].[tbSeguro] OFF
SET IDENTITY_INSERT [dbo].[tbVehiculo] ON 

INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (3, N'A7A78', N'TOYOTA', N'', 1988, N'NEGRO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (4, N'B7A78', N'SUSUKI', N'', 1989, N'BLANCO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (5, N'87C88', N'HONDA', N'', 2000, N'AZUL')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (6, N'M7A78', N'YAMAHA', N'', 2004, N'ROJO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (7, N'7YJUFG', N'MONTERO', N'', 2005, N'GRIS')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (8, N'A7A78', N'', N'', 1988, N'VERDE')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (9, N'Y4G658', N'', N'', 1990, N'BLANCO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (10, N'vv452Y', N'', N'', 2000, N'AMARILLO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (11, N'G5H7Ju', N'', N'', 2004, N'ROJO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (12, N'K84H9I', N'', N'', 1980, N'NEGRO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (13, N'K78U21', N'', N'', 1985, N'BLANCO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (14, N'VMW47', N'', N'', 1982, N'VERDE')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (15, N'VM7A78', N'', N'', 1980, N'BLANCO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (16, N'AA7M8', N'', N'', 1970, N'AZUL')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (17, N'J7J78', N'', N'', 1993, N'NEGRO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (18, N'7YJUFG', N'MONTERO', NULL, 2005, N'GRIS')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (19, N'A7A78', N'TOYOTA', NULL, 1988, N'VERDE')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (20, N'Y4G658', N'SUBARU', NULL, 1990, N'BLANCO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (21, N'vv452Y', N'MERCEDEZ', NULL, 2000, N'AMARILLO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (22, N'7YJUFG', N'FERRARY', NULL, 2010, N'ROJO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (23, N'A7A79', N'LANCIA', NULL, 1981, N'AZUL')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (24, N'7YJUFG', N'ASTON MARTIN', NULL, 2016, N'NEGRO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (25, N'A7A79', N'CHEVROLET', NULL, 2007, N'VIOLETA')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (26, N'Y4G659', N'MUSTANG', NULL, 1994, N'NARAJA')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (27, N'vv452Y', N'MAZDA', NULL, 2020, N'GRIS')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (28, N'7YJUFG', N'JEEP', NULL, 2020, N'VERDE')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (29, N'A7A80', N'ISUZU', NULL, 1994, N'BLANCO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (30, N'7YJUFG', N'SUZUKI', NULL, 1999, N'AMARILLO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (31, N'A7A80', N'KIA', NULL, 2010, N'ROJO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (32, N'Y4G660', N'MONTERO', NULL, 2013, N'AZUL')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (33, N'vv452Y', N'TOYOTA', NULL, 2004, N'NEGRO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (34, N'7YJUFG', N'SUBARU', NULL, 2016, N'VIOLETA')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (35, N'A7A81', N'MERCEDEZ', NULL, 2009, N'NARAJA')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (36, N'7YJUFG', N'FERRARY', NULL, 2013, N'GRIS')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (37, N'A7A81', N'LANCIA', NULL, 2004, N'VERDE')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (38, N'Y4G661', N'ASTON MARTIN', NULL, 2003, N'BLANCO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (39, N'vv452Y', N'CHEVROLET', NULL, 1986, N'AMARILLO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (40, N'7YJUFG', N'MUSTANG', NULL, 1994, N'ROJO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (41, N'A7A82', N'MAZDA', NULL, 2008, N'AZUL')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (42, N'7YJUFG', N'JEEP', NULL, 2019, N'NEGRO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (43, N'A7A82', N'ISUZU', NULL, 2017, N'VIOLETA')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (44, N'Y4G662', N'SUZUKI', NULL, 2002, N'NARAJA')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (45, N'vv452Y', N'KIA', NULL, 1980, N'GRIS')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (46, N'7YJUFG', N'MONTERO', NULL, 1991, N'VERDE')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (47, N'A7A83', N'TOYOTA', NULL, 1999, N'BLANCO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (48, N'7YJUFG', N'SUBARU', NULL, 2007, N'AMARILLO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (49, N'A7A83', N'MERCEDEZ', NULL, 2013, N'ROJO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (50, N'Y4G663', N'FERRARY', NULL, 1995, N'AZUL')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (51, N'vv452Y', N'LANCIA', NULL, 1998, N'NEGRO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (52, N'7YJUFG', N'ASTON MARTIN', NULL, 1988, N'VIOLETA')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (53, N'A7A84', N'CHEVROLET', NULL, 2019, N'NARAJA')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (54, N'7YJUFG', N'MUSTANG', NULL, 1997, N'GRIS')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (55, N'A7A84', N'MAZDA', NULL, 1992, N'VERDE')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (56, N'Y4G664', N'JEEP', NULL, 1980, N'BLANCO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (57, N'vv452Y', N'ISUZU', NULL, 1995, N'AMARILLO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (58, N'7YJUFG', N'SUZUKI', NULL, 2004, N'ROJO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (59, N'A7A85', N'KIA', NULL, 2000, N'AZUL')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (60, N'7YJUFG', N'MONTERO', NULL, 2020, N'NEGRO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (61, N'A7A85', N'TOYOTA', NULL, 2016, N'VIOLETA')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (62, N'Y4G665', N'SUBARU', NULL, 1987, N'NARAJA')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (63, N'vv452Y', N'MERCEDEZ', NULL, 2008, N'GRIS')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (64, N'7YJUFG', N'FERRARY', NULL, 1992, N'VERDE')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (65, N'A7A86', N'LANCIA', NULL, 1991, N'BLANCO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (66, N'7YJUFG', N'ASTON MARTIN', NULL, 2017, N'AMARILLO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (67, N'A7A86', N'CHEVROLET', NULL, 2001, N'ROJO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (68, N'Y4G666', N'MUSTANG', NULL, 2001, N'AZUL')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (69, N'vv452Y', N'MAZDA', NULL, 2002, N'NEGRO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (70, N'7YJUFG', N'JEEP', NULL, 2015, N'VIOLETA')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (71, N'A7A87', N'ISUZU', NULL, 1981, N'NARAJA')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (72, N'7YJUFG', N'SUZUKI', NULL, 1996, N'GRIS')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (73, N'A7A87', N'KIA', NULL, 1984, N'VERDE')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (74, N'Y4G667', N'MONTERO', NULL, 2015, N'BLANCO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (75, N'vv452Y', N'TOYOTA', NULL, 1991, N'AMARILLO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (76, N'7YJUFG', N'SUBARU', NULL, 2003, N'ROJO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (77, N'A7A88', N'MERCEDEZ', NULL, 1980, N'AZUL')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (78, N'7YJUFG', N'FERRARY', NULL, 2008, N'NEGRO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (79, N'A7A88', N'LANCIA', NULL, 2017, N'VIOLETA')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (80, N'Y4G668', N'ASTON MARTIN', NULL, 2005, N'NARAJA')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (81, N'vv452Y', N'CHEVROLET', NULL, 1986, N'GRIS')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (82, N'7YJUFG', N'MUSTANG', NULL, 2001, N'VERDE')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (83, N'A7A89', N'MAZDA', NULL, 1992, N'BLANCO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (84, N'7YJUFG', N'JEEP', NULL, 1998, N'AMARILLO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (85, N'A7A89', N'ISUZU', NULL, 1993, N'ROJO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (86, N'Y4G669', N'SUZUKI', NULL, 2006, N'AZUL')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (87, N'vv452Y', N'KIA', NULL, 1985, N'NEGRO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (88, N'7YJUFG', N'MONTERO', NULL, 2018, N'VIOLETA')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (89, N'A7A90', N'TOYOTA', NULL, 1992, N'NARAJA')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (90, N'7YJUFG', N'SUBARU', NULL, 2000, N'GRIS')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (91, N'A7A90', N'MERCEDEZ', NULL, 2013, N'VERDE')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (92, N'Y4G670', N'FERRARY', NULL, 2019, N'BLANCO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (93, N'vv452Y', N'LANCIA', NULL, 2008, N'AMARILLO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (94, N'7YJUFG', N'ASTON MARTIN', NULL, 2014, N'ROJO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (95, N'A7A91', N'CHEVROLET', NULL, 1986, N'AZUL')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (96, N'7YJUFG', N'MUSTANG', NULL, 2007, N'NEGRO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (97, N'A7A91', N'MAZDA', NULL, 1983, N'VIOLETA')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (98, N'Y4G671', N'JEEP', NULL, 2008, N'NARAJA')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (99, N'vv452Y', N'ISUZU', NULL, 2017, N'GRIS')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (100, N'7YJUFG', N'SUZUKI', NULL, 2001, N'VERDE')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (101, N'A7A92', N'KIA', NULL, 2002, N'BLANCO')
GO
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (102, N'7YJUFG', N'MONTERO', NULL, 2017, N'AMARILLO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (103, N'A7A92', N'TOYOTA', NULL, 2001, N'ROJO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (104, N'Y4G672', N'SUBARU', NULL, 1991, N'AZUL')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (105, N'vv452Y', N'MERCEDEZ', NULL, 2017, N'NEGRO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (106, N'7YJUFG', N'FERRARY', NULL, 1997, N'VIOLETA')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (107, N'A7A93', N'LANCIA', NULL, 2008, N'NARAJA')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (108, N'7YJUFG', N'ASTON MARTIN', NULL, 1994, N'GRIS')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (109, N'A7A93', N'CHEVROLET', NULL, 2000, N'VERDE')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (110, N'Y4G673', N'MUSTANG', NULL, 1992, N'BLANCO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (111, N'vv452Y', N'MAZDA', NULL, 2000, N'AMARILLO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (112, N'7YJUFG', N'JEEP', NULL, 2005, N'ROJO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (113, N'A7A94', N'ISUZU', NULL, 2011, N'AZUL')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (114, N'7YJUFG', N'SUZUKI', NULL, 1991, N'NEGRO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (115, N'A7A94', N'KIA', NULL, 1992, N'VIOLETA')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (116, N'Y4G674', N'MONTERO', NULL, 2011, N'NARAJA')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (117, N'vv452Y', N'TOYOTA', NULL, 1998, N'GRIS')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (118, N'7YJUFG', N'SUBARU', NULL, 1995, N'VERDE')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (119, N'A7A95', N'MERCEDEZ', NULL, 1980, N'BLANCO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (120, N'7YJUFG', N'FERRARY', NULL, 1990, N'AMARILLO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (121, N'A7A95', N'LANCIA', NULL, 1986, N'ROJO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (122, N'Y4G675', N'ASTON MARTIN', NULL, 1985, N'AZUL')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (123, N'vv452Y', N'CHEVROLET', NULL, 1987, N'NEGRO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (124, N'7YJUFG', N'MUSTANG', NULL, 1983, N'VIOLETA')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (125, N'A7A96', N'MAZDA', NULL, 1994, N'NARAJA')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (126, N'7YJUFG', N'JEEP', NULL, 2013, N'GRIS')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (127, N'A7A96', N'ISUZU', NULL, 1990, N'VERDE')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (128, N'Y4G676', N'SUZUKI', NULL, 2004, N'BLANCO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (129, N'vv452Y', N'KIA', NULL, 2005, N'AMARILLO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (130, N'7YJUFG', N'MONTERO', NULL, 2018, N'ROJO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (131, N'A7A97', N'TOYOTA', NULL, 1991, N'AZUL')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (132, N'7YJUFG', N'SUBARU', NULL, 2015, N'NEGRO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (133, N'A7A97', N'MERCEDEZ', NULL, 2012, N'VIOLETA')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (134, N'Y4G677', N'FERRARY', NULL, 1998, N'NARAJA')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (135, N'vv452Y', N'LANCIA', NULL, 2019, N'GRIS')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (136, N'7YJUFG', N'ASTON MARTIN', NULL, 1998, N'VERDE')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (137, N'A7A98', N'CHEVROLET', NULL, 1995, N'BLANCO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (138, N'7YJUFG', N'MUSTANG', NULL, 2011, N'AMARILLO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (139, N'A7A98', N'MAZDA', NULL, 2001, N'ROJO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (140, N'Y4G678', N'JEEP', NULL, 1989, N'AZUL')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (141, N'vv452Y', N'ISUZU', NULL, 2009, N'NEGRO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (142, N'7YJUFG', N'SUZUKI', NULL, 2001, N'VIOLETA')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (143, N'A7A99', N'KIA', NULL, 2019, N'NARAJA')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (144, N'7YJUFG', N'MONTERO', NULL, 2002, N'GRIS')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (145, N'A7A99', N'TOYOTA', NULL, 2014, N'VERDE')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (146, N'Y4G679', N'SUBARU', NULL, 1983, N'BLANCO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (147, N'vv452Y', N'MERCEDEZ', NULL, 2000, N'AMARILLO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (148, N'7YJUFG', N'FERRARY', NULL, 2017, N'ROJO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (149, N'A7A100', N'LANCIA', NULL, 1983, N'AZUL')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (150, N'7YJUFG', N'ASTON MARTIN', NULL, 2014, N'NEGRO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (151, N'A7A100', N'CHEVROLET', NULL, 2008, N'VIOLETA')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (152, N'Y4G680', N'MUSTANG', NULL, 1986, N'NARAJA')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (153, N'vv452Y', N'MAZDA', NULL, 1984, N'GRIS')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (154, N'7YJUFG', N'JEEP', NULL, 1984, N'VERDE')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (155, N'A7A101', N'ISUZU', NULL, 2001, N'BLANCO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (156, N'7YJUFG', N'SUZUKI', NULL, 1983, N'AMARILLO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (157, N'A7A101', N'KIA', NULL, 1999, N'ROJO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (158, N'Y4G681', N'MONTERO', NULL, 2004, N'AZUL')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (159, N'vv452Y', N'TOYOTA', NULL, 2013, N'NEGRO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (160, N'7YJUFG', N'SUBARU', NULL, 2007, N'VIOLETA')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (161, N'A7A102', N'MERCEDEZ', NULL, 1996, N'NARAJA')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (162, N'7YJUFG', N'FERRARY', NULL, 2006, N'GRIS')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (163, N'A7A102', N'LANCIA', NULL, 2005, N'VERDE')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (164, N'Y4G682', N'ASTON MARTIN', NULL, 2016, N'BLANCO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (165, N'vv452Y', N'CHEVROLET', NULL, 2009, N'AMARILLO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (166, N'7YJUFG', N'MUSTANG', NULL, 1998, N'ROJO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (167, N'A7A103', N'MAZDA', NULL, 2014, N'AZUL')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (168, N'7YJUFG', N'JEEP', NULL, 1994, N'NEGRO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (169, N'A7A103', N'ISUZU', NULL, 2002, N'VIOLETA')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (170, N'Y4G683', N'SUZUKI', NULL, 1988, N'NARAJA')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (171, N'vv452Y', N'MONTERO', NULL, 2004, N'GRIS')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (172, N'7YJUFG', N'TOYOTA', NULL, 1991, N'VERDE')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (173, N'A7A104', N'SUBARU', NULL, 2017, N'BLANCO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (174, N'7YJUFG', N'MERCEDEZ', NULL, 2017, N'AMARILLO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (175, N'A7A104', N'FERRARY', NULL, 2020, N'ROJO')
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [marca], [linea], [modelo], [color]) VALUES (176, N'Y4G684', N'LANCIA', NULL, 1980, N'AZUL')
SET IDENTITY_INSERT [dbo].[tbVehiculo] OFF
/****** Object:  Index [IX_FK_tbReclamo_tbSeguro]    Script Date: 12/11/2019 07:58:35 ******/
CREATE NONCLUSTERED INDEX [IX_FK_tbReclamo_tbSeguro] ON [dbo].[tbReclamo]
(
	[codSeguro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_tbSeguro_tbPersona]    Script Date: 12/11/2019 07:58:35 ******/
CREATE NONCLUSTERED INDEX [IX_FK_tbSeguro_tbPersona] ON [dbo].[tbSeguro]
(
	[codPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_tbSeguro_tbVehiculo]    Script Date: 12/11/2019 07:58:35 ******/
CREATE NONCLUSTERED INDEX [IX_FK_tbSeguro_tbVehiculo] ON [dbo].[tbSeguro]
(
	[codVehiculo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbDanioResolucion]  WITH CHECK ADD  CONSTRAINT [FK_tbDanioResolucion_tbDanio] FOREIGN KEY([codDanio])
REFERENCES [dbo].[tbDanio] ([codDanio])
GO
ALTER TABLE [dbo].[tbDanioResolucion] CHECK CONSTRAINT [FK_tbDanioResolucion_tbDanio]
GO
ALTER TABLE [dbo].[tbDanioResolucion]  WITH CHECK ADD  CONSTRAINT [FK_tbDanioResolucion_tbResolucion] FOREIGN KEY([codResolucion])
REFERENCES [dbo].[tbResolucion] ([codResolucion])
GO
ALTER TABLE [dbo].[tbDanioResolucion] CHECK CONSTRAINT [FK_tbDanioResolucion_tbResolucion]
GO
ALTER TABLE [dbo].[tbReclamo]  WITH CHECK ADD  CONSTRAINT [FK_tbReclamo_tbDanioResolucion] FOREIGN KEY([codDanioResolucion])
REFERENCES [dbo].[tbDanioResolucion] ([codDanioResolucion])
GO
ALTER TABLE [dbo].[tbReclamo] CHECK CONSTRAINT [FK_tbReclamo_tbDanioResolucion]
GO
ALTER TABLE [dbo].[tbReclamo]  WITH CHECK ADD  CONSTRAINT [FK_tbReclamo_tbSeguro] FOREIGN KEY([codSeguro])
REFERENCES [dbo].[tbSeguro] ([codSeguro])
GO
ALTER TABLE [dbo].[tbReclamo] CHECK CONSTRAINT [FK_tbReclamo_tbSeguro]
GO
ALTER TABLE [dbo].[tbSeguro]  WITH CHECK ADD  CONSTRAINT [FK_tbSeguro_tbPersona] FOREIGN KEY([codPersona])
REFERENCES [dbo].[tbPersona] ([codPersona])
GO
ALTER TABLE [dbo].[tbSeguro] CHECK CONSTRAINT [FK_tbSeguro_tbPersona]
GO
ALTER TABLE [dbo].[tbSeguro]  WITH CHECK ADD  CONSTRAINT [FK_tbSeguro_tbVehiculo] FOREIGN KEY([codVehiculo])
REFERENCES [dbo].[tbVehiculo] ([codVehiculo])
GO
ALTER TABLE [dbo].[tbSeguro] CHECK CONSTRAINT [FK_tbSeguro_tbVehiculo]
GO
USE [master]
GO
ALTER DATABASE [dbAseguradora] SET  READ_WRITE 
GO
