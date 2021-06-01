################################################################################
# Carga las bibliotecas necesarias
################################################################################
# Version: dplyr_0_7_4.
library(dplyr)




#####################################################################################
# PASO 0: Carga todos los archivos de datos necesarios para este análisis en R
#####################################################################################

## Plan: 1. Cree una lista con instrucciones para read.table (),
## que contiene los argumentos correctos para cada archivo,
## para ser suministrado a través de 'Map ()'.
## La lista contiene los valores para los argumentos de 'read.table ()':
##              - 'expediente'
## - 'colClasses'
## - 'nrows'
## para cada archivo que queremos cargar.
## 2. Use 'Map ()' para cargar cada archivo con la función 'read.table ()',
## según las instrucciones proporcionadas para los argumentos de cada archivo
## en la lista 'read.table_instructions'
## así como algunos argumentos comunes adicionales para todos los archivos.

mensaje ("Intentando cargar archivos de datos en R ...")

## Crea la lista con las instrucciones necesarias por 'read.table ()'
read.table_instructions <- list(
      file = list(
            activity_labels = "UCI HAR Dataset/activity_labels.txt",
            features = "UCI HAR Dataset/features.txt",
            subject_train = "UCI HAR Dataset/train/subject_train.txt",
            y_train = "UCI HAR Dataset/train/y_train.txt",
            X_train = "UCI HAR Dataset/train/X_train.txt",
            subject_test = "UCI HAR Dataset/test/subject_test.txt",
            y_test = "UCI HAR Dataset/test/y_test.txt",
            X_test = "UCI HAR Dataset/test/X_test.txt"
      ),
      colClasses = list(
            activity_labels = c("integer", "character"),
            features = c("integer", "character"),
            subject_train = "integer",
            y_train = "integer",
            X_train = rep("numeric", 561),
            subject_test = "integer",
            y_test = "integer",
            X_test = rep("numeric", 561)
      ),
      nrows = list(
            activity_labels = 6,
            features = 561,
            subject_train = 7352,
            y_train = 7352,
            X_train = 7352,
            subject_test = 2947,
            y_test = 2947,
            X_test = 2947
      )
)

## Utiliza las instrucciones creadas anteriormente para cargar todos los datos necesarios con 'Map ()'.
## Para cada archivo, se proporcionan los argumentos correctos a la función 'read.table ()',
## así como algunos argumentos comunes adicionales para todos los archivos.
## La función 'con ()' se usa para un código más claro.
data_files <- with(read.table_instructions,
                   Map(read.table,
                       file = file, colClasses = colClasses, nrows = nrows,
                       quote = "", comment.char = "",
                       stringsAsFactors = FALSE))

################################################################################################################################################################################################################################################################### #############################
# PASO 1: Fusiona los conjuntos de entrenamiento y prueba para crear un conjunto de datos.
################################################################################################################################################################################################################################################################### #############################

## Plan: 1. Enlaza los archivos del conjunto de trenes por columnas.
## 2. Vincular los archivos del conjunto de pruebas por columnas.
## 3. Vincular los marcos de datos creados para la prueba y el conjunto de entrenamiento
## en un gran conjunto de datos por filas.

## Fusiona el tren y los conjuntos de prueba
merged_data <- with(data_files,
                    rbind(cbind(subject_train, y_train, X_train),
                          cbind(subject_test,  y_test,  X_test)))


################################################################################################################################################################################################################################################################### #############################
# PASO 2: Extrae solo las medidas de la desviación estándar y media
# para cada medida.
################################################################################################################################################################################################################################################################### #############################

## Plan: 1. Encuentre los índices de características de destino que son las características
## con nombres que contienen la cadena 'mean ()' o 'std ()',
## del marco de datos 'características'.
## 2. Agregue 2 a cada índice para ajustar las dos columnas adicionales
## al comienzo del marco de datos combinado, 'asunto' y 'actividad',
## para crear un vector con todos los índices de las variables de destino.
## 3. Extraiga solo las variables de destino del marco de datos combinado.

