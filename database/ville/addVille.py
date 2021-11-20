import csv
import psycopg2

con = psycopg2.connect(database="rt1projet18", user="root", password="root", host="192.168.91.135", port="5432")

cur = con.cursor()

query = open('querySQL.txt', 'r').read()

print("Insertion des villes en cours...")

cur.execute(query)

con.commit()
con.close()

print("Insertion des villes terminée !")