#!/usr/bin/env bash
sudo docker-compose down -v --remove-orphans
sudo docker-compose up --build -f docker-compose-all.yml