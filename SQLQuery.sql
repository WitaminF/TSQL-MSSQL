

/***********************************
*********** SECTION 1-5 ************
***********************************/


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
('Winnnie', 'L''ourson2'),
('Peter', 'Pan'),
('PeterPeter', 'PanPan')

-- Selectionner des données dans une table
SELECT * FROM Citoyen

-- Selectionner des données dans une table avec WHERE
SELECT * FROM Citoyen WHERE prenom = 'Lion'

-- Selectionner une colonne dans une table avec WHERE
SELECT Prenom FROM Citoyen WHERE prenom = 'Lion'

-- Mettre à jour des données avec UPDATE
UPDATE Citoyen SET prenom = 'D''Agobert' WHERE prenom = 'Lion2'
UPDATE Citoyen SET prenom = 'The Poo' WHERE prenom = 'L''ourson2'

-- Insérer plusieurs fois la même valeur dans une table
CREATE TABLE number (id int)

INSERT INTO number VALUES (1)
go 10

SELECT * FROM number

-- Supprimer des données dans une table

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

/***********************************
*********** SECTION 6 **************
***********************************/

-- Creation d'une table et insertion de valeurs pour l'utilisation de AS (Alias)

create table Contact (Nom varchar (200),prenom varchar (200), age int, sexe char (1), date_de_naissance date)

insert into Contact values 

('Marchand','Elisabeth',18,'F','04-08-1976'),
('Truchon','Melanie',16,'F','04-08-1978'),
('Teslu','Sandrine',17,'F','02-05-1987'),
('Portail','Bruno',23,'M','06-05-1970'),
('Virenque','Michel',22,'M','02-08-1983'),
('Dutruel','Pascal',22,'M','02-08-1983'),-- meme age que Virenque michel
('Virenque','Micheline',37,'M','02-08-1975'),
('Fournillet','Alain',22,'M','01-01-1983'),
('Faurnillet','Pascal',48,'M','12-06-1960'),
('Boutin','Ludivine',47,'F','08-01-1965'),
('Delors','Valerie',28,'M','11-09-1978'),
('Thuillier','olivier',41,'M','12-08-1976'),
('Chuillier','olivier',41,'M','12-08-1976'),
('Meilhac','Amelie',34,'F','08-05-1983'),
('Boutin','Ludivine',47,'F','08-01-1965')-- deux fois la meme valeur dans la table, c'est un doublon

-- Renomer la colonne nom par surnom
SELECT nom AS surnom, prenom AS toto, age AS titi, sexe AS tutu, date_de_naissance AS tata FROM Contact

SELECT * FROM Contact

-- Affiner les recherche avec l'opérateur LIKE
-- Rechercher tous les noms avec la lettre u

SELECT *
FROM Contact
WHERE nom LIKE '%u%'

-- Afficher que certaines ligne en haut
SELECT TOP (1) *
FROM Contact

-- DISTINCT, supprime les doublons
SELECT nom FROM Contact WHERE nom = 'virenque'

SELECT DISTINCT nom FROM Contact WHERE nom = 'virenque'

-- Copier une table avec SELECT INTO
SELECT * INTO Contact_2 FROM Contact
SELECT * FROM Contact_2

SELECT nom INTO Contact_3 FROM Contact
SELECT * FROM Contact_3

SELECT * INTO Contact_4 FROM Contact WHERE nom = 'Virenque'
SELECT * FROM Contact_4

-- Exercice
create table Personne (Nom varchar (200),prenom varchar (200), age int, sexe char (1), date_de_naissance date)

insert into Personne values 

('Marchand','Elisabeth',18,'F','04-08-1976'),
('Truchon','Melanie',16,'F','04-08-1978'),
('Teslu','Sandrine',17,'F','02-05-1987'),
('Portail','Bruno',23,'M','06-05-1970'),
('Virenque','Michel',22,'M','02-08-1983'),
('Dutruel','Pascal',22,'M','02-08-1983'),-- meme age que Virenque michel
('Virenque','Micheline',37,'M','02-08-1975'),
('Fournillet','Alain',22,'M','01-01-1983'),
('Faurnillet','Pascal',48,'M','12-06-1960'),
('Boutin','Ludivine',47,'F','12-01-1965'),
('Delors','Valerie',28,'M','12-09-1978'),
('Thuillier','olivier',41,'M','12-08-1976'),
('Chuillier','olivier',41,'M','12-08-1976'),
('Meilhac','Amelie',34,'F','08-05-1983'),
('Boutin','Ludivine',47,'F','12-01-1965')-- deux fois la meme valeur dans la table, c'est un doublon

SELECT DISTINCT age FROM Personne

SELECT date_de_naissance AS Annee_1976 FROM Personne where year(date_de_naissance) = 1976

SELECT * FROM Personne WHERE month(date_de_naissance) = 01 AND day(date_de_naissance) = 01

SELECT * FROM Personne WHERE prenom LIKE '%e'

SELECT * FROM Personne WHERE sexe = 'F'
SELECT * FROM Personne WHERE sexe <> 'M'

SELECT * FROM Personne WHERE age <= 17

SELECT * FROM Personne WHERE age <> 17 AND age <> 48

SELECT * TOP(1) FROM Personne

SELECT * INTO Contact_Portail FROM Personne WHERE prenom = 'bruno' AND nom = 'Portail'

SELECT * FROM Personne WHERE year(date_de_naissance) <> 1976

SELECT * FROM Personne WHERE month(date_de_naissance) <> 08

/***********************************
*********** SECTION 7 **************
***********************************/

