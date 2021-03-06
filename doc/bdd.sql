
CREATE DATABASE BaseDeDonnee CHARACTER SET utf8 COLLATE utf8_unicode_ci
 
--------------------------------EXERCICE 1------------------------------------ 

CREATE USER 'Adrian'@'localhost' IDENTIFIED BY 'Adiboss00';
CREATE USER 'Eddy'@'localhost' IDENTIFIED BY 'shayze7895';
--------------------------------EXERCICE 2------------------------------------  
 
GRANT ALL PRIVILEGES ON * . * TO 'Adrian'@'localhost' REQUIRE NONE WITH GRANT OPTION; /* donne tous les droits */
GRANT ALL PRIVILEGES ON * . * TO 'Eddy'@'localhost' REQUIRE NONE WITH GRANT OPTION;
 
FLUSH PRIVILEGES; /* permet de donner effet immédiatement aux changements */
 
--------------------------------EXERCICE 3------------------------------------

CREATE TABLE utilisateur
(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom VARCHAR(20) NOT NULL,
    prenom VARCHAR(20) NOT NULL,
    email VARCHAR(20) UNIQUE NOT NULL,
    mot_de_passe VARCHAR(100) NOT NULL,
    numero_portable INT(10) NOT NULL,
    adresse_postale VARCHAR(35) NOT NULL,
    code_postale INT(5) NOT NULL,
    siege_le_plus_proche VARCHAR(50) NOT NULL,
    distance_estime INT(10) NOT NULL,
    role_utilisateur ENUM('admin','utilisateur') NOT NULL
)
 
CREATE TABLE projet
(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom_projet VARCHAR(40) NOT NULL,
    date_creation DATE NOT NULL,
    description_projet VARCHAR(300),
    date_fin DATE NOT NULL,
    id_utilisateur INT NOT NULL
)
 
ALTER TABLE projet
ADD FOREIGN KEY (id_utilisateur) REFERENCES utilisateur(id) ON DELETE CASCADE ON UPDATE CASCADE
 
CREATE TABLE produit
(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom_produit VARCHAR(30) NOT NULL,
    date_ajout DATE NOT NULL
)
 
CREATE TABLE produit_projet
(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_projet INT NOT NULL,
    id_produit INT NOT NULL,
    largeur_totale VARCHAR(30) NOT NULL,
    longueur_totale VARCHAR(30) NOT NULL,
    epaisseur_totale VARCHAR(30) NOT NULL,
    prix_ht VARCHAR(30) NOT NULL,
    tva VARCHAR(8) NOT NULL
)
 
ALTER TABLE produit_projet
ADD FOREIGN KEY (id_projet) REFERENCES projet(id) ON DELETE CASCADE ON UPDATE CASCADE,
ADD FOREIGN KEY (id_produit) REFERENCES produit(id) ON DELETE CASCADE ON UPDATE CASCADE
 
CREATE TABLE personnalisation_porte
(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_produit_projet INT NOT NULL,
    nom_module VARCHAR(20) NOT NULL,
    id_materiau INT NOT NULL,
    longueur_module VARCHAR (30) NOT NULL,
    largeur_module VARCHAR (30) NOT NULL
)
 
ALTER TABLE personnalisation_porte
ADD FOREIGN KEY (id_produit_projet) REFERENCES produit_projet(id) ON DELETE CASCADE ON UPDATE CASCADE,
ADD FOREIGN KEY (id_materiau) REFERENCES materiau(id) ON DELETE CASCADE ON UPDATE CASCADE
 
 
CREATE TABLE materiau
(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom_materiau VARCHAR(50) NOT NULL, /*-----a voir-----*/
    prix_m2_ht VARCHAR(30) NOT NULL,
    tva VARCHAR(8) NOT NULL
)
 
 
CREATE TABLE facture
(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_projet INT NOT NULL,/*-----a voir-----*/
    date_creation_facture DATE NOT NULL,
    mode_paiement ENUM('cb','chèque','espèce','bitcoin') NOT NULL,
    etat_facture ENUM('payé','en attente') NOT NULL,
    date_paiement DATE NOT NULL
)

--------------------------------EXERCICE 4------------------------------------


