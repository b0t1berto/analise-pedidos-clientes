# TODO List - Projeto: Análise de Perfil de Clientes (Pedidos de Comida Online)

## 📍 Fase 1: Setup do Ambiente e Dados
- [x] Criar nova estrutura de diretórios (`dados/raw`, `dados/processed`, `graficos`, `R`)
- [x] Obter/salvar o arquivo `pedidos.csv` na pasta `dados/raw/`
- [x] Configurar `.gitignore`

## 🧹 Fase 2: Importação e Limpeza de Dados
- [X] Criar o script `R/01_limpeza_dados.R`
- [X] Ler o CSV com `readr::read_csv()`
- [X] Inspecionar tipos de variáveis (`str()`, `glimpse()`)
- [X] Tratar valores ausentes (`NA`) em `monthly_income` e `family_size`
- [X] Padronizar categorias de `occupation` e `educational_qualification`
- [X] Criar colunas derivadas: `faixa_etaria`, `faixa_renda`
- [X] Salvar a base limpa em `dados/processed/pedidos_limpos.csv`

## 📊 Fase 3: Análise Exploratória e Métricas
- [ ] Criar o script `R/02_analise_exploratoria.R`
- [ ] Qual faixa etária mais consome o serviço?
- [ ] Existe relação entre renda mensal e `customer_type`?
- [ ] Estudantes ou profissionais pedem mais?
- [ ] Famílias maiores tendem a ser clientes recorrentes?

## 🖼️ Fase 4: Visualizações e Relatórios
- [ ] Barras: `customer_type` por faixa etária
- [ ] Boxplot: `monthly_income` por `customer_type`
- [ ] Barras empilhadas: `occupation` x `customer_type`
- [ ] Salvar gráficos em `graficos/` (`.png`, alta resolução)

## 🚀 Fase 5: Documentação e Git Workflow
- [ ] Escrever o `README.md`
- [ ] Marcar itens concluídos
- [ ] Commits frequentes por fase
# - [ ] `git push` final