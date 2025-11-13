# IPC-2025-GRUPO5

## INTRODUCCIÓN 

El tracto intestinal humano está poblado por 10^13 - 10^14 bacterias y millones de bacteriófagos, con un contenido genético mucho mayor que el humano. La composición microbiana varía entre individuos y se ve afectada por dieta, estilo de vida y antibióticos.

La secuenciación de ADN permite estudiar el potencial genético de bacterias cultivables y no cultivables, utilizando:
- Genómica: secuenciación y ensamblaje de genomas completos.
- Metagenómica y transcriptómica: análisis de comunidades y genes expresados.
- 16S rRNA: identificación de especies bacterianas.

La citometría de flujo facilita la selección de células bacterianas según ADN, proteínas de superficie o taxonomía, procesando rápidamente grandes cantidades de células para estudios funcionales.

## OBJETIVOS 

 Los objetivos principales de este estudio son los siguientes: 

1. **Optimizacion de los protocolos de preparación de las librerías de secuenciación** para poder secuenciar muestras procedentes de la citometría de flujo. Los resultados se compararán con los resultados del ADN enriquecido con la polimerasa Φ. 

2. **Virómica del intestino humano dirigida por la citometría de flujo** Estudio por citometría de flujo las partículas virales presentes en un filtrado de muestras fecales. Se separará una fracción de partículas con el mismo tamaño y fluorescencia de ADN y se secuenciarán usando el protocolo optimizado en el objetivo 1. 


## MÉTODOS 

Las células bacterianas procedentes de heces se fijan con formaldehido y se marcan con SYTO®62 para distinguir las células de otras partículas de tamaño similar que podían permanecer en las heces después de la purificación bacteriana. 
Los virus, en el proyecto de secuenciación de viroma, se marcan con SYBR Green I. Las bacterias activas se marcan con pironina Y que es específico para ARN; El ADN se extrae con el método de fenol-cloroformo donde se emplea bromuro de hexadeciltrimetilamonio, lisozima y proteinasa K. Para estudiar el gen 16S rRNA se amplifican los regiones V3 y V4 y los amplicones se trata según las instrucciones de secuenciación por Illumina. En los estudios genómicos, el ADN se fragmenta por sonicación o usando el kit Nextera empleando la tagmentación. 
La secuenciación masiva se llevará a cabo en las plataformas Illumina y 454 FLX+. En general, las secuencias obtenidas se procesaban con el programa PRINSEQ, que cortaba las secuencias según su calidad y eliminaba secuencias cortas o con baja entropia. En los estudios taxonómicos, los amplicones de 16S rDNA se compararan con la base de datos "Ribosomal database project". 

En los estudios genómicos, las secuencias se compararan con las bases de datos de NCBI usando algoritmos de "blastn" o "blastx" y en el caso de virómica con las bases de datos ACLAME y phiSITE. Las secuencias genómicas se ensamblaran con el programa MIRA4 y los "marcos abierto de lectura" se anotaran en la base de datos InterPro. 
El mapeo de las secuencias genómicas de un genoma en concreto se realizará con los programas SSAHA 2.5.4 o Bowtie 2. 
Los resultados se analizaran con los paquetes de programación en R, como por ejemplo "vegan" para determinar las abundancias bacterianas, "Rsamtools" para visualizar la cobertura de genoma determinado con las secuencias obtenidas y "FlowViz" para manejar los datos de citometría de flujo. 

## ESTRUCTURA DEL REPOSITORIO

El repositorio está estructurado en carpetas:
- Docs: Contiene documentación, artículos y referencias relacionadas con el proyecto.
- Data: Contiene datos brutos y procesados.
- Resultados: Contiene resultados y nos permite trabajar con ellos.
- Scripts: Contiene scripts y notebooks utilizados y facilitar al resto del equipo que trabajen con ellos
- Imagenes: para guardar figuras y graficoas obtenidos del analisis de datos
