# Proyecto Final - Programación Avanzada Backend

## Reverse Polish Notification API
* **Código** 2018-C1PABC
* **Ciclo** 2-2018
* **Sección** C

## Objetivos:

El alumno adquiera los siguientes conocimientos:
- Conozca y se familiarice con APIs REST y frameworks para desarrollarlos.
- Fomentar la investigación y autoaprendizaje del alumno.
- Aplique conocimientos de Programación Orientada a Objetos al crear su propia implementación de una interfaz.
- Aprenda a resolver problemas aplicando estructuras de datos dinámicas y recursividad.
- Utilice sistemas de construcción, dependencia y empaquetamiento de software en Java.
- Implemente metodos de ordenamiento impleícitos (arboles) o explícitos (quicksort) sobre estructuras de datos.


## Descripción:

Se debe de realizar una calculadora en notación polaca inversa que guarde historial, este debe de poder desplegarse ordenado conforme su ingreso del mas nuevo al mas antiguo y otra por expresión.  Para esto se tienen dos opciones, 
1. Opcion 1: realizarlo en la línea de comando / consola 
2. Opcion 2: Una aplicación de tipo REST API

En el case de API REST, se le solicita al estudiante que exponga un URI para resolver las operaciones aritméticas básicas exponiendo un recurso, donde por llamada `POST` se mandará la expersión y se devolvera un resultado.

## Expresiones RPN

Las expresiones en notación polaca inversa, se ingresaran separadas por espacion, y sólmente se necesita implementar los siguientes operadores:

### Operadores Básicos
1. Suma: +
2. Resta: -
3. Multipliación: *
4. División: /

**Ejemplo de Expresiones**
* Ejemplo 1
    * **Expresion:** `3 2 +`
    * **Resultado:** `5`
* Ejemplo 2
    * **Expresion:** `2 1.5 *`
    * **Resultado:** `3`
* Ejemplo 3
    * **Expresion:** `2 1 3 2 1 + * + / 5 *`
    * **Resultado:** `1`
* Ejemplo 4
    * **Expresion:** `3 2 1.5 * 3 / *`
    * **Resultado:** `3`
* Ejemplo 5
    * **Expresion:** `15 7 1 1 + − ÷ 3 × 2 1 1 + + −`
    * **Resultado:** `5`


### Calculate [/calculator]

URL: http://localhost:8080/calculator

La cual deberá devolver al navegador el resultado de la operación proveída,
la cual será una expresión aritmética expresada en notación polaca inversa, aceptando únicamente números y símbolos de operadores separados por espacios.

#### Calculate an expression [POST]

Request (application/json)

+ Body
```json
{"expression":"2 3 +"}
```

Response 
```json
{"result": "5"}
```

Ejemplos de Resultado:

1. `{"result": "7"}`
2. `{"result": "45"}`
3. `{"result": "72.1}`



#### Ejemplo

Expresion: 3 2 +

* POST http://localhost:8080/calculator

* Payload: 
```json
{"expression": "2 3 +"}
```

* RESULT 
```json
{"result": "2 3 +"}
```

### History [/history]

URL: http://localhost:8080/history

Mostrara en el navegador el array de historial de operaciones segun el orden en que se ejecutaron (del mas nuevo al mas antiguo).

Si se agrega el paraemtro order-by=experssion, entonces se debe de ordenar por expresión.

http://localhost:8080/history/?order-by=expression

## Implementacion


## Calificación
* Funcionalidad del proyecto: 					
    * Resolucion de expresion   50 pts
    * Historial				
        * Orden ascendente	    15 pts
        * Orden alfabetico	    15 pts
    * Manejo de errores         10pts
* Documentacion		 					
    * Tecnica (javadoc)	        5pts
    * de usuario (markdown)		5pts
* **Total**                     100 pts

## Referencias
* https://en.wikipedia.org/wiki/Reverse_Polish_notation
* Maven: 
    * http://maven.apache.org/

