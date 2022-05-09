print("Quel est ton prénom ?")
prenom = input()
print("Bonjour " + prenom + " !")

print("Entrez un nombre")
nombre = input()
print(nombre)
nombre2 = int(nombre) + 5
print(str(nombre2))

l1 = [1.2, 4.0, -5.1, 8.6, -3.7]
i = 2
elt = l1[i]
print(elt)
print(l1[0])

ch = "Une chaîne est une séquence"
premLettre = ch[0]
print("La premiere lettre est " + premLettre)

mot = "informatique"
debutMot = mot[:4]
milieuMot = mot[5:7]
finMot = mot[5:]
print(debutMot)
print(milieuMot)
print(finMot)

interv = range(1, 5)
list1 = ["titi", "tata", "toto"]
mot = "Python"
print(len(interv))
print(len(list1))
print(len(mot))

for i in range(1, 5) :
    double = i * 2
    print("Le double de " + str(i) +" est " + str(double))

#Pour se balader dans une liste
ch = ""
liste1 = ["Python,", "un", "langage", "sympa"]
for j in liste1 :
    ch = ch + " " + j
print(ch)

rep ="0"
while (rep == "0") :
    nb = input("Donnez un nombre entier \n")
    double = int(nb) * 2
    print("Le double de " + str(nb) + " est " + str(double))
    rep = input("Voulez-vous continuer ? (O/N) \n")
    
    
