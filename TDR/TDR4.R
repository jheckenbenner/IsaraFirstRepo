## Date : 10.05.2020
## VP & VT
## Script TDR4


######## EXERCICE OPTIONNEL : utilisez le package rstudioapi pour afficher le poly dans le Viewer



######## EXERCICE  : installation et utilisation de wordcloud 
install.packages("wordcloud") # ligne ? d?sactiver apr?s la premi?re utilisation r?ussie 
library(wordcloud) 
letters # donne les 26 lettres de l'alphabet
taille <- seq(3, 10, len = 26) # 26 tailles croissantes entre 1 et 10
wordcloud(letters, taille, scale=c(7,1), col="darkgreen")



######## EXERCICE  : premi?re fonction
x<-1:10

varc <- function(x) {       # ent?te de la fonction
  n <- length(x)            # l'effectif
  sce <- sum((x-mean(x))^2) # les SCE
  sce/n                     # la variance de l'echantillon
}

varc(x)
var(x)



######## EXERCICE  : deuxi?me fonction
var2 <- function(x, type) { 
  if(type=="estim") {return(var(x))} # Variance estim?e
  if(type=="calc") {return(varc(x))} # Variance calcul?e
  else if (type=="both") {return(cbind(var(x), varc(x)))} 
  # les deux cote ? cote
}

# Utilisation
var2(x, type="estim")
var2(x, type="calc")
var2(x, type="both")



######## EXERCICE  : l'usage de source()
source("fonctions_TD.R")
varc(2:9)
var2(2:9, type="estim")
var2(2:9, type="both")



######## EXERCICE  : la fonction Circ()

Circ <- function(r, param) {
  if(param=="aire") {return(pi*r^2)}  
  if(param=="perim") {return(2*pi*r)}
  else if (param=="both") {return(cbind(r, 2*pi*r, pi*r^2))}
}
Circ(5, param="aire")
Circ(5, param="perim")
Circ(5, param="both")
Circ(5:10, param="both") # Notez l'usage en vecteur..
