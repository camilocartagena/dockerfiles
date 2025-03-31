# Usa la imagen oficial de MySQL
FROM mysql:latest

# Copia el script de inicialización
COPY init.sql /docker-entrypoint-initdb.d/

# Expone el puerto 3306
EXPOSE 3306

# Usa el comando por defecto de MySQL
CMD ["mysqld"]