# Informe del Proyecto IPC-2025-GRUPO5: Gestión y Análisis de Datos Microbioma-Metaboloma

## Índice

- [Introducción](#introducción)  
- [Obtención y Preparación de Datos](#obtención-y-preparación-de-datos)  
- [Creación de la Base de Datos Procesada](#creación-de-la-base-de-datos-procesada)  
- [Análisis Exploratorio de Datos](#análisis-exploratorio-de-datos)  
- [Generación del Gráfico de Interés](#generación-del-gráfico-de-interés)  
- [Conclusiones](#conclusiones)  
- [Referencias](#referencias)  

## Introducción

El proyecto IPC-2025-GRUPO5 se enfoca en el estudio del microbioma intestinal humano y su relación con el metaboloma, utilizando datos genómicos y metabolómicos integrados. Los avances en tecnologías de secuenciación masiva, citometría de flujo y análisis bioinformáticos permiten caracterizar la composición y función microbiana y viral con alta resolución. Este informe detalla el proceso desde la obtención inicial de datos hasta la visualización de resultados que contribuyen al entendimiento del impacto metabólico diferenciado por género.

## Obtención y Preparación de Datos

Se partió de datasets públicos derivados del estudio de Poyet et al. (2019), que provee un amplio acervo de muestras humanas con datos longitudinales multi-ómicos. Los archivos principales fueron:

- **metadata.tsv**: contiene metadatos de muestras, incluyendo edad, género y grupo de estudio (caso/control).
- **mtb.map.tsv**: mapeo de metabolitos detectados con anotaciones estandarizadas en bases como KEGG y HMDB.

Estos datos fueron descargados para ser procesados y analizados con el fin de abordar preguntas sobre diferencias metabólicas dentro del microbioma intestinal.

## Creación de la Base de Datos Procesada

Para facilitar el análisis estadístico y gráfico, seleccionamos una muestra aleatoria de 10 individuos y cinco metabolitos con anotación de alta confianza. Se construyó un conjunto de datos sintetizado con:

- Variables demográficas clave: código de muestra, edad y género.  
- Niveles relativos estandarizados de metabolitos seleccionados.

Este dataset procesado permite simplificar el manejo de la información y enfocar el análisis en patrones específicos como la distribución y diferencias en metabolitos según variables demográficas.

## Análisis Exploratorio de Datos

Se realizó un análisis descriptivo básico para comprender la distribución de los metabolitos y su relación con la edad y género de los sujetos. A través de agrupamiento por género, se calcularon medias de cada metabolito, con especial atención al compuesto "1-methylguanine" por su relevancia biológica.

Esta etapa permitió identificar potenciales diferencias significativas en metabolitos relacionados con factores biológicos, lo que justifica un análisis visual que facilite la interpretación y comunicación de hallazgos.

## Generación del Gráfico de Interés

Usando el lenguaje R y la librería ggplot2, se creó un gráfico de barras representando el nivel promedio del metabolito "1-methylguanine" según género. El gráfico facilita la comparación visual clara entre hombres y mujeres y evidencia patrones que pueden estar asociados a diferencias metabólicas y microbiológicas en el estudio.

El script empleado calcula promedios, prepara los datos para la visualización y genera el gráfico con etiquetas descriptivas y estilos legibles, promoviendo una comunicación efectiva de resultados científicos.

## Conclusiones

Este trabajo demuestra la capacidad de integrar datos complejos de microbioma y metaboloma para identificar diferencias biológicas significativas mediante análisis estadísticos y visualizaciones claras. La generación de bases de datos procesadas y gráficos orientados al objetivo del proyecto sostiene una metodología reproducible y escalable para futuros análisis en el área de microbioma humano.

La aproximación también asegura documentación detallada y estructurada del proceso analítico, desde la adquisición de datos hasta la presentación de resultados.

## Referencias

- Poyet, M., et al. (2019). *A library of human gut bacterial isolates paired with longitudinal multiomics data enables mechanistic microbiome research*. Nature Medicine, 25(9), 1442-1452.  
- Schmieder, R., & Edwards, R. (2011). *Quality control and preprocessing of metagenomic datasets*. Bioinformatics.  
- Kanehisa, M., et al. *KEGG: Kyoto Encyclopedia of Genes and Genomes*.  
- Wishart, D. S., et al. *HMDB: The Human Metabolome Database*.  
