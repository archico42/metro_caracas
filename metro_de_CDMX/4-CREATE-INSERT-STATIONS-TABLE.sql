-- Crear la tabla stations si aún no existe
CREATE TABLE public.stations
(
    id serial NOT NULL, -- ID de la estación
    nombre character varying, -- Nombre de la estación
    color character varying, -- Color de la línea a la que pertenece la estación
    direccion character varying, -- Dirección de la estación
    zones character varying, -- Zonas a las que pertenece la estación
    active boolean DEFAULT TRUE, -- Indica si la estación está activa o no
    create_at timestamp with time zone DEFAULT NOW(), -- Fecha y hora de creación del registro
    update_at timestamp with time zone DEFAULT NOW() -- Fecha y hora de la última actualización del registro
) 
-- Particionamos la tabla por listas utilizando la columna "color" como clave de partición
PARTITION BY LIST (color);

-- Cambiamos el propietario de la tabla a "postgres"
ALTER TABLE IF EXISTS public.stations
    OWNER to postgres;

-- Creamos una tabla de partición para almacenar filas con un valor de "rosa" en la columna "color"
CREATE TABLE public.stations_linea_rosa PARTITION OF public.stations
    FOR VALUES IN ('rosa');

-- Creamos una tabla de partición para almacenar filas con un valor de "azul" en la columna "color"
CREATE TABLE public.stations_linea_azul PARTITION OF public.stations
    FOR VALUES IN ('azul');

-- Creamos una tabla de partición para almacenar filas con un valor de "verde_olivo" en la columna "color"
CREATE TABLE public.stations_linea_verde_olivo PARTITION OF public.stations
    FOR VALUES IN ('verde_olivo');

-- Creamos una tabla de partición para almacenar filas con un valor de "cian" en la columna "color"
CREATE TABLE public.stations_linea_cian PARTITION OF public.stations
    FOR VALUES IN ('cian');

-- Creamos una tabla de partición para almacenar filas con un valor de "amarillo" en la columna "color"
CREATE TABLE public.stations_linea_amarillo PARTITION OF public.stations
    FOR VALUES IN ('amarillo');

-- Creamos una tabla de partición para almacenar filas con un valor de "rojo" en la columna "color"
CREATE TABLE public.stations_linea_rojo PARTITION OF public.stations
    FOR VALUES IN ('rojo');

-- Creamos una tabla de partición para almacenar filas con un valor de "naranja" en la columna "color"
CREATE TABLE public.stations_linea_naranja PARTITION OF public.stations
    FOR VALUES IN ('naranja');

-- Creamos una tabla de partición para almacenar filas con un valor de "verde" en la columna "color"
CREATE TABLE public.stations_linea_verde PARTITION OF public.stations
    FOR VALUES IN ('verde');

-- Creamos una tabla de partición para almacenar filas con un valor de "cafe" en la columna "color"
CREATE TABLE public.stations_linea_cafe PARTITION OF public.stations
    FOR VALUES IN ('cafe');

-- Creamos una tabla de partición para almacenar filas con un valor de "morado" en la columna "color"
CREATE TABLE public.stations_linea_morado PARTITION OF public.stations
    FOR VALUES IN ('morado');

-- Creamos una tabla de partición para almacenar filas con un valor de "verde_y_gris" en la columna "color"
CREATE TABLE public.stations_linea_verde_y_gris PARTITION OF public.stations
    FOR VALUES IN ('verde_y_gris');

-- Creamos una tabla de partición para almacenar filas con un valor de "oro" en la columna "color"
CREATE TABLE public.stations_linea_oro PARTITION OF public.stations
    FOR VALUES IN ('oro');

    
