AYDOO TP FINAL
===============
Campaner, Lucas
===============

Disenios pensados

* En un primer momento el disenio que pense solamente incluia los objetos espaciales y no los efectos. Investigue el patron Mediator y lo desestime.
* Al darme cuenta que este es un problema conocido segui investigando y encontre el patron Observer.
* Intente implementarlo de una manera standar y no me funciono.
* Finalmente una implementacion parecida al patron Observer fue la elegida para el disenio del tp. Las decisiones principales se explican a continuacion.

Decisiones principales del disenio elegido:

* La idea basica esta basada en el patron Observer con algunas modificaciones.
* Los clases del dominio de los objetos espaciales son hijas de una clase padre que contiene los metodos principales: 
	1. chocar
	2. actualizar_por_choque
* Cada subclase sabe como reacciona frente a un choque, tiene un conjunto de choques posibles asociados a sus efectos (los cuales se explicaran mas adelante) (1)
* Tomados del patron antes mencionado ademas tenemos los metodos que permiten manipular ese conjunto de choques:
	1. agregar_choque_posible
	2. eliminar_choque_posible
* Estos ultimos metodos nos permiten extender en tiempo de ejecucion.
* En el metodo chocar nos podemos encontrar con dos excepciones:
	1. ObjetoEspacialMuertoException
	2. ObjetoEspacialSinEfectoDefinidoException
* (1) Una especie de analogia con los observadores serian las clases hijas de Efecto. Las cuales aplican los cambios en los objetos del dominio de los objetos espaciales.
* El objeto espacial cuando es chocado, notifica al otro objeto de que lo fue, y este se actualiza.
* Existe una clase de test para cada clase del dominio incluida la super clase objeto_espacial, una de integracion con los 25 choques posibles, una con los ejemplos dados como consigna y otra para las excepciones.

Smell 

* El EfectoNulo no tiene estado ni comportamiento, pero existe para agregar claridad al codigo respecto al dominio.

