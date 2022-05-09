#On va utiliser une boucle FOR car on connait la valeur de N au moment où on démarre la boucle.
#La valeur de N est donnée avant le début de la boucle

Fact = 1
N = 5
Resultat = ""
#i = 1 pas utile de le mettre car on le précise dans le range
for i in range(1, 6) :
   Fact = Fact * i
Resultat = str(Fact)
print("La factorielle de " + str(N) + " est " + Resultat)