## Encuentra los índices de características de destino del marco de datos de 'características',
## buscando coincidencias con los patrones 'mean ()' o 'std ()'
target_features_indexes <- grep("mean\\(\\)|std\\(\\)",
                                data_files$features[[2]])

## Agregue 2 a cada índice para ajustar las primeras 2 columnas que hemos enlazado
## que también debería incluirse
target_variables_indexes <- c(1, 2, # the first two columns that refer to
                              # 'subject' and 'activity'
                              # should be included
                              # adds 2 to correct the indexes
                              # of target features indexes because of
                              # the 2 extra columns we have included
                              target_features_indexes + 2)

## Extrae las variables de destino para crear el marco de datos de destino
target_data <- merged_data[ , target_variables_indexes]

################################################################################################################################################################################################################################################################### #############################
# PASO 3: Utiliza nombres de actividades descriptivos para nombrar las actividades en el conjunto de datos
################################################################################################################################################################################################################################################################### #############################

## Reemplaza los valores de la actividad con un factor basado en niveles y etiquetas
## contenido en el archivo de datos activity_labels.
target_data[[2]] <- factor(target_data[[2]],
                           levels = data_files$activity_labels[[1]],
                           labels = data_files$activity_labels[[2]])

################################################################################################################################################################################################################################################################### #############################
# PASO 4: Etiquete apropiadamente el conjunto de datos con nombres de variables descriptivos.
################################################################################################################################################################################################################################################################### #############################

## Plan: 1. Extrae los nombres de las variables de destino de 'características',
## con el uso de los índices de características de destino creados en el PASO 2
## 2. Corrige un error tipográfico que existe en algunos nombres de funciones
## 3. Crea un nuevo conjunto de datos ordenado con las etiquetas adecuadas
## para los nombres de las variables

## Extrae los nombres de las variables de destino
descriptive_variable_names <- data_files$features[[2]][target_features_indexes]

## Corregir el error
descriptive_variable_names <- gsub(pattern = "BodyBody", replacement = "Body",
                                   descriptive_variable_names)

## crear un conjunto de datos ordenado con el nombre correcto de las variables
tidy_data <- target_data
names(tidy_data) <- c("subject", "activity", descriptive_variable_names)


################################################################################################################################################################################################################################################################### #############################
# PASO 5: A partir del conjunto de datos en el paso 4, crea un segundo, independiente
# conjunto de datos ordenado con el promedio de cada variable
# para cada actividad y cada tema.
################################################################################################################################################################################################################################################################### #############################

## Plan: 1. Agrupe la tabla de datos ordenada creada en el paso 4,
## por 'tema' y 'actividad'
## 2. Resume cada variable para encontrar la media de los valores agrupados
## 3. Desagrupar la tabla de datos
## 4. Agregue nombres descriptivos a las variables de la nueva tabla de datos ordenada
## 5. Escribe los datos en un archivo de texto en el directorio de trabajo actual

## Crea un conjunto de datos con la media de cada columna para 'tema' y 'actividad'
tidy_data_summary <- tidy_data %>%
      group_by(subject, activity) %>%
      summarise_all(funs(mean)) %>%
      ungroup()

## Reemplaza los nombres de las variables de 'tidy_data_summary' con nuevos descriptivos.
## Solo se agregará el prefijo "Avrg-" en todos los nombres de variables,
## excepto los dos primeros, 'tema' y 'actividad'.
new_names_for_summary <- c(names(tidy_data_summary[c(1,2)]),
                           paste0("Avrg-", names(tidy_data_summary[-c(1, 2)])))
names(tidy_data_summary) <- new_names_for_summary

## Guardar el data frame creado en el directorio
write.table(tidy_data_summary, "tidy_data_summary.txt", row.names = FALSE)

# PROGRAMA TERMINADO ######
