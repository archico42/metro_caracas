--Creando una funcion que genere la distancia entre 2 puntos

DELIMITER //
CREATE PROCEDURE calculate_distance_between_lines(
    IN station_one POINT,
    IN station_two POINT,
    IN meters BOOLEAN
)
BEGIN

    IF meters THEN

        SELECT
        ST_Distance_Sphere(station_one, station_two) AS distances;

    ELSE

        SELECT
        ST_Distance_Sphere(station_one, station_two) / 1000 AS distances;

    END IF;

END //

DELIMITER //

--Generando una funcion preparada que me diga la estacion y linea que pertenece
CREATE PROCEDURE get_line_stations(
    IN line_name VARCHAR(15)
)
BEGIN


    DECLARE line_id BIGINT(20);

    SELECT id
    INTO line_id
    FROM `lines`
    WHERE name = line_name
    COLLATE utf8mb4_unicode_ci;


    SET @sql = CONCAT("
        SELECT
            `lines_stations`.`id` AS relation_id,
            `lines`.`name` AS line_name,
            `stations`.`name` AS station_name
        FROM `lines_stations`
        INNER JOIN `stations`
        ON `stations`.`id` = `lines_stations`.`station_id`
        INNER JOIN `lines`
        ON `lines`.`id` = `lines_stations`.`line_id`
        WHERE `lines_stations`.`line_id` = ", line_id);

    PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

END //

DELIMITER ;

--Generando una funcion preparada que me diga el conductor y la estacion que se encuentra
DELIMITER //

CREATE PROCEDURE SP_INS_TEMP_DRIVER (IN stacion_actual TIMESTAMP)

BEGIN 

DECLARE station_actual_id BIGINT(160);
SELECT `id`
INTO station_actual_id
FROM `stations`
WHERE name = station_actual
COLLATE utf8mb4_unicode_ci;

SET @st_dv = CONCAT ("

        SELECT
            `drivers`.`id` AS relation_id,
            `driver`.`update_parada` AS stacion_actual,
            `stations`.`name` AS station_name
        FROM `driver`
        INNER JOIN `stations`
        ON `stations`.`id` = `driver`.`station_id`
        WHERE `driver`.`station` = ", line_id
);
    PREPARE stmt0 FROM @st_dv;
    EXECUTE stmt0;
    DEALLOCATE PREPARE stmt;


END //

DELIMITER ;