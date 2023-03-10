-- Email validation to sent 
DELIMITER $$
CREATE TRIGGER change_email
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
IF NEW.email <> OLD.email
THEN
    SET NEW.valid_email = 0;
END IF;
END
$$
DELIMITER;-- Search bands with style Glam rock
-- Durantion current

SELECT band_name, IFNULL(split, 2020) - IFNULL(formed, 0) AS lifespan 
FROM metal_bands 
WHERE style LIKE '%Glam rock%';