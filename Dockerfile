FROM tomcat:9-jdk11-openjdk-slim

# Instalar GeoServer
RUN apt-get update && apt-get install -y wget && \
    wget https://sourceforge.net/projects/geoserver/files/GeoServer/2.22.2/geoserver-2.22.2-war.zip/download -O geoserver-2.22.2-war.zip && \
    unzip geoserver-2.22.2-war.zip -d /usr/local/tomcat/webapps && \
    rm geoserver-2.22.2-war.zip

# Exponer el puerto
EXPOSE 8080

# Iniciar Tomcat
CMD ["catalina.sh", "run"]
