-- Mensaje
SELECT 'Consulta: cantidad de empleados por departamento' AS mensaje;

SELECT d.nombre AS departamento,
       COUNT(e.id) AS cantidad_empleados
FROM departamento d
JOIN empleado_departamento ed ON d.id = ed.id_departamento
JOIN empleado e ON e.id = ed.id_empleado
GROUP BY d.nombre
ORDER BY d.nombre;

