# Cargar librerías
library(ggplot2)
library(dplyr)

# Crear el dataframe de muestra
df <- data.frame(
  Sample = c('ae-0069', 'am-0001', 'as-0033', 'at-0004', 'ba-0010', 'aa-0163', 'ab-0140', 'ac-0002', 'ad-0005', 'ad-0002'),
  Age = c(21, 28, 22, 24, 19, 29, 31, 32, 21, 21),
  Gender = c('Male', 'Male', 'Male', 'Female', 'Male', 'Male', 'Male', 'Female', 'Male', 'Male'),
  methylguanine = c(0.653, 0.722, 0.360, 0.569, 0.919, 0.880, 0.692, 0.279, 0.062, 0.569)
)

# Calcular medias por género
mean_levels <- df %>%
  group_by(Gender) %>%
  summarize(mean_level = mean(methylguanine))

# Crear gráfica
ggplot(mean_levels, aes(x=Gender, y=mean_level, fill=Gender)) +
  geom_bar(stat='identity') +
  labs(title='Nivel medio de 1-methylguanine según género',
       x='Género', y='Nivel relativo') +
  theme_minimal() +
  ylim(0, 1) +
  theme(legend.position = "none")
