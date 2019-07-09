#!/usr/bin/env bash
sudo setenforce 0
sudo docker-compose down -v --remove-orphans
sudo docker-compose -f docker-compose-base.yml up --build -d