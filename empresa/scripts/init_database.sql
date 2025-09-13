

CREATE TABLE departamento (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL UNIQUE
);

-- 2. Empleado
CREATE TABLE empleado (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    fecha_nacimiento DATE NOT NULL
    -- Si quieres que cada empleado pertenezca SOLO a un departamento,
    -- puedes agregar aquí: departamento_id INT,
    -- FOREIGN KEY (departamento_id) REFERENCES departamento(id) ON DELETE SET NULL
);

-- 3. Empleado - Departamento (solo si un empleado puede estar en varios departamentos)
CREATE TABLE empleado_departamento (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_empleado INT NOT NULL,
    id_departamento INT NOT NULL,
    FOREIGN KEY (id_empleado) REFERENCES empleado(id) ON DELETE CASCADE,
    FOREIGN KEY (id_departamento) REFERENCES departamento(id) ON DELETE CASCADE
);

-- 4. Proyecto
CREATE TABLE proyecto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL UNIQUE,
    presupuesto DECIMAL(12,2) NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE
);

-- 5. Fases del Proyecto
CREATE TABLE fases_proyecto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_proyecto INT NOT NULL,
    etapa VARCHAR(100) NOT NULL,
    fecha_entrega DATE,
    FOREIGN KEY (id_proyecto) REFERENCES proyecto(id) ON DELETE CASCADE
);

-- 6. Rol
CREATE TABLE rol (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL UNIQUE,
    nivel_acceso VARCHAR(50) NOT NULL
);

-- 7. Empleados - Proyectos
CREATE TABLE empleados_proyectos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_empleado INT NOT NULL,
    id_proyecto INT NOT NULL,
    id_rol INT,
    FOREIGN KEY (id_empleado) REFERENCES empleado(id) ON DELETE CASCADE,
    FOREIGN KEY (id_proyecto) REFERENCES proyecto(id) ON DELETE CASCADE,
    FOREIGN KEY (id_rol) REFERENCES rol(id) ON DELETE SET NULL
);

-- 8. Contrato
CREATE TABLE contrato (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tipo_contrato VARCHAR(50) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE,
    id_empleado INT NOT NULL,
    FOREIGN KEY (id_empleado) REFERENCES empleado(id) ON DELETE CASCADE
);
