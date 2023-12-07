#!/bin/bash

apt update && apt upgrade -y
sleep 10;
apt install -y docker docker.io docker-compose nginx
sleep 10;
mv ./default /etc/nginx/sites-enabled/default
sleep 10;
nginx -t
sleep 5;
nginx -s reload
sleep 5;
docker-compose up -d


