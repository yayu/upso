CREATE TABLE mi_log(
id int auto_increment,
fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
mensaje varchar(50) not null,
primary key(id)
);

delimiter |

CREATE TRIGGER ins_transaction AFTER INSERT ON cliente
FOR EACH ROW
BEGIN
   insert into mi_log(mensaje)
   values(CONCAT('usuario creado: ',NEW.id));
END;
|

delimiter ;

INSERT INTO `cliente` (`nombre`, `apellido`, `dni`, `direccion`, `ciudad`, `nacimiento`) VALUES ('Prueba', 'Trigger', '20333111', 'av morenoo', '8100', '1984-10-5');

-- https://dev.mysql.com/doc/refman/5.7/en/trigger-syntax.html