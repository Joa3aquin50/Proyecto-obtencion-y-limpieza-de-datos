# LIBRO DE CÓDIGOS para la tabla de datos 'tidy_data_summary'.
***
 
## Tabla de contenido
 
El libro de códigos consta de lo siguiente:
 
  0. Tabla de contenido
  1. Información sobre la tabla de datos "tidy_data_summary"
     - Identificadores y promedios de características
     - Descripción de las variables de 'tidy_data_summary'
     - Cómo cargar 'tidy_data_summary' en R
     - Acerca de la tabla 'tidy_data_summary'
  2. El proceso mediante el cual se generó la tabla "tidy_data_summary"
  3. Descripción de las características en las que se basaron los promedios
     - Información sobre la recopilación de datos brutos
     - Acerca del conjunto de datos original
  4. Licencia
 
 
***
## Información sobre la tabla de datos 'tidy_data_summary'
 
### Identificadores y promedios de características
 
Las 2 primeras variables, 'tema' y 'actividad',
puede identificar de forma única cada fila de la tabla.
Las 66 variables restantes, son los promedios de algunas características seleccionadas,
aquellos que contienen información sobre medias y desviaciones estándar,
del conjunto de datos original:
'Reconocimiento de actividad humana mediante el conjunto de datos de teléfonos inteligentes versión 1.0'.
 
 
### Descripción de las variables de 'tidy_data_summary'
 
La siguiente tabla describe todas las variables de la tabla 'tidy_data_summary'.
 
