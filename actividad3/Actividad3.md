# Actividad 3
Gestión de Permisos

## Parte 1: Gestión de Usuarios

Creación de Usuarios:

```bash
  sudo useradd usuario1
  sudo useradd usuario2
  sudo useradd usuario3

```

Asignación de Contraseñas:

```bash
  sudo passwd usuario1
  sudo passwd usuario2
  sudo passwd usuario3

```

Información de Usuarios:

```bash
  id usuario1

```
#### salida:
uid=1001(usuario1) gid=1001(usuario1) groups=1001(usuario1)


Eliminación de Usuarios:

```bash
  sudo userdel usuario3
```

## Parte 2: Gestión de Grupos


Creación de Grupos:

```bash
  sudo groupadd grupo1
  sudo groupadd grupo2


```

Agregar Usuarios a Grupos:

```bash
  sudo usermod -aG grupo1 usuario1
  sudo usermod -aG grupo2 usuario2

```

Verificar Membresía:

```bash
  groups usuario1
  groups usuario2

```
#### salida:
  usuario1 : usuario1 grupo1

  usuario2 : usuario2 grupo1 grupo2



Eliminar Grupo:

```bash
  sudo groupdel grupo2
```


## Parte 3: Gestión de Permisos


Creación de Archivos y Directorios:

```bash
  echo "Contenido del archivo 1" > archivo1.txt
  mkdir directorio1
  echo "Contenido del archivo 2" > directorio1/archivo2.txt

```

Verificar Permisos:

```bash
  ls -l archivo1.txt
  ls -ld directorio1

```

#### salida:
 -rw-r----- 1 usuario1 usuario1 22 ago  9 12:34 archivo1.txt

  drwxr-x--- 2 usuario1 usuario1 4096 ago  9 12:34 directorio1



Modificar Permisos usando chmod con Modo Numérico:

```bash
  chmod 640 archivo1.txt

```

Modificar Permisos usando chmod con Modo Simbólico:

```bash
  chmod u+x directorio1/archivo2.txt
```

Cambiar el Grupo Propietario:

```bash
  sudo chown :grupo1 directorio1/archivo2.txt

```

Configurar Permisos de Directorio:

```bash
  chmod 750 directorio1

```

Comprobación de Acceso: Intentar acceder como usuario2:

```bash
  cat archivo1.txt
  cat directorio1/archivo2.txt

```

Verificación Final:

```bash
  ls -l archivo1.txt
  ls -ld directorio1
```

#### salida:
  -rw-r----- 1 usuario1 grupo1 22 ago  9 12:34 archivo1.txt
  
  drwxr-x--- 2 usuario1 grupo1 4096 ago  9 12:34 directorio1
