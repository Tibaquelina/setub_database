-- ------------------------------
-- 1. Insertar departamentos
-- ------------------------------
INSERT INTO departamento (nombre) VALUES
('Recursos Humanos'),
('Finanzas'),
('Tecnología'),
('Marketing'),
('Ventas');

-- ------------------------------
-- 2. Insertar empleados
-- ------------------------------
INSERT INTO empleado (nombre, apellido, fecha_nacimiento) VALUES
('Ana', 'García', '1990-05-12'),
('Luis', 'Martínez', '1985-03-20'),
('Carolina', 'Pérez', '1992-11-08'),
('Andrés', 'Rodríguez', '1988-07-15'),
('María', 'López', '1995-01-30');

-- ------------------------------
-- 3. Relación empleado - departamento
-- ------------------------------
INSERT INTO empleado_departamento (id_empleado, id_departamento) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- ------------------------------
-- 4. Insertar proyectos
-- ------------------------------
INSERT INTO proyecto (nombre, presupuesto, fecha_inicio, fecha_fin) VALUES
('Proyecto Alfa', 50000.00, '2025-01-01', '2025-06-30'),
('Proyecto Beta', 75000.00, '2025-02-15', '2025-08-15'),
('Proyecto Gamma', 120000.00, '2025-03-01', '2025-12-31'),
('Proyecto Delta', 30000.00, '2025-04-01', '2025-09-30'),
('Proyecto Épsilon', 95000.00, '2025-05-10', '2025-11-30');

-- ------------------------------
-- 5. Insertar fases de proyecto
-- ------------------------------
INSERT INTO fases_proyecto (id_proyecto, etapa, fecha_entrega) VALUES
(1, 'Planificación', '2025-01-31'),
(1, 'Ejecución', '2025-03-31'),
(2, 'Investigación', '2025-02-28'),
(2, 'Desarrollo', '2025-06-30'),
(3, 'Pruebas', '2025-09-30');

-- ------------------------------
-- 6. Insertar roles
-- ------------------------------
INSERT INTO rol (nombre, nivel_acceso) VALUES
('Administrador', 'Alto'),
('Analista', 'Medio'),
('Desarrollador', 'Medio'),
('Tester', 'Bajo'),
('Coordinador', 'Medio');

-- ------------------------------
-- 7. Relación empleados - proyectos
-- ------------------------------
INSERT INTO empleados_proyectos (id_empleado, id_proyecto, id_rol) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);

-- ------------------------------
-- 8. Insertar contratos
-- ------------------------------
INSERT INTO contrato (tipo_contrato, salario, fecha_inicio, fecha_fin, id_empleado) VALUES
('Tiempo completo', 3500.00, '2025-01-01', '2026-01-01', 1),
('Medio tiempo', 2000.00, '2025-02-01', '2025-12-31', 2),
('Contrato temporal', 3000.00, '2025-03-01', '2025-09-01', 3),
('Tiempo completo', 4000.00, '2025-04-01', '2026-04-01', 4),
('Medio tiempo', 2500.00, '2025-05-01', '2025-11-01', 5);
