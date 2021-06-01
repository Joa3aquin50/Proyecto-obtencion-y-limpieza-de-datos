# Proyecto-obtencion-y-limpieza-de-datos

## Acerca de este repositorio
 
Este repositorio se creó para la asignación calificada por pares de:

> Course 3: Getting And Cleaning Data, 
> from Data Science Specialization, 
> by Johns Hopkins University, 
> on coursera   

La tarea solicitó:

> 1. un conjunto de datos ordenado como se describe a continuación
> 2. un enlace a un repositorio de Github con su script para realizar
       el análisis, y
> 3. un libro de códigos que describe las variables, los datos y cualquier
       transformación o trabajo que realizó para limpiar los datos
       llamado CodeBook.md.
>
> También debe incluir un README.md en el repositorio con sus scripts.
> Este repositorio explica cómo funcionan todos los scripts y cómo están conectados.

y para el script principal, 'run_analysis.R' los requisitos eran que debería
ser capaz de ejecutar, en la medida en que el 'UCI HAR Dataset' esté presente en el trabajo
directorio y poder realizar los siguientes 5 pasos:

> 1. Fusiona los conjuntos de entrenamiento y prueba para crear un conjunto de datos.
> 2. Extrae solo las medidas de la desviación estándar y media para
cada medida.
> 3. Utiliza nombres de actividades descriptivos para nombrar las actividades en el conjunto de datos
> 4. Etiquete adecuadamente el conjunto de datos con nombres de variables descriptivos.
> 5. A partir del conjunto de datos del paso 4, crea un segundo conjunto de datos ordenado e independiente
con el promedio de cada variable para cada actividad y cada tema.

***
## Detalles sobre los archivos que existen en este repositorio
 

### README.md
Es el archivo que está leyendo ahora mismo e intenta explicar el propósito y
el contenido del repositorio.
 
### run_analysis.R
 
Es el script principal del repositorio.
Como se describe en 'CodeBood.md':

> Para producir la tabla 'tidy_data_summary',
la secuencia de comandos
'[run_analysis.R] (111111)'
fue creado y utilizado.

> Realiza las siguientes tareas:
>
> #### Fusiona los conjuntos de entrenamiento y prueba para crear un conjunto de datos con variables objetivo.
>
> 1. Vincula estos archivos,
> - Conjunto de datos UCI HAR / train / subject_train.txt
> - Conjunto de datos UCI HAR / train / X_train.txt
> - Conjunto de datos UCI HAR / train / y_train.txt
> desde el conjunto de datos entrenamiento establecido por columnas a una tabla que contiene,
      el sujeto humano, la actividad realizada y los valores de los rasgos.
>
> 2. Vincula estos archivos,
> - Conjunto de datos UCI HAR / test / subject_test.txt
> - Conjunto de datos UCI HAR / test / X_test.txt
> - Conjunto de datos UCI HAR / test / y_test.txt
> del conjunto de pruebas por columnas a una tabla que contiene,
      el sujeto humano, la actividad realizada y los valores de los rasgos.
      
> 3. Vincula los marcos de datos creados para la prueba y el conjunto de entrenamiento en un gran
      conjunto de datos por filas.
>
> #### Extrae solo las medidas de la media y la desviación estándar de cada medida.
>
> 1. Encuentra las características de destino, que son las características con medidas.
      acerca de la desviación estándar y media, y los extrae, así como los
      que indican el 'tema' y la 'actividad' y crea una nueva tabla de datos
      solo con las variables de destino.
>
> #### Utiliza nombres de actividades descriptivos para nombrar las actividades en el conjunto de datos.
>
> 1. Reemplace la variable sobre actividad, que contiene números enteros del 1 al 6,
> con un factor basado en niveles y etiquetas contenidas en el
      Archivo de datos 'activity_labels'.
>
> #### Etiqueta adecuadamente el conjunto de datos con variables objetivo con nombres descriptivos.
>
> 1. Extrae los nombres de las variables de destino de 'features.txt'.
> 2. Corrige un error tipográfico que existe en algunos nombres de funciones, que es para reemplazar
     'BodyBody' que aparece en los nombres de algunas funciones con solo 'Body'.
> 3. Crea un nuevo conjunto de datos ordenado con las etiquetas apropiadas para la variable
     nombres.
 
> #### A partir del conjunto de datos del paso 4, crea un segundo conjunto de datos ordenado e independiente con el promedio de cada variable para cada actividad y cada tema.
>
> 1. Agrupe la ordenada tabla de datos creada en el paso 4, por 'tema' y 'actividad'.
> 2. Resuma cada variable para encontrar el promedio de los valores agrupados.
> 3. Desagrupe la tabla de datos.
> 4. Agregue nombres descriptivos a las variables de la nueva tabla de datos ordenada,
> agregando el prefijo 'Avrg-' en los nombres de los promedios de las características de destino.
> 5. Escriba los datos en un archivo de texto en el directorio de trabajo actual,
> por el comando:
>
> ```
> write.table (tidy_data_summary, "tidy_data_summary.txt", row.names = FALSE)
> ```

### tidy_data_summary.txt
 
El ordenado conjunto de datos que fue producido por el script 'run_analysis.txt',
que contiene los promedios de las características seleccionadas del original
'Reconocimiento de actividad humana mediante el conjunto de datos de teléfonos inteligentes versión 1.0'.
La
'[CodeBook.md] (2222222)'
contiene los detalles sobre la tabla 'tidy_data_summary'.

### CodeBook.md

El libro de códigos contiene información sobre la tabla 'tidy_data_summary'.
Consiste en lo siguiente:
 
  0. Tabla de contenido
  1. Información sobre la tabla de datos "tidy_data_summary"
     - Identificadores y promedios de características
     - Descripción de las variables de 'tidy_data_summary'
     - Cómo cargar 'tidy_data_summary' en R
     - Acerca de la tabla 'tidy_data_summary'
  2. El proceso mediante el cual se generó la tabla "tidy_data_summary"
  3. Descripción de las características en las que se basaron los promedios
     - Información sobre cómo se produjeron las características a partir de los datos sin procesar
     - Información sobre la recopilación de datos brutos
     - Acerca del conjunto de datos original
  4. Licencia
