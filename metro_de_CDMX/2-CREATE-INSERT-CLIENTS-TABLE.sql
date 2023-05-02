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

insert into pasajero (nombre, direccion_residencia, fecha_nacimiento) values ('Riordan Emmerson', 'PO Box 72724', '06/12/2019');
insert into pasajero (nombre, direccion_residencia, fecha_nacimiento) values ('Mortimer Letteresse', 'Suite 14', '16/04/2007');
insert into pasajero (nombre, direccion_residencia, fecha_nacimiento) values ('Pansy Stanmer', 'PO Box 82462', '30/11/2014');
insert into pasajero (nombre, direccion_residencia, fecha_nacimiento) values ('Dede Gatrill', 'Suite 58', '08/08/2018');
insert into pasajero (nombre, direccion_residencia, fecha_nacimiento) values ('Sybilla Liddel', 'Apt 1264', '18/04/2014');
insert into pasajero (nombre, direccion_residencia, fecha_nacimiento) values ('Garrett Carus', '18th Floor', '26/11/2019');
insert into pasajero (nombre, direccion_residencia, fecha_nacimiento) values ('Ursala Sever', 'Suite 34', '20/02/2016');
insert into pasajero (nombre, direccion_residencia, fecha_nacimiento) values ('Dewie Greenough', '14th Floor', '18/05/2021');
insert into pasajero (nombre, direccion_residencia, fecha_nacimiento) values ('Raynor Tuminini', 'PO Box 6622', '12/08/2019');
insert into pasajero (nombre, direccion_residencia, fecha_nacimiento) values ('Tudor Kibard', '14th Floor', '28/05/2013');
insert into pasajero (nombre, direccion_residencia, fecha_nacimiento) values ('Viva Haskins', 'Room 42', '01/10/2012');
insert into pasajero (nombre, direccion_residencia, fecha_nacimiento) values ('Nanon MacGray', 'Room 968', '11/09/2021');
insert into pasajero (nombre, direccion_residencia, fecha_nacimiento) values ('Gretal Fosten', '13th Floor', '22/11/2020');
insert into pasajero (nombre, direccion_residencia, fecha_nacimiento) values ('Davy De Fraine', 'Suite 55', '20/11/2005');
insert into pasajero (nombre, direccion_residencia, fecha_nacimiento) values ('Arlina Cressor', '5th Floor', '19/02/2012');
insert into pasajero (nombre, direccion_residencia, fecha_nacimiento) values ('Leonie Widocks', 'Room 1336', '07/12/2020');
insert into pasajero (nombre, direccion_residencia, fecha_nacimiento) values ('Dela Rodd', '19th Floor', '02/02/2014');
insert into pasajero (nombre, direccion_residencia, fecha_nacimiento) values ('Korrie Zorzi', 'Suite 90', '15/02/2011');
insert into pasajero (nombre, direccion_residencia, fecha_nacimiento) values ('Darsey Durban', 'Room 636', '05/09/2020');
insert into pasajero (nombre, direccion_residencia, fecha_nacimiento) values ('Skell Murby', 'PO Box 6255', '12/07/2003');
insert into pasajero (nombre, direccion_residencia, fecha_nacimiento) values ('Giulietta Struthers', 'Apt 1420', '10/05/2009');
insert into pasajero (nombre, direccion_residencia, fecha_nacimiento) values ('Afton Jedrzejczak', '9th Floor', '18/12/2009');
insert into pasajero (nombre, direccion_residencia, fecha_nacimiento) values ('Corny Sedwick', '2nd Floor', '15/10/2009');
insert into pasajero (nombre, direccion_residencia, fecha_nacimiento) values ('Ichabod Goldthorp', '5th Floor', '11/09/2019');
insert into pasajero (nombre, direccion_residencia, fecha_nacimiento) values ('Vinny Oldland', 'Apt 1694', '08/02/2022')
RETURNING *;