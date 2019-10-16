USE [master]
GO
/****** Object:  Database [dbAseguradora]    Script Date: 15/10/2019 21:52:32 ******/
CREATE DATABASE [dbAseguradora]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbAseguradora', FILENAME = N'C:\Users\GERA\dbAseguradora.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'dbAseguradora_log', FILENAME = N'C:\Users\GERA\dbAseguradora_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [dbAseguradora] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbAseguradora].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbAseguradora] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbAseguradora] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbAseguradora] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbAseguradora] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbAseguradora] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbAseguradora] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [dbAseguradora] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbAseguradora] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbAseguradora] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbAseguradora] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbAseguradora] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbAseguradora] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbAseguradora] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbAseguradora] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbAseguradora] SET  ENABLE_BROKER 
GO
ALTER DATABASE [dbAseguradora] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbAseguradora] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbAseguradora] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbAseguradora] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbAseguradora] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbAseguradora] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbAseguradora] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbAseguradora] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [dbAseguradora] SET  MULTI_USER 
GO
ALTER DATABASE [dbAseguradora] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbAseguradora] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dbAseguradora] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dbAseguradora] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [dbAseguradora] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [dbAseguradora] SET QUERY_STORE = OFF
GO
USE [dbAseguradora]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [dbAseguradora]
GO
/****** Object:  Table [dbo].[tbDanio]    Script Date: 15/10/2019 21:52:32 ******/
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
/****** Object:  Table [dbo].[tbDanioResolucion]    Script Date: 15/10/2019 21:52:32 ******/
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
/****** Object:  Table [dbo].[tbPersona]    Script Date: 15/10/2019 21:52:32 ******/
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
/****** Object:  Table [dbo].[tbReclamo]    Script Date: 15/10/2019 21:52:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbReclamo](
	[codReclamo] [int] IDENTITY(1,1) NOT NULL,
	[codSeguro] [int] NULL,
	[codEstado] [int] NULL,
	[codDanioResolucion] [int] NULL,
 CONSTRAINT [PK_tbReclamo] PRIMARY KEY CLUSTERED 
(
	[codReclamo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbResolucion]    Script Date: 15/10/2019 21:52:32 ******/
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
/****** Object:  Table [dbo].[tbSeguro]    Script Date: 15/10/2019 21:52:32 ******/
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
/****** Object:  Table [dbo].[tbVehiculo]    Script Date: 15/10/2019 21:52:32 ******/
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
SET IDENTITY_INSERT [dbo].[tbPersona] OFF
SET IDENTITY_INSERT [dbo].[tbReclamo] ON 

INSERT [dbo].[tbReclamo] ([codReclamo], [codSeguro], [codEstado], [codDanioResolucion]) VALUES (13, 16, 1, 3)
INSERT [dbo].[tbReclamo] ([codReclamo], [codSeguro], [codEstado], [codDanioResolucion]) VALUES (14, 5, 1, 1)
INSERT [dbo].[tbReclamo] ([codReclamo], [codSeguro], [codEstado], [codDanioResolucion]) VALUES (15, 5, NULL, 2)
SET IDENTITY_INSERT [dbo].[tbReclamo] OFF
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
SET IDENTITY_INSERT [dbo].[tbVehiculo] OFF
/****** Object:  Index [IX_FK_tbReclamo_tbSeguro]    Script Date: 15/10/2019 21:52:32 ******/
CREATE NONCLUSTERED INDEX [IX_FK_tbReclamo_tbSeguro] ON [dbo].[tbReclamo]
(
	[codSeguro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_tbSeguro_tbPersona]    Script Date: 15/10/2019 21:52:32 ******/
CREATE NONCLUSTERED INDEX [IX_FK_tbSeguro_tbPersona] ON [dbo].[tbSeguro]
(
	[codPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_tbSeguro_tbVehiculo]    Script Date: 15/10/2019 21:52:32 ******/
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
