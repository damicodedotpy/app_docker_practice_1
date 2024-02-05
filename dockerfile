# Instrucciones para construir la imagen

# Imagen base. Este es el sistema operativo que se usará para la aplicacion
FROM ubuntu
# Este comando actualiza la lista de paquetes del sistema operativo
RUN apt-get update
# Este comando instala el paquete python3 y python3-pip, es decir, instala el lenguaje de 
# programación python y su gestor de paquetes
RUN apt-get install -y python3 python3-pip
# Este comando instala el framework flask de python para crear aplicaciones web
RUN pip install flask
# Este comando copia el archivo app.py al directorio personalizable llamado /opt/app.py
COPY app.py /opt/app.py
# Este comando especifica el comando que se ejecutará cuando se inicie el contenedor y hara
# que la aplicacion este disponible en el puerto 5000, es decir, el comando que hace correr la app
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0

