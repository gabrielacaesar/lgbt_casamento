# Casamento LGBT no Brasil

Este repositório contém o projeto final da disciplina "Análise exploratória de dados", no Master em jornalismo dados, automação e data storytelling do Insper

O grupo é formado por Gabriela Caesar ([@gabrielacaesar](https://github.com/gabrielacaesar)), Isabela Fleischmann ([@isabelafleischmann](https://github.com/isabelafleischmann)) e Thiago Araújo ([@todearaujo](https://github.com/todearaujo)).

A base de dados analisada pelo grupo é fornecida pelo IBGE e trata do casamento de pessoas do mesmo gênero.
Ou seja, do casamento de homens com homens e de mulheres com mulheres.

Os dados estão desagregados por UF, mês e gênero e abrangem os anos de 2013 a 2019. Assim, poderemos fazer uma análise exploratória de dados completa e responder às perguntas de interesse.                   

[Clique aqui](https://github.com/gabrielacaesar/lgbt_casamento/blob/main/data/lgbt_casamento.csv) para ler e baixar o arquivo.

O IBGE fornece os dados em diversas planilhas XLSX desorganizadas.
Essas planilhas originais estão disponíveis [neste site do IBGE](https://www.ibge.gov.br/estatisticas/sociais/populacao/9110-estatisticas-do-registro-civil.html?=&t=downloads) e também na [pasta ``data > raw_data``](https://github.com/gabrielacaesar/lgbt_casamento/tree/main/data/raw_data) deste repositório. 

Utilizamos um [código em R](https://github.com/gabrielacaesar/lgbt_casamento/blob/main/data/raw_data/r_script/tidy_data_ibge.R) para transformar os dados em formato tidy e ter um único CSV completo. A análise usará esse arquivo. 

Também fizemos isso para [padronizar os dados do IBGE](https://github.com/gabrielacaesar/lgbt_casamento/blob/main/data/raw_data/r_script/tidy_pop_ibge.R) sobre [população adulta por gênero e ano](https://github.com/gabrielacaesar/lgbt_casamento/blob/main/data/pop_adulta.csv).

### Análise Exploratória de Dados
### Projeto aplicado
#### Prof. André Filipe de Moraes Batista, PhD.

##### Instruções
É hora de colocar em prática tudo o que vimos na disciplina!
- Lembre-se de que em um projeto de análise exploratória de dados, você está
explorando os dados e estabelecendo questionamentos sobre estes e as
possíveis relações entre as variáveis.
- Não é uma análise estatística formal (por exemplo, não há a necessidade de
provar que grupos são estatisticamente diferentes!)
- Nosso foco é descrever os dados
- Você e seu grupo são encorajados para estabelecer algumas gerar algumas
hipóteses a partir da análise dos dados

##### Nossas atividades
Utilizando um conjunto de dados de sua escolha, descreva o relacionamento
entre 2 ou 3 variáveis.
Produza um relatório de modo a conter, no mínimo:
- Uma introdução curta sobre os dados
>> Mencione quais variáveis você vai querer investigar o relacionamento
- Uma seção de análise exploratória univariada
>> Nesta seção você vai calcular estatísticas descritivas básicas (média,
mediana, quartis, etc..) e faça ao menos um gráfico
- Uma seção de análise exploratória bivariada
>> Calcule estatísticas agrupadas por meio de uma variável        
>> Elabore gráficos que demonstrem a relação entre variáveis
- Em resumo: usando estatística e gráficos, elabore o que julgar pertinente para
compreender a relação entre as variáveis selecionadas.

##### Dados que serão utilizados
Você e seu grupo precisarão fazer uma escolha sobre o conjunto de dados a ser
utilizado.
- [Neste link](https://norcalbiostat.netlify.app/data/) você tem a relação de conjuntos de dados que podemos usar
- Se seu grupo já possui outro conjunto de dados, me mande um resumo sobre ele
para que eu aprove a utilização           

Sugestão de datasets:
- Depressão: nível de depressão, cuidado a saúde e características demográficas
- High School: educação, vocação, desenvolvimento pessoal
- Police Shootings: características de pessoas mortas pela polícia
- Email Spam: características dos e-mails classificados (Y/F) como spam
- HIV: dados de crianças que convivem com pais com HIV

##### Entregáveis
Você deve elaborar um relatório em PDF contendo toda a análise feita nos dados
- Os códigos podem ser feitos em qualquer ferramenta, mas preferencialmente em
Python (Google Colab)
- Para a apresentação, você e seu grupo terá até 5 minutos para apresentar os
principais destaques do trabalho.
- Sugestão/Provocação: como você apresentaria os resultados na figura de um
jornalista de dados?
- A entrega será via blackboard

##### Instruções para o projeto
- Cada grupo terá até 10 minutos para apresentar o projeto na próxima aula      
- Busquem contextualizar o problema, os dados e contar como foi o processo de
análise de dados      
- Não há a necessidade de mostrar códigos ou detalhes, o importante é transmitir
uma mensagem clara e efetiva sobre o que vocês aprenderam sobre os dados      
- Tentem expor o que essas abordagens acrescentaram (ou não!) em seus
métodos       
