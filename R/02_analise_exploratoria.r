# Adiciona a variável "retornou"
df <- read_csv("dados/processed/online food delivery dataset processed.csv") |>
  clean_names() |>
  select(-last_col()) |>
  mutate(
    retornou = output == "Yes",
    feedback = str_trim(feedback)
  )
taxa_geral <- round(mean(df$retornou), 2)
taxa_geral


# Encontra qual nível de ocupação possui a maior taxa de retorno
df |> group_by(occupation) |>
  summarise(
    clientes = n(),
    taxa = round(mean(retornou), 2),
  ) |>
  arrange(desc(taxa))


# Proporção de feedbacks positivos em cada nível de ocupação
df |>
  group_by(occupation) |>
  summarise(
    clientes = n(),
    positivos = sum(feedback == "Positive"),
    percent_positivo = round(mean(feedback == "Positive"), 2),
    percent_negativo = round(mean(feedback == "Negative"), 2)
  )


# Quais combinações de ocupação, renda e estado civil formam os maiores segmentos
df |>
  group_by(occupation, marital_status, monthly_income) |>
  summarise(
    clientes = n()
  ) |>
  arrange(desc(clientes))


# Qual região possui maior taxa de feedbacks negativos
df |>
  group_by(pin_code) |>
  summarise(
    clientes = n(),
    feedback_negativo = round(mean(feedback == "Negative"), 2)
  ) |>
  arrange(desc(clientes), desc(feedback_negativo))
