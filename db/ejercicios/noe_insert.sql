INSERT INTO `cliente`(`nombre`, `apellido`, `dni`, `direccion`, `ciudad`, `nacimiento`) VALUES ('Matias','Yayu','40234567','Av. guemes nose que','Tres Arroyos','1973-07-15');
INSERT INTO `cliente`(`nombre`, `apellido`, `dni`, `direccion`, `ciudad`, `nacimiento`) VALUES ('Marcos','Bertolo','46239967','Chacabuco 12','Tres Arroyos','1973-02-05');
INSERT INTO `cliente`(`nombre`, `apellido`, `dni`, `direccion`, `ciudad`, `nacimiento`) VALUES ('Martina','Yapeyu','42345067','Maipu 234','Tres Arroyos','1973-02-05');
INSERT INTO `cliente`(`nombre`, `apellido`, `dni`, `direccion`, `ciudad`, `nacimiento`) VALUES ('Ariana','Catalana','20244567','Av. guemes 33','Tres Arroyos','1973-02-05');
INSERT INTO `cliente`(`nombre`, `apellido`, `dni`, `direccion`, `ciudad`, `nacimiento`) VALUES ('Robertina','Garcia','34567333','Av. san martin 231','Tres Arroyos','1973-02-05');
INSERT INTO `cliente`(`nombre`, `apellido`, `dni`, `direccion`, `ciudad`, `nacimiento`) VALUES ('Mickel','Sancho','40234567','Av. guemes nose que','Tres Arroyos','1973-02-05');

UPDATE `cliente` SET `nombre` = 'Luana', `apellido` = 'Cisneros' WHERE `cliente`.`id` = 3; 