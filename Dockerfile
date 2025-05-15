# Usa una imagen base de Tomcat
FROM tomcat:9-jdk11

# Copia el archivo WAR de GeoServer en el directorio webapps de Tomcat
COPY geoserver.war /usr/local/tomcat/webapps/

# Exponer el puerto 8080
EXPOSE 8080

# Comando para iniciar Tomcat (que ejecutará GeoServer)
CMD ["catalina.sh", "run"]
