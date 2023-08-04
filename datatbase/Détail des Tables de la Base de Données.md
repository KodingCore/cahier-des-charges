Détail des Tables de la Base de Données
---------------------------------------

#### Table "Users"

* `user_id` (clé primaire) : INT
* `username` : VARCHAR(50) - pseudo d'utilisateur.
* `first_name` : VARCHAR(50) - prénom d'utilisateur.
* `last_name` : VARCHAR(50) - nom d'utilisateur.
* `email` : VARCHAR(100) - adresse e-mail de l'utilisateur.
* `tel` : VARCHAR(15) - numéro de téléphone de l'utilisateur.
* `password` : VARCHAR(255) - mot de passe (hashé) de l'utilisateur.
* `role` : VARCHAR(15) - rôle de l'utilisateur.

### Table "Templates"

* `template_id` (clé primaire) : INT - identifiant unique du template.
* `name` : VARCHAR(100) - nom du template.
* `description` : VARCHAR(255) - description du template.
* `category_id` (clé étrangère) : INT - identifiant de la catégorie associée au template.
* `image_path` : VARCHAR(255) - chemin de l'image représentant le template.
* `price` : DECIMAL(10,2) - prix du template.
* `created_at` : DATETIME - date de création du template.
* `updated_at` : DATETIME - date de dernière mise à jour du template.

# 

### Table "Categories"

* `category_id` (clé primaire) : INT - identifiant unique de la catégorie.
* `name` : VARCHAR(50) - nom de la catégorie.
* `description` : VARCHAR(255) - description de la catégorie.

### Table "Images"

* `image_id` (clé primaire) : INT - identifiant unique de l'image.
* `template_id` (clé étrangère) : INT - identifiant du template auquel l'image est associée.
* `image_path` : VARCHAR(255) - chemin de l'image.

### Table "Tags"

* `tag_id` (clé primaire) : INT - identifiant unique du tag.
* `template_id` (clé étrangère) : INT - identifiant du template associé au tag.
* `tag_name` : VARCHAR(50) - nom du tag. 

### Table "Quotations"

* `quotation_id` (clé primaire) : INT - identifiant unique du devis.
* `user_id` (clé étrangère) : INT - identifiant de l'utilisateur associé au devis.
* `quotation_date` : DATE - date du devis.
* `content` : VARCHAR(255) - contenu du devis.
* `expiration_date` : DATE - date d'expiration du devis.
* `template_id` (clé étrangère) : INT - identifiant du template associé au devis.

### Table "Appointments"

* `appointment_id` (clé primaire) : INT - identifiant unique du rendez-vous.
* `user_id` (clé étrangère) : INT - identifiant de l'utilisateur associé au rendez-vous.
* `appointment_date` : DATE - date du rendez-vous.
* `appointment_time` : TIME - heure du rendez-vous.
* `communication_preference` : VARCHAR(50) - préférence de communication pour le rendez-vous.