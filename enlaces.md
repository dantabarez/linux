ENLACES uso del comando ln Link-Name
======================


en windows accesos directos, es similar, sus tipos son:

- enlaces duros
- enlaces simbólicos

para comprender los enlaces duros es necesario entender como funciona el disco

```
ls -li
ll -i
```

i indicador de inodo, espacio en disco y el numero de enlaces duros

<<<<<<< HEAD
## ENLACE DURO ##
=======
##ENLACE DURO##
>>>>>>> ea3edb858024a1bf6262a3d72e49f18641c5227e

es un archivo que apunta al mismo contenido almacenado en el disco que el archivo original.
es como una copia pero que no ocupa espacio en disco, solo con archivos.
comparten el mismo inodo.

** ln [fichero origen] [fichero de enlace duro] **

```
[dtabarez@dan enlaces]$ ln original enlace1
[dtabarez@dan enlaces]$ ln original enlace2
[dtabarez@dan enlaces]$ ln original enlace3


[dtabarez@dan enlaces]$  ll -i
total 0
23068711 -rw-rw-r--. 4 dtabarez dtabarez 0 Apr 14 18:03 enlace1
23068711 -rw-rw-r--. 4 dtabarez dtabarez 0 Apr 14 18:03 enlace2
23068711 -rw-rw-r--. 4 dtabarez dtabarez 0 Apr 14 18:03 enlace3
23068711 -rw-rw-r--. 4 dtabarez dtabarez 0 Apr 14 18:03 original
```

todo cambio se refleja en los enlaces y en el original. 

<<<<<<< HEAD
## ENLACE SIMBOLICO ##
=======
##ENLACE SIMBOLICO##
>>>>>>> ea3edb858024a1bf6262a3d72e49f18641c5227e

referencia a directorios es netamente un acceso directo

ln -s [directorio origen] [nombre acceso directo]

si borro el directorio original se pierde el acceso a la carpeta.

[dtabarez@dan enlaces]$ ln -s simbolicos/ simbolico1
