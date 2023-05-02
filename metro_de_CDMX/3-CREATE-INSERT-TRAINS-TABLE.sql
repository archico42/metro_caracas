-- Crear la tabla trains si aún no existe
CREATE TABLE IF NOT EXISTS public.trains
(
    serial_number SERIAL NOT NULL, -- Número de serie del tren
    line_id SERIAL NOT NULL, -- ID de la línea a la que pertenece el tren
    type CHARACTER VARYING NOT NULL, -- Tipo de tren
    year INTEGER, -- Año de fabricación del tren
    active BOOLEAN DEFAULT TRUE, -- Indica si el tren está activo o no
    create_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(), -- Fecha y hora de creación del registro
    update_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(), -- Fecha y hora de la última actualización del registro
    CONSTRAINT trains_pkey PRIMARY KEY (serial_number) -- Establecer la clave primaria en la columna serial_number
);

-- Establecer el propietario de la tabla en postgres
ALTER TABLE public.trains
    OWNER TO postgres;

insert into trains (type, year) values ('McLaughlin, Reilly and Hansen', 2007);
insert into trains (type, year) values ('Hickle LLC', 2006);
insert into trains (type, year) values ('Haag Inc', 2010);
insert into trains (type, year) values ('Kiehn LLC', 2012);
insert into trains (type, year) values ('Skiles and Sons', 1992);
insert into trains (type, year) values ('Ward and Sons', 2011);
insert into trains (type, year) values ('Goldner-DuBuque', 1989);
insert into trains (type, year) values ('Kemmer, Rohan and Jakubowski', 1994);
insert into trains (type, year) values ('Olson, Schulist and Hane', 1994);
insert into trains (type, year) values ('Orn-Jacobs', 2010);
insert into trains (type, year) values ('Johns Inc', 1988);
insert into trains (type, year) values ('Krajcik-Baumbach', 1996);
insert into trains (type, year) values ('Sipes-Hickle', 1995);
insert into trains (type, year) values ('Muller-Lockman', 2010);
insert into trains (type, year) values ('Erdman, Rodriguez and Goodwin', 2009);
insert into trains (type, year) values ('Feest, Nader and Conn', 2004);
insert into trains (type, year) values ('Halvorson Group', 2012);
insert into trains (type, year) values ('Feest and Sons', 2001);
insert into trains (type, year) values ('Kuvalis, Hackett and Fahey', 2010);
insert into trains (type, year) values ('Kuvalis-Heller', 1987);
insert into trains (type, year) values ('Reichel Group', 1999);
insert into trains (type, year) values ('Bogisich Group', 1992);
insert into trains (type, year) values ('Nikolaus-Howell', 2003);
insert into trains (type, year) values ('Fisher Inc', 1992);
insert into trains (type, year) values ('Brekke, Beahan and Rath', 1994)
RETURNING *;
