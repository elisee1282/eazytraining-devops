#!/bin/bash

# Mise à jour des paquets
sudo apt update

# Installation de Nginx
sudo apt install -y nginx

# Démarrage du service Nginx
sudo systemctl start nginx

# Activation du démarrage automatique de Nginx au démarrage du système
sudo systemctl enable nginx
