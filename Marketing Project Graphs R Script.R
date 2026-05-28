# 5-28-2026
# can't believe I'm doing this shit because I can't figure it out on Excel

product_prices = read.csv("Polaroid Research Pricing Points CSV 5-28-2026 - Product List.csv",
                          header = TRUE)

library(ggplot2)
library(tidyverse)

# grabbing fonts
install.packages("showtext")
library(showtext)
install.packages("sysfonts")
library(sysfonts)

font_add_google("Montserrat", "montserrat")
font_add_google("Helvetica", "helvetica")

showtext_auto()


# ai helped me with this. I just gave it the bones and then it made it look pretty
ggplot(product_prices) +
  geom_point(
    aes(x = Price, y = Category, color = Category),
    size = 4,
    alpha = 0.8
  ) +
  scale_x_continuous(
    limits = c(0, 800),
    breaks = seq(0, 800, by = 100),
    expand = expansion(mult = c(0, 0.08))
  ) +
  labs(
    title = "Polaroid Product Prices by Category",
    x = "Price (USD)",
    y = NULL
  ) +
  theme_minimal(base_family = "montserrat") +
  theme(
    plot.title = element_text(
      size = 20,
      face = "bold",
      hjust = 0.40
    ),
    axis.title.x = element_text(size = 15, hjust = 0.43),
    axis.text.y = element_text(size = 14),
    axis.text.x = element_text(size = 15),
    legend.position = "none",
    panel.grid.minor = element_blank(),
    panel.grid.major.y = element_blank()
  )
