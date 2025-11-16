# IPC-2025-GRUPO5

## INTRODUCCIÓN 

El tracto intestinal humano alberga entre 10^13 - 10^14 células bacterianas, además de millones de bacteriófagos, con un contenido genético toal que supera ampliamente al humano. La composición microbiana varía entre individuos y se ve influenciada por factores como la dieta, el estilo de vida y el uso de antibióticos.

La secuenciación de ADN permite estudiar el potencial genético de bacterias cultivables y no cultivables mediante diferentes enfoques:
- Genómica: secuenciación y ensamblaje de genomas completos.
- Metagenómica y transcriptómica: análisis de comunidades y genes expresados.
- 16S rRNA: identificación y clasificación taxonómica de especies bacterianas.

La citometría de flujo facilita la selección de células bacterianas en función de su contenido de ADN, proteínas de superficie o marcadores específicos, permitiendo procesar rápidamente grandes cantidades de células de manera rápida y eficiente para estudios funcionales.

## OBJETIVOS 

**Objetivo 1:  Optimizacion de los protocolos de preparación de las librerías de secuenciación para poder secuenciar muestras procedentes de la citometría de flujo.**
Comparar la eficiencia de amplificación y secuenciación de ADN bacteriano obtenido mediante citometría de flujo frente a ADN amplificado mediante la polimerasa Φ29, validando que los protocolos optimizados producen librerías de calidad adecuada para secuenciación masiva.

Subojetivos:

1.1. Estandarizar la fijación con formaldehído, tinción con SYTO®62 y optimizar parámetros citométricos (gates, voltajes).

1.2. Optimizar extracción de ADN por método fenol-cloroformo (CTAB + lisozima + proteinasa K) y validar calidad.

1.3. Preparar reacciones de amplificación con polimerasa Φ29 y comparar rendimientos.

1.4. Amplificar regiones V3-V4 del gen 16S rRNA con barcoding y PCR indexada (triplicados).

1.5. Fragmentar ADN por sonicación o tagmentación Nextera y preparar librerías Illumina.

1.6. Secuenciar ambas estrategias, filtrar con PRINSEQ y comparar composición taxonómica y métricas de calidad.


**Objetivo 2: Virómica del intestino humano dirigida por la citometría de flujo.** 
Estudio por citometría de flujo las partículas virales presentes en un filtrado de muestras fecales. Se separará una fracción de partículas con el mismo tamaño y fluorescencia de ADN y se secuenciarán usando el protocolo optimizado en el objetivo 1. 

Subojetivos:

2.1. Purificar partículas virales: centrifugación diferencial, filtración y concentración; validar ausencia de contaminación bacteriana.

2.2. Optimizar tinción con SYBR Green I, establecer gates citométricos para VLPs y validar especificidad de marcaje.

2.3. Ejecutar citometría de flujo con ordenamiento; recuperar VLPs en buffer de preservación y evaluar integridad.

2.4. Extraer ADN viral (fenol-cloroformo), cuantificar y validar tamaño de fragmentos; amplificar con Φ29 si es necesario.

2.5. Fragmentar ADN viral, construir librerías para Illumina y 454 FLX+ con controles positivos y negativos.

2.6. Secuenciar (Illumina: 100-150 bp paired-end; 454 FLX+: single-end). Mínimo 10⁷ reads por muestra.

2.7. Filtrar con PRINSEQ, eliminar secuencias adaptadoras, descartar rRNA bacterial (BLASTn vs. rRNA database).

2.8. Ensamblar con MIRA4, mapear con SSAHA2/Bowtie2, comparar contra ACLAME/phiSITE/NCBI, anotar ORFs con InterPro.

2.9. Calcular abundancia relativa (Rsamtools), diversidad alfa/beta, visualizar con R (vegan, ggplot2, FlowViz).


## MÉTODOS 

