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

INSERT INTO "PROPRIETE" ("IDPRO", "IDMAR")
VALUES (0, 0);

INSERT INTO "SAUNIER" ("IDSAU", "NOMSAU", "PRENOMSAU")
VALUES (0, 'De Compostelle', 'Jacques');

-- Domaine valide

-- Récolte de fleur de sel égale à 0,5kg
INSERT INTO "RECOLTE" ("IDREC", "IDCAR", "IDSAU", "DATEREC", "TYPESEL", "QTESEL")
VALUES (0, 0, 0, TO_DATE('18/09/2021', 'DD/MM/YYYY'), 'fleur', 0.500);

 -- Récolte de fleur de sel supérieure à 0,5kg
INSERT INTO "RECOLTE" ("IDREC", "IDCAR", "IDSAU", "DATEREC", "TYPESEL", "QTESEL")
VALUES (1, 0, 0, TO_DATE('19/09/2021', 'DD/MM/YYYY'), 'fleur', 0.745);

-- Domaine invalide

-- Récolte de gos sel supérieure à 0,5kg
INSERT INTO "RECOLTE" ("IDREC", "IDCAR", "IDSAU", "DATEREC", "TYPESEL", "QTESEL")
VALUES (2, 0, 0, TO_DATE('20/09/2021', 'DD/MM/YYYY'), 'gros', 1.740);

-- Récolte de fleur de sel inférieure à 0,5kg
INSERT INTO "RECOLTE" ("IDREC", "IDCAR", "IDSAU", "DATEREC", "TYPESEL", "QTESEL")
VALUES (3, 0, 0, TO_DATE('21/09/2021', 'DD/MM/YYYY'), 'fleur', 0.420);