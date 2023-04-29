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

insert into trayecto (id_trains, id_stations) values (30, 'rojo');
insert into trayecto (id_trains, id_stations) values (47, 'oro');
insert into trayecto (id_trains, id_stations) values (29, 'morado');
insert into trayecto (id_trains, id_stations) values (45, 'rojo');
insert into trayecto (id_trains, id_stations) values (13, 'oro');
insert into trayecto (id_trains, id_stations) values (37, 'rosa');
insert into trayecto (id_trains, id_stations) values (9, 'naranja');
insert into trayecto (id_trains, id_stations) values (38, 'rosa');
insert into trayecto (id_trains, id_stations) values (20, 'rojo');
insert into trayecto (id_trains, id_stations) values (28, 'rosa');
insert into trayecto (id_trains, id_stations) values (14, 'morado');
insert into trayecto (id_trains, id_stations) values (5, 'cian');
insert into trayecto (id_trains, id_stations) values (1, 'morado');
insert into trayecto (id_trains, id_stations) values (11, 'café');
insert into trayecto (id_trains, id_stations) values (2, 'oro');
insert into trayecto (id_trains, id_stations) values (25, 'cian');
insert into trayecto (id_trains, id_stations) values (30, 'rosa');
insert into trayecto (id_trains, id_stations) values (38, 'verde_olivo');
insert into trayecto (id_trains, id_stations) values (19, 'verde_y_gris');
insert into trayecto (id_trains, id_stations) values (22, 'morado');
insert into trayecto (id_trains, id_stations) values (44, 'café');
insert into trayecto (id_trains, id_stations) values (25, 'amarillo');
insert into trayecto (id_trains, id_stations) values (38, 'verde_olivo');
insert into trayecto (id_trains, id_stations) values (10, 'rojo');
insert into trayecto(id_trains,id_stations)values(12,'verde_y_gris');
insert into trayecto (id_trains, id_stations) values (26, 'rojo');
insert into trayecto (id_trains, id_stations) values (27, 'oro');
insert into trayecto (id_trains, id_stations) values (28, 'morado');
insert into trayecto (id_trains, id_stations) values (29, 'rojo');
insert into trayecto (id_trains, id_stations) values (30, 'oro');
insert into trayecto (id_trains, id_stations) values (31, 'rosa');
insert into trayecto (id_trains, id_stations) values (32, 'naranja');
insert into trayecto (id_trains, id_stations) values (33, 'rosa');
insert into trayecto (id_trains, id_stations) values (34, 'rojo');
insert into trayecto (id_trains, id_stations) values (35, 'rosa');
insert into trayecto (id_trains, id_stations) values (36, 'morado');
insert into trayecto (id_trains, id_stations) values (37, 'cian');
insert into trayecto (id_trains, id_stations) values (38, 'morado');
insert into trayecto(id_trains,id_stations)values(39,'café')
insert into trayecto(id_trains,id_stations)values(40,'oro')
insert into trayecto(id_trains,id_stations)values(41,'cian')
insert into trayecto(id_trains,id_stations)values(42,'rosa')
insert into trayecto(id_trains,id_stations)values(43,'verde olivo')
insert into trayecto(id_trains,id_stations)values(44,'verde y gris')
insert into trayecto(id_trains,id_stations)values(45,'morado')
insert into trayecto(id_trains,id_stations)values(46,'café')
insert into trayecto(id_trains,id_stations)values(47,'amarillo')
insert into trayecto(id_trains,id_stations)values(48,'verde olivo')
insert into trayecto(id_trains,id_stations)values(49,'rojo')
insert into trayecto(id_trains,id_stations)values(1,'verde y gris')