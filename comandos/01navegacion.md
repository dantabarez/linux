Navegación entre directorios y listado de archivos
==================================================

## pwd Print Work Directory ##

imprime donde estoy

```
[dtabarez@dan ~]$ pwd
/home/dtabarez
```

## cd Change Directory ##

con cd me muevo

**cd [ruta]**

```
[dtabarez@dan ~]$ cd /

moverme al home
[dtabarez@dan ~]$ cd ~
[dtabarez@dan ~]$ cd
```

## ls List ##

listo en directorio actuals

**ls**

ls -l
en forma de lista larga

el - fichereo y d es di

```
ls -lt
ls -ltr
ls -lh
h es legible humanamente

ls -lhS
ordena por tamano mayor va primero

ll -hSr

```

otros comandos utiles

-a todos los archivos, incluso los que comienzan con punto (.).

-A Lista todos los ficheros en los directorios, excepto los que comienzan con punto . (.) y los que comienzan con doble punto (..).

-F indica tipo: / directorio, * ejecutable, @ enlace simbólico.

-h indicará el tamaño en KB, MB, etc.

-l listado en formato largo (o detallado).

-S clasifica los contenidos de los directorios por tamaños, con los ficheros más grandes en primer lugar.

-r invierte el orden de la salida.

-R Lista recursivamente los subdirectorios encontrados.

-t ordenar por fecha de última modificación.

-u ordenar por fecha de último acceso.

-x presenta los ficheros por columnas.

-i precede la salida con el número de i-node


## du Disk Usage##

lista la sumatoria de un grupo de archivos e directorio actual

**du**

```
du

du -h --max-depth=1

```
