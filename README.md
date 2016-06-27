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
* Los clases del dominio (los objetos espaciales) son hijas de una clase padre (objeto_espacial) que contiene los metodos principales: 
	1. chocar
	2. actualizar_por_choque
	3. agregar_choque_posible
	4. eliminar_choque_posible
* Cada subclase sabe como reacciona frente a un choque y tiene un conjunto de choques posibles asociados a sus efectos(1) definidos en su constructor particular.
* El objeto espacial cuando es chocado, notifica al otro objeto de que lo fue, y este se actualiza.
* Los choques pueden agregarse o eliminarse en tiempo de ejecucion segun los metodos 3 y 4 descriptos anteriormente dando extensibilidad al disenio.
* (1) Una especie de analogia con los observadores serian las clases hijas de Efecto. Las cuales aplican los cambios en los objetos del dominio de los objetos espaciales.
* En el metodo chocar nos podemos encontrar con dos excepciones:
	1. ObjetoEspacialMuertoException
	2. ObjetoEspacialSinEfectoDefinidoException
* Existe una clase de test para cada clase del dominio incluida la super clase objeto_espacial, una de integracion con los 25 choques posibles, una con los ejemplos dados como consigna y otra para las excepciones.
* Si se desea agregar un objeto espacial nuevo se hace sin problemas agregando la clase correspondiente y seteando por defecto en su contructor la reaccion ante los demas objetos. A su vez, a los objetos ya existentes se le agrega en tiempo de ejecucion el efecto producido por este nuevo objeto. Respetamos asi el concepto OPEN/CLOSE.
* En el caso de los efectos bastara con agregar nuevos efectos.

Smell 

* La clase padre Efecto no tiene estado ni comportamiento, pero existe para agregar claridad al codigo respecto al dominio.
* El EfectoNulo no tiene estado ni comportamiento, pero existe para agregar claridad al codigo respecto al dominio.

