create table chofer(
  id INTEGER AUTO_INCREMENT not null,
  nombre varchar(20),
  apellido varchar(20),
  dni decimal(10,0),
  telefono varchar(30),
  
  primary key(id)
)ENGINE=INNODB;

create table micro(
  id INTEGER AUTO_INCREMENT,
  dominio varchar(10),
  marca varchar(20),
  modelo varchar(20),
  primary key(id)
) ENGINE=INNODB;

create table cliente(
  id INTEGER AUTO_INCREMENT,
  nombre varchar(20),
  apellido varchar(20),
  dni decimal(10,0),
  direccion varchar(40),
  ciudad int,
  nacimiento date,
  primary key(id)
) ENGINE=INNODB;;

create table viaje(
   id INTEGER AUTO_INCREMENT,
   salida date not null,
   origen int not null,
   destino int not null,
   chofer INTEGER not null,
   anden INTEGER not null,
   
   primary key(id),
   CONSTRAINT chk_chofer foreign key (chofer) references chofer(id)
)ENGINE=INNODB;

create table pasajero(
  cliente INTEGER not null,
  viaje INTEGER not null,
  compra_pasaje date not null,
  butaca int not null,
  primary key(cliente, viaje),
  CONSTRAINT chk_cliente foreign key(cliente) references cliente(id),
  CONSTRAINT chk_viaje foreign key(viaje) references viaje(id)
)ENGINE=INNODB;


INSERT INTO chofer (nombre, apellido, dni, telefono) VALUES
('Juan', 'Stevens', 20444123, '2983 456789'),
('Jose', 'Dittman', 5881345, '2983 455422'),
('Carlos', 'Stevenson', 27001281, '291 552211');

INSERT INTO cliente (nombre, apellido, dni, direccion, ciudad, nacimiento) VALUES
('Noelia', 'Carrizo', 20444123, 'Rocha 234', 7500, '1988-2-5'),
('Elizabeth', 'Rodriguez', 5881345, 'Cangallo 215', 7500, '2.5.1991'),
('Loana', 'XX', 27001281, 'Cangallo 215', 7500, '2.8.1991'),
('Joel', 'XXY', 33001233, 'Cangallo 215', 7500, '31.7.1993');

INSERT INTO micro (dominio, marca, modelo) VALUES
('AA000AA', 'MERCEDES BENZ', '1526'),
('FTA123', 'Scania', 'K 111 TC 31'),
('GER456', 'MERCEDES BENZ', 'O 500 M30'),
('DER456', 'MERCEDES BENZ', 'O 500 rsd');

INSERT INTO viaje (salida, origen, destino, chofer, anden) VALUES
('2017-02-20', 8000, 7500, 1, 5),
('2017-02-21', 7500, 8000,2, 3),
('2017-02-23', 8000, 7500, 3, 5),
('2017-03-01', 8000, 7500, 1, 5),
('2017-03-02', 7500, 8000, 2, 3);

-- Acción del uso de Foreign key.
-- INSERT INTO viaje (salida, origen, destino, chofer, anden) VALUES
-- ('2017-02-20', 8000, 7500, 10, 5);

INSERT INTO pasajero (cliente, viaje, compra_pasaje, butaca) VALUES
-- viaje 1: fecha 2017-02-20
(1, 1, '2017-02-20', 15),
(2, 1, '2017-02-18', 16),
(4, 1, '2017-02-20', 30),
-- viaje 2: fecha 2017-02-21
(1, 2, '2017-02-20', 3),
(3, 2, '2017-02-20', 3),
-- viaje 3: fecha 2017-02-23
(3, 3, '2017-02-23', 1),
-- viaje 4: fecha 2017-03-01
(1, 4, '2017-03-01', 5),
(2, 4, '2017-03-01', 3),
(3, 4, '2017-02-21', 15),
-- viaje 1: fecha 2017-02-20
(3, 5, '2017-03-02', 3);