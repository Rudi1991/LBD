-- 10 REPORTES
SELECT idEmpleado,COUNT(idVenta) as TotalVentas
FROM Venta
GROUP BY idEmpleado

SELECT idEmpleado,MAX(total) as MayorVenta
FROM Venta
GROUP BY idEmpleado

SELECT idEmpleado,MIN(total) as MenorVenta
FROM Venta
GROUP BY idEmpleado

SELECT idEmpleado,SUM(total) as VentaTotal
FROM Venta
GROUP BY idEmpleado

SELECT idEmpleado,AVG(total) as VentaPromedio
FROM Venta
GROUP BY idEmpleado

SELECT idVenta,SUM(subtotal) as TotalVenta
FROM Comanda
GROUP BY idVenta

SELECT idMesa,SUM(cantidad) as ProductosPorMesa
FROM Comanda
GROUP BY idMesa

SELECT idEmpleado,COUNT(idVenta) as TotalVentas
FROM Venta
GROUP BY idEmpleado
HAVING COUNT(idVenta) >2

SELECT idVenta,SUM(cantidad) as ProductosPorVenta
FROM Comanda
GROUP BY idVenta
HAVING SUM(cantidad) >4

SELECT idVenta,SUM(subtotal) as TotalPorVenta
FROM Comanda
GROUP BY idVenta
HAVING SUM(subtotal) >200

--10 SELECTS BASICOS

SELECT nombreEmpleado as Nombre, apPaterno as Apellido_Paterno
FROM Empleado	

SELECT nombreProducto as Producto, existencia as Inventario
FROM Producto

SELECT nombreProducto as Producto, precioUnitario as Precio, existencia as Inventario
FROM Producto
WHERE existencia > 100

SELECT nombrePuesto as Puesto, descripcionPuesto as Descripcion
FROM Puesto

SELECT idVenta as NumeroDeVenta,idProducto as Producto, cantidad as Cantidad, subtotal as Subtotal
FROM Comanda
WHERE idProducto = 6

SELECT e.nombreEmpleado as Nombre, e.apPaterno as Apellido_Paterno, d.calle as Calle
FROM Empleado as e
INNER JOIN Direccion as d ON d.idDireccion = e.idDireccion

SELECT e.nombreEmpleado as Nombre, e.apPaterno as Apellido_Paterno, p.nombrePuesto as Puesto
FROM Empleado as e
INNER JOIN Puesto as p ON p.idPuesto = e.idPuesto

SELECT idVenta, fecha, nombreEmpleado, sexo, total
FROM Venta as v
INNER JOIN Empleado as e ON e.idEmpleado = v.idEmpleado

SELECT v.idVenta, nombreProducto, cantidad, subtotal
FROM Comanda as c
INNER JOIN Producto as p ON c.idProducto = p.idProducto
INNER JOIN Venta as v on c.idVenta = v.idVenta

SELECT v.idVenta,nombreEmpleado,apPaterno, p.nombreProducto, cantidad
FROM Comanda as c
INNER JOIN Venta as v ON c.idVenta = v.idVenta
INNER JOIN Empleado as e ON e.idEmpleado = v.idEmpleado
INNER JOIN Producto as p ON c.idProducto = p.idProducto

--SELECT INTO

SELECT * INTO VentaRespaldo
FROM Venta

--DROP

DROP TABLE VentaRespaldo

--INSERT INTO SELECT

INSERT INTO VentaRespaldo2(idVenta,total,fecha,idEmpleado)
SELECT idVenta,total,fecha,idEmpleado
FROM Venta


