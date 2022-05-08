library(dplyr)


# Identification des noms des variables du jeu de données "starwars".

head(starwars)
names(starwars)

# Contexte statistique

dim(starwars)
ncol(starwars)
nrow(starwars)

# Sélection des individus 5, 25, 45, 65, 85

starwars %>% 
  slice(5, 25, 45, 65, 85)

# Sélection des personnages féminin vivant sur la planète Tatooine 

starwars %>%
  filter(sex=="female") %>%
  filter(homeworld=="Tatooine")

# Sélection des femmes mesurant plus de 2 mètres. Comment s'appelle(nt) t elle(s) ? 

starwars %>%
  filter(sex=="female") %>%
  filter(height>200)
# elle s'appelle Taun We

starwars %>%
  select(vehicles, starships)

#Sélection des variables textuelles dans le tableau starwars 
starwars %>%
  select(where(is.character))

# Création d'une nouvelle colonne avec la taille des personnages en mètres à partir d'une variable existente

starwars %>%
  mutate(height_meters = height/100) %>%
  select(name, height, height_meters) %>%
  arrange(height_meters)


starwars %>%
  group_by(gender) %>%
  filter(skin_color=="white")

library(tidyverse)

ggplot(data=starwars) +
  geom_bar(mapping = aes(x = eye_color, y = stat(prop), group = 1))

ggplot(data=starwars) +
  geom_bar(mapping = aes (x = sex, fill = sex)) +
  ggtitle("Répartition des sexes chez les différents personnages de Starwars")
           

