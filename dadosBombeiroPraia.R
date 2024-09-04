library(readxl)
BOMBEIRO_PRAIA <- read_excel("C:/Users/natan/Downloads/BOMBEIRO_PRAIA.xlsx")
BOMBEIRO_PRAIA
View(BOMBEIRO_PRAIA)
options('max.print' = 100000)   #or whatever value you want
getOption('max.print')
head(BOMBEIRO_PRAIA)
saida = na.omit(BOMBEIRO_PRAIA)
saida
semnas=replace(x = BOMBEIRO_PRAIA, list = is.na(BOMBEIRO_PRAIA), values = 0)
write.csv(semnas, file = "BOMBEIRO_PRAIA.csv", row.names = FALSE)  
getwd()
bombeirosIdade = table(BOMBEIRO_PRAIA$Idade)
bombeirosIdade



paste(" o desvio padrão da idade é  ", sep=": ", sd(BOMBEIRO_PRAIA$Idade))

paste("A media de idade é  ", sep=": ", mean(BOMBEIRO_PRAIA$Idade))

bombeiroSexo = table(BOMBEIRO_PRAIA$Sexo)
bombeiroSexo


paste("A media relacionado ao sexo  é  ", sep=": ", mean(table(BOMBEIRO_PRAIA$Sexo)))
paste("O desvio padrão está relacionado ao sexo  é  ", sep=": ", sd(table(BOMBEIRO_PRAIA$Sexo)))

hist(table(BOMBEIRO_PRAIA$EstadoCivil),  
     main = "ESTADO CIVIL DO BOMBEIRO DA PRAIA", 
     xlab = "ESTADO CIVIL DOS BOMBEIROS", ylab = "Freq. Absoluta", 
     col = c("violet"), 
     border = FALSE)
?hist

install.packages("ggplot2")
library(ggplot2) 
ggplot(BOMBEIRO_PRAIA$Sexo, aes(BOMBEIRO_PRAIA$Sexo)) +
  +   geom_bar(fill = 'lightblue')






hist(table(BOMBEIRO_PRAIA$EstadoCivil),  
     main = "Altura dos alunos do 1º ano do Ensino Médio", 
     xlab = "Altura dos alunos", ylab = "Freq. Absoluta", 
     col = c("violet","pink","lightblue","springgreen"), 
     border = c("royalblue"), 
     breaks = c(1.3, 1.45, 1.6, 1.75, 1.9), 
     right = FALSE)
?hist
estadocivil = table(BOMBEIRO_PRAIA$EstadoCivil)
estadocivil

paste("A media relacionada ao estado civil  é  ", sep=": ", mean(table(BOMBEIRO_PRAIA$EstadoCivil)))
paste("O desvio padrão relacionado ao estado civil  é  ", sep=": ", sd(table(BOMBEIRO_PRAIA$EstadoCivil)))


problemac = table(BOMBEIRO_PRAIA$ProblemaC)
problemac
paste("A media relacionada ao ProblemaC  é  ", sep=": ", mean(table(BOMBEIRO_PRAIA$ProblemaC)))
paste("O desvio padrão  relacionado ao ProblemaC  é  ", sep=": ", sd(table(BOMBEIRO_PRAIA$ProblemaC)))

orientacao = table(BOMBEIRO_PRAIA$Orientação)
orientacao 
paste("A media relacionada ao orientação  é  ", sep=": ", mean(table(BOMBEIRO_PRAIA$Orientação)))
paste("O desvio padrão  relacionado ao ProblemaC  é  ", sep=": ", sd(table(BOMBEIRO_PRAIA$ProblemaC)))


filhos = table(BOMBEIRO_PRAIA$FIlhos)
filhos
paste("A media relacionada aos filhos   é  ", sep=": ", mean(table(BOMBEIRO_PRAIA$FIlhos)))
paste("O desvio padrão  relacionado ao ProblemaC  é  ", sep=": ", sd(table(BOMBEIRO_PRAIA$ProblemaC)))

religiao = table(BOMBEIRO_PRAIA$Religião)
religiao
paste("A media relacionada ao religião  é  ", sep=": ", mean(table(BOMBEIRO_PRAIA$Religião)))
paste("O desvio padrão relacionado a religião  é  ", sep=": ", sd(table(BOMBEIRO_PRAIA$Religião)))

medidareligiao = table(BOMBEIRO_PRAIA$TipoReligião)
medidareligiao
paste("A media relacionada ao   é  TipoReligião", sep=": ", mean(table(BOMBEIRO_PRAIA$TipoReligião)))
paste("O desvio padrão relacionado a religião  é  ", sep=": ", mean(table(BOMBEIRO_PRAIA$Religião)))

patente = table(BOMBEIRO_PRAIA$Patente)
paste("A media relacionada ao Patente  é  ", sep=": ", mean(table(BOMBEIRO_PRAIA$Patente)))
paste("O desvio padrão relacionado a religião  é  ", sep=": ", sd(table(BOMBEIRO_PRAIA$Patente)))



EP1 = table(BOMBEIRO_PRAIA$EP1)
paste("A media relacionada ao EP1  é  ", sep=": ", mean(table(BOMBEIRO_PRAIA$EP1)))
paste("O desvio padrão relacionado a EP1  é  ", sep=": ", sd(table(BOMBEIRO_PRAIA$EP1)))



