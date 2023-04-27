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