#Tarefa 01 Reconhecimento de Padroes.
#Autor01 Adilson Lopes Khouri 6411994
#Autor02 Gabriel Domingos de Arruda 6776827

#Carrega as funcoes criadas para resolver a atividade.
source("LeituraArquivo.R")
source("ContaInstancias.R")
source("ContaColunas.R")
source("PrintaResultado.R")
source("ContaInstanciaSemMissing.R")
source("IndicaMinMax.R")

#Carrega pacote Forbes para testar missing values.
#data("Forbes2000", package = "HSAUR")

#Carrega tabela de dados.
TabelaCancer <- leArquivoCSV("entrada.csv")
numeroInstancias <- contaInstancias(TabelaCancer)

#Desconsidera 2 caracteristicas.
numeroColunas <- contaColunas(TabelaCancer, 2)
num_InstanciasSMissing <- contaInstanciassemMissing(TabelaCancer)

#Printa resultado
printaResultado(numeroInstancias, numeroColunas, num_InstanciasSMissing)

#Indica que tipo de Extremo eh utilizado para cada variavel
indicaMinMax(TabelaCancer)

#Chama garbage colector e deleta variaveis utilizadas
rm(TabelaCancer, numeroInstancias, numeroColunas, num_InstanciasSMissing)
gc()