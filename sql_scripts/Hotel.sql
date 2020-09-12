CREATE DATABASE IF NOT EXISTS hotel;
USE hotel;

--Hotels table
CREATE TABLE IF NOT EXISTS hotels (
 id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
 nome       VARCHAR(200) NOT NULL ,
 descrição  VARCHAR(250),
 endereço   VARCHAR(250) NOT NULL,
 cidade     VARCHAR(200) NOT NULL,
 estrelas   INT,
 foto_url   VARCHAR(250)
);

--Rooms table
CREATE TABLE IF NOT EXISTS rooms (
 id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
 hotel_id INT NOT NULL,
 tamanho  VARCHAR(50) NOT NULL,
 numero INT NOT NULL,
 CONSTRAINT fk_hotel_id
  FOREIGN KEY (hotel_id) REFERENCES hotels(id)
);

--Reservations table
 CREATE TABLE IF NOT EXISTS reservations (
 id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
 room_id INT NOT NULL,
 title      VARCHAR(200) NOT NULL,
 checkin    TIMESTAMP NOT NULL,
 checkout   TIMESTAMP NOT NULL,
 createdAt  TIMESTAMP NOT NULL,

 CONSTRAINT fk_room_id
 FOREIGN KEY (room_id) REFERENCES rooms(id)
);


INSERT INTO hotels (nome, descrição, endereço, cidade, estrelas, foto_url) VALUES(
    "Hotel Copacabana",
    "Hotel de São Paulo", 
    "R. Prudente de Moraes, 1123",
    "Piracicaba",
    4,
    "https://www.example.com/travel/hotels/Piracicaba/entity/fake-foto"
);

INSERT INTO rooms (hotel_id, tamanho, numero) VALUES(
    1,
    "Quarto p/ 2 pessoas",
    101
);

INSERT INTO reservations (room_id, title, checkin, checkout, createdAt) VALUES(
    1,
    "Reserva Sr. Pedro Silva",
    "2020-04-30 13:10:02.0474381",
    "2020-08-30 13:10:02.0474381",
    "2020-01-30 13:10:02.0474381"
);

