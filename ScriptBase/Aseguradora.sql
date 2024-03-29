USE [master]
GO
/****** Object:  Database [dbAseguradora]    Script Date: 20/11/2019 16:00:08 ******/
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
ALTER DATABASE [dbAseguradora] SET AUTO_CLOSE OFF 
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
ALTER DATABASE [dbAseguradora] SET  DISABLE_BROKER 
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
/****** Object:  Table [dbo].[tbChiCuadrada]    Script Date: 20/11/2019 16:00:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbChiCuadrada](
	[DF] [float] NOT NULL,
	[a] [float] NOT NULL,
	[b] [float] NOT NULL,
	[c] [float] NOT NULL,
	[d] [float] NOT NULL,
	[e] [float] NOT NULL,
	[f] [float] NOT NULL,
	[g] [float] NOT NULL,
	[h] [float] NOT NULL,
	[i] [float] NOT NULL,
	[j] [float] NOT NULL,
	[k] [float] NOT NULL,
 CONSTRAINT [PK_tbChiCuadrada] PRIMARY KEY CLUSTERED 
(
	[DF] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbDanio]    Script Date: 20/11/2019 16:00:09 ******/
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
/****** Object:  Table [dbo].[tbDanioResolucion]    Script Date: 20/11/2019 16:00:09 ******/
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
/****** Object:  Table [dbo].[tbMarca]    Script Date: 20/11/2019 16:00:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbMarca](
	[cod_marca] [int] IDENTITY(1,1) NOT NULL,
	[marca] [varchar](50) NULL,
 CONSTRAINT [PK_tbMarca] PRIMARY KEY CLUSTERED 
(
	[cod_marca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbPersona]    Script Date: 20/11/2019 16:00:09 ******/
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
/****** Object:  Table [dbo].[tbReclamo]    Script Date: 20/11/2019 16:00:09 ******/
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
/****** Object:  Table [dbo].[tbResolucion]    Script Date: 20/11/2019 16:00:09 ******/
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
/****** Object:  Table [dbo].[tbSeguro]    Script Date: 20/11/2019 16:00:09 ******/
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
/****** Object:  Table [dbo].[tbVehiculo]    Script Date: 20/11/2019 16:00:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbVehiculo](
	[codVehiculo] [int] IDENTITY(1,1) NOT NULL,
	[placa] [varchar](15) NULL,
	[linea] [varchar](50) NULL,
	[modelo] [int] NULL,
	[color] [varchar](50) NULL,
	[cod_marca] [int] NOT NULL,
 CONSTRAINT [PK_tbVehiculo] PRIMARY KEY CLUSTERED 
(
	[codVehiculo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (1, 0, 0, 1.64, 2.71, 3.84, 5.02, 5.41, 6.64, 7.88, 9.55, 10.83)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (2, 0.01, 0.05, 3.22, 4.61, 5.99, 7.38, 7.82, 9.21, 10.6, 12.43, 13.82)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (3, 0.07, 0.22, 4.64, 6.25, 7.82, 9.35, 9.84, 11.35, 12.84, 14.8, 16.27)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (4, 0.21, 0.48, 5.99, 7.78, 9.49, 11.14, 11.67, 13.28, 14.86, 16.92, 18.47)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (5, 0.41, 0.83, 7.29, 9.24, 11.07, 12.83, 13.39, 15.09, 16.75, 18.91, 20.52)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (6, 0.68, 1.24, 8.56, 10.65, 12.59, 14.45, 15.03, 16.81, 18.55, 20.79, 22.46)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (7, 0.99, 1.69, 9.8, 12.02, 14.07, 16.01, 16.62, 18.48, 20.28, 22.6, 24.32)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (8, 1.34, 2.18, 11.03, 13.36, 15.51, 17.54, 18.17, 20.09, 21.96, 24.35, 26.12)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (9, 1.74, 2.7, 12.24, 14.68, 16.92, 19.02, 19.68, 21.67, 23.59, 26.06, 27.88)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (10, 2.16, 3.25, 13.44, 15.99, 18.31, 20.48, 21.16, 23.21, 25.19, 27.72, 29.59)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (11, 2.6, 3.82, 14.63, 17.28, 19.68, 21.92, 22.62, 24.73, 26.76, 29.35, 31.26)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (12, 3.07, 4.4, 15.81, 18.55, 21.03, 23.34, 24.05, 26.22, 28.3, 30.96, 32.91)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (13, 3.57, 5.01, 16.99, 19.81, 22.36, 24.74, 25.47, 27.69, 29.82, 32.54, 34.53)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (14, 4.08, 5.63, 18.15, 21.06, 23.69, 26.12, 26.87, 29.14, 31.32, 34.09, 36.12)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (15, 4.6, 6.26, 19.31, 22.31, 25, 27.49, 28.26, 30.58, 32.8, 35.63, 37.7)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (16, 5.14, 6.91, 20.47, 23.54, 26.3, 28.85, 29.63, 32, 34.27, 37.15, 39.25)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (17, 5.7, 7.56, 21.62, 24.77, 27.59, 30.19, 31, 33.41, 35.72, 38.65, 40.79)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (18, 6.27, 8.23, 22.76, 25.99, 28.87, 31.53, 32.35, 34.81, 37.16, 40.14, 42.31)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (19, 6.84, 8.91, 23.9, 27.2, 30.14, 32.85, 33.69, 36.19, 38.58, 41.61, 43.82)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (20, 7.43, 9.59, 25.04, 28.41, 31.41, 34.17, 35.02, 37.57, 40, 43.07, 45.32)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (21, 8.03, 10.28, 26.17, 29.62, 32.67, 35.48, 36.34, 38.93, 41.4, 44.52, 46.8)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (22, 8.64, 10.98, 27.3, 30.81, 33.92, 36.78, 37.66, 40.29, 42.8, 45.96, 48.27)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (23, 9.26, 11.69, 28.43, 32.01, 35.17, 38.08, 38.97, 41.64, 44.18, 47.39, 49.73)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (24, 9.89, 12.4, 29.55, 33.2, 36.42, 39.36, 40.27, 42.98, 45.56, 48.81, 51.18)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (25, 10.52, 13.12, 30.68, 34.38, 37.65, 40.65, 41.57, 44.31, 46.93, 50.22, 52.62)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (26, 11.16, 13.84, 31.8, 35.56, 38.89, 41.92, 42.86, 45.64, 48.29, 51.63, 54.05)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (27, 11.81, 14.57, 32.91, 36.74, 40.11, 43.2, 44.14, 46.96, 49.65, 53.02, 55.48)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (28, 12.46, 15.31, 34.03, 37.92, 41.34, 44.46, 45.42, 48.28, 50.99, 54.41, 56.89)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (29, 13.12, 16.05, 35.14, 39.09, 42.56, 45.72, 46.69, 49.59, 52.34, 55.79, 58.3)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (30, 13.79, 16.79, 36.25, 40.26, 43.77, 46.98, 47.96, 50.89, 53.67, 57.17, 59.7)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (31, 14.46, 17.54, 37.36, 41.42, 44.99, 48.23, 49.23, 52.19, 55, 58.54, 61.1)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (32, 15.13, 18.29, 38.47, 42.59, 46.19, 49.48, 50.49, 53.49, 56.33, 59.9, 62.49)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (33, 15.82, 19.05, 39.57, 43.75, 47.4, 50.73, 51.74, 54.78, 57.65, 61.26, 63.87)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (34, 16.5, 19.81, 40.68, 44.9, 48.6, 51.97, 53, 56.06, 58.96, 62.61, 65.25)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (35, 17.19, 20.57, 41.78, 46.06, 49.8, 53.2, 54.24, 57.34, 60.28, 63.96, 66.62)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (36, 17.89, 21.34, 42.88, 47.21, 51, 54.44, 55.49, 58.62, 61.58, 65.3, 67.99)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (37, 18.59, 22.11, 43.98, 48.36, 52.19, 55.67, 56.73, 59.89, 62.88, 66.63, 69.35)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (38, 19.29, 22.88, 45.08, 49.51, 53.38, 56.9, 57.97, 61.16, 64.18, 67.97, 70.7)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (39, 20, 23.65, 46.17, 50.66, 54.57, 58.12, 59.2, 62.43, 65.48, 69.29, 72.06)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (40, 20.71, 24.43, 47.27, 51.81, 55.76, 59.34, 60.44, 63.69, 66.77, 70.62, 73.4)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (41, 21.42, 25.22, 48.36, 52.95, 56.94, 60.56, 61.67, 64.95, 68.05, 71.94, 74.75)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (42, 22.14, 26, 49.46, 54.09, 58.12, 61.78, 62.89, 66.21, 69.34, 73.25, 76.08)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (43, 22.86, 26.79, 50.55, 55.23, 59.3, 62.99, 64.12, 67.46, 70.62, 74.57, 77.42)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (44, 23.58, 27.58, 51.64, 56.37, 60.48, 64.2, 65.34, 68.71, 71.89, 75.87, 78.75)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (45, 24.31, 28.37, 52.73, 57.51, 61.66, 65.41, 66.56, 69.96, 73.17, 77.18, 80.08)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (46, 25.04, 29.16, 53.82, 58.64, 62.83, 66.62, 67.77, 71.2, 74.44, 78.48, 81.4)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (47, 25.78, 29.96, 54.91, 59.77, 64, 67.82, 68.99, 72.44, 75.7, 79.78, 82.72)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (48, 26.51, 30.76, 55.99, 60.91, 65.17, 69.02, 70.2, 73.68, 76.97, 81.08, 84.04)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (49, 27.25, 31.56, 57.08, 62.04, 66.34, 70.22, 71.41, 74.92, 78.23, 82.37, 85.35)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (50, 27.99, 32.36, 58.16, 63.17, 67.51, 71.42, 72.61, 76.15, 79.49, 83.66, 86.66)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (51, 28.74, 33.16, 59.25, 64.3, 68.67, 72.62, 73.82, 77.39, 80.75, 84.94, 87.97)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (52, 29.48, 33.97, 60.33, 65.42, 69.83, 73.81, 75.02, 78.62, 82, 86.23, 89.27)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (53, 30.23, 34.78, 61.41, 66.55, 70.99, 75, 76.22, 79.84, 83.25, 87.51, 90.57)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (54, 30.98, 35.59, 62.5, 67.67, 72.15, 76.19, 77.42, 81.07, 84.5, 88.79, 91.87)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (55, 31.74, 36.4, 63.58, 68.8, 73.31, 77.38, 78.62, 82.29, 85.75, 90.06, 93.17)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (56, 32.49, 37.21, 64.66, 69.92, 74.47, 78.57, 79.82, 83.51, 86.99, 91.34, 94.46)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (57, 33.25, 38.03, 65.74, 71.04, 75.62, 79.75, 81.01, 84.73, 88.24, 92.61, 95.75)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (58, 34.01, 38.84, 66.82, 72.16, 76.78, 80.94, 82.2, 85.95, 89.48, 93.87, 97.04)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (59, 34.77, 39.66, 67.89, 73.28, 77.93, 82.12, 83.39, 87.17, 90.72, 95.14, 98.32)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (60, 35.53, 40.48, 68.97, 74.4, 79.08, 83.3, 84.58, 88.38, 91.95, 96.4, 99.61)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (61, 36.3, 41.3, 70.05, 75.51, 80.23, 84.48, 85.77, 89.59, 93.19, 97.67, 100.89)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (62, 37.07, 42.13, 71.13, 76.63, 81.38, 85.65, 86.95, 90.8, 94.42, 98.93, 102.17)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (63, 37.84, 42.95, 72.2, 77.75, 82.53, 86.83, 88.14, 92.01, 95.65, 100.18, 103.44)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (64, 38.61, 43.78, 73.28, 78.86, 83.68, 88, 89.32, 93.22, 96.88, 101.44, 104.72)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (65, 39.38, 44.6, 74.35, 79.97, 84.82, 89.18, 90.5, 94.42, 98.11, 102.69, 105.99)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (66, 40.16, 45.43, 75.42, 81.09, 85.97, 90.35, 91.68, 95.63, 99.33, 103.94, 107.26)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (67, 40.94, 46.26, 76.5, 82.2, 87.11, 91.52, 92.86, 96.83, 100.55, 105.19, 108.53)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (68, 41.71, 47.09, 77.57, 83.31, 88.25, 92.69, 94.04, 98.03, 101.78, 106.44, 109.79)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (69, 42.49, 47.92, 78.64, 84.42, 89.39, 93.86, 95.21, 99.23, 103, 107.69, 111.06)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (70, 43.28, 48.76, 79.72, 85.53, 90.53, 95.02, 96.39, 100.43, 104.22, 108.93, 112.32)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (71, 44.06, 49.59, 80.79, 86.64, 91.67, 96.19, 97.56, 101.62, 105.43, 110.17, 113.58)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (72, 44.84, 50.43, 81.86, 87.74, 92.81, 97.35, 98.73, 102.82, 106.65, 111.41, 114.84)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (73, 45.63, 51.27, 82.93, 88.85, 93.95, 98.52, 99.9, 104.01, 107.86, 112.65, 116.09)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (74, 46.42, 52.1, 84, 89.96, 95.08, 99.68, 101.07, 105.2, 109.07, 113.89, 117.35)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (75, 47.21, 52.94, 85.07, 91.06, 96.22, 100.84, 102.24, 106.39, 110.29, 115.13, 118.6)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (76, 48, 53.78, 86.14, 92.17, 97.35, 102, 103.41, 107.58, 111.5, 116.36, 119.85)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (77, 48.79, 54.62, 87.2, 93.27, 98.48, 103.16, 104.58, 108.77, 112.7, 117.59, 121.1)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (78, 49.58, 55.47, 88.27, 94.37, 99.62, 104.32, 105.74, 109.96, 113.91, 118.82, 122.35)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (79, 50.38, 56.31, 89.34, 95.48, 100.75, 105.47, 106.91, 111.14, 115.12, 120.05, 123.59)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (80, 51.17, 57.15, 90.41, 96.58, 101.88, 106.63, 108.07, 112.33, 116.32, 121.28, 124.84)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (81, 51.97, 58, 91.47, 97.68, 103.01, 107.78, 109.23, 113.51, 117.52, 122.51, 126.08)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (82, 52.77, 58.85, 92.54, 98.78, 104.14, 108.94, 110.39, 114.7, 118.73, 123.73, 127.32)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (83, 53.57, 59.69, 93.6, 99.88, 105.27, 110.09, 111.55, 115.88, 119.93, 124.96, 128.57)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (84, 54.37, 60.54, 94.67, 100.98, 106.4, 111.24, 112.71, 117.06, 121.13, 126.18, 129.8)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (85, 55.17, 61.39, 95.73, 102.08, 107.52, 112.39, 113.87, 118.24, 122.33, 127.4, 131.04)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (86, 55.97, 62.24, 96.8, 103.18, 108.65, 113.54, 115.03, 119.41, 123.52, 128.62, 132.28)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (87, 56.78, 63.09, 97.86, 104.28, 109.77, 114.69, 116.18, 120.59, 124.72, 129.84, 133.51)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (88, 57.58, 63.94, 98.93, 105.37, 110.9, 115.84, 117.34, 121.77, 125.91, 131.06, 134.75)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (89, 58.39, 64.79, 99.99, 106.47, 112.02, 116.99, 118.5, 122.94, 127.11, 132.27, 135.98)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (90, 59.2, 65.65, 101.05, 107.57, 113.15, 118.14, 119.65, 124.12, 128.3, 133.49, 137.21)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (91, 60.01, 66.5, 102.12, 108.66, 114.27, 119.28, 120.8, 125.29, 129.49, 134.7, 138.44)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (92, 60.82, 67.36, 103.18, 109.76, 115.39, 120.43, 121.95, 126.46, 130.68, 135.92, 139.67)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (93, 61.63, 68.21, 104.24, 110.85, 116.51, 121.57, 123.11, 127.63, 131.87, 137.13, 140.89)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (94, 62.44, 69.07, 105.3, 111.94, 117.63, 122.72, 124.26, 128.8, 133.06, 138.34, 142.12)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (95, 63.25, 69.93, 106.36, 113.04, 118.75, 123.86, 125.41, 129.97, 134.25, 139.55, 143.34)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (96, 64.06, 70.78, 107.43, 114.13, 119.87, 125, 126.55, 131.14, 135.43, 140.76, 144.57)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (97, 64.88, 71.64, 108.49, 115.22, 120.99, 126.14, 127.7, 132.31, 136.62, 141.96, 145.79)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (98, 65.69, 72.5, 109.55, 116.32, 122.11, 127.28, 128.85, 133.48, 137.8, 143.17, 147.01)
INSERT [dbo].[tbChiCuadrada] ([DF], [a], [b], [c], [d], [e], [f], [g], [h], [i], [j], [k]) VALUES (99, 66.51, 73.36, 110.61, 117.41, 123.23, 128.42, 130, 134.64, 138.99, 144.37, 148.23)
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
SET IDENTITY_INSERT [dbo].[tbMarca] ON 

INSERT [dbo].[tbMarca] ([cod_marca], [marca]) VALUES (1, N'TOYOTA')
INSERT [dbo].[tbMarca] ([cod_marca], [marca]) VALUES (2, N'SUSUKI')
INSERT [dbo].[tbMarca] ([cod_marca], [marca]) VALUES (3, N'HONDA')
INSERT [dbo].[tbMarca] ([cod_marca], [marca]) VALUES (4, N'YAMAHA')
INSERT [dbo].[tbMarca] ([cod_marca], [marca]) VALUES (5, N'MONTERO')
INSERT [dbo].[tbMarca] ([cod_marca], [marca]) VALUES (6, N'MERCEDEZ')
INSERT [dbo].[tbMarca] ([cod_marca], [marca]) VALUES (7, N'MUSTANG')
INSERT [dbo].[tbMarca] ([cod_marca], [marca]) VALUES (8, N'CHEVROLET')
INSERT [dbo].[tbMarca] ([cod_marca], [marca]) VALUES (9, N'SUBARU')
INSERT [dbo].[tbMarca] ([cod_marca], [marca]) VALUES (10, N'LANCIA')
INSERT [dbo].[tbMarca] ([cod_marca], [marca]) VALUES (11, N'FERRARY')
INSERT [dbo].[tbMarca] ([cod_marca], [marca]) VALUES (12, N'ASTON MARTIN')
INSERT [dbo].[tbMarca] ([cod_marca], [marca]) VALUES (13, N'JEEP')
INSERT [dbo].[tbMarca] ([cod_marca], [marca]) VALUES (14, N'ISUZU')
INSERT [dbo].[tbMarca] ([cod_marca], [marca]) VALUES (15, N'SUZUKI')
INSERT [dbo].[tbMarca] ([cod_marca], [marca]) VALUES (16, N'KIA')
INSERT [dbo].[tbMarca] ([cod_marca], [marca]) VALUES (17, N'MAZDA')
SET IDENTITY_INSERT [dbo].[tbMarca] OFF
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
INSERT [dbo].[tbPersona] ([codPersona], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [telefono], [fechaNacimiento]) VALUES (20, N'Andrea', N'Vanesa', N'Fernandes', N'Lopez', N'12121212', CAST(N'1985-05-22T00:00:00.000' AS DateTime))
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

INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (3, N'A7A78', N'', 1988, N'NEGRO', 1)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (4, N'B7A78', N'', 1989, N'BLANCO', 2)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (5, N'87C88', N'', 2000, N'AZUL', 3)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (6, N'M7A78', N'', 2004, N'ROJO', 4)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (7, N'7YJUFG', N'', 2005, N'GRIS', 5)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (8, N'A7A78', NULL, 1988, N'VERDE', 6)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (9, N'Y4G658', N'45df', 1990, N'BLANCO', 7)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (10, N'vv452Y', N'', 2000, N'AMARILLO', 8)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (11, N'G5H7Ju', N'', 2004, N'ROJO', 9)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (12, N'K84H9I', N'', 1980, N'NEGRO', 10)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (13, N'K78U21', N'', 1985, N'BLANCO', 11)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (14, N'VMW47', N'', 1982, N'VERDE', 12)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (15, N'VM7A78', N'', 1980, N'BLANCO', 13)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (16, N'AA7M8', N'', 1970, N'AZUL', 14)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (17, N'J7J78', N'', 1993, N'NEGRO', 15)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (18, N'7YJUFG', NULL, 2005, N'GRIS', 16)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (19, N'A7A78', NULL, 1988, N'VERDE', 1)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (20, N'Y4G658', NULL, 1990, N'BLANCO', 2)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (21, N'vv452Y', NULL, 2000, N'AMARILLO', 3)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (22, N'7YJUFG', NULL, 2010, N'ROJO', 4)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (23, N'A7A79', NULL, 1981, N'AZUL', 5)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (24, N'7YJUFG', NULL, 2016, N'NEGRO', 6)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (25, N'A7A79', NULL, 2007, N'VIOLETA', 7)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (26, N'Y4G659', NULL, 1994, N'NARAJA', 8)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (27, N'vv452Y', NULL, 2020, N'GRIS', 9)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (28, N'7YJUFG', NULL, 2020, N'VERDE', 10)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (29, N'A7A80', NULL, 1994, N'BLANCO', 11)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (30, N'7YJUFG', NULL, 1999, N'AMARILLO', 12)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (31, N'A7A80', NULL, 2010, N'ROJO', 13)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (32, N'Y4G660', NULL, 2013, N'AZUL', 14)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (33, N'vv452Y', NULL, 2004, N'NEGRO', 15)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (34, N'7YJUFG', NULL, 2016, N'VIOLETA', 16)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (35, N'A7A81', NULL, 2009, N'NARAJA', 1)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (36, N'7YJUFG', NULL, 2013, N'GRIS', 2)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (37, N'A7A81', NULL, 2004, N'VERDE', 3)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (38, N'Y4G661', NULL, 2003, N'BLANCO', 4)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (39, N'vv452Y', NULL, 1986, N'AMARILLO', 5)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (40, N'7YJUFG', NULL, 1994, N'ROJO', 6)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (41, N'A7A82', NULL, 2008, N'AZUL', 7)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (42, N'7YJUFG', NULL, 2019, N'NEGRO', 8)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (43, N'A7A82', NULL, 2017, N'VIOLETA', 9)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (44, N'Y4G662', NULL, 2002, N'NARAJA', 9)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (45, N'vv452Y', NULL, 1980, N'GRIS', 8)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (46, N'7YJUFG', NULL, 1991, N'VERDE', 7)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (47, N'A7A83', NULL, 1999, N'BLANCO', 4)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (48, N'7YJUFG', NULL, 2007, N'AMARILLO', 5)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (49, N'A7A83', NULL, 2013, N'ROJO', 6)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (50, N'Y4G663', NULL, 1995, N'AZUL', 3)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (51, N'vv452Y', NULL, 1998, N'NEGRO', 2)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (52, N'7YJUFG', NULL, 1988, N'VIOLETA', 1)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (53, N'A7A84', NULL, 2019, N'NARAJA', 12)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (54, N'7YJUFG', NULL, 1997, N'GRIS', 2)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (55, N'A7A84', NULL, 1992, N'VERDE', 15)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (56, N'Y4G664', NULL, 1980, N'BLANCO', 14)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (57, N'vv452Y', NULL, 1995, N'AMARILLO', 10)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (58, N'7YJUFG', NULL, 2004, N'ROJO', 8)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (59, N'A7A85', NULL, 2000, N'AZUL', 9)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (60, N'7YJUFG', NULL, 2020, N'NEGRO', 7)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (61, N'A7A85', NULL, 2016, N'VIOLETA', 6)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (62, N'Y4G665', NULL, 1987, N'NARAJA', 5)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (63, N'vv452Y', NULL, 2008, N'GRIS', 4)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (64, N'7YJUFG', NULL, 1992, N'VERDE', 8)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (65, N'A7A86', NULL, 1991, N'BLANCO', 9)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (66, N'7YJUFG', NULL, 2017, N'AMARILLO', 6)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (67, N'A7A86', NULL, 2001, N'ROJO', 3)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (68, N'Y4G666', NULL, 2001, N'AZUL', 2)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (69, N'vv452Y', NULL, 2002, N'NEGRO', 5)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (70, N'7YJUFG', NULL, 2015, N'VIOLETA', 5)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (71, N'A7A87', NULL, 1981, N'NARAJA', 4)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (72, N'7YJUFG', NULL, 1996, N'GRIS', 2)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (73, N'A7A87', NULL, 1984, N'VERDE', 5)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (74, N'Y4G667', NULL, 2015, N'BLANCO', 8)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (75, N'vv452Y', NULL, 1991, N'AMARILLO', 9)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (76, N'7YJUFG', NULL, 2003, N'ROJO', 6)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (77, N'A7A88', NULL, 1980, N'AZUL', 3)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (78, N'7YJUFG', NULL, 2008, N'NEGRO', 2)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (79, N'A7A88', NULL, 2017, N'VIOLETA', 1)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (80, N'Y4G668', NULL, 2005, N'NARAJA', 4)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (81, N'vv452Y', NULL, 1986, N'GRIS', 5)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (82, N'7YJUFG', NULL, 2001, N'VERDE', 6)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (83, N'A7A89', NULL, 1992, N'BLANCO', 9)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (84, N'7YJUFG', NULL, 1998, N'AMARILLO', 8)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (85, N'A7A89', NULL, 1993, N'ROJO', 7)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (86, N'Y4G669', NULL, 2006, N'AZUL', 5)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (87, N'vv452Y', NULL, 1985, N'NEGRO', 6)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (88, N'7YJUFG', NULL, 2018, N'VIOLETA', 5)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (89, N'A7A90', NULL, 1992, N'NARAJA', 4)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (90, N'7YJUFG', NULL, 2000, N'GRIS', 2)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (91, N'A7A90', NULL, 2013, N'VERDE', 1)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (92, N'Y4G670', NULL, 2019, N'BLANCO', 1)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (93, N'vv452Y', NULL, 2008, N'AMARILLO', 3)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (94, N'7YJUFG', NULL, 2014, N'ROJO', 10)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (95, N'A7A91', NULL, 1986, N'AZUL', 12)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (96, N'7YJUFG', NULL, 2007, N'NEGRO', 14)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (97, N'A7A91', NULL, 1983, N'VIOLETA', 16)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (98, N'Y4G671', NULL, 2008, N'NARAJA', 4)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (99, N'vv452Y', NULL, 2017, N'GRIS', 5)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (100, N'7YJUFG', NULL, 2001, N'VERDE', 8)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (101, N'A7A92', NULL, 2002, N'BLANCO', 5)
GO
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (102, N'7YJUFG', NULL, 2017, N'AMARILLO', 5)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (103, N'A7A92', NULL, 2001, N'ROJO', 2)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (104, N'Y4G672', NULL, 1991, N'AZUL', 2)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (105, N'vv452Y', NULL, 2017, N'NEGRO', 3)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (106, N'7YJUFG', NULL, 1997, N'VIOLETA', 3)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (107, N'A7A93', NULL, 2008, N'NARAJA', 6)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (108, N'7YJUFG', NULL, 1994, N'GRIS', 2)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (109, N'A7A93', NULL, 2000, N'VERDE', 1)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (110, N'Y4G673', NULL, 1992, N'BLANCO', 4)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (111, N'vv452Y', NULL, 2000, N'AMARILLO', 2)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (112, N'7YJUFG', NULL, 2005, N'ROJO', 5)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (113, N'A7A94', NULL, 2011, N'AZUL', 8)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (114, N'7YJUFG', NULL, 1991, N'NEGRO', 2)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (115, N'A7A94', NULL, 1992, N'VIOLETA', 5)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (116, N'Y4G674', NULL, 2011, N'NARAJA', 6)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (117, N'vv452Y', NULL, 1998, N'GRIS', 3)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (118, N'7YJUFG', NULL, 1995, N'VERDE', 2)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (119, N'A7A95', NULL, 1980, N'BLANCO', 1)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (120, N'7YJUFG', NULL, 1990, N'AMARILLO', 5)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (121, N'A7A95', NULL, 1986, N'ROJO', 2)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (122, N'Y4G675', NULL, 1985, N'AZUL', 5)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (123, N'vv452Y', NULL, 1987, N'NEGRO', 2)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (124, N'7YJUFG', NULL, 1983, N'VIOLETA', 5)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (125, N'A7A96', NULL, 1994, N'NARAJA', 2)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (126, N'7YJUFG', NULL, 2013, N'GRIS', 5)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (127, N'A7A96', NULL, 1990, N'VERDE', 2)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (128, N'Y4G676', NULL, 2004, N'BLANCO', 3)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (129, N'vv452Y', NULL, 2005, N'AMARILLO', 6)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (130, N'7YJUFG', NULL, 2018, N'ROJO', 2)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (131, N'A7A97', NULL, 1991, N'AZUL', 5)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (132, N'7YJUFG', NULL, 2015, N'NEGRO', 6)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (133, N'A7A97', NULL, 2012, N'VIOLETA', 2)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (134, N'Y4G677', NULL, 1998, N'NARAJA', 5)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (135, N'vv452Y', NULL, 2019, N'GRIS', 2)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (136, N'7YJUFG', NULL, 1998, N'VERDE', 3)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (137, N'A7A98', NULL, 1995, N'BLANCO', 6)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (138, N'7YJUFG', NULL, 2011, N'AMARILLO', 6)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (139, N'A7A98', NULL, 2001, N'ROJO', 2)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (140, N'Y4G678', NULL, 1989, N'AZUL', 5)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (141, N'vv452Y', NULL, 2009, N'NEGRO', 2)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (142, N'7YJUFG', NULL, 2001, N'VIOLETA', 5)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (143, N'A7A99', NULL, 2019, N'NARAJA', 2)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (144, N'7YJUFG', NULL, 2002, N'GRIS', 5)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (145, N'A7A99', NULL, 2014, N'VERDE', 2)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (146, N'Y4G679', NULL, 1983, N'BLANCO', 5)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (147, N'vv452Y', NULL, 2000, N'AMARILLO', 2)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (148, N'7YJUFG', NULL, 2017, N'ROJO', 5)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (149, N'A7A100', NULL, 1983, N'AZUL', 2)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (150, N'7YJUFG', NULL, 2014, N'NEGRO', 5)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (151, N'A7A100', NULL, 2008, N'VIOLETA', 2)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (152, N'Y4G680', NULL, 1986, N'NARAJA', 5)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (153, N'vv452Y', NULL, 1984, N'GRIS', 2)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (154, N'7YJUFG', NULL, 1984, N'VERDE', 5)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (155, N'A7A101', NULL, 2001, N'BLANCO', 2)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (156, N'7YJUFG', NULL, 1983, N'AMARILLO', 5)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (157, N'A7A101', NULL, 1999, N'ROJO', 2)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (158, N'Y4G681', NULL, 2004, N'AZUL', 5)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (159, N'vv452Y', NULL, 2013, N'NEGRO', 2)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (160, N'7YJUFG', NULL, 2007, N'VIOLETA', 5)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (161, N'A7A102', NULL, 1996, N'NARAJA', 2)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (162, N'7YJUFG', NULL, 2006, N'GRIS', 5)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (163, N'A7A102', NULL, 2005, N'VERDE', 2)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (164, N'Y4G682', NULL, 2016, N'BLANCO', 5)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (165, N'vv452Y', NULL, 2009, N'AMARILLO', 2)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (166, N'7YJUFG', NULL, 1998, N'ROJO', 5)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (167, N'A7A103', NULL, 2014, N'AZUL', 2)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (168, N'7YJUFG', NULL, 1994, N'NEGRO', 5)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (169, N'A7A103', NULL, 2002, N'VIOLETA', 2)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (170, N'Y4G683', NULL, 1988, N'NARAJA', 5)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (171, N'vv452Y', NULL, 2004, N'GRIS', 2)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (172, N'7YJUFG', NULL, 1991, N'VERDE', 5)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (173, N'A7A104', NULL, 2017, N'BLANCO', 2)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (174, N'7YJUFG', NULL, 2017, N'AMARILLO', 5)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (175, N'A7A104', NULL, 2020, N'ROJO', 2)
INSERT [dbo].[tbVehiculo] ([codVehiculo], [placa], [linea], [modelo], [color], [cod_marca]) VALUES (176, N'Y4G684', NULL, 1980, N'AZUL', 5)
SET IDENTITY_INSERT [dbo].[tbVehiculo] OFF
/****** Object:  Index [IX_FK_tbReclamo_tbSeguro]    Script Date: 20/11/2019 16:00:09 ******/
CREATE NONCLUSTERED INDEX [IX_FK_tbReclamo_tbSeguro] ON [dbo].[tbReclamo]
(
	[codSeguro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_tbSeguro_tbPersona]    Script Date: 20/11/2019 16:00:09 ******/
CREATE NONCLUSTERED INDEX [IX_FK_tbSeguro_tbPersona] ON [dbo].[tbSeguro]
(
	[codPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_tbSeguro_tbVehiculo]    Script Date: 20/11/2019 16:00:09 ******/
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
ALTER TABLE [dbo].[tbVehiculo]  WITH CHECK ADD  CONSTRAINT [FK_tbVehiculo_tbMarca] FOREIGN KEY([cod_marca])
REFERENCES [dbo].[tbMarca] ([cod_marca])
GO
ALTER TABLE [dbo].[tbVehiculo] CHECK CONSTRAINT [FK_tbVehiculo_tbMarca]
GO
USE [master]
GO
ALTER DATABASE [dbAseguradora] SET  READ_WRITE 
GO
