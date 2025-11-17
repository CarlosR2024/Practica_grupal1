# Descripción de los Archivos de Datos para el Proyecto IPC-2025-GRUPO5

## Índice
- [Introducción](#introducción)
- [metadata.tsv](#metadata-tsv)
- [mtb.tsv](#mtb-tsv)
- [mtb.map.tsv](#mtbmap-tsv)
- [genera.tsv](#genera-tsv)
- [Archivos adicionales](#archivos-adicionales)
- [Contexto del estudio principal](#contexto-del-estudio-principal)
- [Referencias](#referencias)

## Introducción

En el análisis integrado del microbioma intestinal y sus metabolitos, diferentes tipos de datos se combinan para entender la relación entre la composición microbiana y el metabolismo del huésped. A continuación se describen los principales archivos de datos empleados en el repositorio y estudio emparejado con el proyecto IPC-2025-GRUPO5.

## metadata.tsv

Este archivo contiene los metadatos de las muestras analizadas. Incluye información crítica acerca de cada sujeto, como edad, género, grupo de estudio (caso o control), y otros parámetros clínicos o demográficos relevantes. Estos datos permiten interpretar diferencias en comunidades microbianas y metabolitos en función de características biológicas y clínicas.

Más detalles y formatos específicos pueden consultarse en la documentación oficial del repositorio:  
[Sample Metadata - Microbiome-Metabolome Curated Data Wiki](https://github.com/borenstein-lab/microbiome-metabolome-curated-data/wiki/Data-processing-details#sample-metadata-files)

## mtb.tsv

Contiene los niveles cuantificados de metabolitos por muestra, expresados en unidades relativas o absolutas según el método analítico empleado. Estos datos permiten el análisis funcional del microbioma y su impacto funcional en el metabolismo intestinal.

## mtb.map.tsv

Archivo que mapea los identificadores originales de metabolitos usados en mtb.tsv a bases de datos biomédicas estandarizadas, tales como KEGG (Kyoto Encyclopedia of Genes and Genomes) y HMDB (Human Metabolome Database). Esto facilita anotaciones cruzadas, integraciones con otras bases de conocimiento y comparaciones entre estudios.

## genera.tsv

Este archivo registra las abundancias relativas de diferentes géneros bacterianos detectados en cada muestra. En análisis de metagenómica de disparo (shotgun), se dispone también de tablas a nivel de especie para aumentar la resolución taxonómica.

## Archivos adicionales

- **genera.counts.tsv** y **species.counts.tsv** contienen los conteos de lecturas brutas asignadas a géneros y especies, respectivamente, en vez de abundancias relativas.

Estos datos crudos son esenciales para análisis exhaustivos de diversidad y para pruebas estadísticas precisas.

## Contexto del estudio principal

Estos archivos forman parte de un conjunto de datos derivados del estudio:  

Poyet, M., et al.  
*A library of human gut bacterial isolates paired with longitudinal multiomics data enables mechanistic microbiome research.*  
Nature Medicine 25.9 (2019): 1442-1452.

El estudio provee un recurso sin precedentes con miles de aislamientos bacterianos intestinales humanos emparejados con datos genómicos de larga duración y multi-ómicos, que permiten investigar la estabilidad microbiana y su interacción con el metabolismo del huésped a lo largo del tiempo, fundamentando investigaciones mochiladas en hipótesis mecanísticas sobre el microbioma.

## Referencias

- Poyet, M., Groussin, M., Gibbons, S. M., et al. (2019). A library of human gut bacterial isolates paired with longitudinal multiomics data enables mechanistic microbiome research. *Nature Medicine*, 25(9), 1442–1452.  
- Microbiome-Metabolome Curated Data. GitHub Wiki.  
- Kanehisa, M., et al. KEGG: Kyoto Encyclopedia of Genes and Genomes.  
- Wishart, D. S., et al. HMDB: The Human Metabolome Database.
