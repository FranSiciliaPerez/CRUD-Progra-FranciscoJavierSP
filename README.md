# CRUDMARVEL-Programacion
Hola buenas, esta aplicación se llama "CRUD MARVEL(Listado de Superheroes y Autores de Marvel)" y sirve como su nombre indica, para tener un registro de todos los superheroes y autores junto con su informcion mas básica. Así pues, la pagina está planteada para que cualquier persona pueda ver las listas de superheroes y autores de Marvel, y solo el administrador pueda ser el unico que tenga permiso para añadir, modificar y eliminar cualquier dato en las tablas.
Enlace al video explicación de la aplicación: https://youtu.be/s6zgx8w0pSA

Cuando entramos en el index.jsp nos encontramos con una pagina de inicio/home, en la que se encuentran 2 botones. El primer botón tal y como se indica en la pagina, te redirigirá a donde están los listados de los superheroes y los autores(este será un listado visible para cualquier usuario que desee verlo). Y otro boton que nos indica que si pulsamos en él, vamos a ir al modo administrador.![inicio](https://user-images.githubusercontent.com/72436014/168630973-bb99801a-7359-4476-9ce9-eae43823008f.jpg)

Si pulsamos el boton -Listado Marvel-, se nos abrirá la pagina de listado en la que aparecen dos tablas donde se muestran tanto los datos de los superheores como con los autores, ademas de un botón debajo de las tablas por si quiere regresar al inicio.![listado](https://user-images.githubusercontent.com/72436014/168631809-6b3a54f1-c09e-4c5f-8716-db64c4d4a02b.jpg)

Tambien si pulsamos el boton en la pagina de incio/home, se abrirá otra página donde aparecerá un login que será obligtorio realizar para poder acceder al modo administrador, ya que este modo está restringido como su nombre indica, al/los administrador/es.![login](https://user-images.githubusercontent.com/72436014/168632928-931e16dc-7775-4cb1-a2ae-da2151f88069.jpg)

Una vez estamos en la pagina de login, solo se pueden hacer dos cosas, registrarse y pulsar o bien la tecla enter, o bien el boton de enviar para poder acceder a los listados como administrador; o pulsar el boton de volver al inicio.
![login2](https://user-images.githubusercontent.com/72436014/168635687-23a293b9-81d4-4377-8f8e-f188dd6f5975.jpg)

Procedemos a introducir el usuario y la contraseña del administrador(previamente registrada en la base de datos, en este caso en la tabla usuario) y nos redirige la pagina al listado de superheroes y autores al igual que si pulsabamos el boton -Listado Marvel- en la pagina inicio, solo que esta vez aparecen 4 botones en cada una de las tablas que nos serviran para insertar(el botón de añadir), modificar(el botón de editar), eliminar(el boton de borrar) y por ultimo cerrar sesión(un botón que nos manda de vuelta a la pagina de logueo).![listado_admin](https://user-images.githubusercontent.com/72436014/168635906-5bd6b9b7-80af-4acc-97ed-43d6969abd67.jpg)


Si presionamos el botón añadir, se abrirá una pestaña nueva, donde aparecen todos los campos a rellenar para poder introducir el superheroe/autor en la tabla. Una vez lo hallamos rellenado todo, pulsando aceptar nos redirigirá a otra pestaña nueva que confirmará que se ha añadido con exito el superheroe/autor. Ademas de que tambien tenemos la opción de o bien volver a la pagina de inicio, o bien volver a insertar otro superheroe/autor pulsando los botones que aparecen en esta pagina::![Añadir super heroe](https://user-images.githubusercontent.com/72436014/121830514-7cd6af00-ccc5-11eb-8d4c-66f9cc77188b.png)

![confirma_insert](https://user-images.githubusercontent.com/72436014/168637124-aa9bed08-643c-4951-8079-3898aac6736e.jpg)

Si presionamos el botón de editar, se abrirá una pestaña nueva en la que aparecerán los campos rellenos con los datos del superheroe/autor seleccionado y simplemente escribiendo otra vez el dato o lo que se desee cambiar en los campos deseados, se modificaria:![modifica](https://user-images.githubusercontent.com/72436014/168637586-702b218d-48a8-4152-8896-1e18ace2a60e.jpg)

Una vez modificado y pulsamos el botón aceptar, aparece una pagina en la que se confirma la modificación y nos indica la opción de volver al inicio pulsando el botón:
![confirma_modifica](https://user-images.githubusercontent.com/72436014/168637765-82cf2f6a-fc46-491d-a039-b651210a5b5e.jpg)


Y por último si presionamos el botón "borrar", automaticamente, se eliminará toda la fila que estuviera a la altura del botón:
![borrado](https://user-images.githubusercontent.com/72436014/168638553-2778aaf2-d343-4279-8795-1121d3bf5aed.jpg)
![ver_borrado](https://user-images.githubusercontent.com/72436014/168638591-80ab62d5-571e-4338-b47f-0bd7bcb9093b.jpg)


Gracias a todos por pasaros por este repositorio, si os ha gustado por favor dale una estrellita :)
