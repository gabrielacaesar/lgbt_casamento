library(tidyverse)
library(readxl)

path <- "~/Downloads/raw_data/"
ano <- "2013"
arquivo <- "tab414.xls"

untidy_xlsx <- readxl::read_xlsx(paste0(path, ano, "/", arquivo),
                                 col_names = F)

uf_brasil <- c("Rondônia","Acre","Amazonas","Roraima",
               "Pará","Amapá","Tocantins","Maranhão","Piauí",
               "Ceará","Rio Grande do Norte","Paraíba","Pernambuco",
               "Alagoas","Sergipe","Bahia","Minas Gerais",
               "Espírito Santo","Rio de Janeiro","São Paulo",
               "Paraná","Santa Catarina","Rio Grande do Sul",
               "Mato Grosso do Sul","Mato Grosso","Goiás",
               "Distrito Federal")

tidy_df <- untidy_xlsx %>%
  mutate(genero = case_when(str_detect(`...1`[1], "masculinos") ~ "Masculino",
                            str_detect(`...1`[1], "femininos") ~ "Feminino",
                            TRUE ~ "Erro")) %>%
  fill(`...1`, .direction = "down") %>%
  slice(-c(1:3)) %>%
  mutate(genero = case_when(row_number() == 1 ~ "genero",
                            TRUE ~ genero)) %>%
  janitor::row_to_names(1) %>%
  rename(uf = "Lugar do registro",
         Total = "Total\r\nde\r\nregistros",
         Novembro = "Novem-\r\nbro",
         Dezembro = "Dezem-\r\nbro") %>%
  filter(uf %in% uf_brasil) %>%
  distinct(uf, .keep_all = T) %>%
  relocate(genero, .after = uf) %>%
  select(-Total) %>%
  pivot_longer(3:14, names_to = "mes", values_to = "numero") %>%
  mutate(numero = str_replace_all(numero, "-", "0"),
         mes= str_trim(mes),
         genero = str_trim(genero),
         ano = as.integer(ano),
         numero = as.integer(numero)) %>%
  relocate(ano, .before = uf)

#dir.create(paste0(path, "dados_tidy_ibge_", Sys.Date()))
#setwd(paste0(path, "dados_tidy_ibge_", Sys.Date()))

write.csv(assign(paste0("dados_", arquivo, "_", ano), tidy_df), 
          paste0("dados_", arquivo, "_", ano, ".csv"),
          row.names = F)

### empilhar
lgbt_casamento <- list.files(pattern = "*csv") %>%
  set_names() %>%
  map_df(read_csv)

write.csv(lgbt_casamento, "lgbt_casamento.csv")
