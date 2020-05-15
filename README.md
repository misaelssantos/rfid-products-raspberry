# rfid-products-raspberry
Configurações para o servidor raspberry

# Pré-requisitos

* Verificar todos os pré-requisitos dos projetos (git, node, python3...)

# Mosquitto

## Instalação do Mosquitto e Client

```shell
sudo apt update
sudo apt install -y mosquitto mosquitto-clients
sudo systemctl enable mosquitto.service
```

## Configuração de usuário e senha


```
mosquitto_passwd -c passwordfile compras
# copiar para local seguro
```

Editar o arquivo `/etc/mosquitto/mosquitto.conf` informando o arquivo de senhas.

```
password_file /pathto/passwordfile
```

Fonte: http://www.steves-internet-guide.com/mqtt-username-password-example/


# Aplicação

## Script de inicialização dos serviços de aplicação (start.sh)

```bash
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
```

Colocá-lo no `contab`

```shell
crontab -e
```


Apontar para o local onde o script ficará.


```
@reboot cd /home/pi && ./startup.sh
```