# Tarea 4 Sistemas Operativos 1
[![image.png](https://i.postimg.cc/hj2Y3vLX/image.png)](https://postimg.cc/0MJZz8Hv)

# Creacion de un systemd unit de tipo servicio

## Creamos el script:  
En esta direccion: /usr/local/bin/saludo.sh y con este contenido:

```bash
  #!/bin/bash

while true; do
    echo "Hola Mundo"
    date
    sleep 10
done

```

Lo hacemos ejecutable
```bash
  chmod +x /usr/local/bin/saludo.sh

```

## Creamos el servicio systemd:
Creamos un nuevo archivo llamado saludo.service en /etc/systemd/system/ con el siguiente contenido:
```bash
  [Unit]
Description=Servicio para imprimir un saludo y la fecha actual

[Service]
ExecStart=/usr/local/bin/saludo.sh
Restart=always
User=nobody
Group=nogroup
Environment=PATH=/usr/bin:/usr/local/bin

[Install]
WantedBy=multi-user.target

```

Iniciar y habilitar el servicio
```bash
  sudo systemctl daemon-reload

```

Inicia el servicio:

```bash
  sudo systemctl start saludo.service


```

Para que el servicio se inicie automáticamente al arranque:
```bash
  sudo systemctl enable saludo.service
```

Se puede parar el servicio asi:
```bash
  sudo systemctl stop saludo.service
```

Y para ver el estado del servicio:
```bash
  sudo systemctl status saludo.service
```
