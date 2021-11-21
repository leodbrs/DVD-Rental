CREATE TABLE Ville (
    IdVille SERIAL UNIQUE PRIMARY KEY NOT NULL,
    nomVille VARCHAR(60) NOT NULL,
    codePostal CHAR(5) NOT NULL
);
CREATE TABLE Pays (
    IdPays SERIAL UNIQUE PRIMARY KEY NOT NULL,
    nomPays VARCHAR(60) NOT NULL
);
CREATE TABLE Reservation (
    IdReservation SERIAL UNIQUE PRIMARY KEY NOT NULL,
    dateReservationDebut DATE NOT NULL,
    dateReservationFin DATE NOT NULL
);
CREATE TABLE Film (
    IdFilm SERIAL UNIQUE PRIMARY KEY NOT NULL,
    titreFilm VARCHAR(250) NOT NULL,
    description text,
    image VARCHAR(100)
);
CREATE TABLE Genre (
    IdGenre SERIAL UNIQUE PRIMARY KEY NOT NULL,
    nomGenre VARCHAR(50) NOT NULL
);
-- CREATE TABLE Personne (
--     IdPersonne SERIAL UNIQUE PRIMARY KEY NOT NULL,
--     nomPersonne VARCHAR(50) NOT NULL,
--     prenomPersonne VARCHAR(50) NOT NULL,
--     sexe CHAR(1),
--     dateNaissance DATE NOT NULL
-- );
CREATE TABLE Client (
    IdClient SERIAL UNIQUE PRIMARY KEY NOT NULL,
    nomClient VARCHAR(50) NOT NULL,
    prenomClient VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    dateNaissance DATE NOT NULL,
    genre CHAR(5),
    nomUtilisateur VARCHAR(50) NOT NULL,
    motDePasse CHAR(32) NOT NULL,
    RefVille INTEGER NOT NULL REFERENCES Ville ON UPDATE CASCADE ON DELETE SET NULL
    -- RefPays INTEGER NOT NULL REFERENCES Pays ON UPDATE CASCADE ON DELETE SET NULL
);
CREATE TABLE Vendeur (
    IdVendeur SERIAL UNIQUE PRIMARY KEY NOT NULL,
    nomVendeur VARCHAR(50) NOT NULL,
    prenomVendeur VARCHAR(50),
    nomUtilisateur VARCHAR(50) NOT NULL,
    motDePasse CHAR(32) NOT NULL
);
CREATE TABLE Exemplaire (
    IdExemplaire SERIAL UNIQUE PRIMARY KEY NOT NULL,
    RefFilm INTEGER NOT NULL REFERENCES Film ON UPDATE CASCADE ON DELETE SET NULL,
    dispo BOOLEAN
);
CREATE TABLE Location (
    IdLoc SERIAL UNIQUE PRIMARY KEY NOT NULL,
    nbJours INT NOt NULL,
    dateLoc DATE NOT NULL,
    RefClient INTEGER NOT NULL REFERENCES Client ON UPDATE CASCADE ON DELETE SET NULL,
    RefExemplaire INTEGER NOT NULL REFERENCES Exemplaire ON UPDATE CASCADE ON DELETE SET NULL
);
CREATE TABLE Appartenir (
    RefFilm INTEGER NOT NULL REFERENCES Film ON UPDATE CASCADE ON DELETE SET NULL,
    RefGenre INTEGER NOT NULL REFERENCES Genre ON UPDATE CASCADE ON DELETE SET NULL
);
CREATE TABLE EstPresent (
    RefFilm INTEGER NOT NULL REFERENCES Film ON UPDATE CASCADE ON DELETE SET NULL,
    RefPersonne INTEGER NOT NULL REFERENCES Personne ON UPDATE CASCADE ON DELETE SET NULL
);