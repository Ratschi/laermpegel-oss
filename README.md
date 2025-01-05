# LärmPegel Monitoring mit EMQX, OXOcard und Grafana

## ✨ Projektübersicht
Ein Lautstärke Messungsprojekt mit MQTT und Grafana.

## ✨ Projektaufbau
Die Lautstärke wird mit einer OXOcard gemessen und schickt diese Daten an den Broker. Nebenbei gibt es ein Skript welches die Daten in eine DB abspeichert.
Die von der DB abgespeicherten Daten werden in Grafana grafisch dargestellt.