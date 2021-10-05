import csv

liste =""

with open('listeVille.csv', mode='r') as laposte_hexasmal:
    reader = csv.DictReader(laposte_hexasmal, delimiter=';')
    nb_ville = 0
    for row in reader:
        nb_ville += 1
        ville = row["Nom_ville"]
        code_postal = row["Code_postal"]
        ligne = "('" + ville + "'," + " '" + code_postal + "'), \n"
        liste = liste + ligne
        print(nb_ville)
        
liste = liste[:-3]

with open('querySQL.txt', 'w') as querySQL:
    querySQL.write('INSERT INTO ville (nomville, codepostal) VALUES \n' + liste)