Este ejercicio es muy sencillo y es un buen ejemplo para practicar cómo escribir pruebas automáticas con herramientas XUnit.

Se quiere implementar un método que permita calcular una secuencia de números aleatorios entre un rango de dos números enteros, de manera que dichos números aleatorios nunca se repitan.

Por ejemplo, dado el rango [1, 6], los tres primeros números podrían ser 4, 2 y 3. Los sucesivos números tendrían que ser distintos a todos los anteriores.

A continuación pongo varios ejemplos:

m(3, 1) --> No puede generar la secuencia.

m(1, 1) --> Devuelve la secuencia [1].

m(1, 2) --> Devuelve la secuencia [1, 2] o la secuencia [2, 1]. ambas serían válidas.

Etc.

Intenta escribir un conjunto de pruebas que verifiquen que el método funciona correctamente, o incluso implementarlo aplicando TDD. Colgaré una solución en pocos días.

Un saludo.