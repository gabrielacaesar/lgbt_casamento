# reading libraries
library(readxl)
library(tidyverse)

# defining sheet, path and file
lista_uf <- c("RO", "AC", "AM", "RR", "PA", "AP", "TO", "MA", 
              "PI", "CE", "RN", "PB", "PE", "AL", "SE", "BA", "MG", "ES", 
              "RJ", "SP",  "PR", "SC", "RS", "MS", "MT", "GO", "DF")

# loop - create file for each uf
for(i in lista_uf){
  setwd("~/Documents/r_projetos/script-ibge-registro-civil/casamento-lgbt")
  
  user_sheet <- i
  
  ibge_pop <- read_xls(path.expand("projecoes_2018_populacao_2010_2060_20200406.xls"), sheet = user_sheet)
  
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
    select(genero, x2010:x2021) %>%
    group_by(genero) %>%
    summarise_all(.funs = "sum") %>%
    pivot_longer(2:13, names_to = "ano", values_to = "pop_adulta") %>%
    mutate(ano = str_remove_all(ano, "x"),
           uf = user_sheet)
  
  #dir.create(paste0("dados_pop_ibge_", Sys.Date()))
  setwd(paste0("dados_pop_ibge_", Sys.Date()))
  
  write.csv(assign(paste0("dados_", user_sheet, "_ibge_pop_adulta"), tidy_pop), 
            paste0("dados_", user_sheet, "_ibge_pop_adulta.csv"),
            row.names = F)
}
### empilhar
pop_adulta <- list.files(pattern = "*csv") %>%
  set_names() %>%
  map_df(read_csv)

write.csv(pop_adulta, "pop_adulta.csv", row.names = F)
