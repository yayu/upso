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
) ENGINE=INNODB;;

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
  id INTEGER not null,
  viaje INTEGER not null,
  compra_pasaje date not null,
  butaca int not null,
  primary key(id, viaje),
  CONSTRAINT chk_cliente foreign key(id) references cliente(id),
  CONSTRAINT chk_viaje foreign key(viaje) references viaje(id)
)ENGINE=INNODB;


INSERT INTO chofer (nombre, apellido, dni, telefono) VALUES
('Juan', 'Stevens', 20444123, '2983 456789'),
('Jose', 'Dittman', 5881345, '2983 455422'),
('Carlos', 'Stevenson', 27001281, '291 552211');
