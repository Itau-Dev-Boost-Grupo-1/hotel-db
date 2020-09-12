CREATE SCHEMA hotel

SET CURRENT_SCHEMA = hotel

--Hotels table
CREATE TABLE hotels (
 id INT AUTO_INCREMENT PRIMARY KEY,
 nome       VARCHAR(50)    NOT NULL,
 descrição  VARCHAR(100),
 endereço   VARCHAR(50)    NOT NULL,
 cidade     VARCHAR(50) NOT NULL,
 estrelas   INT,
 foto_url   VARCHAR(200),
);

--Rooms table
CREATE TABLE rooms (
 id INT AUTO_INCREMENT PRIMARY KEY,
 hotel_id INT NOT NULL,
 tamanho  VARCHAR(50) NOT NULL,
 numero INT NOT NULL,

  PRIMARY KEY (id),
  FOREIGN KEY (hotel_id) REFERENCES hotels (id)
);

--Reservations table
 CREATE TABLE reservations (
 id INT PRIMARY KEY AUTO_INCREMENT,
 rooms_id INT NOT NULL
 title      VARCHAR(50) NOT NULL,
 checkin    TIMESTAMP NOT NULL,
 checkout   TIMESTAMP NOT NULL,
 createdAt  TIMESTAMP NOT NULL,

 PRIMARY KEY (id),
 FOREIGN KEY (rooms_id) REFERENCES rooms (id)
);

ALTER TABLE hotels ADD PRIMARY KEY (id);


INSERT INTO hotels (nome, descrição, endereço, cidade, estrelas, foto_url) VALUES(
    "Hotel Copacabana",
    "Hotel ubicado no interior de São Paulo", 
    "R. Prudente de Moraes, 1123 - Cidade Alta, Piracicaba - SP, 13419-260",
    "Piracicaba"
    4,
    "https://www.google.com/travel/hotels/Piracicaba/entity/CgoIysWwzYzEreRZEAE?g2lb=2502548%2C4258168%2C4270442%2C4306835%2C4317915%2C4322823%2C4328159%2C4371335%2C4401769%2C4403882%2C4419364%2C4424916%2C4425793%2C4430199%2C4270859%2C4284970%2C4291517%2C4412693&hl=pt-BR&gl=br&un=1&ap=aAE&q=hotel%20piracicaba&rp=EMrFsM2MxK3kWRCVv-zCv6ep1-YBENS3-tbk2MLc9AEQutnCvpH75pGwATgBQABIAqIBD1BpcmFjaWNhYmEgLSBTUMABA8gBAA&ictx=1&utm_campaign=sharing&utm_medium=link&utm_source=htls&hrf=CgUIwgMQACIDQlJMKhYKBwjkDxAJGA4SBwjkDxAJGA8YASgAWAGqARIKAgghEgIIFRICCA0SAghnGAGqAQsKAwjhAhICCGMYAZIBAiAB"
);

INSERT INTO rooms (tamanho, numero) VALUES(
    "Quarto p/ 2 pessoas",
    101
)

INSERT INTO reservations (title, checkin, checkout, createdAt) VALUES(
    "Reserva Sr. Pedro Silva",
    "2020-04-30 13:10:02.0474381",
    "2020-08-30 13:10:02.0474381",
    "2020-01-30 13:10:02.0474381",
)

