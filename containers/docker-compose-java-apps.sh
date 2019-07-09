#!/usr/bin/env bash
sudo setenforce 0
#sudo docker-compose down
sudo docker-compose -f docker-compose-java-apps.yml up --build -d