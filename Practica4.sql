USE [BAR]
GO
ALTER TABLE [dbo].[VentaDetalle] DROP CONSTRAINT [FK_VentaDetalle_Venta]
GO
ALTER TABLE [dbo].[VentaDetalle] DROP CONSTRAINT [FK_VentaDetalle_Product]
GO
ALTER TABLE [dbo].[Venta] DROP CONSTRAINT [FK_Venta_Sucursal]
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
ALTER TABLE [dbo].[CompraDetalles] DROP CONSTRAINT [FK_CompraDetalles_Producto_]
GO
ALTER TABLE [dbo].[CompraDetalles] DROP CONSTRAINT [FK_CompraDetalles_Compra]
GO
ALTER TABLE [dbo].[Compra] DROP CONSTRAINT [FK_Compra_Sucursal]
GO
ALTER TABLE [dbo].[Compra] DROP CONSTRAINT [FK_Compra_Proveedor]
GO
/****** Object:  Table [dbo].[VentaDetalle]    Script Date: 09/03/2019 01:41:38 p.m. ******/
DROP TABLE [dbo].[VentaDetalle]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 09/03/2019 01:41:38 p.m. ******/
DROP TABLE [dbo].[Venta]
GO
/****** Object:  Table [dbo].[Tocada]    Script Date: 09/03/2019 01:41:38 p.m. ******/
DROP TABLE [dbo].[Tocada]
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 09/03/2019 01:41:38 p.m. ******/
DROP TABLE [dbo].[Sucursal]
GO
/****** Object:  Table [dbo].[ReservacionEmpleado]    Script Date: 09/03/2019 01:41:38 p.m. ******/
DROP TABLE [dbo].[ReservacionEmpleado]
GO
/****** Object:  Table [dbo].[Reservacion]    Script Date: 09/03/2019 01:41:38 p.m. ******/
DROP TABLE [dbo].[Reservacion]
GO
/****** Object:  Table [dbo].[Puesto]    Script Date: 09/03/2019 01:41:38 p.m. ******/
DROP TABLE [dbo].[Puesto]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 09/03/2019 01:41:38 p.m. ******/
DROP TABLE [dbo].[Proveedor]
GO
/****** Object:  Table [dbo].[Producto_]    Script Date: 09/03/2019 01:41:38 p.m. ******/
DROP TABLE [dbo].[Producto_]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 09/03/2019 01:41:38 p.m. ******/
DROP TABLE [dbo].[Empleado]
GO
/****** Object:  Table [dbo].[Direccion]    Script Date: 09/03/2019 01:41:38 p.m. ******/
DROP TABLE [dbo].[Direccion]
GO
/****** Object:  Table [dbo].[CompraDetalles]    Script Date: 09/03/2019 01:41:38 p.m. ******/
DROP TABLE [dbo].[CompraDetalles]
GO
/****** Object:  Table [dbo].[Compra]    Script Date: 09/03/2019 01:41:38 p.m. ******/
DROP TABLE [dbo].[Compra]
GO
/****** Object:  Table [dbo].[Banda]    Script Date: 09/03/2019 01:41:38 p.m. ******/
DROP TABLE [dbo].[Banda]
GO
/****** Object:  Table [dbo].[Alimento]    Script Date: 09/03/2019 01:41:38 p.m. ******/
DROP TABLE [dbo].[Alimento]
GO
USE [master]
GO
/****** Object:  Database [BAR]    Script Date: 09/03/2019 01:41:38 p.m. ******/
DROP DATABASE [BAR]
GO
/****** Object:  Database [BAR]    Script Date: 09/03/2019 01:41:38 p.m. ******/
CREATE DATABASE [BAR]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BAR', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\BAR.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BAR_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\BAR_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BAR] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BAR].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BAR] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BAR] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BAR] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BAR] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BAR] SET ARITHABORT OFF 
GO
ALTER DATABASE [BAR] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BAR] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [BAR] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BAR] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BAR] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BAR] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BAR] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BAR] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BAR] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BAR] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BAR] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BAR] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BAR] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BAR] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BAR] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BAR] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BAR] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BAR] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BAR] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BAR] SET  MULTI_USER 
GO
ALTER DATABASE [BAR] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BAR] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BAR] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BAR] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [BAR]
GO
/****** Object:  Table [dbo].[Alimento]    Script Date: 09/03/2019 01:41:38 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Alimento](
	[idAlimento] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[descripcion] [varchar](50) NULL,
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
/****** Object:  Table [dbo].[Banda]    Script Date: 09/03/2019 01:41:38 p.m. ******/
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
/****** Object:  Table [dbo].[Compra]    Script Date: 09/03/2019 01:41:38 p.m. ******/
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
/****** Object:  Table [dbo].[CompraDetalles]    Script Date: 09/03/2019 01:41:38 p.m. ******/
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
/****** Object:  Table [dbo].[Direccion]    Script Date: 09/03/2019 01:41:38 p.m. ******/
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
/****** Object:  Table [dbo].[Empleado]    Script Date: 09/03/2019 01:41:38 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleado](
	[idEmpleado] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[ApPaterno] [varchar](50) NULL,
	[ApMaterno] [varchar](50) NULL,
	[Telefono] [int] NULL,
	[idSucursal] [int] NULL,
	[fechaNacimiento] [date] NULL,
	[edad] [int] NULL,
	[idPuesto] [int] NULL,
	[idDireccion] [int] NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[idEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Producto_]    Script Date: 09/03/2019 01:41:38 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Producto_](
	[idProducto] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[descripcion] [varchar](50) NULL,
	[precioUnitario] [money] NULL,
 CONSTRAINT [PK_Producto_] PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 09/03/2019 01:41:38 p.m. ******/
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
/****** Object:  Table [dbo].[Puesto]    Script Date: 09/03/2019 01:41:38 p.m. ******/
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
/****** Object:  Table [dbo].[Reservacion]    Script Date: 09/03/2019 01:41:38 p.m. ******/
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
/****** Object:  Table [dbo].[ReservacionEmpleado]    Script Date: 09/03/2019 01:41:38 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReservacionEmpleado](
	[idReservacion] [int] NULL,
	[idEmpleado] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 09/03/2019 01:41:38 p.m. ******/
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
/****** Object:  Table [dbo].[Tocada]    Script Date: 09/03/2019 01:41:38 p.m. ******/
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
/****** Object:  Table [dbo].[Venta]    Script Date: 09/03/2019 01:41:38 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[idVenta] [int] NOT NULL,
	[total] [money] NULL,
	[fecha] [datetime] NULL,
	[idSucursal] [int] NULL,
 CONSTRAINT [PK_Venta] PRIMARY KEY CLUSTERED 
(
	[idVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VentaDetalle]    Script Date: 09/03/2019 01:41:38 p.m. ******/
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
ALTER TABLE [dbo].[CompraDetalles]  WITH CHECK ADD  CONSTRAINT [FK_CompraDetalles_Producto_] FOREIGN KEY([idProducto])
REFERENCES [dbo].[Producto_] ([idProducto])
GO
ALTER TABLE [dbo].[CompraDetalles] CHECK CONSTRAINT [FK_CompraDetalles_Producto_]
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
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Sucursal] FOREIGN KEY([idSucursal])
REFERENCES [dbo].[Sucursal] ([idSucursal])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Sucursal]
GO
ALTER TABLE [dbo].[VentaDetalle]  WITH CHECK ADD  CONSTRAINT [FK_VentaDetalle_Product] FOREIGN KEY([idAlimento])
REFERENCES [dbo].[Alimento] ([idAlimento])
GO
ALTER TABLE [dbo].[VentaDetalle] CHECK CONSTRAINT [FK_VentaDetalle_Product]
GO
ALTER TABLE [dbo].[VentaDetalle]  WITH CHECK ADD  CONSTRAINT [FK_VentaDetalle_Venta] FOREIGN KEY([idVenta])
REFERENCES [dbo].[Venta] ([idVenta])
GO
ALTER TABLE [dbo].[VentaDetalle] CHECK CONSTRAINT [FK_VentaDetalle_Venta]
GO
USE [master]
GO
ALTER DATABASE [BAR] SET  READ_WRITE 
GO
