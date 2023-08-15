DROP PROCEDURE IF EXISTS InsertInfos;

DELIMITER //
CREATE PROCEDURE InsertInfos()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 20 DO
        INSERT INTO infos (info_id, user_id, first_name, last_name, tel, address, zip, city) 
        VALUES (
			i,
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
                WHEN i % 20 = 16 THEN CONCAT('Kristine')
                WHEN i % 20 = 18 THEN CONCAT('Christophe')
                WHEN i % 20 = 19 THEN CONCAT('Bob')
                WHEN i % 20 = 0 THEN CONCAT('Richard')
                -- Ajoutez d'autres combinaisons ici
                ELSE CONCAT('Joe', i)
            END,
                CASE
                WHEN i % 20 = 1 THEN CONCAT('Joe')
                WHEN i % 20 = 2 THEN CONCAT('Jane')
                WHEN i % 20 = 3 THEN CONCAT('Smith')
                WHEN i % 20 = 4 THEN CONCAT('Jane')
                WHEN i % 20 = 5 THEN CONCAT('Smith')
                WHEN i % 20 = 6 THEN CONCAT('Bert')
                WHEN i % 20 = 7 THEN CONCAT('Holly')
                WHEN i % 20 = 8 THEN CONCAT('Panzer')
                WHEN i % 20 = 9 THEN CONCAT('Val')
                WHEN i % 20 = 10 THEN CONCAT('Pavoit')
                WHEN i % 20 = 11 THEN CONCAT('Kokaï')
                WHEN i % 20 = 12 THEN CONCAT('Témoin')
                WHEN i % 20 = 13 THEN CONCAT('Dos')
                WHEN i % 20 = 14 THEN CONCAT('Troquet')
                WHEN i % 20 = 15 THEN CONCAT('Panzer')
                WHEN i % 20 = 16 THEN CONCAT('Troquet')
                WHEN i % 20 = 16 THEN CONCAT('Troquet')
                WHEN i % 20 = 18 THEN CONCAT('Dodin')
                WHEN i % 20 = 19 THEN CONCAT('Zen')
                WHEN i % 20 = 0 THEN CONCAT('Pluriel')
				WHEN i % 20 = 1 THEN CONCAT('Donney')
                    -- Ajoutez d'autres combinaisons ici
				ELSE CONCAT('Delamontre' + i)
			END,
			CASE 
				WHEN i % 20 = 1 THEN CONCAT('0621489631')
				WHEN i % 20 = 2 THEN CONCAT('0511480039')
				WHEN i % 20 = 3 THEN CONCAT('0605687639')
				WHEN i % 20 = 4 THEN CONCAT('0288889638')
				WHEN i % 20 = 5 THEN CONCAT('0325089632')
				WHEN i % 20 = 6 THEN CONCAT('0420169031')
				WHEN i % 20 = 7 THEN CONCAT('0683185633')
				WHEN i % 20 = 8 THEN CONCAT('0925489631')
				WHEN i % 20 = 9 THEN CONCAT('0680909636')
				WHEN i % 20 = 10 THEN CONCAT('0625289632')
				WHEN i % 20 = 11 THEN CONCAT('0621489668')
				WHEN i % 20 = 12 THEN CONCAT('0725409632')
				WHEN i % 20 = 13 THEN CONCAT('0615489654')
				WHEN i % 20 = 14 THEN CONCAT('0922480600')
				WHEN i % 20 = 15 THEN CONCAT('0625489635')
				WHEN i % 20 = 16 THEN CONCAT('0226489603')
                WHEN i % 20 = 17 THEN CONCAT('0226489603')
				WHEN i % 20 = 18 THEN CONCAT('0685489632')
				WHEN i % 20 = 19 THEN CONCAT('0725489652')
				WHEN i % 20 = 0 THEN CONCAT('0699489130')
                -- Ajoutez d'autres combinaisons ici
                ELSE CONCAT('065879' + i)
            END,
            CASE 
                WHEN i % 20 = 1 THEN CONCAT('Rue de la Liberté')
                WHEN i % 20 = 2 THEN CONCAT('Avenue des Champs-Élysées Paris')
                WHEN i % 20 = 3 THEN CONCAT('Rue du Vieux Port, Marseile')
                WHEN i % 20 = 4 THEN CONCAT('Rue de la République')
                WHEN i % 20 = 5 THEN CONCAT('Place du Capitole')
                WHEN i % 20 = 6 THEN CONCAT('Rue de la Paix')
                WHEN i % 20 = 7 THEN CONCAT('Rue de la Gare')
                WHEN i % 20 = 8 THEN CONCAT('Rue Saint-Michel')
                WHEN i % 20 = 9 THEN CONCAT('Rue de la Cathédrale')
                WHEN i % 20 = 10 THEN CONCAT('Rue de la Grande Poste')
                WHEN i % 20 = 11 THEN CONCAT('Rue de la Plage')
                WHEN i % 20 = 12 THEN CONCAT('Rue de la Tour Eiffel')
                WHEN i % 20 = 13 THEN CONCAT('Avenue de la Libération')
                WHEN i % 20 = 14 THEN CONCAT('Rue du Vieux Moulin')
                WHEN i % 20 = 15 THEN CONCAT('Place de la Mairie')
                WHEN i % 20 = 16 THEN CONCAT('Rue des Lilas')
                WHEN i % 20 = 17 THEN CONCAT('Avenue Victor Hugo')
                WHEN i % 20 = 18 THEN CONCAT('Rue Saint-Jean')
                WHEN i % 20 = 19 THEN CONCAT('Rue de la Mer')
                WHEN i % 20 = 0 THEN CONCAT('Rue de la Montagne')
                -- Ajoutez d'autres combinaisons ici
                ELSE CONCAT('Rue de la Liberté' + i)
            END,
            CASE 
				WHEN i % 20 = 1 THEN CONCAT('75001')
				WHEN i % 20 = 2 THEN CONCAT('75008')
				WHEN i % 20 = 3 THEN CONCAT('13001')
				WHEN i % 20 = 4 THEN CONCAT('69001')
				WHEN i % 20 = 5 THEN CONCAT('31000')
				WHEN i % 20 = 6 THEN CONCAT('06000')
				WHEN i % 20 = 7 THEN CONCAT('59000')
				WHEN i % 20 = 8 THEN CONCAT('33000')
				WHEN i % 20 = 9 THEN CONCAT('67000')
                WHEN i % 20 = 10 THEN CONCAT('44000')
				WHEN i % 20 = 11 THEN CONCAT('13008')
				WHEN i % 20 = 12 THEN CONCAT('75015')
				WHEN i % 20 = 13 THEN CONCAT('69003')
				WHEN i % 20 = 14 THEN CONCAT('31100')
				WHEN i % 20 = 15 THEN CONCAT('06300')
				WHEN i % 20 = 16 THEN CONCAT('59800')
				WHEN i % 20 = 17 THEN CONCAT('33100')
				WHEN i % 20 = 18 THEN CONCAT('67200')
				WHEN i % 20 = 19 THEN CONCAT('44300')
				WHEN i % 20 = 0 THEN CONCAT('13012')
                -- Ajoutez d'autres combinaisons ici
                ELSE CONCAT('0658' + i)
            END, 
            CASE
                WHEN i % 20 = 1 THEN CONCAT('Paris')
				WHEN i % 20 = 2 THEN CONCAT('Paris')
				WHEN i % 20 = 3 THEN CONCAT('Marseille')
				WHEN i % 20 = 4 THEN CONCAT('Lyon')
				WHEN i % 20 = 5 THEN CONCAT('Toulouse')
				WHEN i % 20 = 6 THEN CONCAT('Nice')
				WHEN i % 20 = 7 THEN CONCAT('Lille')
				WHEN i % 20 = 8 THEN CONCAT('Bordeaux')
				WHEN i % 20 = 9 THEN CONCAT('Strasbourg')
				WHEN i % 20 = 10 THEN CONCAT('Nantes')
				WHEN i % 20 = 11 THEN CONCAT('Marseille')
				WHEN i % 20 = 12 THEN CONCAT('Paris')
				WHEN i % 20 = 13 THEN CONCAT('Lyon')
				WHEN i % 20 = 14 THEN CONCAT('Toulouse')
				WHEN i % 20 = 15 THEN CONCAT('Nice')
				WHEN i % 20 = 16 THEN CONCAT('Lille')
				WHEN i % 20 = 17 THEN CONCAT('Bordeaux')
				WHEN i % 20 = 18 THEN CONCAT('Strasbourg')
				WHEN i % 20 = 19 THEN CONCAT('Nantes')
                WHEN i % 20 = 0 THEN CONCAT('Marseille')
                
                -- Ajoutez d'autres combinaisons ici
                ELSE CONCAT('Marseille' + i)
            END
		);
		SET i = i + 1;
    END WHILE;
END //
DELIMITER ;

-- Appel de la procédure pour insérer les utilisateurs réalistes
CALL InsertInfos();