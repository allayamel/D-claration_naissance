from fonctionnaire import *

choix = -1
fonctionnaire = Fonctionnaire("")
fonctionnaire.authentifier()
while True:
    print("""Entrez:
            1- Pour enregistrer un enfant
            2- Pour consulter la liste
            3- Pour modifier
            4- Pour imprimer
            5- Pour preciser la date et l'heure de naissance
            6- Pour quitter
            """)
    try:
        choix = int(input("Votre choix: "))
        if choix == 1:
            enfant = Enfant("", "")
            enfant.saisir()
            fonctionnaire.enregistrer(enfant)
        elif choix == 2:
            fonctionnaire.consulter()
        elif choix == 3:
            fonctionnaire.modifier()
        elif choix == 4:
            fonctionnaire.imprimer()
        elif choix == 5:
            fonctionnaire.preciserDate()
        elif choix == 6:
            break
        else:
            print("Desolé ce choix n'existe pas")
    except ValueError:
        print("Entré invalide")

print("Fin du programme")