INSERT INTO utilisateur(nom,prenom,email,mot_de_passe,numero_portable,adresse_postale,code_postale,siege_le_plus_proche,distance_estime,role_utilisateur) VALUES ("Flamand","Warrane","WarraneFlamand@teleworm.us","Teesh6ahp","06.57.26.20.86","43 rue du Paillle en queue","78130","Mantes La jolie","20","Utilisateur")
INSERT INTO utilisateur(nom,prenom,email,mot_de_passe,numero_portable,adresse_postale,code_postale,siege_le_plus_proche,distance_estime,role_utilisateur) VALUES ("Gour","Sydney","sydney@hotmail.com","hrukfi6egf","07.76.54.42.23","83 rue Pierre Motte","69110","Dijon","240","Utilisateur")
INSERT INTO utilisateur(nom,prenom,email,mot_de_passe,numero_portable,adresse_postale,code_postale,siege_le_plus_proche,distance_estime,role_utilisateur) VALUES ("Sevier","Jeanette","JeanetteSevier@rhyta.com","FuiF6ueNg","06.23.52.33.73","130 Quai des Belges","59600","Mantes La jolie","290","Utilisateur")
INSERT INTO utilisateur(nom,prenom,email,mot_de_passe,numero_portable,adresse_postale,code_postale,siege_le_plus_proche,distance_estime,role_utilisateur) VALUES ("Mavise","Sorel","MaviseSorel@teleworm.us","OpaiThoo7","07.40.50.95.94","86 rue Cazade","93700","Mantes La jolie","80","Utilisateur")
INSERT INTO utilisateur(nom,prenom,email,mot_de_passe,numero_portable,adresse_postale,code_postale,siege_le_plus_proche,distance_estime,role_utilisateur) VALUES ("Sicard","André","AndreSicard@armyspy.com","lePo6ohPheu","NULL","NULL",",NULL","NULL","0","Admin")


--------------------------------EXERCICE 5------------------------------------

INSERT INTO projet(nom_projet,date_creation,description_projet,date_fin,id_utilisateur)
VALUES ("portes maison Flammand","2019-10-05","On veux changer les portes de la maison","2019-10-12",1),
("baie vitrée Flammand","2019-11-02","On veux installé une baie vitrée","2019-11-16",1),
("portes maison Gour","2019-10-13","On veux changer les portes de la maison","2019-10-26",2),
("baie vitrée Gour","2019-11-25","On veux installé une baie vitrée","2019-12-14",2),
("portes 1er etage Sevier","2019-09-05","On veux changer les portes du 1er étage de la maison","2019-09-21",3),
("portes 2eme etage Sevier","2019-10-03","On veux changer les portes du 2eme étage de la maison","2019-10-19",3),
("baie vitrée Sevier","2019-11-11","On veux installé une baie vitré","2019-11-29",3),
("portes 1er etage Mavise","2019-11-06","On veux changer les portes du 1er étage de la maison","2019-12-02",4),
("portes 2eme etage Mavise","2019-12-21","On veux changer les portes du 2eme étage de la maison","2020-01-02",4),
("baie vitrée Mavise","2020-01-15","On veux installé une baie vitré","2020-01-25",4)

--------------------------------EXERCICE 6------------------------------------

INSERT INTO produit(nom_produit,date_ajout)
VALUES ("porte","2018-04-23"),("baie vitrée","2018-06-21")

--------------------------------CLE ETRANGERES------------------------------------

ALTER TABLE projet
ADD FOREIGN KEY (id_utilisateur) REFERENCES utilisateur(id) ON DELETE CASCADE ON UPDATE CASCADE

ALTER TABLE produit_projet
ADD FOREIGN KEY (id_projet) REFERENCES projet(id) ON DELETE CASCADE ON UPDATE CASCADE,
ADD FOREIGN KEY (id_produit) REFERENCES produit(id) ON DELETE CASCADE ON UPDATE CASCADE,

ALTER TABLE personnalisation_porte
ADD FOREIGN KEY (id_produit_projet) REFERENCES produit_projet(id) ON DELETE CASCADE ON UPDATE CASCADE,
ADD FOREIGN KEY (id_materiau) REFERENCES materiau(id) ON DELETE CASCADE ON UPDATE CASCADE

--------------------------------EXERCICE 7------------------------------------

