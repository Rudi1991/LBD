USE [BAR2]
GO
/****** Object:  ForeignKey [FK_Sucursal_Direccion]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[Sucursal] DROP CONSTRAINT [FK_Sucursal_Direccion]
GO
/****** Object:  ForeignKey [FK_Proveedor_Direccion]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[Proveedor] DROP CONSTRAINT [FK_Proveedor_Direccion]
GO
/****** Object:  ForeignKey [FK_Empleado_Direccion]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [FK_Empleado_Direccion]
GO
/****** Object:  ForeignKey [FK_Empleado_Puesto]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [FK_Empleado_Puesto]
GO
/****** Object:  ForeignKey [FK_Empleado_Sucursal]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [FK_Empleado_Sucursal]
GO
/****** Object:  ForeignKey [FK_Reservacion_Sucursal]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[Reservacion] DROP CONSTRAINT [FK_Reservacion_Sucursal]
GO
/****** Object:  ForeignKey [FK_Compra_Proveedor]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[Compra] DROP CONSTRAINT [FK_Compra_Proveedor]
GO
/****** Object:  ForeignKey [FK_Compra_Sucursal]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[Compra] DROP CONSTRAINT [FK_Compra_Sucursal]
GO
/****** Object:  ForeignKey [FK_Venta_Sucursal]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[Venta] DROP CONSTRAINT [FK_Venta_Sucursal]
GO
/****** Object:  ForeignKey [FK_Tocada_Banda]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[Tocada] DROP CONSTRAINT [FK_Tocada_Banda]
GO
/****** Object:  ForeignKey [FK_Tocada_Sucursal]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[Tocada] DROP CONSTRAINT [FK_Tocada_Sucursal]
GO
/****** Object:  ForeignKey [FK_VentaDetalle_Product]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[VentaDetalle] DROP CONSTRAINT [FK_VentaDetalle_Product]
GO
/****** Object:  ForeignKey [FK_VentaDetalle_Venta]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[VentaDetalle] DROP CONSTRAINT [FK_VentaDetalle_Venta]
GO
/****** Object:  ForeignKey [FK_ReservacionEmpleado_Empleado]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[ReservacionEmpleado] DROP CONSTRAINT [FK_ReservacionEmpleado_Empleado]
GO
/****** Object:  ForeignKey [FK_ReservacionEmpleado_Reservacion]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[ReservacionEmpleado] DROP CONSTRAINT [FK_ReservacionEmpleado_Reservacion]
GO
/****** Object:  ForeignKey [FK_Contrato_Empleado]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[Contrato] DROP CONSTRAINT [FK_Contrato_Empleado]
GO
/****** Object:  ForeignKey [FK_CompraDetalles_Compra]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[CompraDetalles] DROP CONSTRAINT [FK_CompraDetalles_Compra]
GO
/****** Object:  ForeignKey [FK_CompraDetalles_Producto_]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[CompraDetalles] DROP CONSTRAINT [FK_CompraDetalles_Producto_]
GO
/****** Object:  Table [dbo].[CompraDetalles]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[CompraDetalles] DROP CONSTRAINT [FK_CompraDetalles_Compra]
GO
ALTER TABLE [dbo].[CompraDetalles] DROP CONSTRAINT [FK_CompraDetalles_Producto_]
GO
DROP TABLE [dbo].[CompraDetalles]
GO
/****** Object:  Table [dbo].[Contrato]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[Contrato] DROP CONSTRAINT [FK_Contrato_Empleado]
GO
DROP TABLE [dbo].[Contrato]
GO
/****** Object:  Table [dbo].[ReservacionEmpleado]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[ReservacionEmpleado] DROP CONSTRAINT [FK_ReservacionEmpleado_Empleado]
GO
ALTER TABLE [dbo].[ReservacionEmpleado] DROP CONSTRAINT [FK_ReservacionEmpleado_Reservacion]
GO
DROP TABLE [dbo].[ReservacionEmpleado]
GO
/****** Object:  Table [dbo].[VentaDetalle]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[VentaDetalle] DROP CONSTRAINT [FK_VentaDetalle_Product]
GO
ALTER TABLE [dbo].[VentaDetalle] DROP CONSTRAINT [FK_VentaDetalle_Venta]
GO
DROP TABLE [dbo].[VentaDetalle]
GO
/****** Object:  Table [dbo].[Tocada]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[Tocada] DROP CONSTRAINT [FK_Tocada_Banda]
GO
ALTER TABLE [dbo].[Tocada] DROP CONSTRAINT [FK_Tocada_Sucursal]
GO
DROP TABLE [dbo].[Tocada]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[Venta] DROP CONSTRAINT [FK_Venta_Sucursal]
GO
DROP TABLE [dbo].[Venta]
GO
/****** Object:  Table [dbo].[Compra]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[Compra] DROP CONSTRAINT [FK_Compra_Proveedor]
GO
ALTER TABLE [dbo].[Compra] DROP CONSTRAINT [FK_Compra_Sucursal]
GO
DROP TABLE [dbo].[Compra]
GO
/****** Object:  Table [dbo].[Reservacion]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[Reservacion] DROP CONSTRAINT [FK_Reservacion_Sucursal]
GO
DROP TABLE [dbo].[Reservacion]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [FK_Empleado_Direccion]
GO
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [FK_Empleado_Puesto]
GO
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [FK_Empleado_Sucursal]
GO
DROP TABLE [dbo].[Empleado]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[Proveedor] DROP CONSTRAINT [FK_Proveedor_Direccion]
GO
DROP TABLE [dbo].[Proveedor]
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[Sucursal] DROP CONSTRAINT [FK_Sucursal_Direccion]
GO
DROP TABLE [dbo].[Sucursal]
GO
/****** Object:  Table [dbo].[Puesto]    Script Date: 03/13/2019 07:48:02 ******/
DROP TABLE [dbo].[Puesto]
GO
/****** Object:  Table [dbo].[Producto_]    Script Date: 03/13/2019 07:48:02 ******/
DROP TABLE [dbo].[Producto_]
GO
/****** Object:  Table [dbo].[Direccion]    Script Date: 03/13/2019 07:48:02 ******/
DROP TABLE [dbo].[Direccion]
GO
/****** Object:  Table [dbo].[Alimento]    Script Date: 03/13/2019 07:48:02 ******/
DROP TABLE [dbo].[Alimento]
GO
/****** Object:  Table [dbo].[Banda]    Script Date: 03/13/2019 07:48:02 ******/
DROP TABLE [dbo].[Banda]
GO
/****** Object:  Table [dbo].[Banda]    Script Date: 03/13/2019 07:48:02 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Alimento]    Script Date: 03/13/2019 07:48:02 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Direccion]    Script Date: 03/13/2019 07:48:02 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Direccion] ([idDireccion], [numero], [calle], [colonia], [ciudad]) VALUES (1, 1655, N'Sierra Mixteca', N'Las Puentes', N'San Nicolas de los Garza')
INSERT [dbo].[Direccion] ([idDireccion], [numero], [calle], [colonia], [ciudad]) VALUES (2, 575, N'Diego Diaz de Berlanga', N'Anahuac', N'San Nicolas de los Garza')
/****** Object:  Table [dbo].[Producto_]    Script Date: 03/13/2019 07:48:02 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Puesto]    Script Date: 03/13/2019 07:48:02 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 03/13/2019 07:48:03 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 03/13/2019 07:48:03 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 03/13/2019 07:48:03 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Reservacion]    Script Date: 03/13/2019 07:48:03 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Compra]    Script Date: 03/13/2019 07:48:03 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 03/13/2019 07:48:03 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tocada]    Script Date: 03/13/2019 07:48:03 ******/
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
/****** Object:  Table [dbo].[VentaDetalle]    Script Date: 03/13/2019 07:48:03 ******/
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
/****** Object:  Table [dbo].[ReservacionEmpleado]    Script Date: 03/13/2019 07:48:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReservacionEmpleado](
	[idReservacion] [int] NULL,
	[idEmpleado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contrato]    Script Date: 03/13/2019 07:48:03 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompraDetalles]    Script Date: 03/13/2019 07:48:03 ******/
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
/****** Object:  ForeignKey [FK_Sucursal_Direccion]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[Sucursal]  WITH CHECK ADD  CONSTRAINT [FK_Sucursal_Direccion] FOREIGN KEY([idDireccion])
REFERENCES [dbo].[Direccion] ([idDireccion])
GO
ALTER TABLE [dbo].[Sucursal] CHECK CONSTRAINT [FK_Sucursal_Direccion]
GO
/****** Object:  ForeignKey [FK_Proveedor_Direccion]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[Proveedor]  WITH CHECK ADD  CONSTRAINT [FK_Proveedor_Direccion] FOREIGN KEY([idDireccion])
REFERENCES [dbo].[Direccion] ([idDireccion])
GO
ALTER TABLE [dbo].[Proveedor] CHECK CONSTRAINT [FK_Proveedor_Direccion]
GO
/****** Object:  ForeignKey [FK_Empleado_Direccion]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Direccion] FOREIGN KEY([idDireccion])
REFERENCES [dbo].[Direccion] ([idDireccion])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Direccion]
GO
/****** Object:  ForeignKey [FK_Empleado_Puesto]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Puesto] FOREIGN KEY([idPuesto])
REFERENCES [dbo].[Puesto] ([idPuesto])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Puesto]
GO
/****** Object:  ForeignKey [FK_Empleado_Sucursal]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Sucursal] FOREIGN KEY([idSucursal])
REFERENCES [dbo].[Sucursal] ([idSucursal])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Sucursal]
GO
/****** Object:  ForeignKey [FK_Reservacion_Sucursal]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[Reservacion]  WITH CHECK ADD  CONSTRAINT [FK_Reservacion_Sucursal] FOREIGN KEY([idSucursal])
REFERENCES [dbo].[Sucursal] ([idSucursal])
GO
ALTER TABLE [dbo].[Reservacion] CHECK CONSTRAINT [FK_Reservacion_Sucursal]
GO
/****** Object:  ForeignKey [FK_Compra_Proveedor]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK_Compra_Proveedor] FOREIGN KEY([idProveedor])
REFERENCES [dbo].[Proveedor] ([idProveedor])
GO
ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK_Compra_Proveedor]
GO
/****** Object:  ForeignKey [FK_Compra_Sucursal]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK_Compra_Sucursal] FOREIGN KEY([idSucursal])
REFERENCES [dbo].[Sucursal] ([idSucursal])
GO
ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK_Compra_Sucursal]
GO
/****** Object:  ForeignKey [FK_Venta_Sucursal]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Sucursal] FOREIGN KEY([idSucursal])
REFERENCES [dbo].[Sucursal] ([idSucursal])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Sucursal]
GO
/****** Object:  ForeignKey [FK_Tocada_Banda]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[Tocada]  WITH CHECK ADD  CONSTRAINT [FK_Tocada_Banda] FOREIGN KEY([idBanda])
REFERENCES [dbo].[Banda] ([idBanda])
GO
ALTER TABLE [dbo].[Tocada] CHECK CONSTRAINT [FK_Tocada_Banda]
GO
/****** Object:  ForeignKey [FK_Tocada_Sucursal]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[Tocada]  WITH CHECK ADD  CONSTRAINT [FK_Tocada_Sucursal] FOREIGN KEY([idSucursal])
REFERENCES [dbo].[Sucursal] ([idSucursal])
GO
ALTER TABLE [dbo].[Tocada] CHECK CONSTRAINT [FK_Tocada_Sucursal]
GO
/****** Object:  ForeignKey [FK_VentaDetalle_Product]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[VentaDetalle]  WITH CHECK ADD  CONSTRAINT [FK_VentaDetalle_Product] FOREIGN KEY([idAlimento])
REFERENCES [dbo].[Alimento] ([idAlimento])
GO
ALTER TABLE [dbo].[VentaDetalle] CHECK CONSTRAINT [FK_VentaDetalle_Product]
GO
/****** Object:  ForeignKey [FK_VentaDetalle_Venta]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[VentaDetalle]  WITH CHECK ADD  CONSTRAINT [FK_VentaDetalle_Venta] FOREIGN KEY([idVenta])
REFERENCES [dbo].[Venta] ([idVenta])
GO
ALTER TABLE [dbo].[VentaDetalle] CHECK CONSTRAINT [FK_VentaDetalle_Venta]
GO
/****** Object:  ForeignKey [FK_ReservacionEmpleado_Empleado]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[ReservacionEmpleado]  WITH CHECK ADD  CONSTRAINT [FK_ReservacionEmpleado_Empleado] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[Empleado] ([idEmpleado])
GO
ALTER TABLE [dbo].[ReservacionEmpleado] CHECK CONSTRAINT [FK_ReservacionEmpleado_Empleado]
GO
/****** Object:  ForeignKey [FK_ReservacionEmpleado_Reservacion]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[ReservacionEmpleado]  WITH CHECK ADD  CONSTRAINT [FK_ReservacionEmpleado_Reservacion] FOREIGN KEY([idReservacion])
REFERENCES [dbo].[Reservacion] ([idReservacion])
GO
ALTER TABLE [dbo].[ReservacionEmpleado] CHECK CONSTRAINT [FK_ReservacionEmpleado_Reservacion]
GO
/****** Object:  ForeignKey [FK_Contrato_Empleado]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[Contrato]  WITH CHECK ADD  CONSTRAINT [FK_Contrato_Empleado] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[Empleado] ([idEmpleado])
GO
ALTER TABLE [dbo].[Contrato] CHECK CONSTRAINT [FK_Contrato_Empleado]
GO
/****** Object:  ForeignKey [FK_CompraDetalles_Compra]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[CompraDetalles]  WITH CHECK ADD  CONSTRAINT [FK_CompraDetalles_Compra] FOREIGN KEY([idCompra])
REFERENCES [dbo].[Compra] ([idCompra])
GO
ALTER TABLE [dbo].[CompraDetalles] CHECK CONSTRAINT [FK_CompraDetalles_Compra]
GO
/****** Object:  ForeignKey [FK_CompraDetalles_Producto_]    Script Date: 03/13/2019 07:48:03 ******/
ALTER TABLE [dbo].[CompraDetalles]  WITH CHECK ADD  CONSTRAINT [FK_CompraDetalles_Producto_] FOREIGN KEY([idProducto])
REFERENCES [dbo].[Producto_] ([idProducto])
GO
ALTER TABLE [dbo].[CompraDetalles] CHECK CONSTRAINT [FK_CompraDetalles_Producto_]
GO
