# Ejecución del Proyecto Flex & Bison

Este proyecto contiene archivos para analizar y procesar texto utilizando Flex y Bison.

## Requisitos

- Flex
- Bison
- GCC (o cualquier compilador C compatible)

## Pasos para ejecutar

1. **Generar el analizador léxico con Flex:**
    ```bash
    flex archivo.l
    ```

2. **Generar el analizador sintáctico con Bison:**
    ```bash
    bison -d archivo.y
    ```

3. **Compilar los archivos generados:**
    ```bash
    gcc lex.yy.c archivo.tab.c -o ejecutable
    ```

4. **Ejecutar el programa:**
    ```bash
    ./ejecutable < entrada.txt
    ```

## Notas

- Reemplaza `archivo.l` y `archivo.y` por los nombres reales de tus archivos.
- El archivo `entrada.txt` debe contener el texto a analizar.
- El ejecutable puede tener otro nombre si lo especificas en el comando de compilación.
