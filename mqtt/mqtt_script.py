import paho.mqtt.client as mqtt
import mysql.connector
 
# MQTT Broker Details
broker = 'xxxx' # IP vom Broker
port = 1883
 
# MySQL DB Details
db_host = 'xxxx'
db_user = 'xxxx'
db_password = 'xxxx'
db_name = 'xxxx'
 
def on_message(client, userdata, message):
    topic = message.topic
    payload = message.payload.decode('utf-8')  # Payload as string
    # DB Connection
    try:
        conn = mysql.connector.connect(
            host=db_host,
            user=db_user,
            password=db_password,
            database=db_name
        )
        cursor = conn.cursor()
        # Datensätze erstellen
        insert_query = "INSERT INTO xxxx (topic, payload) VALUES (%s, %s)" # Name der Tabelle
        cursor.execute(insert_query, (topic, payload))
        conn.commit()
        print(f"Inserted topic: {topic}, payload: {payload}")
    except mysql.connector.Error as err:
        print(f"Error: {err}")
    finally:
        if conn:
            cursor.close()
            conn.close()
 
# Verbindung MQTT
client = mqtt.Client()
client.on_message = on_message
 
client.connect(broker, port)
client.subscribe('#')

client.loop_forever()