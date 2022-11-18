
-- Table Client
insert into Client Values(1,'Ramekhess','Yassine','yassine@gmail.com','baubien','Montréal','h3345fk');
insert into Client Values(2,'Amoussa','David','david@gmail.com','sainthubert','Montréal','ld455fk');

-- Table Télephone 
insert into Téléphone Values(1,'11111111');
insert into Téléphone Values(2,'22222222');

-- Table Fournisseur
insert into Fournisseur Values(15,'AB Transport', ' 34455 rue decelles');
insert into Fournisseur Values(16,'QC Transport','11338 rue meunier');
insert into Fournisseur Values(21,'LV Transport','68682 rue de port Royal');

-- Table Planrepas
insert into Planrepas Values (1,'dessert',7,3,700,21.99,16);
insert into Planrepas Values (2,'plas principal',16,6,3000,89.99,15);
insert into Planrepas Values (3,'plas principal',6,3,1500,45.00,21);
insert into Planrepas Values (4,'entrée',2,10,700,27.65,21);
insert into Planrepas Values (5,'entrée',5,10,1000,61.19,15);
insert into Planrepas Values (6,'plas principal',7,9,1200,125.25,16);

-- Table Famille
insert into Famille Values (2);
insert into Famille Values (3);
insert into Famille Values (5);
insert into Famille Values (6);

-- Table Végétarien 
insert into Végétarien Values(1,'cétogène');
insert into Végétarien Values(4,'cétogène');

-- Table Pescétarien 
insert into Pescétarien Values (2, 'Saumon');
insert into Pescétarien Values (4, 'Saint-Pierre');

-- Table  Rapide
insert into Rapide Values (5,15);
insert into Rapide Values (6,35);

-- Table Facile 
insert into Facile Values (2,6);
insert into Facile Values (3,3);


-- Table  Abonner
insert into Abonner Values (1,3,10);
insert into Abonner Values (2,5,5);

-- Table Ingrédient
insert into Ingrédient Values (1,'safron', 'Maroc');
insert into Ingrédient Values (2,'cumin', 'Inde');
insert into Ingrédient Values (3,'pois', 'Maroc');
insert into Ingrédient Values (4,'cabane à sucre', 'Canada');
insert into Ingrédient Values (5,'wasabi', 'Japon');

-- Table Kitrepas 
insert into Kitrepas Values (111, 'Notre équipe culinaire a choisi de faire rôtir du saumon avec des oranges sanguines, 
							 qui vont venir apporter une saveur unique au gout délicat des filets de poisson');
insert into Kitrepas Values (222, 'Voici le menu de cabane à sucre offert en 2 formats.Oeufs dans le sirop,Soupe aux pois,Fèves au lard (Beans)');

-- Table Contenir
insert into Contenir Values (1,111);
insert into Contenir Values (3,222);
insert into Contenir Values (4,222);
insert into Contenir Values (5,111);
insert into Contenir Values (2,111);

-- Table Image 

insert into Image Values (1,'plas de saumon',111);
insert into Image Values (2,'Un repas traditionnel servi à la cabane à sucre',222);

-- Table Etape 

insert into Etape Values (111, 'Dans une casserole, verser de l’eau jusqu’à une hauteur de 2,5 cm',12,60);
insert into Etape Values (222, 'choix de sucre ,Faire chauffer le mélange,Enlever le sucre dans les parois de la casserole,Refroidire le sucre,',4,30);
