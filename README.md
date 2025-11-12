# IPC-2025-GRUPO5
Actividad Grupal para asignatura IPC Grupo 5. Objetivos: Creación de Repositorio para un proyecto de Bioinformática. El repositorio debe seguir una estructura de carpetas clara y ordenada.

## INTRODUCCIÓN DEL ESTUDIO

El tracto intestinal humano está poblado por 10^13 - 10^14 bacterias y millones de bacteriófagos, con un contenido genético mucho mayor que el humano. La composición microbiana varía entre individuos y se ve afectada por dieta, estilo de vida y antibióticos.
La secuenciación de ADN permite estudiar el potencial genético de bacterias cultivables y no cultivables, utilizando:
- Genómica: secuenciación y ensamblaje de genomas completos.
- Metagenómica y transcriptómica: análisis de comunidades y genes expresados.
- 16S rRNA: identificación de especies bacterianas.

La citometría de flujo facilita la selección de células bacterianas según ADN, proteínas de superficie o taxonomía, procesando rápidamente grandes cantidades de células para estudios funcionales.

## OBJETIVOS 

 Los objetivos principales de este estudio son los siguientes: 

1. Optimización de los protocolos de preparación de las librerías de secuenciación para poder secuenciar muestras procedentes de la citometría de flujo. Los resultados se compararán con los resultados del ADN enriquecido con la polimerasa Φ. 

2. Virómica del intestino humano dirigida por la citometría de flujo. Estudio por citometría de flujo las partículas virales presentes en un filtrado de muestras fecales. Se separará una fracción de partículas con el mismo tamaño y fluorescencia de ADN y se secuenciarán usando el protocolo optimizado en el objetivo 1. 
Los genes se anotarán y se determinará su origen. 

MÉTODOS 

Las células bacterianas procedentes de heces se fijaban con formaldehido y se marcan con SYTO®62 para distinguir las células de otras partículas de tamaño similar que podían permanecer en las heces después de la purificación bacteriana. 
Los virus, en el proyecto de secuenciación de viroma, se marcaban con SYBR Green I. Las bacterias activas se marcaban con pironina Y que es específico para ARN; El ADN se extraía con el método de fenol-cloroformo donde se empleaba bromuro de hexadeciltrimetilamonio, lisozima y proteinasa K. Para estudiar el gen 16S rRNA se amplificaban los regiones V3 y V4 y los amplicones se trataban según las instrucciones de secuenciación por Illumina. En los estudios genómicos, el ADN se fragmentaba por sonicación o usando el kit Nextera empleando la tagmentación. 
La secuenciación masiva se llevará a cabo en las plataformas Illumina y 454 FLX+. En general, las secuencias obtenidas se procesaban con el programa PRINSEQ, que cortaba las secuencias según su calidad y eliminaba secuencias cortas o con baja entropia. En los estudios taxonómicos, los amplicones de 16S rDNA se compararan con la base de datos "Ribosomal database project". 

En los estudios genómicos, las secuencias se compararon con las bases de datos de NCBI usando algoritmos de "blastn" o "blastx" y en el caso de virómica con las bases de datos ACLAME y phiSITE. Las secuencias genómicas se ensamblaron con el programa MIRA4 y los "marcos abierto de lectura" se anotaron en la base de datos InterPro. 
El mapeo de las secuencias genómicas de un genoma en concreto se realiza con los programas SSAHA 2.5.4 o Bowtie 2. 
Los resultados se analizaron con los paquetes de programación en R, como por ejemplo "vegan" para determinar las abundancias bacterianas, "Rsamtools" para visualizar la cobertura de genoma determinado con las secuencias obtenidas y "FlowViz" para manejar los datos de citometría de flujo. 

## ESTRUCTURA DEL REPOSITORIO

El repositorio está estructurado en carpetas:

- Docs: para guardar documentación, artículos, etc.
- Data: Para guardar datos brutos y procesados.
- Resultados:Para guardar resultados y trabajar con ellos.
- Scripts: Para guardar scripts y notebooks utilizados y facilitar al resto del equipo que trabajen con ellos
- Imagenes: Figuras generadas p¡tras el analisis de datos


## Integrantes
- Laura Lasquibar @llasquibar
 
