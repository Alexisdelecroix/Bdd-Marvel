DROP TABLE IF EXISTS Utilisateurs ;

CREATE TABLE
    Utilisateurs (
        Utilisateurs_id_Utilisateurs INT AUTO_INCREMENT NOT NULL,
        Nom_Utilisateurs VARCHAR(50),
        Prenom_Utilisateurs VARCHAR(50),
        Email_Utilisateurs VARCHAR(200),
        MotDePasse_Utilisateurs VARCHAR(50),
        RoleUser_Utilisateurs VARCHAR(50),
        PRIMARY KEY (Utilisateurs_id_Utilisateurs)
    ) ENGINE = InnoDB;


      INSERT INTO Utilisateurs (Nom_Utilisateurs, Prenom_Utilisateurs, Email_Utilisateurs, MotDePasse_Utilisateurs, RoleUser_Utilisateurs)
VALUES
	('Delecroix', 'Alexis', 'd-alexis@hotmail.fr', 'DelecroixAlexis', 'Admin'),
    ('Vansteenkiste', 'Sylvain', 'sylvain.vansteenkiste59@gmail.com', 'VansteenkisteSylvain', 'Admin'),
    ('Brasseur', 'Julian', 'julianbrasseur2@gmail.com', 'BrasseurJulian','User'),
    ('De Wulf', 'Théo', 'W-Theo@hotmail.fr', 'WulfTheo', 'User'),
    ('François', 'Jean-Pierre', 'JeanPierre@hotmail.fr', 'FrançoisJean', 'User'),
    ('Serin', 'Charles', 'S-Charles@hotmail.fr', 'SerinCharles', 'User');

    

DROP TABLE IF EXISTS Film ;

CREATE TABLE
    Film (
        Film_id_Film INT AUTO_INCREMENT NOT NULL,
        Titre_Film VARCHAR(50),
        Duree_Film TIME,
        Annee_Film DATE,
        PRIMARY KEY (Film_id_Film)
    ) ENGINE = InnoDB;

    INSERT INTO Film (Titre_Film, Duree_Film, Annee_Film )
VALUES
	('Les Gardiens de la Galaxie', '02:02:00', '2014-08-13'),
    ('Ant-Man', '02:05:00', '2015-07-14'),
    ('Iron-Man', '02:06:00', '2008-04-30'),
    ('Spider-Man', '02:01:00', '2002-06-12'),
    ('Avengers', '02:23:00', '2012-04-25');

DROP TABLE IF EXISTS Acteur ;

CREATE TABLE
    Acteur (
        Acteur_id_Acteur INT AUTO_INCREMENT NOT NULL,
        Nom_Acteur VARCHAR(50),
        Prenom_Acteur VARCHAR(50),
        dateDeNaissance_Acteur DATE,
        PRIMARY KEY (Acteur_id_Acteur)
    ) ENGINE = InnoDB;

    INSERT INTO Acteur (Nom_Acteur, Prenom_Acteur, dateDeNaissance_Acteur )
VALUES
	('Pratt', 'Chris', '1979-06-21'),
    ('Rudd', 'Paul', '1969-04-06' ),
    ('Downey', 'Robert','1965-04-04'),
    ('Maguire', 'Tobey','1975-06-27'),
    ('Johansson', 'Scarlett','1984-11-22');



DROP TABLE IF EXISTS Realisateurs ;

CREATE TABLE
    Realisateurs (
        Realisateurs_id_Realisateurs INT AUTO_INCREMENT NOT NULL,
        Nom_Realisateurs VARCHAR(50),
        Prenom_Realisateurs VARCHAR(50),
        PRIMARY KEY (Realisateurs_id_Realisateurs)
    ) ENGINE = InnoDB;

        INSERT INTO Realisateurs (Nom_Realisateurs, Prenom_Realisateurs )
VALUES
	('Gunn', 'James'),
    ('Reed', 'Peyton'),
    ('Favreau', 'Jon'),
    ('Raimi', 'Sam'),
    ('Russo', 'Joe');

DROP TABLE IF EXISTS Film_Prefere ;

CREATE TABLE
    Film_Prefere (
        Utilisateurs_id_Utilisateurs INT AUTO_INCREMENT NOT NULL,
        Film_id_Film INT NOT NULL,
        PRIMARY KEY (
            Utilisateurs_id_Utilisateurs,
            Film_id_Film
        )
    ) ENGINE = InnoDB;

DROP TABLE IF EXISTS Film_acteur ;

CREATE TABLE
    Film_acteur (
        Film_id_Film INT AUTO_INCREMENT NOT NULL,
        Acteur_id_Acteur INT NOT NULL,
        RoleActeur VARCHAR(50),
        PRIMARY KEY (
            Film_id_Film,
            Acteur_id_Acteur
        )
    ) ENGINE = InnoDB;

    INSERT INTO Film_acteur (Film_id_Film, Acteur_id_Acteur, RoleActeur)
VALUES
    (1, 1, 'Star-Lord'),
    (1, 2, 'Ant-Man'),
    (3, 3, 'Iron Man'),
    (4, 4, 'Spider-Man'),
    (5, 5, 'Black Widow');

DROP TABLE IF EXISTS Film_Realisateur ;

CREATE TABLE
    Film_Realisateur (
        Film_id_Film INT AUTO_INCREMENT NOT NULL,
        Realisateurs_id_Realisateurs INT NOT NULL,
        PRIMARY KEY (
            Film_id_Film,
            Realisateurs_id_Realisateurs
        )
    ) ENGINE = InnoDB;

ALTER TABLE Film_Prefere
ADD
    CONSTRAINT FK_Film_Prefere_Utilisateurs_id_Utilisateurs FOREIGN KEY (Utilisateurs_id_Utilisateurs) REFERENCES Utilisateurs (Utilisateurs_id_Utilisateurs);

ALTER TABLE Film_Prefere
ADD
    CONSTRAINT FK_Film_Prefere_Film_id_Film FOREIGN KEY (Film_id_Film) REFERENCES Film (Film_id_Film);

ALTER TABLE Film_acteur
ADD
    CONSTRAINT FK_Film_acteur_Film_id_Film FOREIGN KEY (Film_id_Film) REFERENCES Film (Film_id_Film);

ALTER TABLE Film_acteur
ADD
    CONSTRAINT FK_Film_acteur_Acteur_id_Acteur FOREIGN KEY (Acteur_id_Acteur) REFERENCES Acteur (Acteur_id_Acteur);

ALTER TABLE Film_Realisateur
ADD
    CONSTRAINT FK_Film_Realisateur_Film_id_Film FOREIGN KEY (Film_id_Film) REFERENCES Film (Film_id_Film);

ALTER TABLE Film_Realisateur
ADD
    CONSTRAINT FK_Film_Realisateur_Realisateurs_id_Realisateurs FOREIGN KEY (Realisateurs_id_Realisateurs) REFERENCES Realisateurs (Realisateurs_id_Realisateurs);