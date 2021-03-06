USE [master]
GO
/****** Object:  Database [ArticulosABM]    Script Date: 12/03/2021 12:14:59 ******/
CREATE DATABASE [ArticulosABM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ArticulosABM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ArticulosABM.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ArticulosABM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ArticulosABM_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ArticulosABM] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ArticulosABM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ArticulosABM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ArticulosABM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ArticulosABM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ArticulosABM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ArticulosABM] SET ARITHABORT OFF 
GO
ALTER DATABASE [ArticulosABM] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ArticulosABM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ArticulosABM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ArticulosABM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ArticulosABM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ArticulosABM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ArticulosABM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ArticulosABM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ArticulosABM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ArticulosABM] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ArticulosABM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ArticulosABM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ArticulosABM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ArticulosABM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ArticulosABM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ArticulosABM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ArticulosABM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ArticulosABM] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ArticulosABM] SET  MULTI_USER 
GO
ALTER DATABASE [ArticulosABM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ArticulosABM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ArticulosABM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ArticulosABM] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ArticulosABM] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ArticulosABM]
GO
/****** Object:  Table [dbo].[Articulos]    Script Date: 12/03/2021 12:14:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articulos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
	[precio] [real] NULL,
	[tipo] [int] NULL,
 CONSTRAINT [PK_Articulos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdTipo]    Script Date: 12/03/2021 12:14:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdTipo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
 CONSTRAINT [PK_IdTipo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo]    Script Date: 12/03/2021 12:14:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tipo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Articulos] ON 

INSERT [dbo].[Articulos] ([id], [descripcion], [precio], [tipo]) VALUES (1, N'cadena de bici', 100, NULL)
INSERT [dbo].[Articulos] ([id], [descripcion], [precio], [tipo]) VALUES (2, N'manubrio ', 200, NULL)
INSERT [dbo].[Articulos] ([id], [descripcion], [precio], [tipo]) VALUES (3, N'pedales', 50, NULL)
INSERT [dbo].[Articulos] ([id], [descripcion], [precio], [tipo]) VALUES (4, N'Frenos', 100, NULL)
INSERT [dbo].[Articulos] ([id], [descripcion], [precio], [tipo]) VALUES (5, N'Frenos', 100, NULL)
INSERT [dbo].[Articulos] ([id], [descripcion], [precio], [tipo]) VALUES (6, N'Frenos', 100, NULL)
INSERT [dbo].[Articulos] ([id], [descripcion], [precio], [tipo]) VALUES (7, N'parches', 10, NULL)
INSERT [dbo].[Articulos] ([id], [descripcion], [precio], [tipo]) VALUES (8, N'parches', 10, NULL)
INSERT [dbo].[Articulos] ([id], [descripcion], [precio], [tipo]) VALUES (9, N'parches', 10, NULL)
INSERT [dbo].[Articulos] ([id], [descripcion], [precio], [tipo]) VALUES (10, N'cadena de moto', 1000, NULL)
INSERT [dbo].[Articulos] ([id], [descripcion], [precio], [tipo]) VALUES (11, N'manubrio', 200, NULL)
SET IDENTITY_INSERT [dbo].[Articulos] OFF
GO
SET IDENTITY_INSERT [dbo].[IdTipo] ON 

INSERT [dbo].[IdTipo] ([id], [nombre]) VALUES (1, N'BICI')
INSERT [dbo].[IdTipo] ([id], [nombre]) VALUES (2, N'MOTO')
INSERT [dbo].[IdTipo] ([id], [nombre]) VALUES (3, N'AUTO')
SET IDENTITY_INSERT [dbo].[IdTipo] OFF
GO
ALTER TABLE [dbo].[Articulos]  WITH CHECK ADD  CONSTRAINT [FK_Articulos_IdTipo] FOREIGN KEY([tipo])
REFERENCES [dbo].[IdTipo] ([id])
GO
ALTER TABLE [dbo].[Articulos] CHECK CONSTRAINT [FK_Articulos_IdTipo]
GO
USE [master]
GO
ALTER DATABASE [ArticulosABM] SET  READ_WRITE 
GO
