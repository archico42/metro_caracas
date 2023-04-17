
--Creando la tabla trenes donde van los trenes de metro

CREATE TABLE `trains` (

--IDENTIFICADORES NUMERICOS
    `serial_number` VARCHAR(20)  NOT NULL,
    `lines_id` BIGINT(20) UNSIGNED NOT NULL,

--IDENTIFICADORES TIPO Y AÑO
    `type` TINYINT(4) NOT NULL,
    `year` INT(4) NOT NULL,

--INDENTIFICADORES DE TIEMPO
    `create_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

--LLAVE PRIMARIA
    PRIMARY KEY (`serial_number`),

--LLAVE SECUNDARIA
    CONSTRAINT `trains_line_id_foreign`
    FOREIGN KEY (`lines_id`) REFERENCES `lines` (`id`)
)

--PROTOCOLO DE CARACTERES ACEPTADOS PARA INSERTAR Y RECIBIR DATOS
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;

--Agregado de trenes (Insersion ficticia ya que la informacion de los trenes no es publica)

USE metro_caracas;

INSERT INTO `trains` (serial_number, lines_id, type, year) VALUES
('0JFxafE4q8', 1, 1, 1963),
('2e5v4FHs0T', 3, 2, 1984),
('5xPdsZ1x9L', 3, 2, 1948),
('7csbz2qteT', 1, 1, 1971),
('8PwCI0CC6n', 4, 1, 1990),
('9ilxeEwlnH', 4, 2, 1994),
('aWDpmlRsOG', 4, 2, 1998),
('ax5jrpNIWG', 4, 2, 1952),
('B83fPCVFbH', 1, 1, 1990),
('Bv1MN0DuUm', 2, 2, 1952),
('D9m2gBhBJw', 2, 1, 1969),
('EDUumFCvJl', 2, 1, 1967),
('ejN3a4CsDC', 3, 2, 1997),
('f49Bk0GzBi', 4, 2, 1967),
('Ge92a6hVX8', 3, 2, 1967),
('Huz9yGcao5', 2, 1, 1980),
('Hvhw9vxUaH', 3, 1, 1983),
('JO5UinVh7B', 2, 1, 1956),
('MPbPGQfWxT', 2, 2, 1982),
('mS0SY0eScA', 3, 2, 1986),
('oCut3fDYXE', 3, 2, 1987),
('oRyT0nwjUn', 2, 1, 1988),
('OtmhQxSRpS', 3, 2, 1956),
('Pazz9JGCbJ', 1, 2, 1988),
('pBnf2N5Ncc', 4, 1, 1981),
('pMldxCQ2sS', 3, 1, 1984),
('q92m0d8aWM', 1, 1, 1979),
('QJ22USb3ry', 2, 1, 1949),
('rnpVQQPs5b', 4, 1, 1984),
('S06Q7kXYrP', 1, 1, 1990),
('s0QypBy7cJ', 2, 2, 1958),
('S6R4dX4THI', 2, 2, 1994),
('t8HhPpvYbU', 1, 2, 1996),
('U9xuOQl3kh', 3, 1, 1982),
('uibQ7F5VE7', 4, 1, 1961),
('Uj5G2Bodtk', 4, 2, 1985),
('VjPElNnH29', 3, 2, 1964),
('vOv1sCgHoa', 1, 1, 1947),
('VViBQInzq3', 4, 2, 1959),
('wGweNe36QH', 1, 2, 1987),
('Wh09mwE4yn', 4, 1, 1968),
('XE89MYo0IU', 3, 1, 1986),
('Z5qAgGpFTj', 1, 1, 1971),
('ZbX2yY5Wyz', 1, 2, 1966),
('zeaEgOCuYl', 2, 2, 1997),
('ZHA4kQokXG', 2, 1, 1977),
('zpO3I3tS4e', 1, 2, 1995),
('zpYnPq7vmN', 4, 2, 1976);