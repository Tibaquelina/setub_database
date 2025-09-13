-- (Opcional) Asegura la codificacion y usa la BD
SET NAMES 'utf8mb4';
USE empresa;

-- INSERTS para departamento (5 registros)
INSERT INTO departamento (id, nombre) VALUES
(1, 'Recursos Humanos'),
(2, 'Finanzas'),
(3, 'Tecnologia'),
(4, 'Marketing'),
(5, 'Ventas');

-- INSERTS para empleado (5 registros) -- nombres sin tildes ni caracteres especiales
INSERT INTO empleado (id, nombre, apellido, fecha_nacimiento) VALUES
(1, 'Ana', 'Garcia', '1990-05-12'),
(2, 'Luis', 'Martinez', '1985-11-03'),
(3, 'Carolina', 'Perez', '1992-02-28'),
(4, 'Andres', 'Rodriguez', '1988-07-19'),
(5, 'Maria', 'Lopez', '1995-09-30');

-- INSERTS para empleado_departamento (vinculos) (5 registros)
INSERT INTO empleado_departamento (id, id_empleado, id_departamento) VALUES
(1, 1, 1), -- Ana -> Recursos Humanos
(2, 2, 2), -- Luis -> Finanzas
(3, 3, 3), -- Carolina -> Tecnologia
(4, 4, 4), -- Andres -> Marketing
(5, 5, 5); -- Maria -> Ventas

-- INSERTS para proyecto (5 registros)
INSERT INTO proyecto (id, nombre, presupuesto, fecha_inicio, fecha_fin) VALUES
(1, 'Sistema Intranet', 15000.00, '2025-01-05', '2025-06-30'),
(2, 'Portal Clientes', 25000.00, '2025-02-01', '2025-08-15'),
(3, 'App Movil', 30000.00, '2025-03-10', '2025-12-20'),
(4, 'Optimizacion Procesos', 12000.00, '2025-04-01', NULL),
(5, 'Campana Marketing', 8000.00, '2025-05-15', '2025-09-30');

-- INSERTS para fases_proyecto (5 registros)
INSERT INTO fases_proyecto (id, id_proyecto, etapa, fecha_entrega) VALUES
(1, 1, 'Analisis', '2025-02-15'),
(2, 2, 'Diseno', '2025-03-20'),
(3, 3, 'Desarrollo', '2025-07-01'),
(4, 4, 'Implementacion', NULL),
(5, 5, 'Lanzamiento', '2025-09-30');

-- INSERTS para rol (5 registros)
INSERT INTO rol (id, nombre, nivel_acceso) VALUES
(1, 'Administrador', 'alto'),
(2, 'Analista', 'medio'),
(3, 'Desarrollador', 'medio'),
(4, 'Tester', 'bajo'),
(5, 'Gerente', 'alto');

-- INSERTS para empleados_proyectos (5 registros)
INSERT INTO empleados_proyectos (id, id_empleado, id_proyecto, id_rol) VALUES
(1, 1, 1, 2), -- Ana en Sistema Intranet como Analista
(2, 2, 2, 5), -- Luis en Portal Clientes como Gerente
(3, 3, 3, 3), -- Carolina en App Movil como Desarrollador
(4, 4, 5, 4), -- Andres en Campana Marketing como Tester
(5, 5, 4, 1); -- Maria en Optimizacion Procesos como Administrador

-- INSERTS para contrato (5 registros)
INSERT INTO contrato (id, tipo_contrato, salario, fecha_inicio, fecha_fin, id_empleado) VALUES
(1, 'Tiempo Completo', 3200.00, '2024-01-01', NULL, 1),
(2, 'Tiempo Parcial', 1800.00, '2024-06-15', '2025-06-14', 2),
(3, 'Temporal', 2500.00, '2025-03-01', '2025-12-31', 3),
(4, 'Contrato por Proyecto', 2200.00, '2025-04-01', '2025-09-30', 4),
(5, 'Tiempo Completo', 3000.00, '2024-09-01', NULL, 5);
