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
     - Información sobre cómo se produjeron las características a partir de los datos sin procesar
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
 
| Índice  | Variables                      | Clase    | Rango     | Descripción                                                                                                 |
| ------- | ------------------------------ | -------- | --------- | ------------------------------- -------------------------------------------------- -------------------------|
| 1       | sujeto                         | entero   | 1 - 30    | Identifica al sujeto humano.                                                                                |
| 2       | actividad | factor | 1 - 6 | Identifica la actividad. Labels: CAMINAR, CAMINAR POR LA PLANTA ARRIBA, CAMINAR POR LA PLANTA BAJA, SENTARSE, DE PIE, COLOCARSE |
| 3       | Avrg-tBodyAcc-mean () - X | numérico | [-1, 1] | Dominio del tiempo, promedio de las medias de la aceleración corporal en el eje X. |
| 4 | Avrg-tBodyAcc-mean () - Y | numérico | [-1, 1] | Dominio del tiempo, promedio de las medias de la aceleración corporal en el eje Y. |
| 5 | Avrg-tBodyAcc-mean () - Z | numérico | [-1, 1] | Dominio del tiempo, promedio de medias para la aceleración corporal en el eje Z. |
| 6 | Avrg-tBodyAcc-std () - X | numérico | [-1, 1] | Dominio del tiempo, promedio de desviaciones estándar para la aceleración del cuerpo en el eje X. |
| 7 | Avrg-tBodyAcc-std () - Y | numérico | [-1, 1] | Dominio del tiempo, promedio de desviaciones estándar para la aceleración del cuerpo en el eje Y. |
| 8 | Avrg-tBodyAcc-std () - Z | numérico | [-1, 1] | Dominio del tiempo, promedio de desviaciones estándar para la aceleración del cuerpo en el eje Z. |
| 9 | Avrg-tGravityAcc-mean () - X | numérico | [-1, 1] | Dominio del tiempo, promedio de medias para la aceleración de la gravedad en el eje X. |
| 10 | Avrg-tGravityAcc-mean () - Y | numérico | [-1, 1] | Dominio del tiempo, promedio de medias para la aceleración de la gravedad en el eje Y. |
| 11 | Avrg-tGravityAcc-mean () - Z | numérico | [-1, 1] | Dominio del tiempo, promedio de medias para la aceleración de la gravedad en el eje Z. |
| 12 | Avrg-tGravityAcc-std () - X | numérico | [-1, 1] | Dominio del tiempo, promedio de desviaciones estándar para la aceleración de la gravedad en el eje X. |
| 13 | Avrg-tGravityAcc-std () - Y | numérico | [-1, 1] | Dominio del tiempo, promedio de las desviaciones estándar para la aceleración de la gravedad en el eje Y. |
| 14 | Avrg-tGravityAcc-std () - Z | numérico | [-1, 1] | Dominio del tiempo, promedio de desviaciones estándar para la aceleración de la gravedad en el eje Z. |
| 15 | Avrg-tBodyAccJerk-mean () - X | numérico | [-1, 1] | Dominio del tiempo, promedio de medias para la sacudida de la aceleración corporal en el eje X. |
| 16 | Avrg-tBodyAccJerk-mean () - Y | numérico | [-1, 1] | Dominio del tiempo, promedio de medias para la sacudida de la aceleración del cuerpo en el eje Y. |
| 17 | Avrg-tBodyAccJerk-mean () - Z | numérico | [-1, 1] | Dominio del tiempo, promedio de medias para la sacudida de la aceleración del cuerpo en el eje Z. |
| 18 | Avrg-tBodyAccJerk-std () - X | numérico | [-1, 1] | Dominio del tiempo, promedio de desviaciones estándar para el tirón de la aceleración corporal en el eje X. |
| 19 | Avrg-tBodyAccJerk-std () - Y | numérico | [-1, 1] | Dominio del tiempo, promedio de desviaciones estándar para la sacudida de la aceleración corporal en el eje Y. |
| 20 | Avrg-tBodyAccJerk-std () - Z | numérico | [-1, 1] | Dominio del tiempo, promedio de desviaciones estándar para la sacudida de la aceleración del cuerpo en el eje Z.|
| 21 | Avrg-tBodyGyro-mean () - X | numérico | [-1, 1] | Dominio del tiempo, promedio de las medias de la velocidad angular en el eje X. |
| 22 | Avrg-tBodyGyro-mean () - Y | numérico | [-1, 1] | Dominio del tiempo, promedio de las medias de la velocidad angular en el eje Y. |
| 23 | Avrg-tBodyGyro-mean () - Z | numérico | [-1, 1] | Dominio del tiempo, promedio de las medias de la velocidad angular en el eje Z. |
| 24 | Avrg-tBodyGyro-std () - X | numérico | [-1, 1] | Dominio del tiempo, promedio de desviaciones estándar para la velocidad angular en el eje X. |
| 25 | Avrg-tBodyGyro-std () - Y | numérico | [-1, 1] | Dominio del tiempo, promedio de desviaciones estándar para la velocidad angular en el eje Y. |
| 26 | Avrg-tBodyGyro-std () - Z | numérico | [-1, 1] | Dominio del tiempo, promedio de desviaciones estándar para la velocidad angular en el eje Z. |
| 27 | Avrg-tBodyGyroJerk-mean () - X | numérico | [-1, 1] | Dominio del tiempo, promedio de medias para la sacudida de la velocidad angular en el eje X. |
| 28 | Avrg-tBodyGyroJerk-mean () - Y | numérico | [-1, 1] | Dominio del tiempo, promedio de medias para la sacudida de velocidad angular en el eje Y. |
| 29 | Avrg-tBodyGyroJerk-mean () - Z | numérico | [-1, 1] | Dominio del tiempo, promedio de medias para la sacudida de la velocidad angular en el eje Z. |
| 30 | Avrg-tBodyGyroJerk-std () - X | numérico | [-1, 1] | Dominio del tiempo, promedio de desviaciones estándar para el tirón de velocidad angular en el eje X. |
| 31 | Avrg-tBodyGyroJerk-std () - Y | numérico | [-1, 1] | Dominio del tiempo, promedio de desviaciones estándar para el tirón de velocidad angular en el eje Y. |
| 32 | Avrg-tBodyGyroJerk-std () - Z | numérico | [-1, 1] | Dominio del tiempo, promedio de desviaciones estándar para el tirón de velocidad angular en el eje Z. |
| 33 | Avrg-tBodyAccMag-mean () | numérico | [-1, 1] | Dominio del tiempo, promedio de medias para la magnitud de la aceleración corporal. |
| 34 | Avrg-tBodyAccMag-std () | numérico | [-1, 1] | Dominio del tiempo, promedio de desviaciones estándar para la magnitud de la aceleración corporal. |
| 35 | Avrg-tGravityAccMag-mean () | numérico | [-1, 1] | Dominio del tiempo, promedio de medias para la magnitud de la aceleración de la gravedad. |
| 36 | Avrg-tGravityAccMag-std () | numérico | [-1, 1] | Dominio del tiempo, promedio de desviaciones estándar para la magnitud de la aceleración de la gravedad. |
| 38 | Avrg-tBodyAccJerkMag-mean () | numérico | [-1, 1] | Dominio del tiempo, promedio de medias para la magnitud de la sacudida, de la aceleración corporal. |
| 38 | Avrg-tBodyAccJerkMag-std () | numérico | [-1, 1] | Dominio del tiempo, promedio de desviaciones estándar para la magnitud de la sacudida, de la aceleración corporal. |
| 39 | Avrg-tBodyGyroMag-mean () | numérico | [-1, 1] | Dominio del tiempo, promedio de medias para la magnitud de la velocidad angular. |
| 40 | Avrg-tBodyGyroMag-std () | numérico | [-1, 1] | Dominio del tiempo, promedio de desviaciones estándar para la magnitud de la velocidad angular. |
| 41 | Avrg-tBodyGyroJerkMag-mean () | numérico | [-1, 1] | Dominio del tiempo, promedio de medias para la magnitud de la sacudida, de la velocidad angular. |
| 42 | Avrg-tBodyGyroJerkMag-std () | numérico | [-1, 1] | Dominio del tiempo, promedio de desviaciones estándar para la magnitud del tirón, de la velocidad angular. |
| 43 | Avrg-fBodyAcc-mean () - X | numérico | [-1, 1] | Dominio de la frecuencia, promedio de las medias de la aceleración corporal en el eje X. |
| 44 | Avrg-fBodyAcc-mean () - Y | numérico | [-1, 1] | Dominio de la frecuencia, promedio de las medias de la aceleración corporal en el eje Y. |
| 45 | Avrg-fBodyAcc-mean () - Z | numérico | [-1, 1] | Dominio de la frecuencia, promedio de las medias de la aceleración corporal en el eje Z. |
| 46 | Avrg-fBodyAcc-std () - X | numérico | [-1, 1] | Dominio de la frecuencia, promedio de las desviaciones estándar para la aceleración del cuerpo en el eje X. |
| 47 | Avrg-fBodyAcc-std () - Y | numérico | [-1, 1] | Dominio de la frecuencia, promedio de las desviaciones estándar para la aceleración del cuerpo en el eje Y. |
| 48 | Avrg-fBodyAcc-std () - Z | numérico | [-1, 1] | Dominio de la frecuencia, promedio de las desviaciones estándar para la aceleración del cuerpo en el eje Z. |
| 49 | Avrg-fBodyAccJerk-mean () - X | numérico | [-1, 1] | Dominio de frecuencia, Promedio de medias para el tirón de la aceleración del cuerpo en el eje X. |
| 50 | Avrg-fBodyAccJerk-mean () - Y | numérico | [-1, 1] | Dominio de frecuencia, promedio de míans por el tirón de la aceleración del cuerpo en el eje Y. |
| 51 | Avrg-fBodyAccJerk-mean () - Z | numérico | [-1, 1] | Dominio de frecuencia, Promedio de medias para el tirón de la aceleración del cuerpo en el eje Z. |
| 52 | Avrg-fBodyAccJerk-std () - X | numérico | [-1, 1] | Dominio de la frecuencia, promedio de las desviaciones estándar para el tirón de la aceleración del cuerpo en el eje X. |
| 53 | Avrg-fBodyAccJerk-std () - Y | numérico | [-1, 1] | Dominio de la frecuencia, promedio de las desviaciones estándar para el tirón de la aceleración del cuerpo en el eje Y. |
| 54 | Avrg-fBodyAccJerk-std () - Z | numérico | [-1, 1] | Dominio de la frecuencia, promedio de las desviaciones estándar para el tirón de la aceleración del cuerpo en el eje Z. |
| 55 | Avrg-fBodyGyro-mean () - X | numérico | [-1, 1] | Dominio de la frecuencia, promedio de las medias para la sacudida de la velocidad angular en el eje X. |
| 56 | Avrg-fBodyGyro-mean () - Y | numérico | [-1, 1] | Dominio de la frecuencia, Promedio de medias para el tirón de velocidad angular en el eje Y. |
| 57 | Avrg-fBodyGyro-mean () - Z | numérico | [-1, 1] | Dominio de la frecuencia, promedio de medias para el tirón de velocidad angular en el eje Z. |
| 58 | Avrg-fBodyGyro-std () - X | numérico | [-1, 1] | Dominio de la frecuencia, promedio de las desviaciones estándar para la sacudida de la velocidad angular en el eje X. |
| 59 | Avrg-fBodyGyro-std () - Y | numérico | [-1, 1] | Dominio de la frecuencia, promedio de las desviaciones estándar para la sacudida de la velocidad angular en el eje Y. |
| 60 | Avrg-fBodyGyro-std () - Z | numérico | [-1, 1] | Dominio de la frecuencia, promedio de las desviaciones estándar para la sacudida de la velocidad angular en el eje Z. |
| 61 | Avrg-fBodyAccMag-mean () | numérico | [-1, 1] | Dominio de la frecuencia, promedio de medias para la magnitud de la aceleración corporal. |
| 62 | Avrg-fBodyAccMag-std () | numérico | [-1, 1] | Dominio de la frecuencia, promedio de desviaciones estándar para la magnitud de la aceleración corporal. |
| 63 | Avrg-fBodyAccJerkMag-mean () | numérico | [-1, 1] | Dominio de la frecuencia, promedio de medias para la magnitud de la sacudida, de la aceleración del cuerpo. |
| 64 | Avrg-fBodyAccJerkMag-std () | numérico | [-1, 1] | Dominio de la frecuencia, promedio de las desviaciones estándar para la magnitud del tirón, de la aceleración del cuerpo. |
| 65 | Avrg-fBodyGyroMag-mean () | numérico | [-1, 1] | Dominio de la frecuencia, Promedio de medias para la magnitud de la velocidad angular. |
| 66 | Avrg-fBodyGyroMag-std () | numérico | [-1, 1] | Dominio de la frecuencia, promedio de desviaciones estándar para la magnitud de la velocidad angular. |
| 67 | Avrg-fBodyGyroJerkMag-mean () | numérico | [-1, 1] | Dominio de la frecuencia, promedio de medias para la magnitud de la sacudida, de la velocidad angular. |
| 68 | Avrg-fBodyGyroJerkMag-std () | numérico | [-1, 1] | Dominio de la frecuencia, promedio de la desviación estándar para la magnitud del tirón, de la velocidad angular. |
