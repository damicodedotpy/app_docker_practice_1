Instrucciones para correr la app dockerizada

1. Se debe echar a andar el host de Docker, es decir, abre la aplicacion desktop de Docker
nomas.
2. Se debe creaer la imagen de la app desde el archivo dockerfile. Aqui es importante tener en
cuenta la ruta en donde se encuentra el archivo del script de la app (es decir el app.py) para
especificarlo en el comando COPY app.py /opt/app.py. La se construye con 
el comando ---> docker build . (y se puede agregar la opcion -t 'nombre deseado' para añadirle
un nombre personalizado a la imagen creada dentro de nuestro docker host)
3. se debe crear un contenedor basado en la imagen recien creada con 
el comando ---> docker run -p 5000:5000 'nombre o ID exacto de la imagen creada anteriormente'
(se puede agregar un nombre personalizado al contenedor si se añade la opcion 
--name 'nombre personalizado al comando docker run').
Nota: Es importante tomar en cuenta que los puertos 5000(el de entrada al docker host)
:5000(el de entrada al contenedor creado) pueden ser los que venga en gana, estos no son
obligatoriamente los especificados en el comando previo.
4. Acceder a la aplicacion poniendo como url el localhost (ya que asi se configuró) y el puerto
del docker host especificado(el 5000 si es que se corrió con el comando aqui descrito) mas el 
nombre de la ruta del endpoint ---> /hello ---> http://localhost:5000/hello
5. Tomar en cuenta que cuando se quiera detener la aplicacion lo que se debe detener es el
contenedor de docker que tiene a la aplicacion, no detener a la aplicacion misma directamente
porque eso hara que el contenedor entre en conflicto pues el seguirá corriendo pero esta vez
con su app detenida. Para detener el contenedor de la aplicacion se utiliza el comando 
docker stop 'nombre o ID del contenedor'

