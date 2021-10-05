import csv

with open('laposte_hexasmal.csv', 'r') as laposte_hexasmal:
    reader = csv.DictReader(laposte_hexasmal, delimiter=';')
    
    with open('listeVille.csv', 'w', newline='') as listeVille:
        writer = csv.writer(listeVille, delimiter=";")
        writer.writerow(["Nom_ville", "Code_postal"])
        nb_ville = 0
        for row in reader:
            if len(row["Code_postal"]) == 4:
                code_postal = "0"+str(row["Code_postal"])
            else:
                code_postal = str(row["Code_postal"])

            if row["Ligne_5"] == '':
                ville= str(row["Nom_commune"])
                writer.writerow([ville, code_postal])
            else:
                ville= str(row["Ligne_5"])
                writer.writerow([ville, code_postal])

            print(nb_ville)
            nb_ville += 1