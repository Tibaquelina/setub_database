# 1. Abrir powerShell

# 2. Conectarse a MySQL con usuario --ejemplo root--

mysql -u root -p

# NOTA: Si tiene clave se ingresa

# 3. COMANDOS PARA USAR EN LA CONSOLA ADENTRO DE MYSQL
#    CUANDO LA CONSOLA SE VE ASI: mysql>

# Nota: Si este repositorio no esta clonado en "C:"
#       crear otro archivo alternativo para poner sus comandos
#       con sus propias rutas

# Crear y usar base de datos
source C:/setup_database/empresa/scripts/create_database.sql;

# Eliminar base de datos
source C:/setup_database/empresa/scripts/delete_database.sql;

# Iniciar base de datos
source C:/setup_database/empresa/scripts/init_database.sql;

# Insertrar registros en la base de datos
source C:/setup_database/empresa/scripts/inserts_database.sql;

# Crear procedimientos 
source C:/setup_database/empresa/scripts/procedures_database.sql;


# Consulta de empleados por nombre 
source C:/setup_database/empresa/scripts/query_empleados_database.sql;

#Consultas de salarios 
source C:/setup_database/empresa/scripts/query_salarios_database.sql;

#Consultas por departamentos 
source C:/setup_database/empresa/scripts/query_departamentos_database.sql;


# NO MODIFICAR, SOLO EL AUTOR

# Autor: Lina Estefania Muñoz Tibaque


# REINICIAR BASE DE DATOS
source C:/setup_database/empresa/scripts/delete_database.sql;
source C:/setup_database/empresa/scripts/create_database.sql;
source C:/setup_database/empresa/scripts/init_database.sql;
source C:/setup_database/empresa/scripts/inserts_database.sql;
source C:/setup_database/empresa/scripts/procedures_database.sql;
