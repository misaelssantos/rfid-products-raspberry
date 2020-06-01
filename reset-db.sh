#!/bin/bash

# cd compras/rfid-products-python/db
# python DB_Ini.py
mosquitto_pub -h 192.168.0.17 -d -t /compras/devices/esp32/achocolatado -m 1 -u compras -P mssantos
mosquitto_pub -h 192.168.0.17 -d -t /compras/devices/esp32/acucar -m 1 -u compras -P mssantos
mosquitto_pub -h 192.168.0.17 -d -t /compras/devices/esp32/ovo -m 1 -u compras -P mssantos
mosquitto_pub -h 192.168.0.17 -d -t /compras/devices/esp32/cafe -m 1 -u compras -P mssantos
mosquitto_pub -h 192.168.0.17 -d -t /compras/devices/esp32/cerveja -m 1 -u compras -P mssantos
mosquitto_pub -h 192.168.0.17 -d -t /compras/devices/esp32/frutas -m 1 -u compras -P mssantos
mosquitto_pub -h 192.168.0.17 -d -t /compras/devices/esp32/biscoito -m 1 -u compras -P mssantos
mosquitto_pub -h 192.168.0.17 -d -t /compras/devices/esp32/pao -m 1 -u compras -P mssantos
mosquitto_pub -h 192.168.0.17 -d -t /compras/devices/esp32/leite -m 1 -u compras -P mssantos
mosquitto_pub -h 192.168.0.17 -d -t /compras/devices/esp32/leitepo -m 1 -u compras -P mssantos
mosquitto_pub -h 192.168.0.17 -d -t /compras/devices/esp32/detergente -m 1 -u compras -P mssantos
mosquitto_pub -h 192.168.0.17 -d -t /compras/devices/esp32/carnes -m 1 -u compras -P mssantos
mosquitto_pub -h 192.168.0.17 -d -t /compras/devices/esp32/queijo -m 1 -u compras -P mssantos

