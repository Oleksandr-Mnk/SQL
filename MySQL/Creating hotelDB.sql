-- 1) Create DB of hotels and select it 
CREATE DATABASE hotelsDB;
USE hotelsDB;

-- 2) Create table of cities
CREATE TABLE cities
(
cityid int PRIMARY KEY NOT NULL AUTO_INCREMENT,
city_name varchar(20)
)

-- 3) Create table of hotels
CREATE TABLE hotels
(
hotelsid int PRIMARY KEY NOT NULL AUTO_INCREMENT,
hotel_name varchar(20),
starsCount int NOT NULL,
creationDate date,
cityid int,
FOREIGN KEY (cityid) REFERENCES cities(cityid)
)

-- 4) Create table of rooms
CREATE TABLE rooms
(
roomid int PRIMARY KEY NOT NULL AUTO_INCREMENT,
comfort_level varchar(20),
hotelsid int,
FOREIGN KEY (hotelsid) REFERENCES hotels(hotelsid)
)

-- 5) Create table of clients
CREATE TABLE clients
(
clientsid int PRIMARY KEY NOT NULL AUTO_INCREMENT,
clientName varchar(50),
client_phoneNumber bigint
)

-- 6) Create table of orders
Create table orders
(
orderID int primary key not null auto_increment,
clientsID int,
roomId int,
foreign key (clientsID) references clients(clientsID),
foreign key (roomId) references rooms(roomID)
)

-- 7) Add cities to the cities table
INSERT INTO hotelsdb.cities (city_name)
	VALUES ('Chernivtsi');
INSERT INTO hotelsdb.cities (city_name)
	VALUES ('Kyiv');
INSERT INTO hotelsdb.cities (city_name)
	VALUES ('Lviv');
INSERT INTO hotelsdb.cities (city_name)
	VALUES ('Ivano-Frankivsk');
INSERT INTO hotelsdb.cities (city_name)
	VALUES ('Ternopil');
INSERT INTO hotelsdb.cities (city_name)
	VALUES ('Rivne');
INSERT INTO hotelsdb.cities (city_name)
	VALUES ('Uzhhorod');
INSERT INTO hotelsdb.cities (city_name)
	VALUES ('Lutsk');
INSERT INTO hotelsdb.cities (city_name)
	VALUES ('Zhytomyr');
INSERT INTO hotelsdb.cities (city_name)
	VALUES ('Chernihiv');
INSERT INTO hotelsdb.cities (city_name)
	VALUES ('Cherkasy');
INSERT INTO hotelsdb.cities (city_name)
	VALUES ('Zaporizhia');
INSERT INTO hotelsdb.cities (city_name)
	VALUES ('Odesa');
INSERT INTO hotelsdb.cities (city_name)
	VALUES ('Mykolaiv');
INSERT INTO hotelsdb.cities (city_name)
	VALUES ('Kherson');
INSERT INTO hotelsdb.cities (city_name)
	VALUES ('Khmelnitskii');
INSERT INTO hotelsdb.cities (city_name)
	VALUES ('Donetsk');
INSERT INTO hotelsdb.cities (city_name)
	VALUES ('Dnipro');
INSERT INTO hotelsdb.cities (city_name)
	VALUES ('Luhansk');
INSERT INTO hotelsdb.cities (city_name)
	VALUES ('Sumy');
INSERT INTO hotelsdb.cities (city_name)
	VALUES ('Poltava');
INSERT INTO hotelsdb.cities (city_name)
	VALUES ('Kropyvnytskii');
INSERT INTO hotelsdb.cities (city_name)
	VALUES ('Vinitsia');
INSERT INTO hotelsdb.cities (city_name)
	VALUES ('Krym');
 
-- 8)Other data was added using Dbeaver features

