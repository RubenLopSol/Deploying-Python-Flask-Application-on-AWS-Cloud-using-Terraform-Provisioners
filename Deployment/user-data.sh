#!/bin/bash

echo 'Instalando Docker...'
sudo dnf update -y
sudo dnf install -y docker

echo 'Iniciando Docker...'
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker ec2-user

echo 'Ejecutando la aplicación Flask desde Docker Hub...'
sudo docker pull rubenlopsol/flask-app:v1.0.0
sudo docker run -d -p 80:80 rubenlopsol/flask-app:v1.0.1
