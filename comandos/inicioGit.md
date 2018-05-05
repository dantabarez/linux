**INSTALACIÓN Y CONFIGURACIÓN GLOBAL**  

* * *

instalar // fedora 27

  

```

dnf install git

git --version

```

  

configuracion inicial 

  

```  
git config --global user.email dan.tabarez@gmail.com  
git config --global user.name Dan  
git config --global color.ui true  

git config --global core.editor "atom --wait"  

```

  

otros editores  

  

```

git config --global core.editor "vim --wait"

git config --global core.editor "subl --wait"

git config --global core.editor "code --wait"  

```

  

si hay problemas o múltiples instancias

  

```

git config --global --replace-all core.editor "atom --wait"  
```

probar configuración:

```

git config --global -e  

```

mostrar configuración

  

```

git config -l  

git config --global -l

```

  

**INICIANDO Y BORRANDO REPO**

* * *

  
git init primer_repo  
git init

  
git config --list

  
git init invie  
git status  
git add index.html  
git status

  
git rm --cached index.html

git status

git add *

  
git status  
git rm -f index.css

  
**AGREGANDO COMMITS**

  
git commit -m "Inicio de Landing"  
  
git status  
git add header.webp  
git status  
git commit -m 'agregando el header'

  
git add index.html  
git commit -m 'agregando el hero'  
git add hero.jpg  
git commit --amend

  

  

**GIT TAG**

**VERSIONANDO **

  
git tag -a 0.5 -m 'version estable del proyecto'  
git tag -l

  

**GIT LOG**

verificando los commits realizados con su respoectivo sha1

  

git log 

  

en una linea y grafica de los brackets

  

git log --oneline

git log --graph   

git log --oneline --graph  

  

ultimos n logs 

  

git log -1  
git log -2  
git log -3  
  

  

**GIT DIFF**

**DIFERENCIA ENTRE VERSIONES**

  

git log --oneline  
git diff 7ac8fbb  
git diff 4f51de7  
git diff dd65eeb  

  
git log --oneline  
git diff dd65eeb 7ac8fbb  
git diff 7ac8fbb dd65eeb  
git diff 7ac8fbb 4f51de7  
  

  

**GIT RESET**  

  

****git reset --soft \[SHA 1\]**: elimina los cambios hasta el staging area  
**git reset --mixed \[SHA 1\]**: elimina los cambios hasta el working area  
**git reset --hard \[SHA 1\]**: regresa hasta el commit del \[SHA 1\]**

  

git log --oneline  
git reset --soft 7ac8fbb  
git log --oneline  
git status  
git log  
git commit -m 'agegando nuevo hero'  
git log --oneline  
  

**GIT BRANCH**

  

**git branch \[nombre\]** se crea una nueva rama  
**-l**: listamos las ramas  
**-d/-D \[nombre\]**: borramos rama - borrado forzado  
**-m \[nombre\] \[nombre_nuevo\]**: para renombrar ramas  

  

  

**GIT CHECKOUT**

moverse entre ramas

**git checkout \[nombre\]** moverse entre ramas  
**git checkout \[sha1\]** crea rama en estado del sha1  
**git checkout -b \[nombre\]** crea nueva rama con el nombre indicado  
  

  

git checkout ResDesing

  

git checkout master  
git branch -l  

  

crear a un punto con el sha1

  

git checkout eec569e

  

crear y nombrar

  

git checkout -b nueva-img  
git checkout -b hotfix  
git branch -l  

  

  

**GIT MERGE**

  

**git merge \[rama\]**: Nos permite mezclar los cambios realizados en dicha rama con la rama en la que estamos.

**fast-forward**: los mezcla automáticamente  
**recursive/auto-merging**: ambas ramas salieron al mismo tiempo y hay algo nuevo en la rama que la otra no recuerda, por eso hace la mezcla recursiva.  
**manual merge**: nos va a tocar decirle a git específicamente los cambios que queremos mezclar

  

**GIT REBASE**

  

**git rebase**: hace prácticamente lo mismo que _merge_, cambiamos la historia de nuestro proyecto sin crear bifurcaciones del proyecto. Es mejor usar **merge**  
Usar solo git rebase de manera local.

**git rebase \[nombre de rama\]**

****git rebase -i \[nombre de rama\]**  
**

-i: de manera interactiva, nos abrira el editor que tengamos definido en la configuración de git.  

  

**GIT STASH**

  

**git stash**: es otro de los limbos, como el staging area. Para agregar los cambios estos deben estar en el staging area.  
**git stash list**: nos muestra la lista de stash que tengamos.  
**git stash drop stash@{numero}**: nos permite borrar un stash.  
**git stash apply**: aplicamos el último cambio  

  

**GIT CHERRY PICK**

**git cherry-pick \[SHA1\]** nos permite cambiar un commit a otra rama para salvarnos la vida.