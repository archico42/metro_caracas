-- Crear la tabla journey si aún no existe
CREATE TABLE IF NOT EXISTS public.journey
(
    id SERIAL NOT NULL, -- ID del viaje
    id_pasajero SERIAL NOT NULL, -- ID del pasajero
    id_trayecto SERIAL NOT NULL, -- ID del trayecto
    inicio TIMESTAMP WITH TIME ZONE NOT NULL, -- Fecha y hora de inicio del viaje
    final TIMESTAMP WITH TIME ZONE NOT NULL, -- Fecha y hora de finalización del viaje
    create_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(), -- Fecha y hora de creación del registro
    update_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(), -- Fecha y hora de la última actualización del registro
    
    -- Establecer la clave primaria en las columna id
    CONSTRAINT journey_pkey PRIMARY KEY (id),
    
    -- Agregar una clave foránea en la columna id_pasajero que hace referencia a la columna id en la tabla pasajero
    CONSTRAINT journey_pasajero_fkey FOREIGN KEY (id_pasajero)
        REFERENCES public.pasajero (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE SET DEFAULT
        NOT VALID,
    
    -- Agregar una clave foránea en la columna id_trayecto que hace referencia a la columna id en la tabla trayecto
    CONSTRAINT journey_trayecto_id FOREIGN KEY (id_trayecto)
        REFERENCES public.trayecto (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE SET DEFAULT
        NOT VALID
);

-- Establecer el propietario de la tabla en postgres
ALTER TABLE public.journey
    OWNER TO postgres;