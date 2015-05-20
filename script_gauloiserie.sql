DROP TABLE Composition ;
DROP TABLE Ingredient ;
DROP TABLE Potion ;

CREATE TABLE Potion (
	Nom VARCHAR PRIMARY KEY,
	Effet VARCHAR,
	Duree INTEGER
);

CREATE TABLE Ingredient (
	Nom VARCHAR PRIMARY KEY,
	Localisation VARCHAR
);

CREATE TABLE Composition (
	NomP VARCHAR REFERENCES Potion(Nom),
	NomI VARCHAR REFERENCES Ingredient(Nom),
	PRIMARY KEY (NomP, NomI)
);

INSERT INTO Potion (Nom, Effet, Duree) VALUES ('Potion Magique','Force', 60);
INSERT INTO Ingredient (Nom, Localisation) VALUES ('Eau', 'Partout');
INSERT INTO Ingredient (Nom, Localisation) VALUES ('Gui', 'Forêt');
INSERT INTO Ingredient (Nom, Localisation) VALUES ('Pomme', 'Pommier');
INSERT INTO Composition (NomP, NomI) VALUES ('Potion Magique', 'Eau');
INSERT INTO Composition (NomP, NomI) VALUES ('Potion Magique', 'Gui');
INSERT INTO Composition (NomP, NomI) VALUES ('Potion Magique', 'Pomme');
INSERT INTO Ingredient (Nom, Localisation) VALUES ('Bière', 'Pic');
INSERT INTO Potion (Nom, Effet, Duree) VALUES ('Potion Inutile','Rien', 0);
INSERT INTO Composition (NomP, NomI) VALUES ('Potion Inutile', 'Eau');
INSERT INTO Potion (Nom, Effet, Duree) VALUES ('Eau Aromatisée','Goût', 10);
INSERT INTO Composition (NomP, NomI) VALUES ('Eau Aromatisée', 'Eau');
INSERT INTO Composition (NomP, NomI) VALUES ('Eau Aromatisée', 'Gui');