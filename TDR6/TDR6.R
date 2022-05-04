## Date : 4/05/2022
## JH
## Script TDR6

######## EXERCICE  : importez DesIris.txt, testez les scripts et commentez

# Import
iris1 <- read.table("data/DesIris.txt", header=TRUE, dec=".", sep=" ")  

# Sélection dans une table 
iris1[ ,1]   # sélection d'une colonne par son numéro avec [,n]
iris1[1, ]   # sélection d'une ligne par son numéro avec [n,]
iris1[1,2]  # sélection d'une case avec [nlig,ncol]
iris1$SepalLength    #sélection de la variable "SepalLength" dans le tableau "iris1" par son nom
iris1[c(1,5,10), ] #Sélection des lignes 1, 5 et 10 du tableau
iris1[-(5:30), ] # desélection des lignes 5 à 30 (qui précèdent la 5ème ligne et des lignes après la ligne 30 du tableau)
iris1[ ,1:4] #Sélection des 4 premières colonnes du tableau et de toutes les lignes 
iris1[c(1,5,10) , 1:4] #Sélection des lignes 1, 5 et 10 et des 4 premières colonnes
iris1[iris1$Species=="virginica" , ] # sélection de lignes : toutes les fleurs qui sont de l'espèce "Virginica"
iris1[iris1$SepalLength > 7 , ] # Sélection des fleurs qui ont des sépales d'une taille supérieure à 7
iris1[iris1$SepalLength < 6  &  iris1$Species=="virginica", ] #Sélection des fleurs qui ont des sépales d'une taille inférieure à 6 ET qui sont de l'espèce "Virginica"

# Sélection dans un vecteur
iris1$SepalLength[iris1$Species=="virginica"] #Sélection des longueurs de sépales pour les plantes de l'espèce Virginica
iris1[iris1$Species=="virginica", ]$SepalLength

# Calculs sur des sous-ensembles
apply(iris1[,1:4], MARGIN=2, mean) # Calcul de la moyenne de toutes les lignes de chacune des 4 premières colonnes  
tapply(iris1$SepalLength, iris1$Species, mean) # Moyenne de la taille des sépales pour chacune des espèces 



######## EXERCICE  : t3var

t3var <- read.table("data/t3var.txt", header = TRUE, sep = "\t") #Import des données dans l'objet t3var
t3var #Affichage de l'ensemble des données 
head(t3var)
names(t3var) #On identifie le nom des variables : "sexe", "poi", "tai" 

#Contexte statistique  
dim (t3var) #Nb de lignes et de colonnes dans le tableau 
str(t3var) #Identification du nb de variables (3) et du nb d'individus (66) et type de variable

# Sélectionner les individus 1, 10 et 20.
t3var[c(1,10,20), ]


# Sélectionner les femmes de plus de 170 cm. Combien sont-elles ?
fem170 <- t3var[t3var$tai > 170 &  t3var$sexe=="f", ] 
fem170
nrow(fem170) #Nb de femmes de plus de 170 cm

# 
t3var[10:20, -1]#Variables sauf première pour les individus 1 à 20


tai <- t3var$tai
sexe <- t3var$sexe
taifmoy <- mean(tai[sexe=="f"])#Taille moyenne des femmes 
taifmoy

fsupmoy <- t3var[tai>taifmoy & sexe=="f", ]#Sélection des femmes de taille supérieure à la moyenne
fsupmoy
nrow(fsupmoy) #Effectif du groupe (12)

poi <- t3var$poi
mean(poi)#Moyenne des poids pour tous

#Moyenne des poids par sexe
mean(poi[sexe=="f"])
mean(poi[sexe=="h"])

var(poi)#Variance des poids pour tous
#Variance par sexe 
var(poi[sexe=="f"])
var(poi[sexe=="h"])


