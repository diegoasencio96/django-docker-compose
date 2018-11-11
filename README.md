# README #

# django-docker-compose
Ejemplo de configuración basico de un proyecto django en un ambiente dockerizado. 

### ¿Cómo clono el repositorio?

```
git init
git remote add upstream https://github.com/diegoasencio96/django-docker-compose
git checkout -b development
git pull upstream development
```

# Ejecutar el proyecto

### Por primera vez
```
docker-compose build
```


### Luego de haber hecho build la primera vez
```
docker-compose up
```

# Ejecutar comandos para django usando el Makefile:

```
make migrate
make statics
make superuser
```

```
Nota: Si se realizan cambios sobre el compose, se debe construir nuevamente el proyecto.
```

# ¿Cómo contribuir?

Guardar cambios locales
```
git add -A
git commit -m "cambios locales"
git checkout development
```

Ahora actualizamos la rama (bajamos los cambios)
```
git pull upstream development
```

A continuación nos pasamos a nuestra rama
```
git checkout master
```

Y nos basamos en develop
```
git rebase development
```

Luego lanzamos nuestro push a nuestra rama en upstream
```
git  push upstream master
```

Y por último hacemos pull request de la rama master a development, los cambios se verán reflejados cuando el integrador acepte el pull request y haga el merge correspondiente, luego cada uno debe actualizar su rama de develop y hace rebase sobre su rama para poder seguir trabajando.
