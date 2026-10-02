df <- read_csv("dados/processed/online food delivery dataset processed.csv") |>
  clean_names() |>
  select(-last_col()) |>
  mutate(
    retornou = output == "Yes",
    feedback = str_trim(feedback)
  )

taxa_geral <- round(mean(df$retornou), 2)
taxa_geral


df |> group_by(occupation) |>
  summarise(
    clientes = n(),
    taxa = round(mean(retornou), 2),
  ) |>
  arrange(desc(taxa))


df |>
  group_by(occupation) |>
  summarise(
    clientes = n(),
    positivos = sum(feedback == "Positive"),
    percent_positivo = round(mean(feedback == "Positive"), 2),
    percent_negativo = round(mean(feedback == "Negative"), 2)
  )

df |>
  group_by(occupation) |>
  summarise(
    clientes = n(),
    positivos = sum(feedback == "Positive"),
    percent_positivo = round(mean(feedback == "Positive"), 2),
    percent_negativo = round(mean(feedback == "Negative"), 2)
  )


df |>
  group_by(occupation, marital_status, monthly_income) |>
  summarise(
    clientes = n()
  ) |>
  arrange(desc(clientes))


df |>
  group_by(pin_code) |>
  summarise(
    clientes = n(),
    feedback_negativo = round(mean(feedback == "Negative"), 2)
  ) |>
  arrange(desc(clientes), desc(feedback_negativo))


