SELECT 'Consulta empleados por nombre, apellido y departamento' AS mensaje;

SELECT e.nombre, e.apellido, d.nombre AS departamento
FROM empleado e 
JOIN empleado_departamento ed ON e.id = ed.id_empleado
JOIN departamento d ON ed.id_departamento = d.id;

SELECT 'Lista de proyectos con empleados y sus roles' AS mensaje;

SELECT e.nombre, e.apellido, p.nombre AS proyecto, r.nombre AS rol
FROM empleados_proyectos ep
JOIN empleado e ON ep.id_empleado = e.id
JOIN proyecto P ON ep.id_proyecto =p.id
JOIN rol r ON ep.id_rol = r.id;
