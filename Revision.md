Puntos negativos:

Observacion 1: Los nombres de los tests, si bien reflejan en cierto modo lo que hacen, no están siguiendo la convención. El formato aceptado con Rspec es "it should do something". El problema se reitera en todos los tests de integración. Los tests unitarios si la estan siguiendo.
Ejemplo: it 'Nave con nave: la dos naves disminuyen su vida en 100 unidades'

Observacion 2:-Tenés algo de código repetido en los distintos Efectos. Muy poquito. Sugiero, como para dar un efecto un poco más agradable a la lectura, crear una clase Efecto y usar herencia. Se va a ver mejor en el diagrama de clases también.

Observacion 3: Smell de diseño a mi criterio: supongamos que quisieramos agregar un objeto espacial nuevo. Por ejemplo, Agujero Negro. ¿Cómo modelaríamos las interacciones de cada objeto espacial existente con el nuevo? Habría que toquetear el código de todos los objetos, lo cual se podría volver extremadamente problemático si hubiese que agregar muchos objetos espaciales más. Y más aún, porque SOLID exige extender y no modificar, con tu diseño cada vez que agregas un nuevo objeto tendrías que: o modificar todos los anteriores para agregar nuevas entradas en los hashes (contra SOLID) o bien extender cada uno en una nueva version (por ejemplo: BombaB extiende de Bomba) y agregar en ella la nueva entrada al hash. Este tipo de diseño me parece más adecuado cuando las interacciones son por ejemplo de uno a uno, pero acá cada objeto se relaciona de 1 a n y se puede complicar.

Puntos positivos:

-El código es muy claro.
-No observo estructuras de if encadenados en ninguna parte.
-Hay mucha cantidad de tests, y muchos casos contemplados.
-Hay tests unitarios para cada clase que lo amerita y también test de integración del sistema completo.

En términos generales me parece un buen código, es agradable a la vista.