Las células bacterianas procedentes de heces se fijan con formaldehido y se marcan con SYTO®62 para distinguir las células de otras partículas de tamaño similar que podían permanecer en las heces después de la purificación bacteriana. 
Los virus, en el proyecto de secuenciación de viroma, se marcan con SYBR Green I. Las bacterias activas se marcan con pironina Y que es específico para ARN; El ADN se extrae con el método de fenol-cloroformo donde se emplea bromuro de hexadeciltrimetilamonio, lisozima y proteinasa K. Para estudiar el gen 16S rRNA se amplifican los regiones V3 y V4 y los amplicones se trata según las instrucciones de secuenciación por Illumina. En los estudios genómicos, el ADN se fragmenta por sonicación o usando el kit Nextera empleando la tagmentación. 
La secuenciación masiva se llevará a cabo en las plataformas Illumina y 454 FLX+. En general, las secuencias obtenidas se procesaban con el programa PRINSEQ, que cortaba las secuencias según su calidad y eliminaba secuencias cortas o con baja entropia. En los estudios taxonómicos, los amplicones de 16S rDNA se compararan con la base de datos "Ribosomal database project". 

En los estudios genómicos, las secuencias se compararan con las bases de datos de NCBI usando algoritmos de "blastn" o "blastx" y en el caso de virómica con las bases de datos ACLAME y phiSITE. Las secuencias genómicas se ensamblaran con el programa MIRA4 y los "marcos abierto de lectura" se anotaran en la base de datos InterPro. 
El mapeo de las secuencias genómicas de un genoma en concreto se realizará con los programas SSAHA 2.5.4 o Bowtie 2. 
Los resultados se analizaran con los paquetes de programación en R, como por ejemplo "vegan" para determinar las abundancias bacterianas, "Rsamtools" para visualizar la cobertura de genoma determinado con las secuencias obtenidas y "FlowViz" para manejar los datos de citometría de flujo. 

## ESTRUCTURA DEL REPOSITORIO

El repositorio está estructurado en carpetas:

1. Docs: Contiene documentación, artículos y referencias relacionadas con el proyecto.
   1.1 Bibliografia: Contiene documentos usados de referencia
   1.2 Reuniones: Minutas de las reuniones de equipo
   1.3 SOPs: Procedimientos estandarizados de los metodos
2. Data: Contiene datos brutos y procesados.
   2.1 Raw: contiene los datos brutos
   2.2 Procesados: contiene datos limpios
3. Scripts: contiene scripts y notebooks para facilitar al resto del equipo que trabajen con ellos
   3.1 Citometria: contiene codigos y programas para procesar, analizar datos de citometría de          flujo
   3.2 R: scripts en R para procesar y analizar
   3.3 Utiles: paquetes utiles de trabajo
   3.4 Visualizaciones: scripts dedicados a generar gráficos y visualizaciones de los datos
4. Analisis: archivos generados durante el trabajo: números intermedios, gráficos de prueba, tablas sin pulir y documentación de cada paso realizado.
   4.1 Ensamblajes: ensamblajes provisonales
   4.2 QC: Contiene control de calidad (PRINSEQ), gráficos preliminares y reports de calidad
   4.3 Taxonomia: resultados taxonómicos provisionales (16S, viroma)
5. Resultados: resultados en formato de tablas finales, figuras para publicaciones y data para piblicar en bases de datos oficiales.
6. Imagenes: figuras organizadas temáticamente, incluidos gráficos de control de calidad y diagnósticos.
   6.1 Graficas: representaciones visuales generadas durante el análisis, como histogramas de          calidad, coverage plots, plots de gating en citometría de flujo...
   6.2 Tablas: Representaciones gráficas de datos tabulares relevantes, como matrices de               correlación, tablas de abundancia relativas o resúmenes estadísticos visualizados...
8. Metadata: Información crítica de muestras, parámetros experimentales, logs.
   8.1 Citometria: Metadatos obtenidos de los ensayos de citometria
   8.2 Muestras: Informacion critica de las muestras
   8.3 Secuenciacion: Información detallada de cada corrida de secuenciación
9. Notebooks: Jupyter/Rmarkdown notebooks para análisis interactivos y documentación legible del workflow completo.

# Integrantes
Laura Lasquibar @llasquibar
Carlos Rossell
Dennis Silva
Naia Landaluce
