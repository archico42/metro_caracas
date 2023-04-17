
--Creando la tabla conductores donde van los conductores del metro

CREATE TABLE `drivers` (

--IDENTIFICADORES NUMERICOS
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,

--IDENTIFICADORES NOMBRE
    `name` VARCHAR(20) NOT NULL,


--IDENTIFICADORES DE ACTIVIDAD

`status` BOOLEAN NOT NULL DEFAULT false,
`parada` BOOLEAN NOT NULL DEFAULT false,

--INDENTIFICADORES DE TIEMPO
    `create_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_parada` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_salida` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

--LLAVE PRIMARIA
    PRIMARY KEY (id)

)

--PROTOCOLO DE CARACTERES ACEPTADOS PARA INSERTAR Y RECIBIR DATOS
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;

--Creando la tabla de conductores activos donde van los conductores del metro

--Insertando los valores conductores

USE metro_caracas;

INSERT INTO `drivers` (name) VALUES
("Pedro"),
("Pablo"),
("José"),
("María"),
("Amanda");