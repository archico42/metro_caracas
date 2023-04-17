USE metro_caracas;

--Creando la actualizacion de estado para la tabla linea
CREATE TRIGGER update_updated_at_field
BEFORE UPDATE
ON `lines`
FOR EACH ROW
SET NEW.updated_at = NOW();

--Creando la actualizacion de estado para la tabla stations
CREATE TRIGGER update_updated_at_field
BEFORE UPDATE
ON `stations`
FOR EACH ROW
SET NEW.updated_at = NOW();

--Creando la actualizacion de estado para la tabla trains
CREATE TRIGGER update_updated_at_field
BEFORE UPDATE
ON `trains`
FOR EACH ROW
SET NEW.updated_at = NOW();

--Creando la actualizacion de estado para la tabla locations
CREATE TRIGGER update_updated_at_field
BEFORE UPDATE
ON `locations`
FOR EACH ROW
SET NEW.updated_at = NOW();


--Cambiando el estatus y su llegada a cada parada de los drivers
DELIMITER //
CREATE TRIGGER update_active_drivers
AFTER UPDATE
ON `drivers`
FOR EACH ROW
BEGIN

-- Trigger del estatus
    IF NEW.status = 1 THEN
        INSERT INTO `active_drivers` (driver_id) VALUES (NEW.id);
    ELSE
        DELETE FROM `active_drivers` WHERE driver_id = NEW.id;
    END IF; 

END; //

DELIMITER ;

--Generar un evento que actualice cada que un driver llegue a su destino
DELIMITER //
CREATE TRIGGER update_drivers_parada
BEFORE UPDATE
ON `drivers`
FOR EACH ROW
BEGIN

    IF NEW.parada = 1 THEN
		SET NEW.updated_salida = NOW();
	ELSE 
		SET NEW.updated_parada = NOW();
    END IF;

END; //

DELIMITER ;
