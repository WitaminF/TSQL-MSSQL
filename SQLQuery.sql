-- Cr�er une base de donn�es
CREATE DATABASE BDD

-- Renomer une base de donn�es
ALTER DATABASE BDD MODIFY NAME = BDD_2

-- Supprimer une base de donn�es
DROP DATABASE BDD_2

-- Creer une table
CREATE DATABASE BDD
USE BDD
CREATE TABLE Personne (nom varchar(200), prenom varchar(200))

-- Renomer une table
sp_rename 'Personne', 'Citoyen'

-- Supprimer une table
DROP TABLE Citoyen

-- Ins�rer des donn�es dans la table (INTO n'est pas obligatoire)
INSERT INTO Citoyen VALUES
('Le roi', 'Lion'),
('Winnnie', 'L''ourson'),
('Le roi', 'Lion2'),
('Winnnie', 'L''ourson2'),
('Peter', 'Pan'),
('PeterPeter', 'PanPan')

-- Selectionner des donn�es dans une table
SELECT * FROM Citoyen

-- Selectionner des donn�es dans une table avec WHERE
SELECT * FROM Citoyen WHERE prenom = 'Lion'

-- Selectionner une colonne dans une table avec WHERE
SELECT Prenom FROM Citoyen WHERE prenom = 'Lion'

-- Mettre � jour des donn�es avec UPDATE
UPDATE Citoyen SET prenom = 'D''Agobert' WHERE prenom = 'Lion2'
UPDATE Citoyen SET prenom = 'The Poo' WHERE prenom = 'L''ourson2'

-- Ins�rer plusieurs fois la m�me valeur dans une table
CREATE TABLE number (id int)

INSERT INTO number VALUES (1)
go 10

SELECT * FROM number

-- Supprimer des donn�es dans une table

DELETE FROM citoyen WHERE nom = 'PeterPeter'

-- Exercice

CREATE TABLE Etudiant (nom VARCHAR(200), prenom VARCHAR(10), age int)

INSERT INTO Etudiant VALUES
('Marchand', 'Isabelle', 18),
('Truchon', 'Melanie', 16),
('Teslu', 'Sandrine', 18),
('Portail', 'Bruno', 23),
('Virenque', 'Michel', 22)

SELECT * FROM Etudiant WHERE nom = 'Teslu'

UPDATE Etudiant SET age = 10 WHERE nom = 'Teslu'

DELETE Etudiant WHERE nom = 'Virenque'

SELECT * FROM Etudiant