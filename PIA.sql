USE [Proyecto_Bar]
GO
/****** Object:  Trigger [InsertLog]    Script Date: 29/04/2019 07:39:51 p. m. ******/
DROP TRIGGER [dbo].[InsertLog]
GO
/****** Object:  Trigger [DeleteLog]    Script Date: 29/04/2019 07:39:51 p. m. ******/
DROP TRIGGER [dbo].[DeleteLog]
GO
/****** Object:  StoredProcedure [dbo].[Ventas1]    Script Date: 29/04/2019 07:39:51 p. m. ******/
DROP PROCEDURE [dbo].[Ventas1]
GO
ALTER TABLE [dbo].[Venta] DROP CONSTRAINT [FK_Venta_Empleado]
GO
ALTER TABLE [dbo].[Tocada] DROP CONSTRAINT [FK_Tocada_Banda]
GO
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [FK_Empleado_Puesto]
GO
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [FK_Empleado_Direccion]
GO
ALTER TABLE [dbo].[Comanda] DROP CONSTRAINT [FK_Comanda_Venta]
GO
ALTER TABLE [dbo].[Comanda] DROP CONSTRAINT [FK_Comanda_Producto]
GO
ALTER TABLE [dbo].[Comanda] DROP CONSTRAINT [FK_Comanda_Mesa]
GO
/****** Object:  View [dbo].[TotalDeVentas]    Script Date: 29/04/2019 07:39:51 p. m. ******/
DROP VIEW [dbo].[TotalDeVentas]
GO
/****** Object:  Table [dbo].[VentaRespaldo2]    Script Date: 29/04/2019 07:39:51 p. m. ******/
DROP TABLE [dbo].[VentaRespaldo2]
GO
/****** Object:  Table [dbo].[VentaRespaldo]    Script Date: 29/04/2019 07:39:51 p. m. ******/
DROP TABLE [dbo].[VentaRespaldo]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 29/04/2019 07:39:51 p. m. ******/
DROP TABLE [dbo].[Venta]
GO
/****** Object:  Table [dbo].[Tocada]    Script Date: 29/04/2019 07:39:51 p. m. ******/
DROP TABLE [dbo].[Tocada]
GO
/****** Object:  Table [dbo].[Puesto]    Script Date: 29/04/2019 07:39:51 p. m. ******/
DROP TABLE [dbo].[Puesto]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 29/04/2019 07:39:51 p. m. ******/
DROP TABLE [dbo].[Producto]
GO
/****** Object:  Table [dbo].[Mesa]    Script Date: 29/04/2019 07:39:51 p. m. ******/
DROP TABLE [dbo].[Mesa]
GO
/****** Object:  Table [dbo].[EmpleadoLog]    Script Date: 29/04/2019 07:39:51 p. m. ******/
DROP TABLE [dbo].[EmpleadoLog]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 29/04/2019 07:39:51 p. m. ******/
DROP TABLE [dbo].[Empleado]
GO
/****** Object:  Table [dbo].[Direccion]    Script Date: 29/04/2019 07:39:51 p. m. ******/
DROP TABLE [dbo].[Direccion]
GO
/****** Object:  Table [dbo].[Comanda]    Script Date: 29/04/2019 07:39:51 p. m. ******/
DROP TABLE [dbo].[Comanda]
GO
/****** Object:  Table [dbo].[Banda]    Script Date: 29/04/2019 07:39:51 p. m. ******/
DROP TABLE [dbo].[Banda]
GO
/****** Object:  UserDefinedFunction [dbo].[BusquedaTelefonoEmpleado]    Script Date: 29/04/2019 07:39:51 p. m. ******/
DROP FUNCTION [dbo].[BusquedaTelefonoEmpleado]
GO
USE [master]
GO
/****** Object:  Database [Proyecto_Bar]    Script Date: 29/04/2019 07:39:51 p. m. ******/
DROP DATABASE [Proyecto_Bar]
GO
/****** Object:  Database [Proyecto_Bar]    Script Date: 29/04/2019 07:39:51 p. m. ******/
CREATE DATABASE [Proyecto_Bar]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Proyecto_Bar', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.RODOLFO\MSSQL\DATA\Proyecto_Bar.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Proyecto_Bar_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.RODOLFO\MSSQL\DATA\Proyecto_Bar_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Proyecto_Bar] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Proyecto_Bar].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Proyecto_Bar] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Proyecto_Bar] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Proyecto_Bar] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Proyecto_Bar] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Proyecto_Bar] SET ARITHABORT OFF 
GO
ALTER DATABASE [Proyecto_Bar] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Proyecto_Bar] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Proyecto_Bar] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Proyecto_Bar] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Proyecto_Bar] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Proyecto_Bar] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Proyecto_Bar] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Proyecto_Bar] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Proyecto_Bar] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Proyecto_Bar] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Proyecto_Bar] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Proyecto_Bar] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Proyecto_Bar] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Proyecto_Bar] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Proyecto_Bar] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Proyecto_Bar] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Proyecto_Bar] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Proyecto_Bar] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Proyecto_Bar] SET  MULTI_USER 
GO
ALTER DATABASE [Proyecto_Bar] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Proyecto_Bar] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Proyecto_Bar] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Proyecto_Bar] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Proyecto_Bar] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Proyecto_Bar]
GO
/****** Object:  UserDefinedFunction [dbo].[BusquedaTelefonoEmpleado]    Script Date: 29/04/2019 07:39:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[BusquedaTelefonoEmpleado](@busEmp varchar(50))
RETURNS varchar(50)
AS
BEGIN
DECLARE @tel varchar(50)
SET @tel = (SELECT telefono
FROM Empleado
WHERE nombreEmpleado LIKE '%' + @busEmp + '%')
return @tel
END
GO
/****** Object:  Table [dbo].[Banda]    Script Date: 29/04/2019 07:39:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banda](
	[idBanda] [int] IDENTITY(1,1) NOT NULL,
	[nombreBanda] [varchar](20) NULL,
	[tipoMusica] [varchar](20) NULL,
	[numIntegrantes] [int] NULL,
	[telefono] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[idBanda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comanda]    Script Date: 29/04/2019 07:39:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comanda](
	[idVenta] [int] NULL,
	[idMesa] [int] NULL,
	[idProducto] [int] NULL,
	[cantidad] [int] NULL,
	[comentario] [varchar](100) NULL,
	[subtotal] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Direccion]    Script Date: 29/04/2019 07:39:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Direccion](
	[idDireccion] [int] IDENTITY(1,1) NOT NULL,
	[calle] [varchar](50) NULL,
	[numero] [int] NULL,
	[colonia] [varchar](50) NULL,
	[CP] [int] NULL,
	[ciudad] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idDireccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 29/04/2019 07:39:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[idEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[nombreEmpleado] [varchar](50) NULL,
	[apPaterno] [varchar](50) NULL,
	[apMaterno] [varchar](50) NULL,
	[sexo] [varchar](10) NULL,
	[telefono] [varchar](15) NULL,
	[fechaNacimiento] [date] NULL,
	[edad]  AS (datediff(year,[fechaNacimiento],getdate())),
	[idDireccion] [int] NULL,
	[idPuesto] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmpleadoLog]    Script Date: 29/04/2019 07:39:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpleadoLog](
	[id] [int] NULL,
	[fecha] [datetime] NULL,
	[accion] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mesa]    Script Date: 29/04/2019 07:39:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mesa](
	[idMesa] [int] IDENTITY(1,1) NOT NULL,
	[numMesa] [int] NULL,
	[cantSillas] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idMesa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 29/04/2019 07:39:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[idProducto] [int] IDENTITY(1,1) NOT NULL,
	[nombreProducto] [varchar](20) NULL,
	[descripcionProducto] [varchar](200) NULL,
	[precioUnitario] [money] NULL,
	[existencia] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Puesto]    Script Date: 29/04/2019 07:39:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Puesto](
	[idPuesto] [int] IDENTITY(1,1) NOT NULL,
	[nombrePuesto] [varchar](50) NULL,
	[descripcionPuesto] [varchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[idPuesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tocada]    Script Date: 29/04/2019 07:39:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tocada](
	[idBanda] [int] NULL,
	[fecha] [datetime] NULL,
	[costo] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 29/04/2019 07:39:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[idVenta] [int] IDENTITY(1,1) NOT NULL,
	[total] [int] NULL,
	[fecha] [datetime] NULL,
	[idEmpleado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VentaRespaldo]    Script Date: 29/04/2019 07:39:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VentaRespaldo](
	[idVenta] [int] IDENTITY(1,1) NOT NULL,
	[total] [int] NULL,
	[fecha] [datetime] NULL,
	[idEmpleado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VentaRespaldo2]    Script Date: 29/04/2019 07:39:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VentaRespaldo2](
	[idVenta] [int] NULL,
	[total] [int] NULL,
	[fecha] [datetime] NULL,
	[idEmpleado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[TotalDeVentas]    Script Date: 29/04/2019 07:39:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[TotalDeVentas] AS
SELECT idEmpleado,COUNT(idVenta) as TotalVentas
FROM Venta
GROUP BY idEmpleado
GO
INSERT [dbo].[Comanda] ([idVenta], [idMesa], [idProducto], [cantidad], [comentario], [subtotal]) VALUES (1, 1, 4, 2, N'', 80)
INSERT [dbo].[Comanda] ([idVenta], [idMesa], [idProducto], [cantidad], [comentario], [subtotal]) VALUES (1, 1, 6, 2, N'', 50)
INSERT [dbo].[Comanda] ([idVenta], [idMesa], [idProducto], [cantidad], [comentario], [subtotal]) VALUES (2, 5, 4, 2, N'', 80)
INSERT [dbo].[Comanda] ([idVenta], [idMesa], [idProducto], [cantidad], [comentario], [subtotal]) VALUES (2, 5, 6, 3, N'', 75)
INSERT [dbo].[Comanda] ([idVenta], [idMesa], [idProducto], [cantidad], [comentario], [subtotal]) VALUES (3, 4, 1, 6, N'', 120)
INSERT [dbo].[Comanda] ([idVenta], [idMesa], [idProducto], [cantidad], [comentario], [subtotal]) VALUES (3, 4, 8, 3, N'', 90)
INSERT [dbo].[Comanda] ([idVenta], [idMesa], [idProducto], [cantidad], [comentario], [subtotal]) VALUES (4, 2, 4, 2, N'', 80)
INSERT [dbo].[Comanda] ([idVenta], [idMesa], [idProducto], [cantidad], [comentario], [subtotal]) VALUES (4, 2, 5, 2, N'', 90)
INSERT [dbo].[Comanda] ([idVenta], [idMesa], [idProducto], [cantidad], [comentario], [subtotal]) VALUES (4, 2, 6, 2, N'', 50)
INSERT [dbo].[Comanda] ([idVenta], [idMesa], [idProducto], [cantidad], [comentario], [subtotal]) VALUES (4, 2, 8, 2, N'', 60)
INSERT [dbo].[Comanda] ([idVenta], [idMesa], [idProducto], [cantidad], [comentario], [subtotal]) VALUES (5, 3, 3, 4, N'', 128)
SET IDENTITY_INSERT [dbo].[Direccion] ON 

INSERT [dbo].[Direccion] ([idDireccion], [calle], [numero], [colonia], [CP], [ciudad]) VALUES (1, N'Neptuno', 1533, N'Paseo de los Andes', 66444, N'San Nicolas de los Garza')
INSERT [dbo].[Direccion] ([idDireccion], [calle], [numero], [colonia], [CP], [ciudad]) VALUES (2, N'Pico de la Malinche', 123, N'Jardines de las Puentes', 66464, N'San Nicolas de los Garza')
INSERT [dbo].[Direccion] ([idDireccion], [calle], [numero], [colonia], [CP], [ciudad]) VALUES (3, N'Guepardo', 521, N'Valle de San Carlos', 66435, N'San Nicolas de los Garza')
INSERT [dbo].[Direccion] ([idDireccion], [calle], [numero], [colonia], [CP], [ciudad]) VALUES (4, N'Vicente Guerrero', 1221, N'Centro', 66455, N'San Nicolas de los Garza')
INSERT [dbo].[Direccion] ([idDireccion], [calle], [numero], [colonia], [CP], [ciudad]) VALUES (5, N'Colina', 331, N'La Enramada', 66433, N'San Nicolas de los Garza')
INSERT [dbo].[Direccion] ([idDireccion], [calle], [numero], [colonia], [CP], [ciudad]) VALUES (6, N'Jordan', 269, N'Tijerina', 64463, N'Monterrey')
INSERT [dbo].[Direccion] ([idDireccion], [calle], [numero], [colonia], [CP], [ciudad]) VALUES (7, N'Nardo', 561, N'Cementos', 64445, N'Monterrey')
INSERT [dbo].[Direccion] ([idDireccion], [calle], [numero], [colonia], [CP], [ciudad]) VALUES (8, N'Jorge Cantu', 501, N'Terminal', 64560, N'Monterrey')
INSERT [dbo].[Direccion] ([idDireccion], [calle], [numero], [colonia], [CP], [ciudad]) VALUES (9, N'Sultepec', 205, N'Mitras Centro', 64460, N'Monterrey')
INSERT [dbo].[Direccion] ([idDireccion], [calle], [numero], [colonia], [CP], [ciudad]) VALUES (10, N'Sta. Rosalia', 525, N'La Purisima', 67160, N'Guadalupe')
INSERT [dbo].[Direccion] ([idDireccion], [calle], [numero], [colonia], [CP], [ciudad]) VALUES (11, N'De la Pilastra', 494, N'Villa de San Miguel', 67110, N'Guadalupe')
INSERT [dbo].[Direccion] ([idDireccion], [calle], [numero], [colonia], [CP], [ciudad]) VALUES (12, N'Del Arbol', 966, N'Monte Real', 66050, N'Escobedo')
SET IDENTITY_INSERT [dbo].[Direccion] OFF
SET IDENTITY_INSERT [dbo].[Empleado] ON 

INSERT [dbo].[Empleado] ([idEmpleado], [nombreEmpleado], [apPaterno], [apMaterno], [sexo], [telefono], [fechaNacimiento], [idDireccion], [idPuesto]) VALUES (1, N'Jose', N'Perales', N'Mendez', N'H', N'83856344', CAST(N'1991-07-03' AS Date), 1, 1)
INSERT [dbo].[Empleado] ([idEmpleado], [nombreEmpleado], [apPaterno], [apMaterno], [sexo], [telefono], [fechaNacimiento], [idDireccion], [idPuesto]) VALUES (2, N'Brandon', N'Diaz', N'Gonzalez', N'H', N'85256334', CAST(N'1999-05-13' AS Date), 2, 1)
INSERT [dbo].[Empleado] ([idEmpleado], [nombreEmpleado], [apPaterno], [apMaterno], [sexo], [telefono], [fechaNacimiento], [idDireccion], [idPuesto]) VALUES (3, N'Ana', N'Moreno', N'Garcia', N'M', N'81906355', CAST(N'1997-08-15' AS Date), 3, 1)
INSERT [dbo].[Empleado] ([idEmpleado], [nombreEmpleado], [apPaterno], [apMaterno], [sexo], [telefono], [fechaNacimiento], [idDireccion], [idPuesto]) VALUES (4, N'Alan', N'Flores', N'Cortes', N'H', N'82906753', CAST(N'1998-02-21' AS Date), 4, 1)
INSERT [dbo].[Empleado] ([idEmpleado], [nombreEmpleado], [apPaterno], [apMaterno], [sexo], [telefono], [fechaNacimiento], [idDireccion], [idPuesto]) VALUES (5, N'Karla', N'Sanchez', N'Guzman', N'M', N'83955721', CAST(N'1995-11-02' AS Date), 5, 1)
INSERT [dbo].[Empleado] ([idEmpleado], [nombreEmpleado], [apPaterno], [apMaterno], [sexo], [telefono], [fechaNacimiento], [idDireccion], [idPuesto]) VALUES (6, N'Javier', N'Hernandez', N'Alvarado', N'H', N'83521191', CAST(N'1996-01-05' AS Date), 6, 2)
INSERT [dbo].[Empleado] ([idEmpleado], [nombreEmpleado], [apPaterno], [apMaterno], [sexo], [telefono], [fechaNacimiento], [idDireccion], [idPuesto]) VALUES (7, N'Daniela', N'Perez', N'Martinez', N'M', N'83002727', CAST(N'1998-05-02' AS Date), 7, 3)
SET IDENTITY_INSERT [dbo].[Empleado] OFF
INSERT [dbo].[EmpleadoLog] ([id], [fecha], [accion]) VALUES (11, CAST(N'2019-04-26T14:24:34.147' AS DateTime), N'Se creo un INSERT')
INSERT [dbo].[EmpleadoLog] ([id], [fecha], [accion]) VALUES (12, CAST(N'2019-04-26T14:25:41.327' AS DateTime), N'Se creo un INSERT')
INSERT [dbo].[EmpleadoLog] ([id], [fecha], [accion]) VALUES (11, CAST(N'2019-04-26T14:28:47.950' AS DateTime), N'Se creo un DELETE')
INSERT [dbo].[EmpleadoLog] ([id], [fecha], [accion]) VALUES (12, CAST(N'2019-04-26T14:28:57.850' AS DateTime), N'Se creo un DELETE')
SET IDENTITY_INSERT [dbo].[Mesa] ON 

INSERT [dbo].[Mesa] ([idMesa], [numMesa], [cantSillas]) VALUES (1, 1, 2)
INSERT [dbo].[Mesa] ([idMesa], [numMesa], [cantSillas]) VALUES (2, 2, 4)
INSERT [dbo].[Mesa] ([idMesa], [numMesa], [cantSillas]) VALUES (3, 3, 4)
INSERT [dbo].[Mesa] ([idMesa], [numMesa], [cantSillas]) VALUES (4, 4, 5)
INSERT [dbo].[Mesa] ([idMesa], [numMesa], [cantSillas]) VALUES (5, 5, 8)
INSERT [dbo].[Mesa] ([idMesa], [numMesa], [cantSillas]) VALUES (6, 6, 8)
INSERT [dbo].[Mesa] ([idMesa], [numMesa], [cantSillas]) VALUES (7, 7, 2)
INSERT [dbo].[Mesa] ([idMesa], [numMesa], [cantSillas]) VALUES (8, 8, 3)
SET IDENTITY_INSERT [dbo].[Mesa] OFF
SET IDENTITY_INSERT [dbo].[Producto] ON 

INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [descripcionProducto], [precioUnitario], [existencia]) VALUES (1, N'Cerveza Tecate', N'Botella de 300ml de cerveza Tecate', 20.0000, 100)
INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [descripcionProducto], [precioUnitario], [existencia]) VALUES (2, N'Mojito', N' ', 30.0000, 50)
INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [descripcionProducto], [precioUnitario], [existencia]) VALUES (3, N'Brandy', N'', 32.0000, 30)
INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [descripcionProducto], [precioUnitario], [existencia]) VALUES (4, N'Hamburguesa', N'Hamburguesa sencilla de carne res', 40.0000, 60)
INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [descripcionProducto], [precioUnitario], [existencia]) VALUES (5, N'Tacos de Bistec', N'Orden de 5 tacos de carnes de res', 45.0000, 20)
INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [descripcionProducto], [precioUnitario], [existencia]) VALUES (6, N'Coca-Cola', N'Vaso de soda sabor cola.', 25.0000, 200)
INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [descripcionProducto], [precioUnitario], [existencia]) VALUES (7, N'Cerveza Corona', N'Botealla de 350 ml de cerveza Corona', 25.0000, 300)
INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [descripcionProducto], [precioUnitario], [existencia]) VALUES (8, N'Piña Colada', N'', 30.0000, 100)
SET IDENTITY_INSERT [dbo].[Producto] OFF
SET IDENTITY_INSERT [dbo].[Puesto] ON 

INSERT [dbo].[Puesto] ([idPuesto], [nombrePuesto], [descripcionPuesto]) VALUES (1, N'Mesero', N'Sirve la comida')
INSERT [dbo].[Puesto] ([idPuesto], [nombrePuesto], [descripcionPuesto]) VALUES (2, N'Cocinero', N'Prepara la comida.')
INSERT [dbo].[Puesto] ([idPuesto], [nombrePuesto], [descripcionPuesto]) VALUES (3, N'Bartender', N'Sirve las bebidas de la barra.')
SET IDENTITY_INSERT [dbo].[Puesto] OFF
SET IDENTITY_INSERT [dbo].[Venta] ON 

INSERT [dbo].[Venta] ([idVenta], [total], [fecha], [idEmpleado]) VALUES (1, 130, CAST(N'2019-04-19T20:52:03.863' AS DateTime), 1)
INSERT [dbo].[Venta] ([idVenta], [total], [fecha], [idEmpleado]) VALUES (2, 155, CAST(N'2019-04-19T20:52:30.020' AS DateTime), 1)
INSERT [dbo].[Venta] ([idVenta], [total], [fecha], [idEmpleado]) VALUES (3, 210, CAST(N'2019-04-19T20:57:22.487' AS DateTime), 1)
INSERT [dbo].[Venta] ([idVenta], [total], [fecha], [idEmpleado]) VALUES (4, 300, CAST(N'2019-04-19T21:01:37.440' AS DateTime), 2)
INSERT [dbo].[Venta] ([idVenta], [total], [fecha], [idEmpleado]) VALUES (5, 128, CAST(N'2019-04-19T21:04:10.710' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[Venta] OFF
SET IDENTITY_INSERT [dbo].[VentaRespaldo] ON 

INSERT [dbo].[VentaRespaldo] ([idVenta], [total], [fecha], [idEmpleado]) VALUES (1, 130, CAST(N'2019-04-19T20:52:03.863' AS DateTime), 1)
INSERT [dbo].[VentaRespaldo] ([idVenta], [total], [fecha], [idEmpleado]) VALUES (2, 155, CAST(N'2019-04-19T20:52:30.020' AS DateTime), 1)
INSERT [dbo].[VentaRespaldo] ([idVenta], [total], [fecha], [idEmpleado]) VALUES (3, 210, CAST(N'2019-04-19T20:57:22.487' AS DateTime), 1)
INSERT [dbo].[VentaRespaldo] ([idVenta], [total], [fecha], [idEmpleado]) VALUES (4, 300, CAST(N'2019-04-19T21:01:37.440' AS DateTime), 2)
INSERT [dbo].[VentaRespaldo] ([idVenta], [total], [fecha], [idEmpleado]) VALUES (5, 128, CAST(N'2019-04-19T21:04:10.710' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[VentaRespaldo] OFF
INSERT [dbo].[VentaRespaldo2] ([idVenta], [total], [fecha], [idEmpleado]) VALUES (1, 130, CAST(N'2019-04-19T20:52:03.863' AS DateTime), 1)
INSERT [dbo].[VentaRespaldo2] ([idVenta], [total], [fecha], [idEmpleado]) VALUES (2, 155, CAST(N'2019-04-19T20:52:30.020' AS DateTime), 1)
INSERT [dbo].[VentaRespaldo2] ([idVenta], [total], [fecha], [idEmpleado]) VALUES (3, 210, CAST(N'2019-04-19T20:57:22.487' AS DateTime), 1)
INSERT [dbo].[VentaRespaldo2] ([idVenta], [total], [fecha], [idEmpleado]) VALUES (4, 300, CAST(N'2019-04-19T21:01:37.440' AS DateTime), 2)
INSERT [dbo].[VentaRespaldo2] ([idVenta], [total], [fecha], [idEmpleado]) VALUES (5, 128, CAST(N'2019-04-19T21:04:10.710' AS DateTime), 2)
INSERT [dbo].[VentaRespaldo2] ([idVenta], [total], [fecha], [idEmpleado]) VALUES (1, 130, CAST(N'2019-04-19T20:52:03.863' AS DateTime), 1)
INSERT [dbo].[VentaRespaldo2] ([idVenta], [total], [fecha], [idEmpleado]) VALUES (2, 155, CAST(N'2019-04-19T20:52:30.020' AS DateTime), 1)
INSERT [dbo].[VentaRespaldo2] ([idVenta], [total], [fecha], [idEmpleado]) VALUES (3, 210, CAST(N'2019-04-19T20:57:22.487' AS DateTime), 1)
INSERT [dbo].[VentaRespaldo2] ([idVenta], [total], [fecha], [idEmpleado]) VALUES (4, 300, CAST(N'2019-04-19T21:01:37.440' AS DateTime), 2)
INSERT [dbo].[VentaRespaldo2] ([idVenta], [total], [fecha], [idEmpleado]) VALUES (5, 128, CAST(N'2019-04-19T21:04:10.710' AS DateTime), 2)
ALTER TABLE [dbo].[Comanda]  WITH CHECK ADD  CONSTRAINT [FK_Comanda_Mesa] FOREIGN KEY([idMesa])
REFERENCES [dbo].[Mesa] ([idMesa])
GO
ALTER TABLE [dbo].[Comanda] CHECK CONSTRAINT [FK_Comanda_Mesa]
GO
ALTER TABLE [dbo].[Comanda]  WITH CHECK ADD  CONSTRAINT [FK_Comanda_Producto] FOREIGN KEY([idProducto])
REFERENCES [dbo].[Producto] ([idProducto])
GO
ALTER TABLE [dbo].[Comanda] CHECK CONSTRAINT [FK_Comanda_Producto]
GO
ALTER TABLE [dbo].[Comanda]  WITH CHECK ADD  CONSTRAINT [FK_Comanda_Venta] FOREIGN KEY([idVenta])
REFERENCES [dbo].[Venta] ([idVenta])
GO
ALTER TABLE [dbo].[Comanda] CHECK CONSTRAINT [FK_Comanda_Venta]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Direccion] FOREIGN KEY([idDireccion])
REFERENCES [dbo].[Direccion] ([idDireccion])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Direccion]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Puesto] FOREIGN KEY([idPuesto])
REFERENCES [dbo].[Puesto] ([idPuesto])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Puesto]
GO
ALTER TABLE [dbo].[Tocada]  WITH CHECK ADD  CONSTRAINT [FK_Tocada_Banda] FOREIGN KEY([idBanda])
REFERENCES [dbo].[Banda] ([idBanda])
GO
ALTER TABLE [dbo].[Tocada] CHECK CONSTRAINT [FK_Tocada_Banda]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Empleado] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[Empleado] ([idEmpleado])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Empleado]
GO
/****** Object:  StoredProcedure [dbo].[Ventas1]    Script Date: 29/04/2019 07:39:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[Ventas1]
AS
SELECT idEmpleado,COUNT(idVenta) as TotalVentas
FROM Venta
GROUP BY idEmpleado
GO
/****** Object:  Trigger [dbo].[DeleteLog]    Script Date: 29/04/2019 07:39:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[DeleteLog]
ON [dbo].[Empleado]
AFTER DELETE
AS
INSERT INTO EmpleadoLog
VALUES ((SELECT TOP 1 deleted.idEmpleado FROM deleted), getDate(),'Se creo un DELETE')
GO
ALTER TABLE [dbo].[Empleado] ENABLE TRIGGER [DeleteLog]
GO
/****** Object:  Trigger [dbo].[InsertLog]    Script Date: 29/04/2019 07:39:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[InsertLog]
ON [dbo].[Empleado]
AFTER INSERT 
AS
INSERT INTO EmpleadoLog
VALUES ((SELECT TOP 1 inserted.idEmpleado FROM inserted),getDate(), 'Se creo un INSERT')
GO
ALTER TABLE [dbo].[Empleado] ENABLE TRIGGER [InsertLog]
GO
USE [master]
GO
ALTER DATABASE [Proyecto_Bar] SET  READ_WRITE 
GO