INSERT INTO public.stations(nombre, color, direccion, zones)
VALUES 
('plaza_aragon', 'verde_y_gris','lineaB', 'cdmx'),
('olimpica', 'verde_y_gris','lineaB', 'cdmx'),
('muzquiz', 'verde_y_gris','lineaB', 'cdmx'),
('rio_de_los_remedios', 'verde_y_gris','lineaB', 'cdmx'),
('impulsora', 'verde_y_gris','lineaB', 'cdmx'),
('nezahualcoyotl', 'verde_y_gris','lineaB', 'cdmx'),
('villa_de_aragon', 'verde_y_gris','lineaB', 'cdmx'),
('morelos', 'verde_y_gris','lineaB', 'cdmx'),
('tepito', 'verde_y_gris','lineaB', 'cdmx'),
('oceania', 'verde_y_gris','lineaB', 'cdmx'),
('romero_rubio', 'verde_y_gris','lineaB', 'cdmx'),
('ricardo_flores_magon', 'verde_y_gris','lineaB', 'cdmx'),
('san_lazaro', 'verde_y_gris','lineaB', 'cdmx'),
('lagunilla', 'verde_y_gris','lineaB', 'cdmx'),
('garibaldi/lagunilla', 'verde_y_gris','lineaB', 'cdmx'),
('guerrero', 'verde_y_gris','lineaB', 'cdmx'),
('tacubaya', 'cafe','linea9', 'cdmx'),
('patriotismo', 'cafe','linea9', 'cdmx'),
('lazaro_cardenas', 'cafe','linea9', 'cdmx'),
('jamaica', 'cafe','linea9', 'cdmx'),
('mixiuhca', 'cafe','linea9', 'cdmx'),
('velodromo', 'cafe','linea9', 'cdmx'),
('puebla', 'cafe','linea9', 'cdmx'),
('pantitlan', 'cafe','linea9', 'cdmx'),
('acantitla', 'morado','lineaA', 'cdmx'),
('aculco', 'verde','linea8', 'cdmx'),
('agricola_oriental', 'morado','lineaA', 'cdmx'),
('allende', 'azul','linea2', 'cdmx'),
('apatlaco', 'verde','linea8', 'cdmx'),
('aquiles_serdan', 'naranja','linea7', 'cdmx'),
('aragon', 'amarillo','linea5', 'cdmx'),
('atlatico', 'verde','linea8', 'cdmx'),
('atlatico', 'oro','linea12', 'cdmx'),
('auditorio', 'naranja','linea7', 'cdmx'),
('autobuses_del_norte', 'amarillo','linea5', 'cdmx'),
('azcaoitzalco', 'rojo','linea6', 'cdmx'),
('balbuena', 'rosa','linea1', 'cdmx'),
('balderas', 'rosa','linea1', 'cdmx'),
('balderas', 'verde_olivo','linea3', 'cdmx'),
('barranca_del_muerto', 'naraja','linea7', 'cdmx'),
('bellas_artes', 'azul','linea2', 'cdmx'),
('bellas_artes', 'verde','linea8', 'cdmx'),
('bondijito', 'cian','linea4', 'cdmx'),
('bosque_de_aragon', 'verde_y_gris','lineaB', 'cdmx'),
('bulevard_puerto_aereo', 'rosa','linea1', 'cdmx'),
('buenavista', 'verde_y_gris','lineaB', 'cdmx'),
('calle11', 'oro','linea12', 'cdmx'),
('camarones', 'naranja','linea7', 'cdmx'),
('canal_del_norte', 'cian','linea4', 'cdmx'),
('canal_de_san_juan', 'morado','lineaA', 'cdmx'),
('candelaria', 'rosa','linea1', 'cdmx'),
('candelaria', 'cian','linea4', 'cdmx'),
('centro_medico', 'verde_olivo','linea3', 'cdmx'),
('centro_medico', 'cafe','linea9', 'cdmx'),
('cerro_de_la_estrella', 'verde','linea8', 'cdmx'),
('chabacano', 'azul','linea2', 'cdmx'),
('chabacano', 'verde','linea8', 'cdmx'),
('chabacano', 'cafe','linea9', 'cdmx'),
('chapultepec', 'rosa','linea1', 'cdmx'),
('chilpancingo', 'azul','linea2', 'cdmx'),
('ciudad_azteca', 'verda_y_gris','lineaB', 'cdmx'),
('ciudad_deportiva', 'amarillo','linea5', 'cdmx')
('colegio_militar', 'azul','linea2', 'cdmx'),
('constitucion_de_1917', 'verde','linea8', '1D, 47A, 52C, 161, 161C, 161D, 161E, 161F, 162, 165A, E, T'),
('constituyentes', 'naranja','linea7', '57C'),
('consulado', 'cian','linea4', '33, 37'),
('consulado', 'amarillo','linea5', '33, 37'),
('copilco', 'verde_olivo','linea3', 'cdmx'),
('coyoacan', 'verde_olivo','linea3', 'cdmx'),
('coyuya', 'verde','linea8', '39, 39A, 39B'),
('cuatro_caminos', 'azul','linea2', '57C'),
('cuauhtemoc', 'rosa','linea1', 'cdmx'),
('cuitlahuac', 'azul','linea1', 'I'),
('culhacan', 'oro','linea12', 'cdmx'),
('deoirtuvi_18_de_marzo', 'verde_olivo','linea3', 'cdmx'),
('deoirtuvi_18_de_marzo', 'rojo','linea6', 'cdmx'),
('deportivo_oceania', 'verde_y_gris','lineaB', 'cdmx'),
('division_del_norte', 'verde_olivo','linea3', 'cdmx'),
('doctores', 'verde','linea8', 'A'),
('ecatepec', 'verde_y_gris','linea8', 'A'),
('patitlan', 'amarillo','linea5', 'cdmx'),
('hangares', 'amarillo','linea5', 'cdmx'),
('terminal_area', 'amarillo','linea5', 'cdmx'),
('oceania', 'amarillo','linea5', 'cdmx'),
('valle_gomez', 'amarillo','linea5', 'cdmx'),
('misterios', 'amarillo','linea5', 'cdmx'),
('la_raza', 'amarillo','linea5', 'cdmx'),
('instituto_del_petroleo', 'amarillo','linea5', 'cdmx'),
('politecnico', 'amarillo','linea5', 'cdmx'),
('patitlan', 'morado','lineaA', 'cdmx'),
('tepalcates', 'morado','lineaA', 'cdmx'),
('guelatao', 'morado','lineaA', 'cdmx'),
('peñon_viejo', 'morado','lineaA', 'cdmx'),
('santa_marta', 'morado','lineaA', 'cdmx'),
('santa_marta', 'morado','lineaA', 'cdmx'),
('los_reyes', 'morado','lineaA', 'cdmx'),
('la_paz', 'morado','lineaA', 'cdmx'),
('garibaldi/lagunilla', 'verde','linea8', 'cdmx'),
('san_juan_de_letran', 'verde','linea8', 'cdmx'),
('salto_del_agua', 'verde','linea8', 'cdmx'),
('obrera', 'verde','linea8', 'cdmx'),
('la_viga', 'verde','linea8', 'cdmx'),
('santa_anita', 'verde','linea8', 'cdmx'),
('iztacalco', 'verde','linea8', 'cdmx'),
('iztapalapa', 'verde','linea8', 'cdmx'),
('UAM-I', 'verde','linea8', 'cdmx'),
('peatones', 'azul','linea2', 'cdmx'),
('tucuba', 'azul','linea2', 'cdmx'),
('popotla', 'azul','linea2', 'cdmx'),
('zocalo/tenochtitla', 'azul','linea2', 'cdmx'),
('normal', 'azul','linea2', 'cdmx'),
('san_cosme', 'azul','linea2', 'cdmx'),
('revolucion', 'azul','linea2', 'cdmx'),
('hidalgo', 'azul','linea2', 'cdmx'),
('pino_suarez', 'azul','linea2', 'cdmx'),
('san_antonio_abad', 'azul','linea2', 'cdmx'),
('viaducto', 'azul','linea2', 'cdmx'),
('xola', 'azul','linea2', 'cdmx'),
('villa_de_cortes', 'azul','linea2', 'cdmx'),
('nativitas', 'azul','linea2', 'cdmx'),
('portales', 'azul','linea2', 'cdmx'),
('general_anaya', 'azul','linea2', 'cdmx'),
('tasqueña', 'azul','linea2', 'cdmx'),
('refineria', 'naranja','linea7', 'cdmx'),
('tucuba', 'naranja','linea7', 'cdmx'),
('san_joaquin', 'naranja','linea7', 'cdmx'),
('polanco', 'naranja','linea7', 'cdmx'),
('auditorio', 'naranja','linea7', 'cdmx'),
('tucubaya', 'naranja','linea7', 'cdmx'),
('san_pedro_de_los_pinos', 'naranja','linea7', 'cdmx'),
('san_antonio', 'naranja','linea7', 'cdmx'),
('mixcoac', 'naranja','linea7', 'cdmx'),
('refineria', 'naranja','linea7', 'cdmx'),
('mixcoac', 'oro','linea12', 'cdmx'),
('insurgentes_sur', 'oro','linea12', 'cdmx'),
('hospital_20_de_noviembre', 'oro','linea12', 'cdmx'),
('zapata', 'oro','linea12', 'cdmx'),
('parque_de_los_venados', 'oro','linea12', 'cdmx'),
('eje_central', 'oro','linea12', 'cdmx'),
('ermita', 'oro','linea12', 'cdmx'),
('mexicaltzingo', 'oro','linea12', 'cdmx'),
('san_andre_tomatlan', 'oro','linea12', 'cdmx'),
('lomas_estrella', 'oro','linea12', 'cdmx'),
('periferico_oriente', 'oro','linea12', 'cdmx'),
('tezonco', 'oro','linea12', 'cdmx'),
('olivos', 'oro','linea12', 'cdmx'),
('nopalera', 'oro','linea12', 'cdmx'),
('zapotitlan', 'oro','linea12', 'cdmx'),
('tlaltenco', 'oro','linea12', 'cdmx'),
('tlahuac', 'oro','linea12', 'cdmx'),
('el_rosario', 'rojo','linea6', 'cdmx'),
('tezozomoc', 'rojo','linea6', 'cdmx'),
('UAM_azcapotzalco', 'rojo','linea6', 'cdmx'),
('Ferraria/Arena_ciudad_de_mexico', 'rojo','linea6', 'cdmx'),
('norte_45', 'rojo','linea6', 'cdmx'),
('vallejo', 'rojo','linea6', 'cdmx'),
('instituto_del_petroleo', 'rojo','linea6', 'cdmx'),
('lindavista', 'rojo','linea6', 'cdmx'),
('deportivo_18_de_marzo', 'rojo','linea6', 'cdmx'),
('la_villa_basilica', 'rojo','linea6', 'cdmx'),
('martin_carrera', 'rojo','linea6', 'cdmx'),
('observatorio', 'rosa','linea1', 'cdmx'),
('tucabaya', 'rosa','linea1', 'cdmx'),
('juanacalan', 'rosa','linea1', 'cdmx'),
('salto_del_agua', 'rosa','linea1', 'cdmx'),
('sevilla', 'rosa','linea1', 'cdmx'),
('insurgente', 'rosa','linea1', 'cdmx'),
('isabel_la_catolica', 'rosa','linea1', 'cdmx'),
('pino_suarez', 'rosa','linea1', 'cdmx'),
('merced', 'rosa','linea1', 'cdmx'),
('san_lazaro', 'rosa','linea1', 'cdmx'),
('moctezuma', 'rosa','linea1', 'cdmx'),
('gomez_farias', 'rosa','linea1', 'cdmx'),
('zaragoza', 'rosa','linea1', 'cdmx'),
('pantitlan', 'rosa','linea1', 'cdmx'),
('martin_carrera', 'cian','linea4', 'cdmx'),
('talisman', 'cian','linea4', 'cdmx'),
('morelos', 'cian','linea4', 'cdmx'),
('fray_servando', 'cian','linea4', 'cdmx'),
('jamaica', 'cian','linea4', 'cdmx'),
('santa_anita', 'cian','linea4', 'cdmx'),
('indios_verdes', 'verde_olivo','linea3', 'cdmx'),
('portero', 'verde_olivo','linea3', 'cdmx'),
('la_raza', 'verde_olivo','linea3', 'cdmx'),
('guerrero', 'verde_olivo','linea3', 'cdmx'),
('hidalgo', 'verde_olivo','linea3', 'cdmx'),
('juarez', 'verde_olivo','linea3', 'cdmx'),
('balderas', 'verde_olivo','linea3', 'cdmx'),
('niños_herodes/poder_judicial_cdmx', 'verde_olivo','linea3', 'cdmx'),
('hospital_general', 'verde_olivo','linea3', 'cdmx'),
('etiopia/plaza_de_la_transparencia', 'verde_olivo','linea3', 'cdmx'),
('eugenia', 'verde_olivo','linea3', 'cdmx'),
('zapata', 'verde_olivo','linea3', 'cdmx'),
('viveros/derechos_humanos', 'verde_olivo','linea3', 'cdmx'),
('miguel_angel_de_quevedo', 'verde_olivo','linea3', 'cdmx'),
('universidad', 'verde_olivo','linea3', 'cdmx')
;