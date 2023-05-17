#!/bin/bash
service nginx start
gcc server.c -lfcgi -o server
spawn-fcgi -p 8080 ./server
nginx -s reload
while true; do
        wait
done



