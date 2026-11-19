#!/bin/bash
docker build -t lab7 ./nginx

docker run  -d --rm --name nginxlab -p 54321:80 lab7

docker ps -a
sleep 2
curl localhost:54321
docker logs -n 10 nginxlab

docker stop nginxlab
