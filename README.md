# LärmPegel Monitoring mit EMQX, OXOcard und Grafana

## ✨ Projektübersicht
Dieses Open-Source-Projekt misst die Lautstärke mit einer **OXOcard Science Plus** und sendet die Messwerte über einen **EMQX MQTT-Broker** an ein Dashboard in **Grafana**. Ziel ist es, die Lautstärke grafisch darzustellen.

---

## 🔧 Features
- Echtzeit-Lautstärkemessung mit der **OXOcard**
- Verwendung von **EMQX MQTT** für die Datenübertragung
- Integration mit **Grafana**, um die Messwerte grafisch darzustellen
- Open-Source

---

## 🚀 Voraussetzungen
- Eine **OXOcard Science Plus** welche mit dem Internet verbunden ist
- Ein **Amazon Web Service (AWS)** Account
- **Terraform und AWS CLI** werden zum Aufbau der Ressourcen gebraucht

## 🖌️ Details zur Konfiguration
### Terraform
1. Repo Clonen
2. Der gesamte Terraform Code befindet sich im Ordner **terraform**
3. Die Datei **locals.tf** muss angepasst werden, je nachdem was man genau möchte
4. Danach kann man im Terminal **terraform init**, **terraform plan** und dann **terraform apply** durchführen

### Mqtt
1. Anpassung im File **oxocardscript.npy** machen
2. Datei auf Oxocard hochladen
3. Datei ausführen und im MQTT Broker überprüfen