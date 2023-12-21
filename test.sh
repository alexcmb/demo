#!/bin/bash

# Création des groupes
sudo groupadd managers
sudo groupadd contractors

# Création des utilisateurs et ajout aux groupes correspondants
mdp="$(openssl passwd -1 -salt $(openssl rand -base64 6) 'redhat')"
sudo useradd -m -G managers -p $mdp manager1
sudo useradd -m -G managers -p $mdp manager2
sudo useradd -m -G contractors -p $mdp contractor1
sudo useradd -m -G contractors -p $mdp contractor2
sudo useradd -m -G contractors -p $mdp contractor3
