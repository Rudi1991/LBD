--10 TABLAS

CREATE TABLE [dbo].[Banda](
	[idBanda] [int] IDENTITY(1,1) NOT NULL,
	[nombreBanda] [varchar](20) NULL,
	[tipoMusica] [varchar](20) NULL,
	[numIntegrantes] [int] NULL,
	[telefono] [varchar](15) NULL,
)

CREATE TABLE [dbo].[Comanda](
	[idVenta] [int] NULL,
	[idMesa] [int] NULL,
	[idProducto] [int] NULL,
	[cantidad] [int] NULL,
	[comentario] [varchar](100) NULL,
	[subtotal] [int] NULL
)

CREATE TABLE [dbo].[Direccion](
	[idDireccion] [int] IDENTITY(1,1) NOT NULL,
	[calle] [varchar](50) NULL,
	[numero] [int] NULL,
	[colonia] [varchar](50) NULL,
	[CP] [int] NULL,
	[ciudad] [varchar](50) NULL,
)

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
)

CREATE TABLE [dbo].[EmpleadoLog](
	[id] [int] NULL,
	[fecha] [datetime] NULL,
	[accion] [varchar](50) NULL
)

CREATE TABLE [dbo].[Mesa](
	[idMesa] [int] IDENTITY(1,1) NOT NULL,
	[numMesa] [int] NULL,
	[cantSillas] [int] NULL,
)

CREATE TABLE [dbo].[Producto](
	[idProducto] [int] IDENTITY(1,1) NOT NULL,
	[nombreProducto] [varchar](20) NULL,
	[descripcionProducto] [varchar](200) NULL,
	[precioUnitario] [money] NULL,
	[existencia] [int] NULL,
)

CREATE TABLE [dbo].[Puesto](
	[idPuesto] [int] IDENTITY(1,1) NOT NULL,
	[nombrePuesto] [varchar](50) NULL,
	[descripcionPuesto] [varchar](300) NULL,
)

CREATE TABLE [dbo].[Tocada](
	[idBanda] [int] NULL,
	[fecha] [datetime] NULL,
	[costo] [money] NULL
)

CREATE TABLE [dbo].[Venta](
	[idVenta] [int] IDENTITY(1,1) NOT NULL,
	[total] [int] NULL,
	[fecha] [datetime] NULL,
	[idEmpleado] [int] NULL,
)