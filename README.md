# Bdd Marvel

Stocker et manipuler des données dans une base de données.

![img_html](./img/marvel.jpeg)

## Jeu de rêquete SQL ! 

### les titres et dates de sortie des films du plus récent au plus ancien

```sql
SELECT Titre_Film, Annee_Film from Film ORDER BY Annee_Film ASC;
```

### les noms, prénoms et âges des acteurs ou actrices de plus de 30 ans dans l'ordre alphabétique

```sql
SELECT Nom_Acteur, Prenom_Acteur, 
ROUND(DATEDIFF(NOW(), dateDeNaissance_Acteur) / 365) AS Age FROM Acteur
WHERE ROUND(DATEDIFF(NOW(), dateDeNaissance_Acteur) / 365) > 30 order by Nom_Acteur ASC;
```

### La liste des actrices ou acteurs principaux pour un film donné

```sql
SELECT Film.`Titre_Film`, Acteur.*
FROM Film 
	LEFT JOIN Film_acteur ON Film_acteur.Film_id_Film = Film.Film_id_Film 
	LEFT JOIN Acteur ON Film_acteur.Acteur_id_Acteur = Acteur.Acteur_id_Acteur
    
    WHERE Film.Titre_Film = 'Iron-Man'; 
```

### La liste des films pour une actrice ou un acteur donné

```sql
SELECT Film.`Titre_Film`, Acteur.*
FROM Film 
	LEFT JOIN Film_acteur ON Film_acteur.Film_id_Film = Film.Film_id_Film 
	LEFT JOIN Acteur ON Film_acteur.Acteur_id_Acteur = Acteur.Acteur_id_Acteur
    
    WHERE Acteur.Nom_Acteur = 'Pratt'; 
```


### Ajouter un film

```sql
INSERT INTO Film (Titre_Film, Duree_Film, Annee_Film)
VALUES ('The Punisher', '02:20:00', '2004-04-16');
```

### Ajouter une actrice ou un acteur

```sql
INSERT INTO Acteur (Nom_Acteur, Prenom_Acteur, dateDeNaissance_Acteur)
VALUES ('Potts', 'Pepper', '1974-02-12');
```


### Modifier un film
```sql
UPDATE Film SET Titre_Film = 'Marvel\'s The Avengers',
Duree_Film = '02:25:01',
Annee_Film = '2012-04-26'

WHERE Film_id_Film = 5;
```

### Supprimer une actrice ou un acteur

```sql
DELETE FROM Film_acteur where Film_id_Film = 4; 
DELETE FROM Acteur where Acteur_id_Acteur = 4;
```

### Afficher les 3 derniers acteurs/actrices ajouté(e)s ​

```sql
SELECT Nom_Acteur, Prenom_Acteur, dateDeNaissance_Acteur FROM Acteur
ORDER BY Acteur_id_Acteur DESC LIMIT 3; 
```

### les noms, prénoms et âges des acteurs ou actrices de plus de 30 ans dans l'ordre alphabétique
### La liste des actrices ou acteurs principaux pour un film donné
### La liste des films pour une actrice ou un acteur donné
### Ajouter un film
### Ajouter une actrice ou un acteur
### Modifier un film
### Supprimer une actrice ou un acteur
### Supprimer une actrice ou un acteur
### Afficher les 3 derniers acteurs/actrices ajouté(e)s ​
