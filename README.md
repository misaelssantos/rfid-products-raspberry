# rfid-products-raspberry
Configurações para o servidor raspberry

# Pré-requisitos

* Verificar todos os pré-requisitos dos projetos (git, node, python3...)

# Script de inicialização dos serviços (start.sh)

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