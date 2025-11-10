INTRODUCCIÓN 

El tracto intestinal humano está poblado por 10^13 - 10^14 bacterias que en conjunto contienen 1,000 veces más genes que el genoma humano. 
Varios estudios han confirmado que las bacterias del intestino influyen en la salud del cuerpo humano. Además de las bacterias, el intestino humano contiene millones de partículas virales, en su mayoría bacteriófagos. 
La composición microbiana varia con el individuo. Las especies más numerosas podrían definir tres grupos de individuos: según predominen Bacteroides, Prevotella o Ruminococcus. 
No obstatne, las funciones más importantes pueden ser realizadas por especies minoritarias. Durante el dasarrollo, la composición bacteriana en el intestino cambia por efecto de la dieta y el estilo de vida. Los antibióticos provocan fuertes cambios también. 

La secuenciación de ADN ha permitido conocer el potencial genético de todas las bacterias en el cuerpo humano sin necesidad de cultivarlas. Se estima que la mitad de las bacterias intestinales no se puede cultivar, pero se puede averiguar su función y aproximar su taxonomía. 

Hay varios métodos para descifrar el potencial genético de las bacterias: 

- Genómica bacteriana: se extrae ADN de las cepas aisladas y se fragmenta con enzimas de restricción o mecánicamente con ultrasonido o ultra presión, ya que los secuenciadores de ADN (Illumina MiSeq o 454 FLX+) no pueden leer la molécula de ADN entera. 
Las secuencias obtenidas se ensamblan para reconstruir el genoma en su totalidad. El genoma bacteriano se cubre con secuencias solapantes para obtener un ensamblaje correcto. 

- Metagenómica: se extrae ADN de todo el conjunto de las bacterias obtenidas directamente de un ambiente. El objetivo es descifrar las secuencias para ver cuáles son las principales rutas metabólicas de ese ambiente e intentar determinar las principales familias bacterianas que son productoras de estos metabolitos. Otra rama de la metagenómica es la transcriptómica, en la que se estudian solo los genes expresados en el momento de recoger las muestras. - Clasificación taxonómica.

- La secuenciación del gen 16S rRNA sirve para la identificación de especies bacterianas. El gen se amplifica en la reacción PCR. El producto de la amplificación debe tener el tamaño adecuado para su secuenciación. Estos métodos de secuenciación de ADN se suelen aplicar a toda la comunidad bacteriana, pero existen métodos de preselección de células bacterianas, como es el caso de la citometría de flujo. La citometría de flujo es una metodología que permite separar fracciones de comunidades microbianas basándose en características tales como el contenido celular de DNA, proteínas en la superficie celular o la taxonomía microbiana. El citómetro de flujo detecta la fluorescencia emitida por las células marcadas con fluoróforos que indican las características celulares de interés. Las células pueden ser marcadas directamente con un compuesto químico fluorescente o indirectamente con los fluoróforos conjugados con macromoléculas, anticuerpos o sondas (oligonucleótidos).

Las células entran al citómetro de flujo en suspensión, se alinean y pasan una detrás de otra a través de uno o varios láseres. Cada partícula desvía la luz en forma diferente y al absorber la energía de láser, emite diferentes longitudes de onda que se filtran por un sistema de espejos. Las ondas son recogidas por sensores que envían la información de intensidad a un ordenador. Dependiendo del citómetro y de la muestra, el citómetro de flujo puede procesar datos de cientos de miles de células en unos minutos. 

OBJETIVOS 

 Los objetivos principales de este estudio son los siguientes: 

El objetivo 1 de esta tesis es optimizar los protocolos de preparación de las librerías de secuenciación para poder secuenciar muestras procedentes de la citometría de flujo. Los resultados se compararán con los resultados del ADN enriquecido con la polimerasa Φ. 

2: Virómica del intestino humano dirigida por la citometría de flujo 
El objetivo 2 es estudiar por citometría de flujo las partículas virales presentes en un filtrado de muestras fecales. Se separará una fracción de partículas con el mismo tamaño y fluorescencia de ADN y se secuenciarán usando el protocolo optimizado en el objetivo 1. 
Los genes se anotarán y se determinará su origen. 

MÉTODOS 

Las células bacterianas procedentes de heces se fijaban con formaldehido y se marcan con SYTO®62 para distinguir las células de otras partículas de tamaño similar que podían permanecer en las heces después de la purificación bacteriana. 
Los virus, en el proyecto de secuenciación de viroma, se marcaban con SYBR Green I. Las bacterias activas se marcaban con pironina Y que es específico para ARN; El ADN se extraía con el método de fenol-cloroformo donde se empleaba bromuro de hexadeciltrimetilamonio, lisozima y proteinasa K. Para estudiar el gen 16S rRNA se amplificaban los regiones V3 y V4 y los amplicones se trataban según las instrucciones de secuenciación por Illumina. En los estudios genómicos, el ADN se fragmentaba por sonicación o usando el kit Nextera empleando la tagmentación. 
La secuenciación masiva se llevará a cabo en las plataformas Illumina y 454 FLX+. En general, las secuencias obtenidas se procesaban con el programa PRINSEQ, que cortaba las secuencias según su calidad y eliminaba secuencias cortas o con baja entropia. En los estudios taxonómicos, los amplicones de 16S rDNA se compararan con la base de datos "Ribosomal database project". 

En los estudios genómicos, las secuencias se compararon con las bases de datos de NCBI usando algoritmos de "blastn" o "blastx" y en el caso de virómica con las bases de datos ACLAME y phiSITE. Las secuencias genómicas se ensamblaron con el programa MIRA4 y los "marcos abierto de lectura" se anotaron en la base de datos InterPro. 
El mapeo de las secuencias genómicas de un genoma en concreto se realiza con los programas SSAHA 2.5.4 o Bowtie 2. 
Los resultados se analizaron con los paquetes de programación en R, como por ejemplo "vegan" para determinar las abundancias bacterianas, "Rsamtools" para visualizar la cobertura de genoma determinado con las secuencias obtenidas y "FlowViz" para manejar los datos de citometría de flujo. 

ESTRUCTURA DEL REPOSITORIO

El repositorio está estructurado en 3 carpetas principales:

- Fuente: Documentación del estudio
- Datos y resultados.

 
