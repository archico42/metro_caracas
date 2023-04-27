-- Creamos una tabla llamada "lines" en el esquema "public"
CREATE TABLE public.lines
(
    -- Definimos las columnas de la tabla
    id serial NOT NULL,
    name character varying(50) NOT NULL,
    color character varying(30) NOT NULL,
    zone character varying(15),
    active boolean NOT NULL DEFAULT TRUE,
    create_at timestamp with time zone NOT NULL DEFAULT NOW(),
    update_at timestamp with time zone DEFAULT NOW(),
    
    -- Agregamos un constraint de clave primaria en las columnas "id" y "color"
    CONSTRAINT lines_pkey PRIMARY KEY (id, color)
) 
-- Particionamos la tabla por listas utilizando la columna "color" como clave de partición
PARTITION BY LIST (color);

-- Cambiamos el propietario de la tabla a "postgres"
ALTER TABLE IF EXISTS public.lines
    OWNER to postgres;

-- Creamos una tabla de partición para almacenar filas con un valor de "rosa" en la columna "color"
CREATE TABLE public.linea_rosa PARTITION OF public.lines
    FOR VALUES IN ('rosa');

-- Creamos una tabla de partición para almacenar filas con un valor de "azul" en la columna "color"
CREATE TABLE public.linea_azul PARTITION OF public.lines
    FOR VALUES IN ('azul');

-- Creamos una tabla de partición para almacenar filas con un valor de "verde_olivo" en la columna "color"
CREATE TABLE public.linea_verde_olivo PARTITION OF public.lines
    FOR VALUES IN ('verde_olivo');

-- Creamos una tabla de partición para almacenar filas con un valor de "cian" en la columna "color"
CREATE TABLE public.linea_cian PARTITION OF public.lines
    FOR VALUES IN ('cian');

-- Creamos una tabla de partición para almacenar filas con un valor de "amarillo" en la columna "color"
CREATE TABLE public.linea_amarillo PARTITION OF public.lines
    FOR VALUES IN ('amarillo');

-- Creamos una tabla de partición para almacenar filas con un valor de "rojo" en la columna "color"
CREATE TABLE public.linea_rojo PARTITION OF public.lines
    FOR VALUES IN ('rojo');

-- Creamos una tabla de partición para almacenar filas con un valor de "naranja" en la columna "color"
CREATE TABLE public.linea_naranja PARTITION OF public.lines
    FOR VALUES IN ('naranja');

-- Creamos una tabla de partición para almacenar filas con un valor de "verde" en la columna "color"
CREATE TABLE public.linea_verde PARTITION OF public.lines
    FOR VALUES IN ('verde');

-- Creamos una tabla de partición para almacenar filas con un valor de "cafe" en la columna "color"
CREATE TABLE public.linea_cafe PARTITION OF public.lines
    FOR VALUES IN ('cafe');

-- Creamos una tabla de partición para almacenar filas con un valor de "morado" en la columna "color"
CREATE TABLE public.linea_morado PARTITION OF public.lines
    FOR VALUES IN ('morado');

-- Creamos una tabla de partición para almacenar filas con un valor de "verde_y_gris" en la columna "color"
CREATE TABLE public.linea_verde_y_gris PARTITION OF public.lines
    FOR VALUES IN ('verde_y_gris');

-- Creamos una tabla de partición para almacenar filas con un valor de "oro" en la columna "color"
CREATE TABLE public.linea_oro PARTITION OF public.lines
    FOR VALUES IN ('oro');

-- Agregamos una partición predeterminada para almacenar filas con valores que no coinciden con ninguna de las particiones existentes
CREATE TABLE public.linea_desconocido PARTITION OF public.lines
    FOR VALUES IN (DEFAULT);