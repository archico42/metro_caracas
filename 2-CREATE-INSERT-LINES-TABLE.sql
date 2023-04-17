--Creando la tabla linea donde van la lineas de metro

CREATE TABLE `lines` (

--IDENTIFICADORES NUMERICOS
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,

--IDENTIFICADORES NOMBRE, COLOR y ZONA
    `name` varchar(50) NOT NULL,
    `color` varchar(30) NOT NULL,
    `zone` VARCHAR(15) NOT NULL,

--INDENTIFICADORES DE TIEMPO
    `create_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

--LLAVE PRIMARIA
    PRIMARY KEY (id)
)

--PROTOCOLO DE CARACTERES ACEPTADOS PARA INSERTAR Y RECIBIR DATOS
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;

--Insertamos las lineas del metro
INSERT INTO `lines`(name , color, zone) VALUES

--Sistema Metro de Caracas
("linea_1", "rojoRey", "Caracas"),
("linea_2", "verdeManzana", "Caracas"),
("linea_3", "azulOzcuro", "Caracas"),
("linea_4", "AmarilloRey", "Caracas"),
("linea_5", "MoradoRey", "Caracas"),
("linea_6", "NaranjaRey", "Caracas"),
("linea_7", "MoradoVinotinto", "Caracas"),
("Cable_tren_Bolivariano", "AmarilloDorado", "Caracas"),
("Sistema_Caracas_Guarenas_Guatire", "VerdeAqua", "Caracas"),
("Sistema_MetroCable", "Blanca", "Caracas"),

--SISTEMA METRO LOS TEQUES
("linea 1", "azulCielo", "los teques"),
("linea 1A", "azulCieloPunteado", "los teques" ),
("linea 2", "verdeRey", "los teques"),
("linea 2A", "verdeReyPunteado", "los teques"),
("linea 3", "moradoVino", "los teques"),

--SISTEMA TUY MEDIO
("linea__1", "verdeOscuro", "tuy medio");