INSERT INTO produit_projet (id_projet,id_produit,largeur_totale,longueur_totale,epaisseur_totale,prix_ht,tva) VALUES (1,1,"63cm","204cm","30mm","115€","10%"),
   (1,1,"63cm","204cm","30mm","115€","10%"),
   (2,2,"240cm","215cm","50mm dormant 29mm ouvrant","339€","10%"),
   (2,2,"240cm","215cm","50mm dormant 29mm ouvrant","339€","10%"),
   (3,1,"63cm","204cm","30mm","115€","10%"),
   (3,1,"63cm","204cm","30mm","115€","10%"),
   (4,2,"240cm","215cm","50mm dormant 29mm ouvrant","339€","10%"),
   (4,2,"240cm","215cm","50mm dormant 29mm ouvrant","339€","10%"),
   (4,2,"240cm","215cm","50mm dormant 29mm ouvrant","339€","10%"),
   (5,1,"63cm","204cm","30mm","115€","10%")
   (5,1,"63cm","204cm","30mm","115€","10%")
   (6,1,"63cm","204cm","30mm","115€","10%")
   (6,1,"63cm","204cm","30mm","115€","10%")
   (6,1,"63cm","204cm","30mm","115€","10%")
   (7,2,"240cm","215cm","50mm dormant 29mm ouvrant","339€","10%")
   (7,2,"240cm","215cm","50mm dormant 29mm ouvrant","339€","10%")
   (8,1,"63cm","204cm","30mm","115€","10%")
   (8,1,"63cm","204cm","30mm","115€","10%")
   (9,1,"63cm","204cm","30mm","115€","10%")
   (9,1,"63cm","204cm","30mm","115€","10%")
   (10,2,"240cm","215cm","50mm dormant 29mm ouvrant","339€","10%")
   (10,2,"240cm","215cm","50mm dormant 29mm ouvrant","339€","10%")

--------------------------------EXERCICE 8------------------------------------

INSERT INTO personnalisation_porte (id_produit_projet,couleur_module,id_materiau,longueur_module,largeur_module) VALUES 
 (1,"bleu","1","25cm","25cm"),
 (1,"bleu","1","25cm","25cm"),
 (1,"orange","1","25cm","25cm"),
 (3,"rouge","4","25cm","25cm"),
 (3,"rouge","1","25cm","25cm"),
 (3,"gris","1","25cm","25cm"),
 (5,"noir","3","25cm","25cm"),
 (5,"noir","2","25cm","25cm"),
 (5,"noir","2","25cm","25cm"),
 (8,"gris","2","25cm","25cm"),
 (8,"gris","3","25cm","25cm"),
 (8,"gris","1","25cm","25cm")

--------------------------------EXERCICE 9------------------------------------

INSERT INTO materiau (nom_materiau,prix_m2_ht,tva) VALUES ("Bois","40€","10%"),
("Pvc","20€","10%"),
("Alu","30€","10%"),
("Mixte PVC et Bois","30€","10%")

--------------------------------EXERCICE 10------------------------------------

INSERT INTO facture(id_projet,date_creation_facture,mode_paiement,etat_facture,date_paiement)
VALUES(1,"2019-10-06","cb","payé","2019-10-08"),(3,"2019-11-26","espèce","payé","2019-10-10"),(5,"2019-09-06","chèque","payé","2019-09-08"),(8,"2019-10-07","bitcoin","payé","2019-10-09")

--------------------------------EXERCICE 11------------------------------------

SELECT id,email,mot_de_passe 
FROM utilisateur 
WHERE email ="WarraneFlamand@teleworm.us" 
AND mot_de_passe = "Teesh6ahp"

--------------------------------EXERCICE 12------------------------------------
 
SELECT nom_projet,date_creation,description_projet 
FROM projet 
ORDER BY date_creation DESC
 
--------------------------------EXERCICE 12 BIS------------------------------------

SELECT nom_projet,date_creation,description_projet 
FROM projet 
WHERE id_utilisateur = 1 
ORDER BY date_creation ASC

--------------------------------EXERCICE 13------------------------------------

SELECT utilisateur.nom,utilisateur.prenom,utilisateur.email,utilisateur.numero_portable,utilisateur.adresse_postale,COUNT(*) 
FROM projet,utilisateur 
WHERE utilisateur.id=4 
AND projet.id_utilisateur=utilisateur.id

--------------------------------EXERCICE 14------------------------------------

