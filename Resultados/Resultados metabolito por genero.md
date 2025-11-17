# Proceso de obtención de nivel medio de metabolito en función del genero

## Introducción

Este documento describe el flujo de trabajo seguido desde la obtención de las bases de datos originales hasta la generación de un gráfico representativo que compara los niveles promedio de un metabolito específico según el género de los individuos, cumpliendo con uno de los objetivos del proyecto IPC-2025-GRUPO5.

## Obtención de la Base de Datos

Se parte de dos archivos principales proporcionados en el repositorio:
- **metadata.tsv**: contiene los metadatos de las muestras con información demográfica y clínica, como edad, género y grupo de estudio.
- **mtb.map.tsv**: incluye los identificadores estandarizados de metabolitos detectados, tales como ID en bases KEGG y HMDB, y nombres de metabolitos con anotación de confianza.

Estos datos provienen del estudio de Poyet et al. (2019), que ofrece un recurso amplio con muestras humanas emparejadas con perfiles multi-ómicos longitudinales.

## Procesamiento y Selección de Datos

Para facilitar el análisis, se seleccionaron:
- Una submuestra de 10 individuos con variables críticas (Sample, Age, Gender).
- Cinco metabolitos con alta confianza en la anotación para evaluar sus niveles.
  
Se creó una tabla sintética que contiene, para cada muestra, la edad, género y los niveles relativos medidos de estos metabolitos.

## Análisis y Visualización

Se calculó el nivel promedio del metabolito "1-methylguanine" para cada género (masculino y femenino). Seguidamente, se generó un gráfico de barras para visualizar claramente las diferencias medias del metabolito entre los géneros, utilizando el software R y la librería ggplot2.

El código R empleado agrupa los datos por género, calcula la media y presenta un gráfico estilo barras, facilitando la interpretación y comunicación de resultados relevantes para la investigación del microbioma y su impacto metabólico.

## Conclusión

Este procedimiento permitió transformar datos complejos y multidimensionales en una visualización clara y directa que contribuye a la comprensión de potenciales diferencias metabólicas en función del género, alineándose con objetivos del proyecto.
