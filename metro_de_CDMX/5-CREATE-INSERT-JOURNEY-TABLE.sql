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
    estado character varying COLLATE pg_catalog."default",
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

insert into journey (id_pasajero, id_trayecto, inicio, final) values (7, 62, '27/07/2022', '08/02/2023');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (14, 56, '11/04/2022', '30/12/2020');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (22, 77, '14/03/2023', '24/12/2022');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (16, 57, '09/02/2023', '02/02/2021');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (23, 73, '15/04/2022', '02/09/2020');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (14, 90, '17/11/2020', '03/06/2020');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (22, 93, '24/02/2021', '01/09/2022');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (18, 73, '22/12/2021', '13/08/2020');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (7, 59, '20/12/2020', '07/07/2021');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (24, 52, '09/09/2021', '26/11/2022');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (13, 76, '19/05/2022', '16/01/2022');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (8, 55, '29/05/2022', '19/12/2022');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (25, 95, '19/06/2021', '16/08/2021');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (25, 70, '04/10/2020', '11/09/2020');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (10, 86, '03/09/2021', '05/10/2021');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (9, 74, '16/03/2023', '05/10/2021');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (8, 82, '10/11/2020', '12/11/2022');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (2, 90, '06/05/2021', '28/03/2023');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (22, 89, '27/05/2022', '01/02/2023');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (8, 63, '02/11/2020', '15/06/2020');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (23, 89, '16/09/2021', '13/01/2022');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (9, 88, '26/10/2022', '15/05/2021');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (19, 87, '03/10/2021', '23/09/2022');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (3, 79, '23/04/2021', '23/03/2021');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (7, 99, '20/03/2023', '20/09/2020');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (3, 94, '30/12/2021', '31/10/2020');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (8, 81, '18/05/2021', '25/06/2022');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (20, 74, '26/04/2022', '01/02/2021');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (9, 93, '31/07/2020', '16/01/2023');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (14, 66, '16/03/2023', '20/09/2022');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (15, 69, '03/08/2020', '13/08/2022');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (24, 99, '01/04/2021', '24/04/2023');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (23, 55, '26/05/2020', '21/05/2020');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (6, 81, '19/05/2020', '26/11/2020');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (20, 89, '31/08/2022', '12/03/2023');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (11, 98, '29/05/2021', '05/05/2020');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (22, 64, '01/11/2021', '18/11/2020');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (15, 80, '01/05/2022', '06/08/2021');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (12, 76, '16/12/2021', '05/03/2023');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (4, 91, '23/12/2022', '01/12/2021');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (17, 99, '24/05/2022', '08/12/2020');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (14, 85, '28/11/2020', '26/07/2020');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (6, 81, '28/12/2022', '26/10/2021');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (10, 99, '23/04/2021', '23/11/2021');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (1, 65, '26/06/2022', '23/02/2022');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (16, 87, '03/02/2022', '01/09/2020');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (5, 101, '21/06/2022', '22/05/2022');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (9, 60, '02/10/2021', '27/07/2022');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (1, 89, '03/07/2022', '03/09/2021');
insert into journey (id_pasajero, id_trayecto, inicio, final) values (19, 70, '17/12/2020', '18/06/2022')
RETURNING *;