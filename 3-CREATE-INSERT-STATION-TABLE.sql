USE metro_caracas;

--Creando la tabla estacion donde van las estaciones de metro

CREATE TABLE `stations` (

--IDENTIFICADORES NUMERICOS
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,

--IDENTIFICADORES NOMBRE
    `name` VARCHAR(50) NOT NULL,


--INDENTIFICADORES DE TIEMPO
    `create_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

--LLAVE PRIMARIA
    PRIMARY KEY (id)

)

--PROTOCOLO DE CARACTERES ACEPTADOS PARA INSERTAR Y RECIBIR DATOS
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;



INSERT INTO `stations`(name) VALUES

--LINEA 1 Caracas
("prpatria"),
("Perez Bonalde"),
("Plaza Sucre"),
("Gato Negro"),
("Agua Salud"),
("Caño Amarillo"),
("Capitolio"),
("La Hoyada"),
("Parque Carabobo"),
("Bellas Artes"),
("Colegio de Ingenieros"),
("Plaza Venezuela"),
("Sabana Grande"),
("Chacaito"),
("Chacao"),
("Alatamira"),
("Parque del Este,Miranda"),
("Los Dos Caminos"),
("Los Cortijos"),
("La California"),
("Petare"),
("Palo Verde"),

--LINEA 2 Caracas

("El Silencio"),
("Capuchinos"),
("Maternidad"),
("Artigas"),
("La Paz"),
("La Yagauara"),
("Carapita"),
("Antimano"),
("Memera"),
("Caricuao"),
("Ruiz Pineda"),
("Zoologico"),
("Las Adjuntas"),

--LINEA 3 Caracas

("Ciudad Universitaria"),
("Los Símbolos"),
("La Bandera"),
("El Valle"),
("Los Jardines"),
("Coche"),
("Mercado"),
("La Rinconada"),

--LINEA 4 Caracas

("Zona Rental"),
("Parque Central"),
("Nuevo Circo"),
("Teatros"),

--LINEA 5 Caracas

("Bello Monte"),
("Las Mercedes"),
("Parque Simón Bolívar"),
("Bello Campo"),
("Hugo Chávez"),
("Montecristo"),
("Boleíta"),
("El Marqués"),
("Wararairarepano"),

--LINEA 7 Caracas

("Las Flores"),
("Panteon"),
("Socorro"),
("El Cristo"),
("Roca Tarpeya"),
("Presedente Medina"),
("Inces"),
("Roosevelt"),
("Los ilustres"),

--CableTren Bolivariano
("Petare II"),
("19 de Abril"),
("5 de Julio"),
("24 de Julio"),

--Sistema Caracas Guarenas-Guatire
("Caicaguita"),
("Belen"),
("Guarenas 1"),
("Guarenas 2"),
("Guatire 1"),
("Guatire 2"),

--Sistema MetroCable

("Gonzalez Cabrera"),
("Luisa Caceres"),
("Clavelinas 3"),
("Km. 7"),
("Ckavekubas 4"),
("Zona Industrial"),

("Palo Verde II"),
("Mariche"),
("Palo Verde III"),
("Guaicoco"),
("La Dolorita"),
("Las Brisas"),
("Maca"),
("El 73"),
("Carpintero"),
("San Blas"),
("La cruz del morro"),

--Linea 1 Los Teques

("Ali primera"),

--Linea 1A Los Teques

("Ayacucho")

--Linea 2 Los Teques 

("Guaicaipuro"),
("Idependencia"),

--Linea 2A Los Teques

("Los Cerritos"),
("Carrizal"),
("La Carbonera"),
("Las minas"),
("San Antonio"),

--Linea 3 Los Teques

("Rosalito"),
("El Limon"),
("Potrerito"),
("la Mariposa"),
("Panamericana"),

--Linea 1 Tuy Medio

("Charallave Norte"),
("Caharallave Sur"),
("Cua");