| Index |           Variables          |  Class  |  Range  | Description                                                                                               |
|-------|------------------------------| --------|---------|-----------------------------------------------------------------------------------------------------------|
|    1  | subject                      | integer |  1 - 30 | Identifies the human subject.                                                                             |
|    2  | activity                     | factor  |  1 -  6 | Identifies the activity. Labels: WALKING, WALKING UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING |
|    3  | Avrg-tBodyAcc-mean()-X       | numeric | [-1, 1] | Time domain, Average of means for body acceleration on X axis.                                            |
|    4  | Avrg-tBodyAcc-mean()-Y       | numeric | [-1, 1] | Time domain, Average of means for body acceleration on Y axis.                                            |
|    5  | Avrg-tBodyAcc-mean()-Z       | numeric | [-1, 1] | Time domain, Average of means for body acceleration on Z axis.                                            |
|    6  | Avrg-tBodyAcc-std()-X        | numeric | [-1, 1] | Time domain, Average of standard deviations for body acceleration on X axis.                              |
|    7  | Avrg-tBodyAcc-std()-Y        | numeric | [-1, 1] | Time domain, Average of standard deviations for body acceleration on Y axis.                              |
|    8  | Avrg-tBodyAcc-std()-Z        | numeric | [-1, 1] | Time domain, Average of standard deviations for body acceleration on Z axis.                              |
|    9  | Avrg-tGravityAcc-mean()-X    | numeric | [-1, 1] | Time domain, Average of means for gravity acceleration on X axis.                                         |
|   10  | Avrg-tGravityAcc-mean()-Y    | numeric | [-1, 1] | Time domain, Average of means for gravity acceleration on Y axis.                                         |
|   11  | Avrg-tGravityAcc-mean()-Z    | numeric | [-1, 1] | Time domain, Average of means for gravity acceleration on Z axis.                                         |
|   12  | Avrg-tGravityAcc-std()-X     | numeric | [-1, 1] | Time domain, Average of standard deviations for gravity acceleration on X axis.                           |
|   13  | Avrg-tGravityAcc-std()-Y     | numeric | [-1, 1] | Time domain, Average of standard deviations for gravity acceleration on Y axis.                           |
|   14  | Avrg-tGravityAcc-std()-Z     | numeric | [-1, 1] | Time domain, Average of standard deviations for gravity acceleration on Z axis.                           |
|   15  | Avrg-tBodyAccJerk-mean()-X   | numeric | [-1, 1] | Time domain, Average of means for the jerk of body acceleration on X axis.                                |
|   16  | Avrg-tBodyAccJerk-mean()-Y   | numeric | [-1, 1] | Time domain, Average of means for the jerk of body acceleration on Y axis.                                |
|   17  | Avrg-tBodyAccJerk-mean()-Z   | numeric | [-1, 1] | Time domain, Average of means for the jerk of body acceleration on Z axis.                                |
|   18  | Avrg-tBodyAccJerk-std()-X    | numeric | [-1, 1] | Time domain, Average of standard deviations for the jerk of body acceleration on X axis.                  |
|   19  | Avrg-tBodyAccJerk-std()-Y    | numeric | [-1, 1] | Time domain, Average of standard deviations for the jerk of body acceleration on Y axis.                  |
|   20  | Avrg-tBodyAccJerk-std()-Z    | numeric | [-1, 1] | Time domain, Average of standard deviations for the jerk of body acceleration on Z axis.                  |
|   21  | Avrg-tBodyGyro-mean()-X      | numeric | [-1, 1] | Time domain, Average of means for angular velocity on X axis.                                             |
|   22  | Avrg-tBodyGyro-mean()-Y      | numeric | [-1, 1] | Time domain, Average of means for angular velocity on Y axis.                                             |
|   23  | Avrg-tBodyGyro-mean()-Z      | numeric | [-1, 1] | Time domain, Average of means for angular velocity on Z axis.                                             |
|   24  | Avrg-tBodyGyro-std()-X       | numeric | [-1, 1] | Time domain, Average of standard deviations for angular velocity on X axis.                               |
|   25  | Avrg-tBodyGyro-std()-Y       | numeric | [-1, 1] | Time domain, Average of standard deviations for angular velocity on Y axis.                               |
|   26  | Avrg-tBodyGyro-std()-Z       | numeric | [-1, 1] | Time domain, Average of standard deviations for angular velocity on Z axis.                               |
|   27  | Avrg-tBodyGyroJerk-mean()-X  | numeric | [-1, 1] | Time domain, Average of means for the jerk of angular velocity on X axis.                                 |
|   28  | Avrg-tBodyGyroJerk-mean()-Y  | numeric | [-1, 1] | Time domain, Average of means for the jerk of angular velocity on Y axis.                                 |
|   29  | Avrg-tBodyGyroJerk-mean()-Z  | numeric | [-1, 1] | Time domain, Average of means for the jerk of angular velocity on Z axis.                                 |
|   30  | Avrg-tBodyGyroJerk-std()-X   | numeric | [-1, 1] | Time domain, Average of standard deviations for the jerk of angular velocity on X axis.                   |
|   31  | Avrg-tBodyGyroJerk-std()-Y   | numeric | [-1, 1] | Time domain, Average of standard deviations for the jerk of angular velocity on Y axis.                   |
|   32  | Avrg-tBodyGyroJerk-std()-Z   | numeric | [-1, 1] | Time domain, Average of standard deviations for the jerk of angular velocity on Z axis.                   |
|   33  | Avrg-tBodyAccMag-mean()      | numeric | [-1, 1] | Time domain, Average of means for the magnitude of body acceleration.                                     |
|   34  | Avrg-tBodyAccMag-std()       | numeric | [-1, 1] | Time domain, Average of standard deviations for the magnitude of body acceleration.                       |
|   35  | Avrg-tGravityAccMag-mean()   | numeric | [-1, 1] | Time domain, Average of means for the magnitude of gravity acceleration.                                  |
|   36  | Avrg-tGravityAccMag-std()    | numeric | [-1, 1] | Time domain, Average of standard deviations for the magnitude of gravity acceleration.                    |
|   38  | Avrg-tBodyAccJerkMag-mean()  | numeric | [-1, 1] | Time domain, Average of means for the magnitude of jerk, of body accelaration.                            |
|   38  | Avrg-tBodyAccJerkMag-std()   | numeric | [-1, 1] | Time domain, Average of standard deviations for the magnitude of jerk, of body accelaration.              |
|   39  | Avrg-tBodyGyroMag-mean()     | numeric | [-1, 1] | Time domain, Average of means for the magnitude of angular velocity.                                      |
|   40  | Avrg-tBodyGyroMag-std()      | numeric | [-1, 1] | Time domain, Average of standard deviations for the magnitude of angular velocity.                        |
|   41  | Avrg-tBodyGyroJerkMag-mean() | numeric | [-1, 1] | Time domain, Average of means for the magnitude of jerk, of the angular velocity.                         |
|   42  | Avrg-tBodyGyroJerkMag-std()  | numeric | [-1, 1] | Time domain, Average of standard deviations for the magnitude of jerk, of the angular velocity.           |
|   43  | Avrg-fBodyAcc-mean()-X       | numeric | [-1, 1] | Frequency domain, Average of means for body acceleration on X axis.                                       |
|   44  | Avrg-fBodyAcc-mean()-Y       | numeric | [-1, 1] | Frequency domain, Average of means for body acceleration on Y axis.                                       |
|   45  | Avrg-fBodyAcc-mean()-Z       | numeric | [-1, 1] | Frequency domain, Average of means for body acceleration on Z axis.                                       |
|   46  | Avrg-fBodyAcc-std()-X        | numeric | [-1, 1] | Frequency domain, Average of standard deviations for body acceleration on X axis.                         |
|   47  | Avrg-fBodyAcc-std()-Y        | numeric | [-1, 1] | Frequency domain, Average of standard deviations for body acceleration on Y axis.                         |
|   48  | Avrg-fBodyAcc-std()-Z        | numeric | [-1, 1] | Frequency domain, Average of standard deviations for body acceleration on Z axis.                         |
|   49  | Avrg-fBodyAccJerk-mean()-X   | numeric | [-1, 1] | Frequency domain, Average of means for the jerk of the body acceleration on X axis.                       |
|   50  | Avrg-fBodyAccJerk-mean()-Y   | numeric | [-1, 1] | Frequency domain, Average of means for the jerk of the body acceleration on Y axis.                       |
|   51  | Avrg-fBodyAccJerk-mean()-Z   | numeric | [-1, 1] | Frequency domain, Average of means for the jerk of the body acceleration on Z axis.                       |
|   52  | Avrg-fBodyAccJerk-std()-X    | numeric | [-1, 1] | Frequency domain, Average of standard deviations for the jerk of the body acceleration on X axis.         |
|   53  | Avrg-fBodyAccJerk-std()-Y    | numeric | [-1, 1] | Frequency domain, Average of standard deviations for the jerk of the body acceleration on Y axis.         |
|   54  | Avrg-fBodyAccJerk-std()-Z    | numeric | [-1, 1] | Frequency domain, Average of standard deviations for the jerk of the body acceleration on Z axis.         |
|   55  | Avrg-fBodyGyro-mean()-X      | numeric | [-1, 1] | Frequency domain, Average of means for the jerk of angular velocity on X axis.                            |
|   56  | Avrg-fBodyGyro-mean()-Y      | numeric | [-1, 1] | Frequency domain, Average of means for the jerk of angular velocity on Y axis.                            |
|   57  | Avrg-fBodyGyro-mean()-Z      | numeric | [-1, 1] | Frequency domain, Average of means for the jerk of angular velocity on Z axis.                            |
|   58  | Avrg-fBodyGyro-std()-X       | numeric | [-1, 1] | Frequency domain, Average of standard deviations for the jerk of angular velocity on X axis.              |
|   59  | Avrg-fBodyGyro-std()-Y       | numeric | [-1, 1] | Frequency domain, Average of standard deviations for the jerk of angular velocity on Y axis.              |
|   60  | Avrg-fBodyGyro-std()-Z       | numeric | [-1, 1] | Frequency domain, Average of standard deviations for the jerk of angular velocity on Z axis.              |
|   61  | Avrg-fBodyAccMag-mean()      | numeric | [-1, 1] | Frequency domain, Average of means for the magnitude of body acceleration.                                |
|   62  | Avrg-fBodyAccMag-std()       | numeric | [-1, 1] | Frequency domain, Average of standard deviations for the magnitude of body acceleration.                  |
|   63  | Avrg-fBodyAccJerkMag-mean()  | numeric | [-1, 1] | Frequency domain, Average of means for the magnitude of jerk, of body acceleration.                       |
|   64  | Avrg-fBodyAccJerkMag-std()   | numeric | [-1, 1] | Frequency domain, Average of standard deviations for the magnitude of jerk, of body acceleration.         |
|   65  | Avrg-fBodyGyroMag-mean()     | numeric | [-1, 1] | Frequency domain, Average of means for the magnitude of angular velocity.                                 |
|   66  | Avrg-fBodyGyroMag-std()      | numeric | [-1, 1] | Frequency domain, Average of standard deviations for the magnitude of angular velocity.                   |
|   67  | Avrg-fBodyGyroJerkMag-mean() | numeric | [-1, 1] | Frequency domain, Average of means for the magnitude of jerk, of angular velocity.                        |
|   68  | Avrg-fBodyGyroJerkMag-std()  | numeric | [-1, 1] | Frequency domain, Average of standard deviation for the magnitude of jerk, of angular velocity.           |

