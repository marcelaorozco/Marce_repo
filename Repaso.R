x <- "esta es una prueba"
hello <- "hello"
world <- "world"
date <- Sys.time()
print(paste(hello, world, date, sep = " "))

#creo un vector con 20 numeros aleatorios con distribuciòn uniforme
x <- runif(20)

#crea un archivo que se llama salida.jpg, todo lo que haga va a intentar irse a ese archivo
jpeg("salida.jpg")

#dibuja un histograma con los valores de x
hist(x)

#suelta el archivo para poderlo abrir en el formato jpg que se creó
dev.off()

source("example3.R")

x <- "marce"

# TYPEOF y CLASS sirve para conocer el tipo de una variable, numerica, logica, caracter, etc
class(x)

# CREACION DE VECTORES 
numeric_vector <- c(1, 2, 3, 4, 5, 6, 7, 8)
character_vector <- c("a", "b", "c", "d", "e", "f", "g")
boolean_vector <- c(TRUE, FALSE, TRUE)

# NAMES sirve para Asignar nombres a los componentes de un vector
some_vector <- c("John Doe", "poker player")
names(some_vector) <- c("Name", "Profession")

# SUM suma los numeros que componen un vector
sum(numeric_vector)

# los CORCHETES sirven para seleccionar las posiciones de un vector que quiero ver y los : sirven 
# para extraer varias posiciones seguidas
character_vector[c(1, 3)]
character_vector[3:5]

# COMPARACIONES LOGICAS: <, > , <= , >= , == for equal to each other, != not equal to each other
# & significa y, | significa o
# MATRIX sirve para construir matrices
my_matrix <- matrix(1:9, byrow = TRUE, nrow = 3)
ranking <- matrix(1:3, byrow = FALSE, nrow=3)
califica <- matrix(1:4, byrow= TRUE, nrow=1)


# CBIND anade columnas a una matriz
nueva_matriz <- cbind(my_matrix, ranking)
nueva_matriz

# RBIND anade filas a una matriz
rbind(nueva_matriz, califica)

# COLSUMS y RSUMS suman los valores de columnas y filas de una matriz respectivamente
colSums(nueva_matriz)

# Seleccion de elementos de una matriz similar a como se hace con vectores
nueva_matriz[1,3]
nueva_matriz[1:2,3:4]
nueva_matriz[1,]
nueva_matriz[,3]


# SUMMARY permite contar el numero de elementos de un factor, funciona como un agregar
summary(survey_vector)
summary(factor_survey_vector)


# DATAFRAME es una base que tiene las variables como columnas y las observaciones en las filas
# a diferencia de las matrices los dataframes pueden tener variables de diferentes 
# tipos (logicos, numericos, caracter)

# Creacion de un DATAFRAME a partir de vectores
name <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

planets_df <- data.frame( name, type, diameter, rotation, rings)
planets_df

# STR muestra el tipo de cada variable del dataframe y algunas observaciones de cada una
str(planets_df)

# HEAD y TAIL muestran las primeras y ultimas observaciones de un dataframe
head(planets_df)
tail(planets_df)

# Seleccion de elementos de un dataframe similar a como se hace con los vectores, con [] y :
planets_df[1,1]
planets_df[1:3, 2:3]
planets_df[1:3, 2]
planets_df[1:3, "rings"]

# SUMMARY es un conjunto de estadisticos descriptivos base, permite realizar un analisis exploratorio
#de los datos 

# $ con el signo pesos puedo llamar toda la columna de un dataframe
planets_df$"rings"

# SUBSET permite seleccionar las observaciones de un dataframe con alguna condicion que 
# yo parametrice
subset(planets_df, subset= diameter < 1)

# MARKDOM es utilizado para crear informes o paginas incluyendo codigo de R, escribir texto
# y formular en R cuando quiera insertar alguno dato o grafico formulado
# para crear un MARKDOM se abre un archivo por: FILE - NEW FILE - R MARKDOM
# CHUNK: ```{r example1} ... sirve para incluir dentro del MARKDOM la formulacion de r que necesito

# tarea: terminar teoria de factores y hacer ejercicios del repositorio: ejercicios1.rmd
# cuando termine la tarea doy clik en File - Knit Document 
# esto ejecuta todo el markdom y crea el documento, funciona si todos los ejercicios estan bien


# FACTOR es un tipo de dato estadistico para almacenar datos categoricos
sex_vector <- c("Male","Female","Female","Male","Male")
factor_sex_vector <- factor(sex_vector)

# Existen variables categoricas: nominal (no tiene orden) y ordinal (tiene un orden natural), 
# la funcion FACTOR permite definir el orden en caso de existir
temperature_vector <- c("High", "Low", "High","Low", "Medium")
factor_temperature_vector <- factor(temperature_vector, order = TRUE, levels = c("Low", "Medium", "High"))
factor_temperature_vector


# LEVELS permite cambiar el nombre de las variables identificadas con la funcion FACTOR
survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)
levels(factor_survey_vector) <- c("Female", "Male")
factor_survey_vector

# IS.NA permite seleccionar los valores que tienen na de una base o campo
?is.na

# NA.OMIT elimina los datos que son na de mi dataframe
na.omit()
?na.omit


?complete.cases

