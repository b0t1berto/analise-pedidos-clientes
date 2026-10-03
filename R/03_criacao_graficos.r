# Cria gráfico de taxa de retorno
grafico_retorno <- ggplot(
  df,
  aes(
    x = occupation,
    y = taxa
  )
) + geom_col(colour = "lightblue") +
  labs(
    title = "Taxa de retorno por ocupação",
    x = "Tipo de ocupação",
    y = "Taxa de retorno"
  ) + theme_minimal()

ggsave("graficos/taxa_de_retorno.png", plot = grafico_taxa_positivo)


# Cria gráfico de taxa de feedback positivo
grafico_taxa_positivo <- ggplot(
  tabela1,
  aes(
    x = occupation,
    y = percent_positivo
  )
) + geom_col(fill = "lightblue") + 
  labs(
    title = "Taxa de feedback positivo por ocupação",
    x = "Tipo de ocupação",
    y = "Taxa de feedback positivo"
  ) + theme_minimal()

grafico_taxa_positivo  

ggsave("graficos/taxa_de_feedback_positivo.png", plot = grafico_taxa_positivo)
  

# Cria gráfico de feedback negativo por região
grafico_feedback_negativo_por_regiao <- tabela3 |>
  filter(clientes >= 8) |>
  mutate(pin_code = fct_reorder(factor(pin_code), feedback_negativo)) |>
  ggplot(
    aes(
      x = feedback_negativo,
      y = pin_code
    )
  ) + geom_col(fill = "lightblue") +
  geom_text(
    aes(
      label = scales::percent(feedback_negativo, accuracy = 1)),
      hjust = -0.1,
      size = 3
    ) +
      scale_x_continuous(
        labels = scales::percent,
        expand = expansion(mult = c(0, 0.1))
      ) +
  labs(
    title = "Taxa de feedback negativo por região",
    x = "Taxa de feedback negativo",
    y = "Pin Code"
  ) + theme_minimal()

ggsave("graficos/feedback_negativo_por_regiao.png", plot = grafico_feedback_negativo_por_regiao)


