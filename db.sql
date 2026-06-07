CREATE DATABASE IF NOT EXISTS pawsshop CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE pawsshop;

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS supplies (
    product_id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    category VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    quantity INT NOT NULL
);

-- Seed default user
INSERT INTO users (username, password) VALUES ('admin', 'admin123')
ON DUPLICATE KEY UPDATE username=username;
