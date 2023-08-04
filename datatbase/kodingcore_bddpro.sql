CREATE DATABASE kodingcore_bddpro CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE kodingcore_bddpro;

-- Create table "users"
CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    tel VARCHAR(15),
    password VARCHAR(255),
    role VARCHAR(15)
) ENGINE=InnoDB;

-- Create table "categories"
CREATE TABLE categories (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    description VARCHAR(255)
) ENGINE=InnoDB;

-- Create table "templates"
CREATE TABLE templates (
    template_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    description VARCHAR(255),
    category_id INT,
    image_path VARCHAR(255),
    price DECIMAL(10, 2),
    created_at DATETIME,
    updated_at DATETIME,
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
) ENGINE=InnoDB;

-- Create table "images"
CREATE TABLE images (
    image_id INT PRIMARY KEY AUTO_INCREMENT,
    template_id INT,
    image_path VARCHAR(255),
    FOREIGN KEY (template_id) REFERENCES templates(template_id)
) ENGINE=InnoDB;

-- Create table "tags"
CREATE TABLE tags (
    tag_id INT PRIMARY KEY AUTO_INCREMENT,
    template_id INT,
    tag_name VARCHAR(50),
    FOREIGN KEY (template_id) REFERENCES templates(template_id)
) ENGINE=InnoDB;

-- Create table "quotations"
CREATE TABLE quotations (
    quotation_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    quotation_date DATE,
    content VARCHAR(255),
    expiration_date DATE,
    template_id INT,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (template_id) REFERENCES templates(template_id)
) ENGINE=InnoDB;

-- Create table "appointments"
CREATE TABLE appointments (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    appointment_date DATE,
    appointment_time TIME,
    communication_preference VARCHAR(50),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
) ENGINE=InnoDB;
