DELETE FROM "RECOLTE";
DELETE FROM "SAUNIER";
DELETE FROM "PROPRIETE";
DELETE FROM "CARREAU";
DELETE FROM "MARAIS";
DELETE FROM "PROPRIETAIRE";



INSERT INTO "PROPRIETAIRE" ("IDPRO", "NOMPRO", "PRENOMPRO")
VALUES (0, 'Position', 'Paul');

INSERT INTO "MARAIS" ("IDMAR", "NOMMAR", "ADRMAR")
VALUES (0, 'Poitevin', '5 rue du maréchal pétin');

INSERT INTO "CARREAU" ("IDCAR", "IDMAR", "NUMEMP")
VALUES (0, 0, 0);
INSERT INTO "CARREAU" ("IDCAR", "IDMAR", "NUMEMP")
VALUES (1, 0, 1);
INSERT INTO "CARREAU" ("IDCAR", "IDMAR", "NUMEMP")
VALUES (2, 0, 2);
INSERT INTO "CARREAU" ("IDCAR", "IDMAR", "NUMEMP")
VALUES (3, 0, 3);

INSERT INTO "PROPRIETE" ("IDPRO", "IDMAR")
VALUES (0, 0);

INSERT INTO "SAUNIER" ("IDSAU", "NOMSAU", "PRENOMSAU")
VALUES (0, 'De Compostelle', 'Jacques');
INSERT INTO "SAUNIER" ("IDSAU", "NOMSAU", "PRENOMSAU")
VALUES (1, 'NomSaun1', 'PrenomSaun1');
INSERT INTO "SAUNIER" ("IDSAU", "NOMSAU", "PRENOMSAU")
VALUES (2, 'NomSaun2', 'PrenomSaun2');

-- Domaine valide

-- Récoltes de Jacques dans la période voulue
INSERT INTO "RECOLTE" ("IDREC", "IDCAR", "IDSAU", "DATEREC", "TYPESEL", "QTESEL")
VALUES (0, 0, 0, TO_DATE('03/07/2014', 'DD/MM/YYYY'), 'gros', 2.5);
INSERT INTO "RECOLTE" ("IDREC", "IDCAR", "IDSAU", "DATEREC", "TYPESEL", "QTESEL")
VALUES (1, 1, 0, TO_DATE('12/07/2014', 'DD/MM/YYYY'), 'gros', 2.5);

-- Récoltes du saunier 1 dans la période voulue
INSERT INTO "RECOLTE" ("IDREC", "IDCAR", "IDSAU", "DATEREC", "TYPESEL", "QTESEL")
VALUES (3, 2, 1, TO_DATE('03/07/2014', 'DD/MM/YYYY'), 'gros', 4.0);

-- Récoltes du saunier 2 dans la période voulue
INSERT INTO "RECOLTE" ("IDREC", "IDCAR", "IDSAU", "DATEREC", "TYPESEL", "QTESEL")
VALUES (5, 3, 2, TO_DATE('18/07/2014', 'DD/MM/YYYY'), 'gros', 4.0);

-- Domaine invalide

-- Récoltes de Jacques hors période voulue
INSERT INTO "RECOLTE" ("IDREC", "IDCAR", "IDSAU", "DATEREC", "TYPESEL", "QTESEL")
VALUES (2, 0, 0, TO_DATE('03/08/2014', 'DD/MM/YYYY'), 'gros', 1.5);

-- Récoltes du saunier 1 de fleur de sel
INSERT INTO "RECOLTE" ("IDREC", "IDCAR", "IDSAU", "DATEREC", "TYPESEL", "QTESEL")
VALUES (4, 2, 1, TO_DATE('25/07/2014', 'DD/MM/YYYY'), 'fleur', 4.0);
