02 Manipulación y modificación del árbol de directorios
=======================================================


## mkdir -- Make Directory ##

crea nuevo directorio

**mkdir [nombre nueva ruta]**

```
mkdir sandbox
```

## touch ##

- abre y cierra el archivo, puede cambiar la fecha de modificación
- crea nuevo archivo con el nombre y extensión indicados

**touch [nombre fichero]**

```
touch hola.txt
touch prueba.md
touch {1,2,3,4,5}.txt
```

- extensión md es de mark down - lenguaje para realizar documentación
- {} permite crear varios archivos usando comas.

## rm - remove ##

**rm [nombre fichero]**

**rm -rf [nombre directorio]**

```
rm prueba.md
rm -rf sandbox
```

buscar ayuda, man; manual o --help ayuda rapida

```
man rm
rm --help
```

-r : recursivamente
-f: force, forzar

## mv -- Move moviendo ##

mueve ficheros a otros directorios

**mv [fichero] [nueva ubicación]**

ej.
```
mv borrador ..
mv enlaces.md ./comandos/
mv 1.txt ./esc2/
mv ../2.txt .
```

## mv -- Renombrando Archivo ##

muevo en el mismo directorio pero cambio de nombre al fichero

**mv [nombre fichero] [nuevo nombre fichero]**

ej.
```
mv 5.txt arichvo5.txt
mv hola.txt nuevohola.txt
```


## cp -- Copy ##

trae el archivo y deja el original

**cp [fichero] [nueva ubicación]**

ej.
```
cp hola.txt /home/user/Downloads

cp ./*.txt ./esc2/
```

## pushd y popd ##

moverme rápido a un directorio especifico

**pushd [directorio a guardar]**
**popd**

- popd de me regresa a directorio guardado

ej.
```
pushd .
pushd /home/user/Downloads

popd
```
- al usar el punto en pushd guarda directorio actual sin especificar la ruta luego regreso con popd
