# Análise de Pedidos de Comida Online (Online Food Delivery)

Projeto em **R** que analisa o perfil e o comportamento de clientes de um serviço de delivery de comida a partir da base `online food delivery dataset.csv`. Os scripts realizam a inspeção e o tratamento dos dados, respondem a quatro perguntas de negócio e geram gráficos para apoiar as conclusões.

## Objetivos

- Inspecionar a estrutura da base e os tipos de cada variável
- Identificar e tratar valores ausentes
- Responder a perguntas de negócio sobre retorno de clientes, satisfação e segmentação
- Gerar visualizações e salvá-las na pasta `graficos/`

## Perguntas de negócio

| # | Pergunta | Visualização |
|---|----------|--------------|
| 1 | Qual nível de ocupação possui a maior taxa de retorno? | Gráfico de barras (`taxa_de_retorno.png`) |
| 2 | Qual a proporção de feedbacks positivos por tipo de ocupação? | Gráfico de barras (`taxa_de_feedback_positivo.png`) |
| 3 | Quais combinações de ocupação, renda e estado civil formam os maiores segmentos de clientes? | — |
| 4 | Qual região (com base no *pin code*) possui a maior taxa de feedbacks negativos? | Gráfico de barras empilhadas (`feedback_negativo_por_regiao.png`) |

## Estrutura do projeto

```
.
├── dados/                          # Dados do projeto
│   ├── raw/                        # Dados crus (online food delivery dataset.csv)
│   └── processed/                  # Dados processados
├── graficos/                       # Gráficos gerados pela análise
│   ├── feedback_negativo_por_regiao.png
│   ├── taxa_de_feedback_positivo.png
│   └── taxa_de_retorno.png
├── R/                              # Scripts em R
│   ├── 01_limpeza_dados.r
│   ├── 02_analise_exploratoria.r
│   └── 03_criacao_graficos.r
└── README.md
```

## Scripts

| Script | Descrição |
|--------|-----------|
| `01_limpeza_dados.r` | Importa a base de `dados/raw/`, inspeciona os tipos de variáveis e trata os valores ausentes |
| `02_analise_exploratoria.r` | Realiza as análises que respondem às perguntas de negócio |
| `03_criacao_graficos.r` | Cria os gráficos e os salva em `graficos/` |

## Pré-requisitos

- [R](https://www.r-project.org/) (versão 4.0 ou superior recomendada)
- Opcional: [RStudio](https://posit.co/download/rstudio-desktop/)
- Pacotes R utilizados: `dplyr`, `readr`, `ggplot2`, `janitor`, `stringr` e `forcats`

Para instalar os pacotes:

```r
install.packages(c("dplyr", "readr", "ggplot2", "janitor", "stringr", "forcats"))
```

## Como executar

1. Clone o repositório:
   ```bash
   git clone https://github.com/b0t1berto/analise-pedidos-clientes.git
   cd analise-pedidos-clientes
   ```
2. Confirme que o arquivo `online food delivery dataset.csv` está dentro da pasta `dados/raw/`.
3. Abra o projeto no RStudio (ou no terminal do R) e execute os scripts em ordem, a partir da raiz do projeto:
   ```r
   source("R/01_limpeza_dados.r")
   source("R/02_analise_exploratoria.r")
   source("R/03_criacao_graficos.r")
   ```
4. Os gráficos serão salvos na pasta `graficos/`.
