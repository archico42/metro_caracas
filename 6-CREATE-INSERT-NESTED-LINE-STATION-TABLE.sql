--Creando la tabla que conecta la tabla que conecta la linea y las estaciones del metro

CREATE TABLE `lines_stations` (

--IDENTIFICADORES NUMERICOS
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,

--IDENTIFICADORES DE CONEXION
    `lines_id` BIGINT(20) UNSIGNED NOT NULL,
    `stations_id` BIGINT(20) UNSIGNED NOT NULL,

--INDENTIFICADORES DE TIEMPO
    `create_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

--LLAVE PRIMARIA
    PRIMARY KEY (id),

--LLAVES SECUNDARIA
    CONSTRAINT `lines_stations_stations_id_foreign`
    FOREIGN KEY (`stations_id`) REFERENCES `stations` (`id`),

    CONSTRAINT `lines_stations_lines_id_foreign`
    FOREIGN KEY (`lines_id`) REFERENCES `lines` (`id`)
)

--PROTOCOLO DE CARACTERES ACEPTADOS PARA INSERTAR Y RECIBIR DATOS
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;


--INSERTAMOS LA RELACION LINEA-ESTACION

--Linea 1

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_1"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "prpatria")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_1"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Perez Bonalde")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_1"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Plaza Sucre")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_1"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Gato Negro")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_1"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Agua Salud")
        );


INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_1"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Caño Amarillo")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_1"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Capitolio")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_1"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "La Hoyada")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_1"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Parque Carabobo")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_1"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Bellas Artes")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_1"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Colegio de Ingenieros")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_1"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Plaza Venezuela")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_1"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Sabana Grande")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_1"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Chacaito")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_1"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Chacao")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_1"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Alatamira")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_1"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Parque del Este,Miranda")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_1"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Los Dos Caminos")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_1"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Los Cortijos")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_1"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "La California")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_1"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Petare")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_1"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Palo Verde")
        );

--Linea 2

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_2"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "El Silencio")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_2"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Capitolio")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_2"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Capuchinos")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_2"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Maternidad")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_2"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Artigas")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_2"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "La Paz")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_2"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "La Yagauara")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_2"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Carapita")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_2"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Antimano")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_2"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Memera")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_2"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Caricuao")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_2"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Ruiz Pineda")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_2"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Zoologico")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_2"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Las Adjuntas")
        );

--Linea 3 Caracas

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_3"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Plaza Venezuela")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_3"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Ciudad Universitaria")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_3"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Los Símbolos")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_3"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "La Bandera")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_3"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "El Valle")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_3"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Los Jardines")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_3"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Coche")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_3"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Mercado")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_3"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "La Rinconada")
        );

--Linea 4 Carcas

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_4"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Zona Rental")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_4"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Parque Central")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_4"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Nuevo Circo")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_4"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Teatros")
        );

--Linea 5 Caracas

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_5"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Bello Monte")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_5"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Las Mercedes")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_5"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Parque Simón Bolívar")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_5"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Bello Campo")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_5"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Zona Rental")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_5"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Hugo Chávez")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_5"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Montecristo")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_5"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Boleíta")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_5"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "El Marqués")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_5"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Wararairarepano")
        );

--Linea 6 Caracas

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_6"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Zoologico")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_6"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "La Rinconada")
        );

--Linea 7 Caracas

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_7"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Las Flores")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_7"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Panteon")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_7"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Socorro")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_7"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "El Cristo")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_7"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Roca Tarpeya")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_7"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Presedente Medina")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_7"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Inces")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_7"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Roosevelt")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_7"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Los ilustres")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea_7"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "La Hoyada")
        );

--CableTren Bolivariano

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "Cable_tren_Bolivariano"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Petare II")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "Cable_tren_Bolivariano"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "19 de Abril")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "Cable_tren_Bolivariano"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "5 de Julio")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "Cable_tren_Bolivariano"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "24 de Julio")
        );

-- Sistema_Caracas_Guarenas_Guatire

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "Sistema_Caracas_Guarenas_Guatire"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Caicaguita")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "Sistema_Caracas_Guarenas_Guatire"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Belen")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "Sistema_Caracas_Guarenas_Guatire"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Guarenas 1")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "Sistema_Caracas_Guarenas_Guatire"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Guarenas 2")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "Sistema_Caracas_Guarenas_Guatire"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Guatire 1")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "Sistema_Caracas_Guarenas_Guatire"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Guatire 2")
        );

--Sistema MetroCable

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "Sistema_MetroCable"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Gonzalez Cabrera")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "Sistema_MetroCable"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Luisa Caceres")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "Sistema_MetroCable"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Clavelinas 3")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "Sistema_MetroCable"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Km. 7")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "Sistema_MetroCable"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Ckavekubas 4")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "Sistema_MetroCable"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Zona Industrial")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "Sistema_MetroCable"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Palo Verde II")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "Sistema_MetroCable"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Mariche")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "Sistema_MetroCable"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Palo Verde III")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "Sistema_MetroCable"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Guaicoco")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "Sistema_MetroCable"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "La Dolorita")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "Sistema_MetroCable"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Las Brisas")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "Sistema_MetroCable"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Maca")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "Sistema_MetroCable"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "El 73")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "Sistema_MetroCable"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Carpintero")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "Sistema_MetroCable"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "San Blas")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "Sistema_MetroCable"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "La cruz del morro")
        );

--Linea 1 Los Teques

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea 1"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Ali primera")
        );

--Linea 1A Los Teques

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea 1A"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Ayacucho")
        );

--Linea 2 Los Teques 

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea 2"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Guaicaipuro")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea 2"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Idependencia")
        );

--Linea 2A Los Teques

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea 2A"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Los Cerritos")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea 2A"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Carrizal")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea 2A"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "La Carbonera")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea 2A"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Las minas")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea 2A"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "San Antonio")
        );

--Linea 3 Los Teques

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea 3"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Rosalito")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea 3"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "El Limon")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea 3"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Potrerito")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea 3"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "la Mariposa")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea 3"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Panamericana")
        );


--Linea 1 Tuy Medio

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea__1"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Charallave Norte")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea__1"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Caharallave Sur")
        );

INSERT INTO `lines_stations` (lines_id, stations_id) VALUES(
            (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "linea__1"),
            (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Cua")
        );

