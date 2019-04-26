--2 TRIGGERS

CREATE TRIGGER InsertLog
ON Empleado
AFTER INSERT 
AS
INSERT INTO EmpleadoLog
VALUES ((SELECT TOP 1 inserted.idEmpleado FROM inserted), 'Se creo un INSERT',getDate())
GO


CREATE TRIGGER DeleteLog
ON Empleado
AFTER DELETE
AS
INSERT INTO EmpleadoLog
VALUES ((SELECT TOP 1 deleted.idEmpleado FROM deleted), 'Se creo un DELETE',getDate())
GO

-- 10 SP
CREATE PROCEDURE  Ventas1
AS
SELECT idEmpleado,COUNT(idVenta) as TotalVentas
FROM Venta
GROUP BY idEmpleado

CREATE PROCEDURE  Ventas2
AS
SELECT idEmpleado,MAX(total) as MayorVenta
FROM Venta
GROUP BY idEmpleado

CREATE PROCEDURE  Ventas3
AS
SELECT idEmpleado,MIN(total) as MenorVenta
FROM Venta
GROUP BY idEmpleado

CREATE PROCEDURE  Ventas4
AS
SELECT idEmpleado,SUM(total) as VentaTotal
FROM Venta
GROUP BY idEmpleado

CREATE PROCEDURE  Ventas5
AS
SELECT idEmpleado,AVG(total) as VentaPromedio
FROM Venta
GROUP BY idEmpleado

CREATE PROCEDURE  Comanda1
AS
SELECT idVenta,SUM(subtotal) as TotalVenta
FROM Comanda
GROUP BY idVenta

CREATE PROCEDURE  Comanda2
AS
SELECT idMesa,SUM(cantidad) as ProductosPorMesa
FROM Comanda
GROUP BY idMesa

CREATE PROCEDURE  Ventas6
AS
SELECT idEmpleado,COUNT(idVenta) as TotalVentas
FROM Venta
GROUP BY idEmpleado
HAVING COUNT(idVenta) >2

CREATE PROCEDURE  Comanda3
AS
SELECT idVenta,SUM(cantidad) as ProductosPorVenta
FROM Comanda
GROUP BY idVenta
HAVING SUM(cantidad) >4

CREATE PROCEDURE  Ventas4
AS
SELECT idVenta,SUM(subtotal) as TotalPorVenta
FROM Comanda
GROUP BY idVenta
HAVING SUM(subtotal) >200

--FUNCION

CREATE FUNCTION BusquedaTelefonoEmpleado(@busEmp varchar(50))
RETURNS varchar(50)
AS
BEGIN
DECLARE @tel varchar(50)
SET @tel = (SELECT telefono
FROM Empleado
WHERE nombreEmpleado LIKE '%' + @busEmp + '%')
return @tel
END

--QUERY DINAMICO

DECLARE @precio money
SET @precio = 30.00
SELECT * FROM Producto
WHERE precioUnitario >= @precio