### Cómo cargar datos 'tidy_data_summary' en R
 
Para cargar el 'tidy_data_summary' en R correctamente,
use el siguiente comando:
 
```

tidy_data_summary <- read.table (file = "tidy_data_summary.txt",
                                header = TRUE, check.names = FALSE, dec = ".")
                                               
```
 
O para una carga más rápida, se pueden especificar algunos argumentos adicionales:
 
```
tidy_data_summary <- read.table (file = "tidy_data_summary.txt",
                                header = TRUE, check.names = FALSE, dec = ".",
                                colClasses = c ("numérico", "factor", rep ("numérico", 66)),
                                nrows = 180, comment.char = "", quote = "")
```
   
### Acerca de la tabla 'tidy_data_summary'

Este conjunto de datos fue creado para las necesidades de:

> Curso 3: 'Obtención y limpieza de datos',
> de 'Especialización en ciencia de datos',
> por 'Johns Hopkins University',
> en Coursera
>
> El curso es impartido por:
>
> - Jeff Leek, Phd
> - Roger D. Peng, Phd
> - Brian Caffo, Phd
 
La tabla de datos se puede reproducir,
ya que todos los scripts necesarios están disponibles en el repositorio de Git Hub
[Asignación de datos de obtención y limpieza](https://github.com/Joa3aquin50/Proyecto-obtencion-y-limpieza-de-datos).
Antes de intentar reproducirlo,
Deben tenerse en cuenta las siguientes notas:
 
  - El accedió a los datos utilizados para la descarga en la url:
    "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones"
  - Los datos fueron procesados ​​por el script.
    '[run_analysis.R](https://github.com/Joa3aquin50/Proyecto-obtencion-y-limpieza-de-datos/blob/main/run_analysis.R)'
    para crear la tabla 'tidy_data_summary'.
  - Los scripts se ejecutaron en RStudio (versión 1.1.383)
  - Se utilizó la librería 'dplyr' versión 0.7.4.
  
***
## El proceso mediante el cual se produjo la tabla 'tidy_data_summary'

Para producir la tabla 'tidy_data_summary',
la secuencia de comandos
'[run_analysis.R](https://github.com/Joa3aquin50/Proyecto-obtencion-y-limpieza-de-datos/blob/main/run_analysis.R)'
fue creado y utilizado.
Realiza las siguientes tareas:
 
#### Fusiona los conjuntos de entrenamiento y prueba para crear un conjunto de datos con variables objetivo.
 
  1. Vincula estos archivos,
       - Conjunto de datos UCI HAR / train / subject_train.txt
       - Conjunto de datos UCI HAR / train / X_train.txt
       - Conjunto de datos UCI HAR / train / y_train.txt.
      
     desde el tren establecido por columnas a una tabla que contiene,
     el sujeto humano, la actividad realizada y los valores de los rasgos.
  2. Vincula estos archivos,
       - Conjunto de datos UCI HAR / test / subject_test.txt
       - Conjunto de datos UCI HAR / test / X_test.txt
       - Conjunto de datos UCI HAR / test / y_test.txt.
      
     desde el conjunto de pruebas por columnas a una tabla que contiene,
     el sujeto humano, la actividad realizada y los valores de los rasgos.
  3. Vincula los marcos de datos creados para la prueba y el conjunto de entrenamiento en un gran conjunto de datos
     por filas.

#### Extrae solo las medidas de la media y la desviación estándar de cada medida.
 
  1. Encuentra las características de destino, que son las características con medidas.
     acerca de la desviación estándar y media, y los extrae, así como los
     que indican el 'tema' y la 'actividad' y crea una nueva tabla de datos
     solo con las variables de destino.
 
#### Utiliza nombres de actividades descriptivos para nombrar las actividades en el conjunto de datos.

  1. Reemplace la variable sobre actividad, que contiene números enteros del 1 al 6,
     con un factor basado en niveles y etiquetas contenidas en las 'activity_labels'
     archivo de datos.
 
#### Etiqueta adecuadamente el conjunto de datos con variables objetivo con nombres descriptivos.
 
  1. Extrae los nombres de las variables de destino de 'features.txt'.
  2. Corrige un error tipográfico que existe en algunos nombres de funciones, que es para reemplazar
     'BodyBody' que aparece en los nombres de algunas funciones con solo 'Body'.
  3. Crea un nuevo conjunto de datos ordenado con las etiquetas adecuadas para la variable.
     nombres.
 
#### A partir del conjunto de datos del paso 4, crea un segundo conjunto de datos ordenado e independiente con el promedio de cada variable para cada actividad y cada tema.


  1. Agrupe la ordenada tabla de datos creada en el paso 4, por "tema" y "actividad".
  2. Resume cada variable para encontrar el promediorabia por los valores agrupados.
   3. Desagrupe la tabla de datos.
   4. Agregue nombres descriptivos a las variables de la nueva tabla de datos ordenada,
      agregando el prefijo 'Avrg-' en los nombres de los promedios de las características objetivo.
   5. Escriba los datos en un archivo de texto en el directorio de trabajo actual,
      por el comando:
    
      ```
      write.table (tidy_data_summary, "tidy_data_summary.txt", row.names = FALSE)
      ```
    
***
### Información sobre la recopilación de datos sin procesar
 
Se produjeron los singals sin procesar, como se explica en el archivo 'README.txt' de
conjunto de datos original:
   
> Los experimentos se han realizado con un grupo de 30 voluntarios dentro
un tramo de edad de 19 a 48 años. Cada persona realizó seis actividades
(CAMINAR, CAMINAR_ARRIBA, CAMINAR_BAJAR, SENTARSE, DE PIE, ACOSTARSE)
usando un teléfono inteligente (Samsung Galaxy S II) en la cintura. Usando su incrustado
acelerómetro y giroscopio, capturamos aceleración lineal 3-axial y
Velocidad angular triaxial a una tasa constante de 50 Hz. Los experimentos han sido
video grabado para etiquetar los datos manualmente. El conjunto de datos obtenido ha sido
dividido aleatoriamente en dos conjuntos, donde se seleccionó al 70% de los voluntarios
para generar los datos de entrenamiento y el 30% de los datos de prueba.
>
> Las señales de los sensores (acelerómetro y giroscopio) fueron preprocesadas por
aplicando filtros de ruido y luego muestreados en ventanas corredizas de ancho fijo de
2,56 segundos y superposición del 50% (128 lecturas / ventana). La señal de aceleración del sensor,
que tiene componentes gravitacionales y de movimiento corporal, se separó utilizando
un filtro de paso bajo Butterworth en la aceleración del cuerpo y la gravedad.
Se supone que la fuerza gravitacional tiene solo componentes de baja frecuencia,
por tanto, se utilizó un filtro con una frecuencia de corte de 0,3 Hz. Desde cada ventana,
Se obtuvo un vector de características calculando variables del tiempo y
dominio de la frecuencia. Consulte 'features_info.txt' para obtener más detalles.
>
> #### Para cada registro se proporciona:
>
> - Aceleración triaxial del acelerómetro (aceleración total)
y la aceleración corporal estimada.
> - Velocidad angular triaxial del giroscopio.
> - Un vector de 561 características con variables de dominio de tiempo y frecuencia.
> - Su etiqueta de actividad.
> - Un identificador del sujeto que realizó el experimento.
 
y además incluye las siguientes notas:

> Notas:
>
> - Las características están normalizadas y delimitadas dentro de [-1,1].
> - Cada vector de características es una fila en el archivo de texto.
 

### Acerca del conjunto de datos original
 
La tabla 'tidy_data_summary' se creó utilizando el siguiente conjunto de datos:
 
> Reconocimiento de actividad humana mediante el conjunto de datos de teléfonos inteligentes, versión 1.0
>
> Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
> Smartlab - Laboratorio de sistemas complejos no lineales
> DITEN - Universit? degli Studi di Genova.
> Via Opera Pia 11A, I-16145, Génova, Italia.
> activityrecognition@smartlab.ws
> www.smartlab.ws
 
 
Se puede encontrar más información sobre el conjunto de datos original.
`[aquí](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)`.
 
 
***
### Licencia 

Lo siguiente es una copia y pegado del 'README.txt' del conjunto de datos original
que animo a todos a usar.

> El uso de este conjunto de datos en las publicaciones debe reconocerse haciendo referencia al
siguiente publicación [1]
>
> [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra
y Jorge L. Reyes-Ortiz. Reconocimiento de actividad humana en teléfonos inteligentes usando un
Máquina de vectores de soporte compatible con hardware multiclase. Taller internacional
de vida con asistencia ambiental (IWAAL 2012). Vitoria-Gasteiz, España. Dic. De 2012
>
> Este conjunto de datos se distribuye TAL CUAL y no hay responsabilidad implícita o explícita
pueden dirigirse a los autores o sus instituciones para su uso o mal uso.
Cualquier uso comercial esta prohibido.
>
> Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita.
Noviembre 2012.
 
***
