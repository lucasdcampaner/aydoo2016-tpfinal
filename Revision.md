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