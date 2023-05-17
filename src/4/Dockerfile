FROM nginx:latest
USER root
WORKDIR /home/
COPY server/nginx/nginx.conf /etc/nginx/nginx.conf
COPY server/server.c /home/server.c
COPY ./start.sh /home/start.sh
RUN apt-get update; \
    apt install -y gcc spawn-fcgi libfcgi-dev; \
    chmod 777 start.sh
ENTRYPOINT bash start.sh
