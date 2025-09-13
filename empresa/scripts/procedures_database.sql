-- PROCEDIMIENTO DE INSERTAR EMPLEADO

-- Primero eliminamos el procedimiento si ya existe
DROP PROCEDURE IF EXISTS insertar_empleado;

DELIMITER //

CREATE PROCEDURE insertar_empleado(
    IN p_nombre VARCHAR(50),
    IN p_apellido VARCHAR(50),
    IN p_fecha_nacimiento DATE,
    IN p_departamento_id INT
)
BEGIN
    DECLARE nuevo_id INT;

    -- Insertar en la tabla empleado
    INSERT INTO empleado (nombre, apellido, fecha_nacimiento)
    VALUES (p_nombre, p_apellido, p_fecha_nacimiento);

    -- Obtener el id del empleado recién insertado
    SET nuevo_id = LAST_INSERT_ID();

    -- Insertar en la tabla empleado_departamento
    INSERT INTO empleado_departamento (id_empleado, id_departamento)
    VALUES (nuevo_id, p_departamento_id);
END //

DELIMITER ;

-- EJEMPLO PARA USAR PROCEDIMIENTO ALMACENADO
-- CALL insertar_empleado('Juan', 'Pérez', '1993-05-10', 1);

-- Otro ejemplo
-- CALL insertar_empleado('Ana', 'Gómez', '1998-12-22', 2);
