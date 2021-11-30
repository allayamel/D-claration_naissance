from personne import Personne

import datetime

class Enfant(Personne):
    def __init__(self, nom, prenom):
        Personne.__init__(self, nom, prenom)
        self.nomPere = ""
        self.nomMere = ""
        self.statusPere = ""
        self.statusMere = ""
        self.fctPere = ""
        self.fctMere = ""
        self.sexe = ""
        self.lieuNaissance = ""
        self.fctMere = ""
        self.dateNaissance = datetime.date.today()

    def saisir(self):
        self.nom = input("Entrez le nom de l'enfant: ")
        self.prenom = input("Entrez le prenom de l'enfant: ")
        self.nomPere = input("Entrez le nom du pere: ")
        self.nomMere = input("Entrez le nom de la mere: ")
        self.statusPere = input("Entrez le statut du pere: ")
        self.statusMere = input("Entrez le statut du mere:")
        self.fctPere = input("Entrez la fonction du pere: ")
        self.fctMere = input("Entrez la fonction de la mere: ")
        self.sexe = input("Entrez le sexe:")
        print("Entrez le lieu de naissance: ")
        while True:
            try:
                day = int(input("\t\tEntrez le jour: "))
                if not (0 < day < 32):
                    raise ValueError
                month = int(input("\t\tEntrez le mois: "))
                if not (0 < month < 13):
                    raise ValueError
                year = int(input("\t\tEntrez l'année: "))
                if not (year >= 0):
                    raise ValueError
                self.dateNaissance = datetime.date(year=year, month=month, day=day)
                break
            except ValueError:
                print("Entrée invalide")
