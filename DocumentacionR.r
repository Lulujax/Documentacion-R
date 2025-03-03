#Luis Peña 30512332
#En R, puedes asignar valores a variables usando <- o =.
# Asignación de variables
x <- 10
y <- "Hola, mundo"
z <- 3.14
# Tipos de datos
class(x)  # "numeric"
class(y)  # "character"
class(z)  # "numeric"

#Los vectores son estructuras fundamentales en R. Puedes crearlos con la función c().
# Crear un vector
numeros <- c(1, 2, 3, 4, 5)
texto <- c("a", "b", "c")

# Operaciones con vectores
sum(numeros)  # Suma de elementos
mean(numeros) # Promedio

#Los data frames son estructuras de datos bidimensionales, similares a las tablas de una base de datos.
# Crear un data frame
df <- data.frame(
  nombre = c("Juan", "Ana", "Luis"),
  edad = c(25, 30, 22),
  ciudad = c("Madrid", "Barcelona", "Valencia")
)
# Ver el data frame
print(df)

#R es conocido por su capacidad para crear gráficos de alta calidad. La librería ggplot2 es una de las más populares.
# Instalar ggplot2 si no lo tienes
install.packages("ggplot2")

# Cargar la librería
library(ggplot2)

# Crear un gráfico de dispersión
ggplot(df, aes(x = edad, y = nombre)) + geom_point()

# Gráfico de barras
ggplot(df, aes(x = nombre, y = edad)) +
  geom_bar(stat = "identity") +
  theme_minimal() +
  labs(title = "Edades por nombre", x = "Nombre", y = "Edad")

# Crear datos de ejemplo
set.seed(123)
x <- rnorm(100)
y <- 2 * x + rnorm(100)

# Ajustar un modelo lineal
modelo <- lm(y ~ x)
summary(modelo)

# Prueba t de Student
t.test(x, y)

#dplyr es una librería muy útil para manipular datos.

# Instalar dplyr si no lo tienes
install.packages("dplyr")

# Cargar la librería
library(dplyr)

# Filtrar datos
df_filtrado <- df %>% filter(edad > 25)

# Seleccionar columnas
df_seleccionado <- df %>% select(nombre, ciudad)

#R es una herramienta poderosa para el análisis de datos y la visualización. Con Jupyter Notebook, puedes combinar código, gráficos y texto en un solo documento, lo que lo hace ideal para presentar tus análisis de manera clara y profesional.
