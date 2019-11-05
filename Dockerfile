FROM node:10
RUN apt-get update
RUN apt-get install nano
# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./
# RUN npm install nodemon -g
RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

#ejemplo para copiar una carpeta
# ADD <nombre-carpeta> /usr/src/app
# ó ADD <nombre-carpeta> /usr/src/app
# ADD <nombre-carpeta> ./


# Bundle app source
COPY . .
EXPOSE 8080
CMD [ "node", "server.js" ]
# CMD [ "nodemon", "server.js" ]


# Comandos para probarlo
# docker build . -t <your username>/node-web-app 
# docker images

# para probar sin puertos
# docker run --name sin_puertos primer/node-web-app
# docker exec  -it <your username>/node-web-app /bin/bash   (para debug) (el contenedor ya está funcionando)

# para probar con puertos sin detach
# docker run --name con_puertos -p 49160:8080 <your username>/node-web-app
# para probar con puertos con detach
# docker run --name con_puertos -p 49160:8080 -d <your username>/node-web-app
# docker run --name con_puertos -p 127.0.0.1:8080 -d <your username>/node-web-app   (si solo queremos que se ejecute desde el mac)
# Get container ID ---->   docker ps
# Print app output ---->   docker logs <container id>
# Enter the container -->  docker exec -it <container id> /bin/bash
# curl -i localhost:49160 

# crear un volumen para mapear mi codigo en visual code con un contenedor
#  docker run --name node-nodemon -p 49160:8080 -v /Users/enricsarradell/Desktop/Curso-Docker/docker1-node:/usr/src/app   node-nodemon:1.0.0