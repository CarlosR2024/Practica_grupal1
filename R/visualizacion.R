
# Cargar librerías
library(ggplot2)
library(dplyr)

# Configurar tema
theme_set(theme_minimal())

# GRÁFICO 1: Enterotipos Dominantes

# Datos: Los tres enterotipos principales mencionados en el documento
enterotipos <- data.frame(
  tipo = c("Bacteroides", "Prevotella", "Ruminococcus"),
  porcentaje = c(45, 30, 25),
  n_individuos = c(18, 12, 10)
)

# Gráfico de barras
p1 <- ggplot(enterotipos, aes(x = tipo, y = porcentaje, fill = tipo)) +
  geom_bar(stat = "identity", width = 0.6, alpha = 0.8) +
  geom_text(aes(label = paste0(porcentaje, "%")), 
            vjust = -0.5, size = 5, fontface = "bold") +
  labs(
    title = "Distribución de Enterotipos en la Población",
    subtitle = "Clasificación según bacteria dominante (n=40 individuos)",
    x = "Enterotipo",
    y = "Porcentaje de individuos (%)"
  ) +
  scale_fill_manual(values = c("#E63946", "#457B9D", "#2A9D8F")) +
  ylim(0, 50) +
  theme(
    legend.position = "none",
    plot.title = element_text(face = "bold", size = 14),
    axis.text.x = element_text(size = 11, face = "italic"),
    panel.grid.major.x = element_blank()
  )

print(p1)


# GRÁFICO 2: Calidad de Secuenciación (PRINSEQ)
# Simular datos de calidad de secuencias antes y después de PRINSEQ
set.seed(42)
calidad_datos <- data.frame(
  posicion = rep(1:300, 2),
  calidad = c(
    # Antes de PRINSEQ
    rnorm(300, mean = 32, sd = 5),
    # Después de PRINSEQ
    rnorm(300, mean = 35, sd = 2)
  ),
  estado = rep(c("Antes de PRINSEQ", "Después de PRINSEQ"), each = 300)
)

# Limitar calidad entre 0 y 40
calidad_datos$calidad <- pmax(0, pmin(40, calidad_datos$calidad))

p2 <- ggplot(calidad_datos, aes(x = posicion, y = calidad, color = estado)) +
  geom_line(size = 0.8, alpha = 0.7) +
  geom_hline(yintercept = 30, linetype = "dashed", color = "red", size = 0.5) +
  annotate("text", x = 250, y = 31, label = "Q30 threshold", 
           color = "red", size = 3.5) +
  labs(
    title = "Control de Calidad de Secuencias",
    subtitle = "Procesamiento con PRINSEQ - Regiones V3 y V4 del gen 16S rRNA",
    x = "Posición en la secuencia (pb)",
    y = "Puntuación de calidad Phred",
    color = "Estado"
  ) +
  scale_color_manual(values = c("Antes de PRINSEQ" = "#E76F51", 
                                "Después de PRINSEQ" = "#2A9D8F")) +
  theme(
    legend.position = c(0.2, 0.2),
    legend.background = element_rect(fill = "white", color = "gray80"),
    plot.title = element_text(face = "bold", size = 14)
  )

print(p2)
