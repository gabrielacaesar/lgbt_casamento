# reading libraries
library(readxl)
library(tidyverse)

# defining sheet, path and file
#ufs possiveis: "RO", "AC", "AM", "RR", "PA", "AP", "TO", "MA", 
#"PI", "CE", "RN", "PB", "PE", "AL", "SE", "BA", "MG", "ES", 
#"RJ", "SP",  "PR", "SC", "RS", "MS", "MT", "GO", "DF"

user_sheet <- "DF"

ibge_pop <- read_xls(path.expand("~/Documents/r_projetos/lgbt_casamento/projecoes_2018_populacao_2010_2060_20200406.xls"), sheet = user_sheet)

`%!in%` <- compose(`!`, `%in%`)
# organizing data
tidy_pop <- ibge_pop %>%
  janitor::row_to_names(4) %>%
  janitor::clean_names() %>%
  filter(!str_detect(grupo_etario, "Fonte|Projeção|GRUPO ETÁRIO")) %>%
  filter(grupo_etario %!in% c("0-4", "5-9", "10-14", "Total")) %>%
  mutate(genero = case_when(str_detect(grupo_etario, "POPULAÇÃO MULHERES") ~ "Mulher",
                            str_detect(grupo_etario, "POPULAÇÃO TOTAL") ~ "Total")) %>%
  relocate(genero, .before = "grupo_etario") %>%
  mutate(genero = case_when(row_number() == 1 ~ "Homem",
                            TRUE ~ genero)) %>%
  fill(genero, .direction = "down") %>%
  filter(!str_detect(grupo_etario, "POPULAÇÃO TOTAL|POPULAÇÃO MULHERES")) %>%
  filter(genero != "Total") %>%
  select(genero, x2013, x2014, x2015, x2016, x2017, x2018, x2019) %>%
  group_by(genero) %>%
  summarise_all(.funs = "sum") %>%
  pivot_longer(2:8, names_to = "ano", values_to = "pop_adulta") %>%
  mutate(ano = str_remove_all(ano, "x"),
         uf = user_sheet)
  
#dir.create(paste0("~/Documents/r_projetos/lgbt_casamento/dados_pop_ibge_", Sys.Date()))
#setwd(paste0("~/Documents/r_projetos/lgbt_casamento/dados_pop_ibge_", Sys.Date()))

write.csv(assign(paste0("dados_", user_sheet, "_ibge_pop_adulta"), tidy_pop), 
          paste0("dados_", user_sheet, "_ibge_pop_adulta.csv"),
          row.names = F)

### empilhar
pop_adulta <- list.files(pattern = "*csv") %>%
  set_names() %>%
  map_df(read_csv)

write.csv(pop_adulta, "pop_adulta.csv", row.names = F)
