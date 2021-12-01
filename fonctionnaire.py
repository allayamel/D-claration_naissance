from personne import Personne
from enfant import Enfant
import mysql

class Fonctionnaire(Personne):

    def __init__(self, addresse):
        self.adresse = addresse

    def authentifier(self):
        pass

    def enregistrer(self, enfant=Enfant("", "")):
        pass

    def consulter(self):
        pass

    def modifier(self):
        pass

    def imprimer(self):
        pass

    def preciserDate(self):
        pass
