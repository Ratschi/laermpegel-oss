#!/bin/bash
# System-Update
sudo apt-get update -y
# Ports öffnen und UFW aktivieren
sudo ufw allow 80
sudo ufw allow 443
sudo ufw allow 22
sudo ufw allow 18083
sudo ufw allow 3306
sudo ufw allow 1883
sudo ufw allow 3000
sudo ufw --force enable
# Installieren von EMQX
curl -s https://assets.emqx.com/scripts/install-emqx-deb.sh | sudo bash
sudo apt-get install emqx -y
# Starten von EMQX
sudo systemctl enable --now emqx
# Prerequisites für Grafana
sudo apt-get install -y apt-transport-https software-properties-common wget gpg
# Grafana-Repository hinzufügen
sudo mkdir -p /etc/apt/keyrings/
wget -q -O - https://apt.grafana.com/gpg.key | gpg --dearmor | sudo tee /etc/apt/keyrings/grafana.gpg > /dev/null
echo "deb [signed-by=/etc/apt/keyrings/grafana.gpg] https://apt.grafana.com stable main" | sudo tee /etc/apt/sources.list.d/grafana.list
# Installieren von Grafana
sudo apt-get update -y
sudo apt-get install grafana -y
# Starten von Grafana
sudo systemctl enable --now grafana-server.service