USE [BAR5]
GO
ALTER TABLE [dbo].[VentaDetalle] DROP CONSTRAINT [FK_VentaDetalle_Venta]
GO
ALTER TABLE [dbo].[VentaDetalle] DROP CONSTRAINT [FK_VentaDetalle_Alimento]
GO
ALTER TABLE [dbo].[Venta] DROP CONSTRAINT [FK_Venta_Sucursal]
GO
ALTER TABLE [dbo].[Venta] DROP CONSTRAINT [FK_Venta_Empleado]
GO
ALTER TABLE [dbo].[Tocada] DROP CONSTRAINT [FK_Tocada_Sucursal]
GO
ALTER TABLE [dbo].[Tocada] DROP CONSTRAINT [FK_Tocada_Banda]
GO
ALTER TABLE [dbo].[Sucursal] DROP CONSTRAINT [FK_Sucursal_Direccion]
GO
ALTER TABLE [dbo].[ReservacionEmpleado] DROP CONSTRAINT [FK_ReservacionEmpleado_Reservacion]
GO
ALTER TABLE [dbo].[ReservacionEmpleado] DROP CONSTRAINT [FK_ReservacionEmpleado_Empleado]
GO
ALTER TABLE [dbo].[Reservacion] DROP CONSTRAINT [FK_Reservacion_Sucursal]
GO
ALTER TABLE [dbo].[Proveedor] DROP CONSTRAINT [FK_Proveedor_Direccion]
GO
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [FK_Empleado_Sucursal]
GO
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [FK_Empleado_Puesto]
GO
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [FK_Empleado_Direccion]
GO
ALTER TABLE [dbo].[Contrato] DROP CONSTRAINT [FK_Contrato_Empleado1]
GO
ALTER TABLE [dbo].[CompraDetalles] DROP CONSTRAINT [FK_CompraDetalles_Producto]
GO
ALTER TABLE [dbo].[CompraDetalles] DROP CONSTRAINT [FK_CompraDetalles_Compra]
GO
ALTER TABLE [dbo].[Compra] DROP CONSTRAINT [FK_Compra_Sucursal]
GO
ALTER TABLE [dbo].[Compra] DROP CONSTRAINT [FK_Compra_Proveedor]
GO
/****** Object:  Table [dbo].[VentaDetalle]    Script Date: 23/03/2019 01:28:51 p.m. ******/
DROP TABLE [dbo].[VentaDetalle]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 23/03/2019 01:28:51 p.m. ******/
DROP TABLE [dbo].[Venta]
GO
/****** Object:  Table [dbo].[Tocada]    Script Date: 23/03/2019 01:28:51 p.m. ******/
DROP TABLE [dbo].[Tocada]
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 23/03/2019 01:28:51 p.m. ******/
DROP TABLE [dbo].[Sucursal]
GO
/****** Object:  Table [dbo].[ReservacionEmpleado]    Script Date: 23/03/2019 01:28:51 p.m. ******/
DROP TABLE [dbo].[ReservacionEmpleado]
GO
/****** Object:  Table [dbo].[Reservacion]    Script Date: 23/03/2019 01:28:51 p.m. ******/
DROP TABLE [dbo].[Reservacion]
GO
/****** Object:  Table [dbo].[Puesto]    Script Date: 23/03/2019 01:28:51 p.m. ******/
DROP TABLE [dbo].[Puesto]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 23/03/2019 01:28:51 p.m. ******/
DROP TABLE [dbo].[Proveedor]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 23/03/2019 01:28:51 p.m. ******/
DROP TABLE [dbo].[Producto]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 23/03/2019 01:28:51 p.m. ******/
DROP TABLE [dbo].[Empleado]
GO
/****** Object:  Table [dbo].[Direccion]    Script Date: 23/03/2019 01:28:51 p.m. ******/
DROP TABLE [dbo].[Direccion]
GO
/****** Object:  Table [dbo].[Contrato]    Script Date: 23/03/2019 01:28:51 p.m. ******/
DROP TABLE [dbo].[Contrato]
GO
/****** Object:  Table [dbo].[CompraDetalles]    Script Date: 23/03/2019 01:28:51 p.m. ******/
DROP TABLE [dbo].[CompraDetalles]
GO
/****** Object:  Table [dbo].[Compra]    Script Date: 23/03/2019 01:28:51 p.m. ******/
DROP TABLE [dbo].[Compra]
GO
/****** Object:  Table [dbo].[Banda]    Script Date: 23/03/2019 01:28:51 p.m. ******/
DROP TABLE [dbo].[Banda]
GO
/****** Object:  Table [dbo].[Alimento]    Script Date: 23/03/2019 01:28:51 p.m. ******/
DROP TABLE [dbo].[Alimento]
GO
USE [master]
GO
/****** Object:  Database [BAR5]    Script Date: 23/03/2019 01:28:51 p.m. ******/
DROP DATABASE [BAR5]
GO
/****** Object:  Database [BAR5]    Script Date: 23/03/2019 01:28:51 p.m. ******/
CREATE DATABASE [BAR5]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BAR5', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\BAR5.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BAR5_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\BAR5_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BAR5] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BAR5].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BAR5] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BAR5] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BAR5] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BAR5] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BAR5] SET ARITHABORT OFF 
GO
ALTER DATABASE [BAR5] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BAR5] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [BAR5] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BAR5] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BAR5] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BAR5] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BAR5] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BAR5] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BAR5] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BAR5] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BAR5] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BAR5] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BAR5] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BAR5] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BAR5] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BAR5] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BAR5] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BAR5] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BAR5] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BAR5] SET  MULTI_USER 
GO
ALTER DATABASE [BAR5] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BAR5] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BAR5] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BAR5] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [BAR5]
GO
/****** Object:  Table [dbo].[Alimento]    Script Date: 23/03/2019 01:28:51 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Alimento](
	[idAlimento] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[descripcion] [varchar](300) NULL,
	[tipo] [varchar](50) NULL,
	[precioUnitario] [money] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[idAlimento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Banda]    Script Date: 23/03/2019 01:28:51 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Banda](
	[idBanda] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[numIntegrantes] [int] NULL,
	[tipoMusica] [varchar](50) NULL,
 CONSTRAINT [PK_Banda] PRIMARY KEY CLUSTERED 
(
	[idBanda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Compra]    Script Date: 23/03/2019 01:28:51 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compra](
	[idCompra] [int] NOT NULL,
	[diaHora] [datetime] NULL,
	[total] [int] NULL,
	[idSucursal] [int] NULL,
	[idProveedor] [int] NULL,
 CONSTRAINT [PK_Compra] PRIMARY KEY CLUSTERED 
(
	[idCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CompraDetalles]    Script Date: 23/03/2019 01:28:51 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompraDetalles](
	[idCompra] [int] NULL,
	[idProducto] [int] NULL,
	[cantidadProducto] [int] NULL,
	[subtotal] [money] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contrato]    Script Date: 23/03/2019 01:28:51 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contrato](
	[idContrato] [int] NOT NULL,
	[fechaInicio] [date] NULL,
	[fechaTerminar] [date] NULL,
	[idEmpleado] [int] NULL,
 CONSTRAINT [PK_Contrato] PRIMARY KEY CLUSTERED 
(
	[idContrato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Direccion]    Script Date: 23/03/2019 01:28:51 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Direccion](
	[idDireccion] [int] NOT NULL,
	[numero] [int] NULL,
	[calle] [varchar](50) NULL,
	[colonia] [varchar](50) NULL,
	[ciudad] [varchar](50) NULL,
 CONSTRAINT [PK_Direccion] PRIMARY KEY CLUSTERED 
(
	[idDireccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 23/03/2019 01:28:51 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleado](
	[idEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](30) NULL,
	[apPaterno] [varchar](30) NULL,
	[apMaterno] [varchar](30) NULL,
	[telefono] [varchar](30) NULL,
	[fechaNacimiento] [date] NULL,
	[edad]  AS (datediff(year,[fechaNacimiento],getdate())),
	[idPuesto] [int] NULL,
	[idSucursal] [int] NULL,
	[idDireccion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 23/03/2019 01:28:51 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Producto](
	[idProducto] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](30) NULL,
	[descripcion] [varchar](100) NULL,
	[precioUnitarui] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 23/03/2019 01:28:51 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proveedor](
	[idProveedor] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[telefono] [varchar](50) NULL,
	[idDireccion] [int] NULL,
 CONSTRAINT [PK_Proveedor] PRIMARY KEY CLUSTERED 
(
	[idProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Puesto]    Script Date: 23/03/2019 01:28:51 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Puesto](
	[idPuesto] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[descripcionActividad] [varchar](50) NULL,
 CONSTRAINT [PK_Puesto] PRIMARY KEY CLUSTERED 
(
	[idPuesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Reservacion]    Script Date: 23/03/2019 01:28:51 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Reservacion](
	[idReservacion] [int] NOT NULL,
	[idSucursal] [int] NULL,
	[nombre] [varchar](50) NULL,
	[ApPaterno] [varchar](50) NULL,
	[ApMaterno] [varchar](50) NULL,
	[telefono] [int] NULL,
	[diaHora] [datetime] NULL,
	[cantidadPersonas] [int] NULL,
	[costo] [money] NULL,
 CONSTRAINT [PK_Reservacion] PRIMARY KEY CLUSTERED 
(
	[idReservacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ReservacionEmpleado]    Script Date: 23/03/2019 01:28:51 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReservacionEmpleado](
	[idReservacion] [int] NULL,
	[idEmpleado] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 23/03/2019 01:28:51 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sucursal](
	[idSucursal] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[idDireccion] [int] NULL,
 CONSTRAINT [PK_Sucursal] PRIMARY KEY CLUSTERED 
(
	[idSucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tocada]    Script Date: 23/03/2019 01:28:51 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tocada](
	[idBanda] [int] NULL,
	[idSucursal] [int] NULL,
	[fecha] [datetime] NULL,
	[costo] [money] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Venta]    Script Date: 23/03/2019 01:28:51 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[idVenta] [int] NOT NULL,
	[total] [money] NULL,
	[fecha] [datetime] NULL,
	[idSucursal] [int] NULL,
	[idEmpleado] [int] NULL,
 CONSTRAINT [PK_Venta] PRIMARY KEY CLUSTERED 
(
	[idVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VentaDetalle]    Script Date: 23/03/2019 01:28:51 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VentaDetalle](
	[idVenta] [int] NULL,
	[idAlimento] [int] NULL,
	[cantidadAlimento] [int] NULL,
	[subtotal] [int] NULL
) ON [PRIMARY]

GO
INSERT [dbo].[Alimento] ([idAlimento], [Nombre], [descripcion], [tipo], [precioUnitario]) VALUES (1, N'Nachos', N'Plato de nachos con chile jalapeño, queso, frijoles y salsa.', N'Botana', 22.0000)
INSERT [dbo].[Alimento] ([idAlimento], [Nombre], [descripcion], [tipo], [precioUnitario]) VALUES (2, N'Coca-cola', N'Vaso con bebida sabor cola.', N'Bebida', 12.0000)
INSERT [dbo].[Alimento] ([idAlimento], [Nombre], [descripcion], [tipo], [precioUnitario]) VALUES (3, N'Cerveza', N'Tarro con cerveza.', N'Bebida', 30.0000)
INSERT [dbo].[Alimento] ([idAlimento], [Nombre], [descripcion], [tipo], [precioUnitario]) VALUES (4, N'Tacos de trompo', N'Tacos con carne de puerco.', N'Comida', 48.0000)
INSERT [dbo].[Alimento] ([idAlimento], [Nombre], [descripcion], [tipo], [precioUnitario]) VALUES (5, N'Hamburguesa', N'hamburguesa con queso, tomate, lechuga, catsup, mostaza y mayonesa', N'Comida', 45.0000)
INSERT [dbo].[Alimento] ([idAlimento], [Nombre], [descripcion], [tipo], [precioUnitario]) VALUES (6, N'Limonada', N'Agua sabor limon', N'Bebida', 12.0000)
INSERT [dbo].[Alimento] ([idAlimento], [Nombre], [descripcion], [tipo], [precioUnitario]) VALUES (7, N'Tacos de bistec', N'Tacos de carne asada, lleva salsa, limon, cebolla y cilantro.', N'Comida', 42.0000)
INSERT [dbo].[Alimento] ([idAlimento], [Nombre], [descripcion], [tipo], [precioUnitario]) VALUES (8, N'Bistec a la mexicana', N'Bistec con cebolla, arroz y frijoles.', N'Comida', 72.0000)
INSERT [dbo].[Alimento] ([idAlimento], [Nombre], [descripcion], [tipo], [precioUnitario]) VALUES (9, N'Huevos rancheros', N'Huevos estrellados con salsa y tortillas', N'Almuerzo', 49.0000)
INSERT [dbo].[Contrato] ([idContrato], [fechaInicio], [fechaTerminar], [idEmpleado]) VALUES (1, CAST(0x733F0B00 AS Date), CAST(0x2B400B00 AS Date), 1)
INSERT [dbo].[Contrato] ([idContrato], [fechaInicio], [fechaTerminar], [idEmpleado]) VALUES (2, CAST(0x773F0B00 AS Date), CAST(0x2F400B00 AS Date), 2)
INSERT [dbo].[Contrato] ([idContrato], [fechaInicio], [fechaTerminar], [idEmpleado]) VALUES (3, CAST(0x963F0B00 AS Date), CAST(0xF13F0B00 AS Date), 3)
INSERT [dbo].[Contrato] ([idContrato], [fechaInicio], [fechaTerminar], [idEmpleado]) VALUES (4, CAST(0x9F3F0B00 AS Date), CAST(0x0D410B00 AS Date), 4)
INSERT [dbo].[Contrato] ([idContrato], [fechaInicio], [fechaTerminar], [idEmpleado]) VALUES (5, CAST(0x9B3F0B00 AS Date), CAST(0x53400B00 AS Date), 5)
INSERT [dbo].[Contrato] ([idContrato], [fechaInicio], [fechaTerminar], [idEmpleado]) VALUES (6, CAST(0x9B3F0B00 AS Date), CAST(0x09410B00 AS Date), 6)
INSERT [dbo].[Contrato] ([idContrato], [fechaInicio], [fechaTerminar], [idEmpleado]) VALUES (7, CAST(0xBE3F0B00 AS Date), CAST(0x1A400B00 AS Date), 7)
INSERT [dbo].[Contrato] ([idContrato], [fechaInicio], [fechaTerminar], [idEmpleado]) VALUES (8, CAST(0xBE3F0B00 AS Date), CAST(0xF5420B00 AS Date), 8)
INSERT [dbo].[Direccion] ([idDireccion], [numero], [calle], [colonia], [ciudad]) VALUES (1, 1655, N'Sierra Mixteca', N'Las Puentes', N'San Nicolas de los Garza')
INSERT [dbo].[Direccion] ([idDireccion], [numero], [calle], [colonia], [ciudad]) VALUES (2, 575, N'Diego Diaz de Berlanga', N'Anahuac', N'San Nicolas de los Garza')
INSERT [dbo].[Direccion] ([idDireccion], [numero], [calle], [colonia], [ciudad]) VALUES (3, 139, N'Aramberri', N'Centro', N'Monterrey')
INSERT [dbo].[Direccion] ([idDireccion], [numero], [calle], [colonia], [ciudad]) VALUES (4, 114, N'Rio Amazonas', N'Del Valle', N'San Pedro Garza Garcia')
INSERT [dbo].[Direccion] ([idDireccion], [numero], [calle], [colonia], [ciudad]) VALUES (5, 506, N'General Bernardo Reyes', N'Centro', N'San Nicolas de los Garza')
INSERT [dbo].[Direccion] ([idDireccion], [numero], [calle], [colonia], [ciudad]) VALUES (6, 1844, N'Simon Bolivar', N'Mitras Centro', N'Monterrey')
INSERT [dbo].[Direccion] ([idDireccion], [numero], [calle], [colonia], [ciudad]) VALUES (7, 4425, N'Av. Linda Vista', N'Linda Vista', N'Monterrey')
INSERT [dbo].[Direccion] ([idDireccion], [numero], [calle], [colonia], [ciudad]) VALUES (8, 402, N'Calle Andres G. Sada', N'Del Vidrio', N'Monterrey')
INSERT [dbo].[Direccion] ([idDireccion], [numero], [calle], [colonia], [ciudad]) VALUES (9, 735, N'Mariano Matamaros', N'Centro', N'San Nicolas de los Garza')
INSERT [dbo].[Direccion] ([idDireccion], [numero], [calle], [colonia], [ciudad]) VALUES (10, 1233, N'Zacatecas', N'Cañada Blanca', N'Guadalupe')
INSERT [dbo].[Direccion] ([idDireccion], [numero], [calle], [colonia], [ciudad]) VALUES (11, 643, N'Siempreviva', N'Los Reales', N'San Nicolas de los Garza')
INSERT [dbo].[Direccion] ([idDireccion], [numero], [calle], [colonia], [ciudad]) VALUES (12, 1453, N'Los Fresnos', N'Escobedo Residencial', N'Escobedo')
INSERT [dbo].[Direccion] ([idDireccion], [numero], [calle], [colonia], [ciudad]) VALUES (13, 245, N'Brezo', N'Valle Soleado', N'Apodaca')
INSERT [dbo].[Direccion] ([idDireccion], [numero], [calle], [colonia], [ciudad]) VALUES (14, 105, N'Via Savotino', N'Fuentes del Valle', N'San Pedo Garza Garcia')
INSERT [dbo].[Direccion] ([idDireccion], [numero], [calle], [colonia], [ciudad]) VALUES (15, 522, N'Benito Juarez', N'Vesubio', N'Monterrey')
INSERT [dbo].[Direccion] ([idDireccion], [numero], [calle], [colonia], [ciudad]) VALUES (16, 603, N'Cedral', N'Mitras Centro', N'Monterrey')
INSERT [dbo].[Direccion] ([idDireccion], [numero], [calle], [colonia], [ciudad]) VALUES (17, 656, N'Octavio Paz', N'Alta Vista Sur', N'Monterrey')
INSERT [dbo].[Direccion] ([idDireccion], [numero], [calle], [colonia], [ciudad]) VALUES (18, 126, N'Via Appia', N'Fuentes del Valle', N'Monterrey')
INSERT [dbo].[Direccion] ([idDireccion], [numero], [calle], [colonia], [ciudad]) VALUES (19, 521, N'Montes de Leon', N'Las Puentes', N'San Nicolas de los Garza')
INSERT [dbo].[Direccion] ([idDireccion], [numero], [calle], [colonia], [ciudad]) VALUES (20, 135, N'Costs Azul', N'Las Palmas', N'San Nicolas de los Garza')
INSERT [dbo].[Direccion] ([idDireccion], [numero], [calle], [colonia], [ciudad]) VALUES (21, 135, N'Costa Azul', N'Las Palmas', N'San Nicolas de los Garza')
SET IDENTITY_INSERT [dbo].[Empleado] ON 

INSERT [dbo].[Empleado] ([idEmpleado], [nombre], [apPaterno], [apMaterno], [telefono], [fechaNacimiento], [idPuesto], [idSucursal], [idDireccion]) VALUES (1, N'Juan', N'Perales', N'Gonzalez', N'83952354', CAST(0x241D0B00 AS Date), 1, 1, 1)
INSERT [dbo].[Empleado] ([idEmpleado], [nombre], [apPaterno], [apMaterno], [telefono], [fechaNacimiento], [idPuesto], [idSucursal], [idDireccion]) VALUES (2, N'Ana', N'Garza', N'Garza', N'83615121', CAST(0x0B1F0B00 AS Date), 1, 1, 2)
INSERT [dbo].[Empleado] ([idEmpleado], [nombre], [apPaterno], [apMaterno], [telefono], [fechaNacimiento], [idPuesto], [idSucursal], [idDireccion]) VALUES (3, N'Laura', N'Lopez', N'Cantu', N'83215525', CAST(0x431B0B00 AS Date), 2, 1, 8)
INSERT [dbo].[Empleado] ([idEmpleado], [nombre], [apPaterno], [apMaterno], [telefono], [fechaNacimiento], [idPuesto], [idSucursal], [idDireccion]) VALUES (4, N'Carmen', N'Lozano', N'Perez', N'83225522', CAST(0x5B250B00 AS Date), 2, 2, 9)
INSERT [dbo].[Empleado] ([idEmpleado], [nombre], [apPaterno], [apMaterno], [telefono], [fechaNacimiento], [idPuesto], [idSucursal], [idDireccion]) VALUES (5, N'Roberto', N'Almaguer', N'Perez', N'83026312', CAST(0xA6260B00 AS Date), 2, 1, 10)
INSERT [dbo].[Empleado] ([idEmpleado], [nombre], [apPaterno], [apMaterno], [telefono], [fechaNacimiento], [idPuesto], [idSucursal], [idDireccion]) VALUES (6, N'Luis', N'Jimenez', N'Sierra', N'83022311', CAST(0x7A1B0B00 AS Date), 1, 2, 11)
INSERT [dbo].[Empleado] ([idEmpleado], [nombre], [apPaterno], [apMaterno], [telefono], [fechaNacimiento], [idPuesto], [idSucursal], [idDireccion]) VALUES (7, N'Lorenzo', N'Larios', N'Chico', N'83051551', CAST(0xE01A0B00 AS Date), 2, 3, 12)
INSERT [dbo].[Empleado] ([idEmpleado], [nombre], [apPaterno], [apMaterno], [telefono], [fechaNacimiento], [idPuesto], [idSucursal], [idDireccion]) VALUES (8, N'Maria', N'Leal', N'Zuñiga', N'83051551', CAST(0x1A190B00 AS Date), 2, 3, 13)
INSERT [dbo].[Empleado] ([idEmpleado], [nombre], [apPaterno], [apMaterno], [telefono], [fechaNacimiento], [idPuesto], [idSucursal], [idDireccion]) VALUES (9, N'Francisca', N'Ruiz', N'Manrique', N'83021612', CAST(0x1A190B00 AS Date), 2, 3, 14)
SET IDENTITY_INSERT [dbo].[Empleado] OFF
SET IDENTITY_INSERT [dbo].[Producto] ON 

INSERT [dbo].[Producto] ([idProducto], [nombre], [descripcion], [precioUnitarui]) VALUES (1, N'Cerveza', N'Precio por litro', 50.0000)
INSERT [dbo].[Producto] ([idProducto], [nombre], [descripcion], [precioUnitarui]) VALUES (2, N'Tomate', N'Precio por kg', 2.0000)
INSERT [dbo].[Producto] ([idProducto], [nombre], [descripcion], [precioUnitarui]) VALUES (3, N'Pan de hamburguesa', N'Precio por kg', 20.0000)
INSERT [dbo].[Producto] ([idProducto], [nombre], [descripcion], [precioUnitarui]) VALUES (4, N'Bolsa de nachos', N'Precio por bolsa', 25.0000)
INSERT [dbo].[Producto] ([idProducto], [nombre], [descripcion], [precioUnitarui]) VALUES (5, N'Chiles Jalapeños', N'Precio por litro', 24.0000)
INSERT [dbo].[Producto] ([idProducto], [nombre], [descripcion], [precioUnitarui]) VALUES (6, N'Tortillas de maiz', N'Precio por kg', 10.0000)
INSERT [dbo].[Producto] ([idProducto], [nombre], [descripcion], [precioUnitarui]) VALUES (7, N'Coca-cola', N'Precio por litro', 15.0000)
INSERT [dbo].[Producto] ([idProducto], [nombre], [descripcion], [precioUnitarui]) VALUES (8, N'Limon', N'Precio por kg', 19.0000)
INSERT [dbo].[Producto] ([idProducto], [nombre], [descripcion], [precioUnitarui]) VALUES (9, N'Filete de res', N'Precio por kg', 32.0000)
INSERT [dbo].[Producto] ([idProducto], [nombre], [descripcion], [precioUnitarui]) VALUES (10, N'Tortilla pequeña', N'Precio por kg', 10.0000)
SET IDENTITY_INSERT [dbo].[Producto] OFF
INSERT [dbo].[Puesto] ([idPuesto], [nombre], [descripcionActividad]) VALUES (1, N'Mesero', N'Sirve los alimentos.')
INSERT [dbo].[Puesto] ([idPuesto], [nombre], [descripcionActividad]) VALUES (2, N'Cocinero', N'Prepara los alimentos.')
INSERT [dbo].[Puesto] ([idPuesto], [nombre], [descripcionActividad]) VALUES (3, N'Bartender', N'Prepara y sirve las bebidas.')
INSERT [dbo].[Puesto] ([idPuesto], [nombre], [descripcionActividad]) VALUES (4, N'Gerente', N'Administra y esta a cargo de la sucursal')
INSERT [dbo].[Puesto] ([idPuesto], [nombre], [descripcionActividad]) VALUES (5, N'Guardia', N'Esta a cargo de la seguridad fisica del lugar.')
INSERT [dbo].[Puesto] ([idPuesto], [nombre], [descripcionActividad]) VALUES (6, N'Cajero', N'Encargado de recibir los pagos.')
INSERT [dbo].[Puesto] ([idPuesto], [nombre], [descripcionActividad]) VALUES (7, N'Limpieza', N'Encargado da la limpieza del lugar.')
INSERT [dbo].[Sucursal] ([idSucursal], [Nombre], [idDireccion]) VALUES (1, N'Centro', 3)
INSERT [dbo].[Sucursal] ([idSucursal], [Nombre], [idDireccion]) VALUES (2, N'Del Valle', 4)
INSERT [dbo].[Sucursal] ([idSucursal], [Nombre], [idDireccion]) VALUES (3, N'San Nicolas', 5)
INSERT [dbo].[Sucursal] ([idSucursal], [Nombre], [idDireccion]) VALUES (4, N'Mitras', 6)
INSERT [dbo].[Sucursal] ([idSucursal], [Nombre], [idDireccion]) VALUES (5, N'Linda Vista', 7)
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK_Compra_Proveedor] FOREIGN KEY([idProveedor])
REFERENCES [dbo].[Proveedor] ([idProveedor])
GO
ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK_Compra_Proveedor]
GO
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK_Compra_Sucursal] FOREIGN KEY([idSucursal])
REFERENCES [dbo].[Sucursal] ([idSucursal])
GO
ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK_Compra_Sucursal]
GO
ALTER TABLE [dbo].[CompraDetalles]  WITH CHECK ADD  CONSTRAINT [FK_CompraDetalles_Compra] FOREIGN KEY([idCompra])
REFERENCES [dbo].[Compra] ([idCompra])
GO
ALTER TABLE [dbo].[CompraDetalles] CHECK CONSTRAINT [FK_CompraDetalles_Compra]
GO
ALTER TABLE [dbo].[CompraDetalles]  WITH CHECK ADD  CONSTRAINT [FK_CompraDetalles_Producto] FOREIGN KEY([idProducto])
REFERENCES [dbo].[Producto] ([idProducto])
GO
ALTER TABLE [dbo].[CompraDetalles] CHECK CONSTRAINT [FK_CompraDetalles_Producto]
GO
ALTER TABLE [dbo].[Contrato]  WITH CHECK ADD  CONSTRAINT [FK_Contrato_Empleado1] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[Empleado] ([idEmpleado])
GO
ALTER TABLE [dbo].[Contrato] CHECK CONSTRAINT [FK_Contrato_Empleado1]
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
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Sucursal] FOREIGN KEY([idSucursal])
REFERENCES [dbo].[Sucursal] ([idSucursal])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Sucursal]
GO
ALTER TABLE [dbo].[Proveedor]  WITH CHECK ADD  CONSTRAINT [FK_Proveedor_Direccion] FOREIGN KEY([idDireccion])
REFERENCES [dbo].[Direccion] ([idDireccion])
GO
ALTER TABLE [dbo].[Proveedor] CHECK CONSTRAINT [FK_Proveedor_Direccion]
GO
ALTER TABLE [dbo].[Reservacion]  WITH CHECK ADD  CONSTRAINT [FK_Reservacion_Sucursal] FOREIGN KEY([idSucursal])
REFERENCES [dbo].[Sucursal] ([idSucursal])
GO
ALTER TABLE [dbo].[Reservacion] CHECK CONSTRAINT [FK_Reservacion_Sucursal]
GO
ALTER TABLE [dbo].[ReservacionEmpleado]  WITH CHECK ADD  CONSTRAINT [FK_ReservacionEmpleado_Empleado] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[Empleado] ([idEmpleado])
GO
ALTER TABLE [dbo].[ReservacionEmpleado] CHECK CONSTRAINT [FK_ReservacionEmpleado_Empleado]
GO
ALTER TABLE [dbo].[ReservacionEmpleado]  WITH CHECK ADD  CONSTRAINT [FK_ReservacionEmpleado_Reservacion] FOREIGN KEY([idReservacion])
REFERENCES [dbo].[Reservacion] ([idReservacion])
GO
ALTER TABLE [dbo].[ReservacionEmpleado] CHECK CONSTRAINT [FK_ReservacionEmpleado_Reservacion]
GO
ALTER TABLE [dbo].[Sucursal]  WITH CHECK ADD  CONSTRAINT [FK_Sucursal_Direccion] FOREIGN KEY([idDireccion])
REFERENCES [dbo].[Direccion] ([idDireccion])
GO
ALTER TABLE [dbo].[Sucursal] CHECK CONSTRAINT [FK_Sucursal_Direccion]
GO
ALTER TABLE [dbo].[Tocada]  WITH CHECK ADD  CONSTRAINT [FK_Tocada_Banda] FOREIGN KEY([idBanda])
REFERENCES [dbo].[Banda] ([idBanda])
GO
ALTER TABLE [dbo].[Tocada] CHECK CONSTRAINT [FK_Tocada_Banda]
GO
ALTER TABLE [dbo].[Tocada]  WITH CHECK ADD  CONSTRAINT [FK_Tocada_Sucursal] FOREIGN KEY([idSucursal])
REFERENCES [dbo].[Sucursal] ([idSucursal])
GO
ALTER TABLE [dbo].[Tocada] CHECK CONSTRAINT [FK_Tocada_Sucursal]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Empleado] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[Empleado] ([idEmpleado])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Empleado]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Sucursal] FOREIGN KEY([idSucursal])
REFERENCES [dbo].[Sucursal] ([idSucursal])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Sucursal]
GO
ALTER TABLE [dbo].[VentaDetalle]  WITH CHECK ADD  CONSTRAINT [FK_VentaDetalle_Alimento] FOREIGN KEY([idAlimento])
REFERENCES [dbo].[Alimento] ([idAlimento])
GO
ALTER TABLE [dbo].[VentaDetalle] CHECK CONSTRAINT [FK_VentaDetalle_Alimento]
GO
ALTER TABLE [dbo].[VentaDetalle]  WITH CHECK ADD  CONSTRAINT [FK_VentaDetalle_Venta] FOREIGN KEY([idVenta])
REFERENCES [dbo].[Venta] ([idVenta])
GO
ALTER TABLE [dbo].[VentaDetalle] CHECK CONSTRAINT [FK_VentaDetalle_Venta]
GO
USE [master]
GO
ALTER DATABASE [BAR5] SET  READ_WRITE 
GO
