COMANDOS FICHEROS
=================

## FILE ##

File determina que tipo de archivo e imprime en pantalla el resultado

**File [nombre fichero]**

## EXEC ##
comando del kid de linux, cambia el shell por un programa diferente. KSH es una shell secundaria, al ejecutar

**exec [programa a ejecutra]**

ejemplo:
```
>yum install ksh

>echo $$
muestraa proceso actual

>bash: terminal por defaul bash.

>exec ksh
ejedctura shell secundaria

>exec bash
volver al shell primaria
```

## XARGS ##

construir y ejecutar comandos desde la entrada estandar

ej. rm , rm -rf * se desborda si es demaciado extenso

```
>ls | xargs rm

touch {1,2,3,4,5,6,7,8,9}
ls
ls | xargs rm
ls | xargs rm -rf
```

toma la entrada estandar y ejecutar un comando.  trabaja también con Find y Locate


## GREP ##

filtro y busquedas, basado en la coincidencia de un patrón, comando solo y la opción o con un pipe |

**grep [parametro a buscar] [fichero]**

```
grep bash /etc/passwd
grep sbin /etc/passwd
```

buscando en un fichero

```
grep -c [patron] [fichero]  
numero de coincidencias

grep -n [patron] [fichero]  
enumera las coincidencias
grep -n sbin /etc/passwd
```

-v
búsqueda que no coincide con el patron.

-l
lista el fichero donde hay un contenido con la busqueda solicitada
grep -l linux /etc/*

-i
mayuscula o minuscula del patron a buscar
grep -i linux /etc/mtab

-w
-w, --word-regexp force PATTERN to match only whole words

listado los archivos en el directorio que contiene el patron a buscar
grep -w linux /*


## EXPRESIONES REGULARES ##
búsquedas mas avanzadas con comodines, se usa con grep

- básicas
- extendidas

```
. (punto); cualquier carácter simple
[] corchetes; coincidencia de un carácter o un rango en orden incremental
* asterisco; carácter repetido  o mas veces
^ potencia; se una dentro de corchetes e indica negación , solo el texto del patrón esta al inicio de la linea
$ el texto procedente debe estar al final de la linea.
```

**PUNTO**

```
cat > example.txt
cat example.txt
grep --color 'a..' example.txt
```

muestra los que tengan a.. y cualquier carácter después

**CORCHETES**

grep --color '[ab][a-d]' example.txt
abcddd

primer caracter de la a o b, segundo caractrer de la a a la d siempre incremental sino sale error

grep --color '[^abc]d' example.txt
abcddd

el simbolo ^ me muestra las que no inicien con abc y al lado tenga una d, niega lo que esta dentro de los corchetes.


**ASTERISCO**
para que coincida con 0 o mas de los caracteres anterior

grep --color 'd*' example.txt
abcddd


**POTENCIA Y DOLAR ^ $**
coincidencia al final de la linea

grep --color '^a' example.txt
abcddd
busca patron al inicio de la linea


grep --color 'c$' example.txt
xyzabc
busca el patron que tenga al final de la linea

**backslash**

sirve como parámetro para buscar * asterisco en una linea
grep --color 'cd\*' example.txt
abcd*



## EXPRESIONES REGULARES EXTENDIDAS extended grep ##
egrep esta en desuso grep -E es la misma función

```
? interrogación coincide o no, es opcional
+ mas; una o mas coincidencias antes del mas
| pipe; operador lógico O
```

agregando las palabras color y colour

grep -E 'colou?r' example.txt
color
colour
0 o 1 coincidencia del carácter anterior.

grep -E 'd+' example.txt
abcddd
abcd*

egrep 'gray|grey' example.txt
gray anathomy
grey sombras

muestra la una o la otra
