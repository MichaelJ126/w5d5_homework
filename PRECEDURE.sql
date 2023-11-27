ALTER TABLE car
ADD COLUMN is_serviced BOOLEAN DEFAULT False;

SELECT *
FROM car;

CREATE OR REPLACE PROCEDURE new_service()
LANGUAGE plpgsql
AS $$
		BEGIN
				UPDATE car
				SET is_serviced = True
				WHERE serial_id IN (
				SELECT serial_id
						FROM service_ticket
);
				COMMIT;
		END;
$$

CALL new_service()

SELECT *
FROM car;

DROP COLUMN is_serviced FROM car;

ALTER TABLE car
DROP COLUMN is_serviced;
		