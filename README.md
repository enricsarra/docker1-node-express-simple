# docker1-node-express-simple
## Objetivo
    ### Probar circuito para conectar mi github con **Docker Hub** 
    ### De este modo puedo almacenar mis imágenes en mi repositorio de **Docker Hub**

    #### Si en el host está instalado Docker

    #### Para descargar y crear la imagen en el  host:  

     *docker pull enricsarra/docker1-node-express-simple

    ####Para crear el contenedor en modo interactivo con el nombre *node-express-sencillo:

     *docker run --name node-express-sencillo -p nnnnn:8080  -i enricsarra/docker1-node-express-simple:latest

     ####Para crear el contenedor en modo batch con el nombre *node-express-sencillo:

     *docker run --name node-express-sencillo -d nnnnn:8080  -i enricsarra/docker1-node-express-simple:latest
     (nnnnn es el puerto para acceder al node que escucha por el 8080)



    