-- Crear la tabla pasajero si aun no existe
CREATE TABLE IF NOT EXISTS public.pasajero
(
    id SERIAL NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    direccion_residencia VARCHAR,
    fecha_nacimiento DATE,
    CONSTRAINT pasajero_pkey PRIMARY KEY (id) -- Establecer la clave primaria en la columna id
);

-- Establecer el propietario de la tabla en postgres
ALTER TABLE public.pasajero
    OWNER TO postgres;