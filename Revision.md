Revisiones realizadas por Gabriel Pena
======================================

PRIMERA REVISION

* Puntos negativos:

- Observacion 1: Los nombres de los tests, si bien reflejan en cierto modo lo que hacen, no están siguiendo la convención. El formato aceptado con Rspec es "it should do something". El problema se reitera en todos los tests de integración. Los tests unitarios si la estan siguiendo.
Ejemplo: it 'Nave con nave: la dos naves disminuyen su vida en 100 unidades'.

- Respuesta: Aceptado. Si bien me parece que es mas claro para el dominio comenzar especificando que objeto choca con que objeto, decido respetar la convencion.

- Observacion 2: Tenes algo de codigo repetido en los distintos Efectos. Muy poquito. Sugiero, como para dar un efecto un poco mas agradable a la lectura, crear una clase Efecto y usar herencia. Se va a ver mejor en el diagrama de clases también.

- Respuesta: Aceptado. No por la observacion de la repeticion de codigo, sino por la claridad (si bien no es al estilo interfaces de Java) de que cada nuevo efecto necesita un metodo afectar_objeto.

- Observacion 3: Smell de diseño a mi criterio: supongamos que quisieramos agregar un objeto espacial nuevo. Por ejemplo, Agujero Negro. ¿Como modelariamos las interacciones de cada objeto espacial existente con el nuevo? Habria que toquetear el codigo de todos los objetos, lo cual se podria volver extremadamente problematico si hubiese que agregar muchos objetos espaciales mas. Y más aun, porque SOLID exige extender y no modificar, con tu diseño cada vez que agregas un nuevo objeto tendrias que: o modificar todos los anteriores para agregar nuevas entradas en los hashes (contra SOLID) o bien extender cada uno en una nueva version (por ejemplo: BombaB extiende de Bomba) y agregar en ella la nueva entrada al hash. Este tipo de diseño me parece mas adecuado cuando las interacciones son por ejemplo de uno a uno, pero aca cada objeto se relaciona de 1 a n y se puede complicar.

- Respuesta: Aceptado. Al momento de recibir esta observacion ya habia creado los metodos agregar_choque_posible y eliminar_choque_posible los cuales hacen que dinamicamente se puedan agregar o quitar choques posibles, ademas de lo aclarado de poder heredar de objeto_espacial y escribir un constructor distinto. Esto inspirado en el patron Observer.

* Puntos positivos:

- El codigo es muy claro.
- No observo estructuras de if encadenados en ninguna parte.
- Hay mucha cantidad de tests, y muchos casos contemplados.
- Hay tests unitarios para cada clase que lo amerita y tambien test de integración del sistema completo.
- En terminos generales me parece un buen codigo, es agradable a la vista.

SEGUNDA REVISION

- Observacion 1: hay código bastante oscuro en la clase ObjetoEspacial. Recomiendo refactorizarlo y/o agregarle comentarios, porque yo realmente hubo varias líneas que no entendí bien lo que hacen.

- Respuesta: No aceptado. No creo que haya codigo oscuro. Es bastante parecido al patron Observer. No creo que sea necesario comentar.

- Observacion 2: tests de integración con muchos expect. No es algo problemático pero es un smell, en general está bueno que esten mas separados.

- Respuesta: No aceptado. En los test con varios expect, en general, se hacen expect sobre la vida y masa de los dos objetos que chocan lo que me parece pertinente.

- Observacion 3: No me convence el hecho de que en cada clase del dominio esten guardadas las interacciones con los demas. Por el hecho de que no se si favorece la extensibilidad. Vos me comentaste que intentaste hacer un diseño imitando el patron Observer, que te permita agregar las interacciones en tiempo de ejecucion. El problema es, obviamente, que pasara si la cantidad de objetos existentes empezara a crecer. No me termina de convencer.

- Respuesta: No aceptado. Me parece algo positivo que cada objeto_espacial conozca que le pasa cuando choca con otro objeto_espacial. Si aparece un nuevo objeto espacial, el mismo puede agregarse como choque posible mediante el metodo agregar_choque_posible, algo parecido a lo que hace el patron observer cuando agrega un observador. Ademas esta clase nueva de objeto puede tener definida por defecto los choques con los objetos espaciales ya existentes.

- Observacion 4: en el diagrama de secuencia las flechas representan mensajes entre objetos. Cuando se lanza la excepcion, la nave le dice a la excepcion: ¡lanzate! Deberias poner throw, raise o algo que indique eso en lugar de escribir la causa de la excepcion, ya que eso no es un mensaje.

- Respuesta: Aceptado. No puse el mensaje de ¡lanzate!, aunque lo que quize representar es que la excepcion le devuelve ese mensaje.