EP2 = table(BOMBEIRO_PRAIA$EP2)
paste("A media relacionada ao EP2  é  ", sep=": ", mean(table(BOMBEIRO_PRAIA$EP2)))
paste("O desvio padrão relacionado a EP2  é  ", sep=": ", sd(table(BOMBEIRO_PRAIA$EP2)))



EP3 = table(BOMBEIRO_PRAIA$EP3)
paste("A media relacionada ao EP3  é  ", sep=": ", mean(table(BOMBEIRO_PRAIA$EP3)))
paste("O desvio padrão relacionado a EP3  é  ", sep=": ", sd(table(BOMBEIRO_PRAIA$EP3)))



EP4 = table(BOMBEIRO_PRAIA$EP4)
paste("A media relacionada ao EP4  é  ", sep=": ", mean(table(BOMBEIRO_PRAIA$EP4)))
paste("O desvio padrão relacionado a EP4  é  ", sep=": ", sd(table(BOMBEIRO_PRAIA$EP4)))



EP5 = table(BOMBEIRO_PRAIA$EP5)
paste("A media relacionada ao EP5  é  ", sep=": ", mean(table(BOMBEIRO_PRAIA$EP5)))
paste("O desvio padrão relacionado a EP6  é  ", sep=": ", sd(table(BOMBEIRO_PRAIA$EP6)))



EP7 = table(BOMBEIRO_PRAIA$EP7)
paste("A media relacionada ao EP7  é  ", sep=": ", mean(table(BOMBEIRO_PRAIA$EP7)))
paste("O desvio padrão relacionado a EP7  é  ", sep=": ", sd(table(BOMBEIRO_PRAIA$EP7)))



ESV1 = table(BOMBEIRO_PRAIA$ESV1)
paste("A media relacionada ao ESV1  é  ", sep=": ", mean(table(BOMBEIRO_PRAIA$ESV1)))
paste("O desvio padrão relacionado a EP1  é  ", sep=": ", sd(table(BOMBEIRO_PRAIA$ESV1)))



ESV1 = table(BOMBEIRO_PRAIA$ESV1)
paste("A media relacionada ao ESV1  é  ", sep=": ", mean(table(BOMBEIRO_PRAIA$ESV1)))
paste("O desvio padrão relacionado a EP1  é  ", sep=": ", sd(table(BOMBEIRO_PRAIA$ESV1)))



ESV2 = table(BOMBEIRO_PRAIA$ESV2)
paste("A media relacionada ao ESV1  é  ", sep=": ", mean(table(BOMBEIRO_PRAIA$ESV1)))
paste("O desvio padrão relacionado a EP1  é  ", sep=": ", sd(table(BOMBEIRO_PRAIA$ESV1)))



ESV1 = table(BOMBEIRO_PRAIA$ESV1)
paste("A media relacionada ao ESV1  é  ", sep=": ", mean(table(BOMBEIRO_PRAIA$ESV1)))
paste("O desvio padrão relacionado a EP1  é  ", sep=": ", sd(table(BOMBEIRO_PRAIA$ESV1)))



ESV1 = table(BOMBEIRO_PRAIA$ESV1)
paste("A media relacionada ao ESV1  é  ", sep=": ", mean(table(BOMBEIRO_PRAIA$ESV1)))
paste("O desvio padrão relacionado a EP1  é  ", sep=": ", sd(table(BOMBEIRO_PRAIA$ESV1)))



ESV1 = table(BOMBEIRO_PRAIA$ESV1)
paste("A media relacionada ao ESV1  é  ", sep=": ", mean(table(BOMBEIRO_PRAIA$ESV1)))
paste("O desvio padrão relacionado a EP1  é  ", sep=": ", sd(table(BOMBEIRO_PRAIA$ESV1)))



ESV1 = table(BOMBEIRO_PRAIA$ESV1)
paste("A media relacionada ao ESV1  é  ", sep=": ", mean(table(BOMBEIRO_PRAIA$ESV1)))
paste("O desvio padrão relacionado a EP1  é  ", sep=": ", sd(table(BOMBEIRO_PRAIA$ESV1)))



ESV1 = table(BOMBEIRO_PRAIA$ESV1)
paste("A media relacionada ao ESV1  é  ", sep=": ", mean(table(BOMBEIRO_PRAIA$ESV1)))
paste("O desvio padrão relacionado a EP1  é  ", sep=": ", sd(table(BOMBEIRO_PRAIA$ESV1)))


getwd()



dados <- C  # Gera 100 números aleatórios com distribuição normal  
hist(dados, col = "blue", border = "black")  # Cria um histograma com barras azuis e bordas pretas


altura = c(5,32)
altura

altura = c(1.3, 1.33, 1.4, 1.42, 1.45, 1.5, 1.5, 1.52, 1.55, 1.56, 1.58, 1.6, 1.62, 1.64, 1.65, 1.67, 1.68, 1.68, 1.7, 1.72, 1.72, 1.74, 1.8, 1.83, 1.85)
altura

hist(table(BOMBEIRO_PRAIA$EstadoCivil), n=2, main = "Por sexo", xlab = "teste")

