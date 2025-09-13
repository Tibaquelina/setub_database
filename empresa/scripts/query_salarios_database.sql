-- 1) Mensaje (result set separado)
SELECT 'Consulta: salario promedio por departamento (contratos vigentes)' AS mensaje;

SELECT d.nombre AS departamento,
       ROUND(AVG(c.salario), 2) AS salario_promedio
FROM departamento d
JOIN empleado_departamento ed ON d.id = ed.id_departamento
JOIN empleado e ON e.id = ed.id_empleado
JOIN contrato c ON c.id_empleado = e.id
WHERE c.fecha_fin IS NULL OR c.fecha_fin >= CURDATE()
GROUP BY d.nombre
ORDER BY d.nombre;


SELECT 'Consulta: salario promedio por departamento (ultimo contrato por empleado)' AS mensaje;

SELECT d.nombre AS departamento,
       ROUND(AVG(lc.salario), 2) AS salario_promedio
FROM departamento d
JOIN empleado_departamento ed ON d.id = ed.id_departamento
JOIN empleado e ON e.id = ed.id_empleado
JOIN (
    SELECT c1.id_empleado, c1.salario
    FROM contrato c1
    JOIN (
        SELECT id_empleado, MAX(fecha_inicio) AS max_inicio
        FROM contrato
        GROUP BY id_empleado
    ) c2 ON c1.id_empleado = c2.id_empleado AND c1.fecha_inicio = c2.max_inicio
) lc ON lc.id_empleado = e.id
GROUP BY d.nombre
ORDER BY d.nombre;


