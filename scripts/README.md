INTRODUCCION A SHELL SCRIPTING

son pequenos programas, para ello lo basico de un scrip es lectura y ejecucion en permisos para que los cambios surtan efecto

son programas con extenciones .sh

atom primer.sh

```sh
#!/bin/bash
echo "hola mundo!!! estos es SH! :)"

```
ejecuto con:
source
```
source primer.sh
```

dando permisos de ejecucion
```
chmod +x primer.sh

./primer.sh
```

tambien puedo usar
```
sh primer.sh
```

- source solo prueba, muestra errores
- sh ejecuta el scripts, debe tener perimisos de ejecucion
- para usar caracteres '$' "Texto" y `comando`
- el ; ejecuta comandos secuencialmente ej. echo hola ; pwd
- con el \ se crea un salto de linea ej. echo hola\ linux
- con # comento lineas



2. USO DE VARIABLES
----------------------------

variables con simbolo $

```sh
DECIR="Hola mundo esto es un sh!"
echo $DECIR

```

2.1 $(ORDEN)
----------------

al ejecutar un comando en el script usamos  $() o ``

```sh
echo $(ifconfig)
```
o podemos ejecutar comandos usando la tilde invertida

```sh
echo `ifconfig`
```

2.2 $ ((OPERACIONES ARITMETICAS))

para operaciones aritmeticas uso doble parentesis
o el uso de []


3. FUNCIONES

```sh
function nombre_funcion {

}
```

por defecto las variables son globales.
tambien existen variables locales para cada, para eso existe la palabra local


4. IF

```sh
if [[ condition ]]; then
#statements
fi
```

tambien puedo usar

```sh
elif [[ condition ]]; then
#statements

else
#statements
```

competar parametros para comparaciones

```
-eq
=
==
-lt
```

4.4 CASE

permite ejecutar varias expediciones depende de la variable ingresada

```sh

case word in
pattern )
;;
esac

```

verificar vocal.sh


5. BUCLES
estructuras iteractivas en shell scripting

5.1 FOR

```sh
for (( i = 0; i < 10; i++ )); do
#statements
done
```

5.2 while until

ejecuta hasta que se logre un objetivo, es similar a do while

```sh

while [[ condition ]]; do
#statements
done

until [[ condition ]]; do
#statements
done

```

5.3 SELECT CASE

ingreso de variantes deacuerdo a opciones


-----------------------------------------------------------------------------------------
sh para ccrear respaldos automaticos con tareas

touch resplados.sh
atom resplados.sh


```sh
#!/bin/sh
#ejemplo script

date
uname -iar
```

**source respaldos.sh**
sh espaldos.sh


```sh
#!/bin/sh
#ejemplo script

tar -zcvf respaldoejemplo.tar.gz /root/proceso/
cp respaldoejemplo.tar.gz /home/dtabarez/Documents

```

```sh
#!/bin/sh
#ejemplo script

tar -zcvf respaldoejemplo2.tar.gz /root/proceso/
cp respaldoejemplo2.tar.gz /home/dtabarez/Documents

```

```sh
crontab -e
*/15 * * * * sh /root/resplados.sh
wq
```
