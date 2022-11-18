Create table IF NOT EXISTS Client(numéroclient int primary key,
nomclient varchar(50) not null,
prénomclient varchar(50) not null,
adressecourielclient varchar(50) not null Default ('xxx@gmail.com'),
rueclient varchar(50) not null,
ville varchar(50) not null,
codepostalclient varchar(50) not null);

Create table IF NOT EXISTS Téléphone(numéroclient int ,numérodetéléphone varchar(50),
constraint téléphone_pk primary key (numérodetéléphone, numéroclient),
constraint numéroclient_fk foreign key (numéroclient) references Client);

Create table IF NOT EXISTS Fournisseur (numérofournisseur int primary key,
nomfournisseur varchar(50) not null,
adressefournisseur varchar(50) not null);

Create table IF NOT EXISTS Planrepas (numéroplan int primary key,
catégorie varchar(60) not null,
fréquence int not null,
nbpersonnes int not null ,
nbrcalories int not null,
prix decimal(10,2) not null  CHECK(prix>0.0),
numérofournisseur int not null references Fournisseur);

Create table IF NOT EXISTS Famille (numéroplan int,
constraint Famille_pk primary key (numéroplan),
constraint numéroplan_fk foreign key (numéroplan) references Planrepas);

Create table IF NOT EXISTS Végétarien (numéroplan int,
typederepas varchar(50) not null,
constraint Végétarien_pk primary key (numéroplan),
constraint numéroplan_fk foreign key (numéroplan) references Planrepas);

Create table IF NOT EXISTS Pescétarien (numéroplan int,
typedepoisson varchar(50) not null,
constraint Pescétarien_pk primary key (numéroplan),
constraint numéroplan_fk foreign key (numéroplan) references Planrepas);


Create table IF NOT EXISTS Rapide(numéroplan int,
tempsdepreparation int  not null,
constraint Rapide_pk primary key (numéroplan),
constraint numéroplan_fk foreign key (numéroplan) references Famille);

Create table IF NOT EXISTS Facile(numéroplan int,
nbringrédient int  not null,
constraint Facile_pk primary key (numéroplan),
constraint numéroplan_fk foreign key (numéroplan) references Famille);

Create table IF NOT EXISTS Abonner(numéroclient int ,
numéroplan int,
durée int not null,
constraint Abonner_pk primary key (numéroclient,numéroplan),
constraint numéroplan_fk foreign key (numéroplan) references Planrepas,
constraint numéroclient_fk foreign key (numéroclient) references Client);

Create table IF NOT EXISTS Ingrédient(numéroingrédient int primary key,
nomingrédient varchar(50) not null,
paysingrédient varchar (50) not null );

Create table IF NOT EXISTS Kitrepas(numérokitrepas int primary key,
description varchar(400) not null );

Create table IF NOT EXISTS Contenir(numéroingrédient int ,
numérokitrepas int,
constraint Contenir_pk primary key (numérokitrepas,numéroingrédient),
constraint numérokitrepas_fk foreign key (numérokitrepas) references Kitrepas,
constraint numéroingrédient_fk foreign key (numéroingrédient) references Ingrédient);


Create table IF NOT EXISTS Image (numéroimage int primary key,
données varchar(400) not null,
numérokitrepas int not null references Kitrepas);


Create table IF NOT EXISTS Etape(numérokitrepas int,
descriptionétape varchar(500) not null,
duréeétape int not null ,
numerokitrepasetrecomposerde int ,
constraint Etape_pk primary key (numérokitrepas),
constraint numérokitrepas_fk foreign key (numérokitrepas) references Kitrepas);