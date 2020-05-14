#!/bin/bash

sleep 60
cd /home/pi/compras/rfid-products-python

# API
python3 main.py &

# Subscriber MQTT
source .env
python3 subscriber.py &

# Frontend React
cd ..
cd rfid-products-react
node index.js &


