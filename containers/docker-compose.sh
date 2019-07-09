#!/usr/bin/env bash
sudo setenforce 0
sudo docker-compose down
sudo docker-compose -f docker-compose.yml up --build -d