DROP DATABASE IF EXISTS uprety003_GamingSales;
CREATE DATABASE IF NOT EXISTS uprety003_GamingSales;
USE uprety003_GamingSales;

Create Table game 
(
    game_id INT PRIMARY KEY,
    genre_id INT NOT NULL,
    name VARCHAR(50),
    release_year DATE
    -- FOREIGN KEY (genre_id) REFERENCES genre (genre_id) ON DELETE CASCADE ON UPDATE CASCADE;
);

CREATE TABLE customer
(
customer_id INT PRIMARY KEY,
game_id INT NOT NULL,
comment VARCHAR(50),
rating DOUBLE
-- FOREIGN KEY (game_id) REFERENCES game (game_id) ON DELETE CASCADE ON UPDATE CASCADE;
);

CREATE TABLE genre
(
    genre_id INT PRIMARY KEY,
    genre_name VARCHAR(50)

);
CREATE TABLE game_publisher
(
game_publisher_id INT PRIMARY KEY,
game_id INT NOT NULL,
publisher_id INT NOT NULL
-- FOREIGN KEY (game_id) REFERENCES game (game_id) ON DELETE CASCADE ON UPDATE CASCADE;
-- FOREIGN KEY (publisher_id) REFERENCES publisher (publisher_id) ON DELETE CASCADE ON UPDATE CASCADE;
);

CREATE TABLE platform
(
    platform_id INT PRIMARY KEY,
    platform_name VARCHAR(50)

);

CREATE TABLE publisher
(
    publisher_id INT PRIMARY KEY,
    publisher_name VARCHAR(50)
);

CREATE TABLE game_platform
(
game_platform_id INT PRIMARY KEY,
game_publisher_id INT NOT NULL,
platform_id INT NOT NULL
-- FOREIGN KEY (game_publisher_id) REFERENCES game_publisher (game_publisher_id) ON DELETE CASCADE ON UPDATE CASCADE;
-- FOREIGN KEY (platform_id) REFERENCES platform (platform_id) ON DELETE CASCADE ON UPDATE CASCADE;

);

CREATE TABLE region_sales
(
    region_id INT NOT NULL,
    game_platform_id INT NOT NULL,
    sales INT
    -- FOREIGN KEY (region_id) REFERENCES region (region_id) ON DELETE CASCADE ON UPDATE CASCADE;
    -- FOREIGN KEY (game_platform_id) REFERENCES game_platform (game_platform_id) ON DELETE CASCADE ON UPDATE CASCADE;

);

CREATE TABLE region
(
    region_id INT PRIMARY KEY,
    region_name VARCHAR(50)
);
