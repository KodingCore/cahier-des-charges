DROP PROCEDURE IF EXISTS InsertRealisticUsers;

DELIMITER //
CREATE PROCEDURE InsertRealisticUsers()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 20 DO
        INSERT INTO users (user_id, username, email, password, role) 
        VALUES (
			i,
            CASE 
                WHEN i % 20 = 1 THEN CONCAT('Joe')
                WHEN i % 20 = 2 THEN CONCAT('Jane')
                WHEN i % 20 = 3 THEN CONCAT('Sarah')
                WHEN i % 20 = 4 THEN CONCAT('Claire')
                WHEN i % 20 = 5 THEN CONCAT('Francis')
                WHEN i % 20 = 6 THEN CONCAT('Kévin')
                WHEN i % 20 = 7 THEN CONCAT('Sophie')
                WHEN i % 20 = 8 THEN CONCAT('Alain')
                WHEN i % 20 = 9 THEN CONCAT('Pierre')
                WHEN i % 20 = 10 THEN CONCAT('Viriginie')
                WHEN i % 20 = 11 THEN CONCAT('Toyö')
                WHEN i % 20 = 12 THEN CONCAT('Michel')
                WHEN i % 20 = 13 THEN CONCAT('Adèle')
                WHEN i % 20 = 14 THEN CONCAT('Maël')
                WHEN i % 20 = 15 THEN CONCAT('Hélene')
                WHEN i % 20 = 16 THEN CONCAT('Halley')
                WHEN i % 20 = 18 THEN CONCAT('Christophe')
                WHEN i % 20 = 19 THEN CONCAT('Bob')
                WHEN i % 20 = 0 THEN CONCAT('Richard')
                -- Ajoutez d'autres combinaisons ici
                ELSE CONCAT('DefaultName', i)
            END,
            CONCAT(
                CASE
                WHEN i % 20 = 2 THEN CONCAT('Jane')
                WHEN i % 20 = 3 THEN CONCAT('Sarah')
                WHEN i % 20 = 4 THEN CONCAT('Claire')
                WHEN i % 20 = 5 THEN CONCAT('Francis')
                WHEN i % 20 = 6 THEN CONCAT('Kévin')
                WHEN i % 20 = 7 THEN CONCAT('Sophie')
                WHEN i % 20 = 8 THEN CONCAT('Alain')
                WHEN i % 20 = 9 THEN CONCAT('Pierre')
                WHEN i % 20 = 10 THEN CONCAT('Viriginie')
                WHEN i % 20 = 11 THEN CONCAT('Toyö')
                WHEN i % 20 = 12 THEN CONCAT('Michel')
                WHEN i % 20 = 13 THEN CONCAT('Adèle')
                WHEN i % 20 = 14 THEN CONCAT('Maël')
                WHEN i % 20 = 15 THEN CONCAT('Hélene')
                WHEN i % 20 = 16 THEN CONCAT('Halley')
                WHEN i % 20 = 18 THEN CONCAT('Christophe')
                WHEN i % 20 = 19 THEN CONCAT('Bob')
                WHEN i % 20 = 0 THEN CONCAT('Richard')
				WHEN i % 20 = 1 THEN CONCAT('Joe')
                    -- Ajoutez d'autres combinaisons ici
                    ELSE CONCAT('default', i)
                END,
                '@example.com'
            ),
            UUID(),
            'user'
        );

        SET i = i + 1;
    END WHILE;
END //
DELIMITER ;

-- Appel de la procédure pour insérer les utilisateurs réalistes
CALL InsertRealisticUsers();





-- CASE WHEN i % 2 = 0 THEN 'John' ELSE 'Jane' END,
  --          CASE WHEN i % 2 = 0 THEN 'Doe' ELSE 'Smith' END,
    --        CASE WHEN i % 2 = 0 THEN 'Sarah' ELSE 'Jane' END,
      --      CASE WHEN i % 2 = 0 THEN 'Claire' ELSE 'Smith' END,
        --    CASE WHEN i % 2 = 0 THEN 'Francis' ELSE 'Bert' END,
--            CASE WHEN i % 2 = 0 THEN 'Kévin' ELSE 'Holly' END,
  --          CASE WHEN i % 2 = 0 THEN 'Jack' ELSE 'Panzer' END,
    --        CASE WHEN i % 2 = 0 THEN 'Alain' ELSE 'Terry' END,
      --      CASE WHEN i % 2 = 0 THEN 'Pierre' ELSE 'Pavoit' END,
        --    CASE WHEN i % 2 = 0 THEN 'Virginie' ELSE 'Val' END,
          --  CASE WHEN i % 2 = 0 THEN 'Toyö' ELSE 'Kokaï' END,
            -- CASE WHEN i % 2 = 0 THEN 'Michel' ELSE 'Témoin' END,
--            CASE WHEN i % 2 = 0 THEN 'Chris' ELSE 'Chris' END,
  --          CASE WHEN i % 2 = 0 THEN 'Maria' ELSE 'Dos' END,
    --        CASE WHEN i % 2 = 0 THEN 'Hélene' ELSE 'Troquet' END,
      --      CASE WHEN i % 2 = 0 THEN 'Halley' ELSE 'Terry' END,
        --    CASE WHEN i % 2 = 0 THEN 'Mark' ELSE 'Panzer' END,
          --  CASE WHEN i % 2 = 0 THEN 'Christophe' ELSE 'Donney' END,
         --   CASE WHEN i % 2 = 0 THEN 'Bob' ELSE 'Zen' END,
--            CASE WHEN i % 2 = 0 THEN 'Richard' ELSE 'Dodin' END,
  --          CASE WHEN i % 2 = 0 THEN 'Sophie' ELSE 'Pluriel' END,
    --        CASE WHEN i % 2 = 0 THEN 'Adèle' ELSE 'Donney' END,
      --      CASE WHEN i % 2 = 0 THEN 'Tristan' ELSE 'Donney' END,
        --    CASE WHEN i % 2 = 0 THEN 'Aline' ELSE 'Zen' END,
          --  CASE WHEN i % 2 = 0 THEN 'Patrick' ELSE 'Dodin' END,
          --  CASE WHEN i % 2 = 0 THEN 'Jeff' ELSE 'Univers' END,
 --           CASE WHEN i % 2 = 0 THEN 'Maël' ELSE 'Ganante' END