UPDATE utilisateur SET * = "YEET" WHERE id =1

--------------------------------EXERCICE 15------------------------------------

SELECT nom_projet,date_creation,description_projet,nom_produit,date_ajout 
FROM projet,produit 
WHERE id_utilisateur = 2

--------------------------------EXERCICE 16------------------------------------

SELECT nom_produit,couleur_module,nom_materiau,longueur_module,largeur_module 
FROM produit,personnalisation_porte,materiau 
WHERE produit.id =1 LIMIT 12

--------------------------------EXERCICE 17------------------------------------

SELECT nom,nom_projet,description_projet,date_creation 
FROM utilisateur,projet 
WHERE utilisateur.id =3 
AND projet.id_utilisateur = utilisateur.id

--------------------------------EXERCICE 18------------------------------------

SELECT nom_projet,description_projet,prix_ht 
FROM projet,produit_projet 
WHERE projet.id = 2 
AND produit_projet.id_projet = projet.id

--------------------------------EXERCICE 19------------------------------------

SELECT nom, prenom, nom_projet, date_creation, 
(CASE
      WHEN distance_estime > 350 THEN '125'
      WHEN distance_estime > 250 THEN '75'
      WHEN distance_estime > 100 THEN '20'
      ELSE '0'
END) as majoration
FROM utilisateur

INNER JOIN projet
	ON id_utilisateur = utilisateur.id

--------------------------------EXERCICE 20------------------------------------

SELECT P.nom_projet,P.description_projet,
(
(CASE
    WHEN U.distance_estime > 350 THEN '125'
    WHEN U.distance_estime > 250 THEN '75'
    WHEN U.distance_estime > 100 THEN '20'
    ELSE '0'
END) + SUM(PP.prix_ht)
)
AS cout_total,P.date_fin
FROM projet AS P
LEFT JOIN utilisateur AS U
ON U.id = P.id_utilisateur
LEFT JOIN produit_projet AS PP
ON PP.id_projet = P.id
WHERE P.date_fin < NOW()
GROUP BY P.id


--------------------------------EXERCICE 20 BIS--------------------------------

SELECT PO.id,M.nom_materiau,PO.longueur_module,PO.largeur_module,
 
(
(CASE
    WHEN U.distance_estime > 350 THEN '125'
    WHEN U.distance_estime > 250 THEN '75'
    WHEN U.distance_estime > 100 THEN '20'
    ELSE '0'
END) + SUM(PP.prix_ht)
)
AS cout_total_hors_taxe,
 
(
(CASE
    WHEN U.distance_estime > 350 THEN '125'
    WHEN U.distance_estime > 250 THEN '75'
    WHEN U.distance_estime > 100 THEN '20'
    ELSE '0'
END) + SUM(PP.prix_ht) * 1,PP.tva
)
AS cout_total
 
FROM personnalisation_porte AS PO
 
LEFT JOIN produit_projet AS PP
ON PP.id = PO.id_produit_projet
 
LEFT JOIN projet AS P
ON PP.id_projet = P.id
 
LEFT JOIN utilisateur AS U
ON U.id = P.id_utilisateur
LEFT JOIN materiau AS M
ON M.id = PO.id_materiau
WHERE P.id = 1


--------------------------------EXERCICE 21------------------------------------

UPDATE personnalisation_porte 
SET couleur_module = "SQUALALALALALALALA"
WHERE personnalisation_porte.id in (SELECT personnalisation_porte.id 
                                    FROM personnalisation_porte 
                                    INNER JOIN produit_projet ON produit_projet.id = personnalisation_porte.id_produit_projet 
                                    INNER JOIN projet  ON projet.id = produit_projet.id_projet
                                    WHERE projet.id=1)

--------------------------------EXERCICE 22------------------------------------

SELECT count(produit_projet.id) as nb_projet,month(projet.date_fin) as mois, (sum(prix_ht)) as total
FROM produit_projet
LEFT JOIN projet ON projet.id = produit_projet.id_projet 
where year(projet.date_fin)=2019
group by mois
ORDER BY projet.date_fin ASC

--------------------------------EXERCICE 23------------------------------------

SELECT count(couleur_module) as nombre_couleur,couleur_module 
FROM personnalisation_porte
GROUP BY couleur_module
ORDER BY nombre_couleur DESC 
LIMIT 3