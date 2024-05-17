# Interfaces funcionales (Consumer)

## Consumer

La interfaz `Consumer` representa una operación que acepta un solo argumento de entrada y no devuelve ningún resultado. A diferencia de la interfaz `Function`, la interfaz `Consumer` no devuelve ningún resultado.

```java

public class Ejercicio1 {
    public static void main(String[] args) {
        Consumer<String> consumer = (String s) ->{ System.out.println(s) };
        // como ejecutamos este consumer?
        consumer.accept("Hola mundo"); // el método accept ejecuta el consumer
    }
}
```
En el ejemplo anterior, se crea un objeto de tipo `Consumer` que imprime el argumento que recibe. Para ejecutar el consumer, se llama al método `accept` y se le pasa el argumento que se desea imprimir.

## Ejericio 1

Crear una lista de enteros y usar una expresión lambda para imprimir cada número de la lista. Usando la interfaz `Consumer`.
### Input
```java
List<Integer> numbers = Arrays.asList(1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
```
### Output
```bash
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
```
## Ejercicio 2

Crear un ArrayList de tipo String y usar una expresión lambda para modificar cada cadena en la lista (por ejemplo, agregando un sufijo).

### Input
```java
List<String> names = Arrays.asList("Juan", "Pedro", "Maria", "Ana", "Luis");
```
### Output
```bash
[Juan-NEW, Pedro-NEW, Maria-NEW, Ana-NEW, Luis-NEW]
```

## Ejercicio 3

Crear una lista de números, filtrar los números pares y usar un Consumer para imprimir solo los números pares.

### Input
```java
List<Integer> numbers = Arrays.asList(1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
```

### Output
```bash
[2, 4, 6, 8, 10]
```

## Ejercicio 4

Crear una lista de nombres, y usar dos Consumer para imprimir cada nombre en mayúsculas y su longitud.

### Input
```java
List<String> names = Arrays.asList("Juan", "Pedro", "Maria", "Ana", "Luis");
```

### Output
```bash
JUAN - 4
PEDRO - 5
MARIA - 5
ANA - 3
LUIS - 4
```

## Ejercicio 5

Crear una lista de números y usar un Consumer para imprimir la suma de los números.

### Input
```java

List<Integer> numbers = Arrays.asList(1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
```

### Output
```bash
55
```