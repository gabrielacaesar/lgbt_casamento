# Casamento LGBT no Brasil

Este repositório contém o projeto final da disciplina "Análise exploratória de dados", no Master em jornalismo dados, automação e data storytelling do Insper

O grupo é formado por Gabriela Caesar ([@gabrielacaesar](https://github.com/gabrielacaesar)), Isabela Fleischmann ([@isabelafleischmann](https://github.com/isabelafleischmann)) e Thiago Araújo ([@todearaujo](https://github.com/todearaujo)).

A base de dados analisada pelo grupo é fornecida pelo IBGE e trata do casamento de pessoas do mesmo gênero.
Ou seja, do casamento de homens com homens e de mulheres com mulheres.

Os dados estão desagregados por UF, mês e gênero e abrangem os anos de 2013 a 2019. Assim, poderemos fazer uma análise exploratória de dados completa e responder às perguntas de interesse.                   

[Notebook - Clique aqui](https://github.com/gabrielacaesar/lgbt_casamento/blob/main/notebooks/versao_final_trabalho_AED_insper_grupo_GIT.ipynb) para ler e baixar o arquivo.            
[CSV - Clique aqui](https://github.com/gabrielacaesar/lgbt_casamento/blob/main/data/lgbt_casamento.csv) para ler e baixar o arquivo.

O IBGE fornece os dados em diversas planilhas XLSX desorganizadas.
Essas planilhas originais estão disponíveis [neste site do IBGE](https://www.ibge.gov.br/estatisticas/sociais/populacao/9110-estatisticas-do-registro-civil.html?=&t=downloads) e também na [pasta ``data > raw_data``](https://github.com/gabrielacaesar/lgbt_casamento/tree/main/data/raw_data) deste repositório. 

Utilizamos um [código em R](https://github.com/gabrielacaesar/lgbt_casamento/blob/main/data/raw_data/r_script/tidy_data_ibge.R) para transformar os dados em formato tidy e ter um único CSV completo. A análise usará esse arquivo. 

Também fizemos isso para [padronizar os dados do IBGE](https://github.com/gabrielacaesar/lgbt_casamento/blob/main/data/raw_data/r_script/tidy_pop_ibge.R) sobre [população adulta por gênero e ano](https://github.com/gabrielacaesar/lgbt_casamento/blob/main/data/pop_adulta.csv).

### Contexto do assunto
O Brasil tem [mais de 60 mil casais formados por pessoas do mesmo gênero](http://g1.globo.com/brasil/noticia/2011/04/censo-2010-contabiliza-mais-de-60-mil-casais-homossexuais.html), segundo o Censo 2010 - o último realizado no Brasil e divulgado em 2011. Esse número é bastante menor que o de casais formados por pessoas de gêneros diferentes: 37,5 milhões. 

Mais de dez anos se passaram. E como está essa situação hoje no Brasil? É inegável que, ao caminhar na Avenida Paulista, em São Paulo, em 2021, vemos mais casais LGBTs do que há 10 anos. 

O sentimento é que mais pessoas puderam viver histórias homoafetivas nas grandes cidades. Mas será que isso vale para todo o Brasil? E será que a eleição de Jair Bolsonaro impactou esses números?

Além disso, apenas em 2011, o STF julgou legal a união civil de pessoas do mesmo gênero. Em 2013, o Conselho Nacional de Justiça [passou a permitir que todos os cartórios registrassem a união homoafetiva](https://g1.globo.com/distrito-federal/noticia/casamento-gay-no-brasil-completa-4-anos-de-regulamentacao-leia-historias.ghtml).

A orientação sexual é uma informação pessoal e, por isso, há poucos dados sobre isso, já que os órgãos não costumam coletar essa informação. Antes da definição da base, o grupo mapeou diversos dados sobre LGBTs para verificar qual base poderia ter dados de qualidade para tratar o tema.

A base de dados do IBGE, porém, é uma exceção positiva nesse levantamento. Além de ter dados oficiais do Brasil, ela também tem um detalhamento que permite uma ampla análise exploratória para responder a perguntas.

### Perguntas a que queremos responder
1.   Quantos casamentos homoafetivos ocorreram no Brasil de 2013 a 2019?
2.   Qual foi o ano com mais casamentos? E com menos casamento?
3.   Quais foram as estatísticas básicas anuais? E em 2018?
4.   Quem casa mais no meio LGBT? Homens ou mulheres? 
5.   As mulheres também se casam mais considerando os dados anuais?
6.   Em qual mês as pessoas mais se casam? E em qual elas menos se casam?
7.   Há mais casamentos homoafetivos após a vitória de Jair Bolsonaro, em 28 de outubro de 2018?
8.   Em quais estados aconteceram mais casamentos LGBTs em números absolutos? E menos?
9.   Em quais regiões do Brasil os casamentos LGBTs mais ocorrem? E menos?
10.   Considerando a população adulta, quais estados têm as maiores e menores proporções de casamentos LGBTs? 
11.   Em um mapa do Brasil, como ficam as taxas de casamentos LGBTS por 100 mil adultos?
12.  Considerando a UF e o ano informados pelo usuário, quais são as estatísticas básicas dessa UF e desse ano quanto ao casamento LGBT?

### O que aprendemos com os dados
1.   Mais de 40 mil casamentos homoafetivos foram realizados de 2013 a 2019
2.  As mulheres definitivamente se casam mais do que os homens
3.  2014 foi o ano em que o número de casamentos de homens quase ultrapassou o de mulheres
4.   SP e DF foram as unidades federativas com as maiores taxas de casamentos LGBTs por habitantes adultos
5.  Em números absolutos, SP concentra 41,5% dos casamentos, seguido por RJ (9,3%), MG (7,5%) e SC (5,5%). RR, AC e AP têm os menores números
6.    Estados do Norte e do Nordeste, como MA, RR, AC e RO, aparecem com as menores taxas
7.   O Sudeste, região mais populosa do Brasil, também foi a região com mais casamentos
8.   O ano com mais casamentos LGBTs foi 2018, seguido por 2019
9.   O mês com mais casamentos foi dezembro; e o mês com menos foi abril
10.   Os meses próximos à eleição de Jair Bolsonaro foram os picos de casamentos LGBTS
11.   Os dados apontam que os casais homoafetivos seguiram [a recomendação da presidente da Comissão Especial da Diversidade Sexual e de Gênero do Conselho Federal da OAB, Maria Berenice Dias](https://g1.globo.com/sp/sao-paulo/noticia/2018/11/07/casamento-lgbt-cresce-25-no-pais-diz-associacao-profissionais-oferecem-servicos-gratuitos-para-celebracoes.ghtml), para os casais procurarem assegurar o matrimônio ainda em 2018

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
