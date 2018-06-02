FROM ubuntu:latest
MAINTAINER Andre <andrezinho83@gmail.com>


### EXECUTA O COMANDO NO MOMENTO DE BUILD
RUN apt-get update \
    && apt-get install -y nginx  \
    && apt-get clean

#COPY html/index.html /var/www/html/
ADD html/index.html /var/www/html/ 

#LABEL 
#USER 
#WORKDIR 

ENV Andre lindo

VOLUME /var/www/html

#ENTRYPOINT

### EXECUTA O COMANDO DEPOIS QUE O CONTAINER SUBIR
CMD /usr/sbin/nginx -g 'daemon off;'
#CMD ["-g", "daemon off;']

EXPOSE 80
