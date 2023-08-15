DROP PROCEDURE IF EXISTS InsertMessages;

DELIMITER //
CREATE PROCEDURE InsertMessages()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 11 DO
        INSERT INTO messages (message_id, user_id, subject, content, send_date_time) 
        VALUES (
			i,
            i,
            CASE 
                WHEN i % 11 = 1 THEN CONCAT('Help!')
                WHEN i % 11 = 2 THEN CONCAT('Mot de passe')
                WHEN i % 11 = 3 THEN CONCAT('Editer mes infos?')
                WHEN i % 11 = 4 THEN CONCAT('RDV')
                WHEN i % 11 = 5 THEN CONCAT('Rendez-Vous')
                WHEN i % 11 = 6 THEN CONCAT('Changement de plan!')
                WHEN i % 11 = 7 THEN CONCAT("besoin d'aide")
                WHEN i % 11 = 8 THEN CONCAT('RDV téléphonique')
                WHEN i % 11 = 9 THEN CONCAT('what?')
                WHEN i % 11 = 10 THEN CONCAT('Devis Janvier 2023')
                WHEN i % 11 = 0 THEN CONCAT('accord de mission')
                -- Ajoutez d'autres combinaisons ici
                ELSE CONCAT('Help ', i)
            END,
                CASE
                WHEN i % 11 = 1 THEN CONCAT("Bonjour, je crois que j'ai égaré mon mot de passe. Comment puis-je le réinitialisé?")
                WHEN i % 11 = 2 THEN CONCAT("Bonjour, comment puis-je le réinitialisé?")
                WHEN i % 11 = 3 THEN CONCAT("Ou dois-je aller pour modifier mes infos? J'ai un message qui me dis de mettre à jour mes infos")
                WHEN i % 11 = 4 THEN CONCAT("Bonjour, je voudrais prendre un RDV avec vous. Quand seriez-vous disponible?")
                WHEN i % 11 = 5 THEN CONCAT("C'est ok pour le RDV dont nous avons parlé. Le 21 Octobre. Cordiallement")
                WHEN i % 11 = 6 THEN CONCAT("Stop! On change tout le projet! Je paierai les frais sup', j'tenvoie les news")
                WHEN i % 11 = 7 THEN CONCAT("Bonjour, comment changer mon username?")
                WHEN i % 11 = 8 THEN CONCAT("Je suis d'accord pour la date du RDV téléphonique, au sujet du projet de la gestions de nos graines")
                WHEN i % 11 = 9 THEN CONCAT('what?')
                WHEN i % 11 = 10 THEN CONCAT("Bonsoir, j'accepte votre dernier devis. Nous nous verront lors du rendez-vous. Bonne soirée à vous")
                WHEN i % 11 = 0 THEN CONCAT("C'est ok pour notre projet!")
                    -- Ajoutez d'autres combinaisons ici
				ELSE CONCAT('Delamontre' + i)
			END,
			CASE 
				WHEN i % 11 = 1 THEN CONCAT("2023-07-15 08:05:19")
                WHEN i % 11 = 2 THEN CONCAT("2023-07-26 08:30:34")
                WHEN i % 11 = 3 THEN CONCAT("2023-07-27 12:15:44")
                WHEN i % 11 = 4 THEN CONCAT("2023-07-27 12:30:25")
                WHEN i % 11 = 5 THEN CONCAT("2023-08-01 14:30:45")
                WHEN i % 11 = 6 THEN CONCAT("2023-08-02 16:00:45")
                WHEN i % 11 = 7 THEN CONCAT("2023-08-02 16:28:16")
                WHEN i % 11 = 8 THEN CONCAT("2023-08-06 16:30:17")
                WHEN i % 11 = 9 THEN CONCAT('2023-08-10 18:30:08')
                WHEN i % 11 = 10 THEN CONCAT("2023-08-12 19:18:50")
                WHEN i % 11 = 0 THEN CONCAT("2023-08-15 20:20:45")
                -- Ajoutez d'autres combinaisons ici
                ELSE CONCAT('2023-08-1' + i + ' 20:20:45')
            END
		);
		SET i = i + 1;
    END WHILE;
END //
DELIMITER ;

-- Appel de la procédure pour insérer les utilisateurs réalistes
CALL InsertMessages();