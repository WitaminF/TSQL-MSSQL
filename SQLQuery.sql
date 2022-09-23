-- Créer une base de données
CREATE DATABASE BDD

-- Renomer une base de données
ALTER DATABASE BDD MODIFY NAME = BDD_2

-- Supprimer une base de données
DROP DATABASE BDD_2

-- Creer une table
CREATE DATABASE BDD
USE BDD
CREATE TABLE Personne (nom varchar(200), prenom varchar(200))

-- Renomer une table
sp_rename 'Personne', 'Citoyen'

-- Supprimer une table
DROP TABLE Citoyen

-- Insérer des données dans la table (INTO n'est pas obligatoire)
INSERT INTO Citoyen VALUES
('Le roi', 'Lion'),
('Winnnie', 'L''ourson'),
('Le roi', 'Lion2'),
('Winnnie', 'L''ourson2')

-- Selectionner des données dans une table
SELECT * FROM Citoyen

-- Selectionner des données dans une table avec WHERE
SELECT * FROM Citoyen WHERE prenom = 'Lion'

-- Selectionner une colonne dans une table avec WHERE
SELECT Prenom FROM Citoyen WHERE prenom = 'Lion'

-- Mettre à jour des données avec UPDATE
UPDATE Citoyen SET prenom = 'D''Agobert' WHERE prenom = 'Lion2'
UPDATE Citoyen SET prenom = 'The Poo' WHERE nom = 'Winnie' AND prenom = 'Winnie'