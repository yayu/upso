# Proyecto TO-DO

## Enunciado

Se desea contruir una aplicacion Web TODO para registrar las tareas que debe realizar un usuario.

La aplicación Web debe perrmitir al usuario registrado agregar tareas. Estas tareas a su vez pueden contener comentarios y un checklist a ser completados con la división de la tarea en pasos.

### Campos de la tarea
1. id
1. nombre
1. inicio
1. estimacion
1. consumo
1. fin
1. estado (pendiente, en curso y finalizada)
1. lista de responsables

### Campos de la checklist
1. id
1. nombre
1. estado (pendiente, en curso y finalizada)
1. responsable

### Campos de los comentarios
1. id
1. detalle
1. responsable

Los comentarios deben registrar quien y cuando se registro.

## Tarea

1. Defina la estructura de las tablas a utilizar para implementar la aplicación definida anteriormente.
1. Genere las sentencias de creación de las tablas necesarias.
1. Genere las sentencias para eliminar las tablas definidas.
1. Genere consultas SQL para responder a los siguientes interrogantes
   1. Contar la cantidad de tareas pendientes totales
   1. Contar la cantidad de tareas completadas totalmente.
   1. Retornar todos los comentarios del usuario U
   1. Contar la cantidad de checklist de la tarea T.
   1. Retornar todos los comentarios ordenados del usuario U
   1. Retornar todos los comentarios en forma invertida del usuario U.
   1. Retornar todos los comentarios que hayan sido ingresados por el usuario Z.
   1. Retornar todas las tareas del usuario Z
   1. Retornar la fecha del primer comentario.
   1. Retornar la fecha del primer comentario realizado en la tarea T.

## Formato de entrega

Generar un repositorio en Git con los archivos SQL que solucionen los enunciados anteriores utilizando la siguiente nomenclatura:

```
db.tarea_<id_tarea>.sql
```

Por ejemplo para el primer caso sería 

```
db.tarea_1.sql
```
 
## Fecha de entrega

17/05/2015
