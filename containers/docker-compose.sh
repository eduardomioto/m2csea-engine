#!/usr/bin/env bash
sudo setenforce 0
docker network create m2csea
sudo docker-compose down
sudo docker-compose -f docker-compose.yml up --build -d
sudo docker-compose ps
