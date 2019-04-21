-- 10 VISTAS
CREATE VIEW AS TotalDeVentasxEmpleado
SELECT idEmpleado,COUNT(idVenta) as TotalVentas
FROM Venta
GROUP BY idEmpleado

CREATE VIEW AS MayorVentaPorEmpleado
SELECT idEmpleado,MAX(total) as MayorVenta
FROM Venta
GROUP BY idEmpleado

CREATE VIEW AS MinimaVentaPorEmpleado
SELECT idEmpleado,MIN(total) as MenorVenta
FROM Venta
GROUP BY idEmpleado

CREATE VIEW AS VentaTotalPorEmpleado
SELECT idEmpleado,SUM(total) as VentaTotal
FROM Venta
GROUP BY idEmpleado

CREATE VIEW AS VentaPromedioPorEmpleado
SELECT idEmpleado,AVG(total) as VentaPromedio
FROM Venta
GROUP BY idEmpleado

CREATE VIEW AS TotalDeVentas
SELECT idVenta,SUM(subtotal) as TotalVenta
FROM Comanda
GROUP BY idVenta

CREATE VIEW AS ProductosPorMesa
SELECT idMesa,SUM(cantidad) as ProductosPorMesa
FROM Comanda
GROUP BY idMesa

CREATE VIEW AS TotaldeVentas2
SELECT idEmpleado,COUNT(idVenta) as TotalVentas
FROM Venta
GROUP BY idEmpleado
HAVING COUNT(idVenta) >2

CREATE VIEW AS ProductosPorMesa
SELECT idVenta,SUM(cantidad) as ProductosPorVenta
FROM Comanda
GROUP BY idVenta
HAVING SUM(cantidad) >4

CREATE VIEW AS TotalPorVenta2
SELECT idVenta,SUM(subtotal) as TotalPorVenta
FROM Comanda
GROUP BY idVenta
HAVING SUM(subtotal) >200

--Reporte con with y subconsulta
--Lista las ventas que estan arriba de la ganancia promedio de todas las ventas.

WITH ReporteVentas(GananciaPromedio) AS
	(SELECT AVG(total)
	FROM Venta)
	SELECT v.idVenta,v.total ,v.fecha
	FROM Venta AS v, ReporteVentas as r
	WHERE v.total > r.GananciaPromedio
