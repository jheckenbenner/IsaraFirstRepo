## 2022/05/02
## JH
## Exemples R pour OPEN 2022


x <- c(4, 5, 7, 4, 3, 9)
x
x*2
mean(x)
mean(x, na.rm = TRUE)

read.table()

y <- x*3+2 + rnorm(x)
y
y[1:2];y[4]

y[c(1,3)]
y[y>20]

plot(x, y)
rnorm(10)

hist(rnorm(100))

read.table("casino.csv", sep=";", header=TRUE, row.names = 1)
casino <- read.csv2("casino.csv", row.names = 1)
casino [1,2]
casino [1,]
casino [,2]

casino[casino$Couleur_voiture=="bleu" , ]
casino[casino$Couleur_voiture!="bleu" , ]


install.packages("dplyr")
library(dplyr)
casino
filter(casino, Couleur_voiture=="bleu")
select(casino, Score, Gain)

#Sélectionner les lignes bleues et ne garder que les colonnes Score et Gain
#Sans dplyr 
casino[casino$Couleur_voiture=="bleu" , 1:2]
names(casino)=="Score"|names(casino)=="Gain"
casino[casino$Couleur_voiture=="bleu" ,
       names(casino)=="Score"|names(casino)=="Gain"]

#Avec dlyr 
casino_bleu <- filter(casino, Couleur_voiture=="bleu")
select(casino, Score, Gain)

casino %>% #%>% : pipe Ctrl Shift M
  filter(Couleur_voiture=="bleu") %>%
  select(Score, Gain) %>%
  mutate(rapport=Gain/Score)

