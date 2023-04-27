-- Crear la tabla trayecto si aún no existe
CREATE TABLE IF NOT EXISTS public.trayecto
(
    id SERIAL NOT NULL, -- ID del trayecto
    id_trains SERIAL NOT NULL, -- ID del tren
    id_stations SERIAL NOT NULL, -- ID de la estación
    
    -- Establecer la clave primaria en la columna id
    CONSTRAINT trayecto_pkey PRIMARY KEY (id),
    
    -- Agregar una clave foránea en la columna id_stations que hace referencia a la columna id en la tabla stations
    CONSTRAINT trayecto_stations_fkey FOREIGN KEY (id_stations)
        REFERENCES public.stations (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE SET DEFAULT
        NOT VALID,
    
    -- Agregar una clave foránea en la columna id_trains que hace referencia a la columna serial_number en la tabla trains
    CONSTRAINT trayecto_trains_fkey FOREIGN KEY (id_trains)
        REFERENCES public.trains (serial_number) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE SET DEFAULT
        NOT VALID
);

-- Establecer el propietario de la tabla en postgres
ALTER TABLE public.trayecto
    OWNER TO postgres;
