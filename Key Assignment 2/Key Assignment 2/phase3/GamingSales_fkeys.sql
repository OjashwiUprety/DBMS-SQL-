USE uprety003_GamingSales;
ALTER TABLE game
ADD FOREIGN KEY (genre_id) REFERENCES genre (genre_id) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE customer
ADD FOREIGN KEY (game_id) REFERENCES game (game_id) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE game_publisher
ADD FOREIGN KEY (game_id) REFERENCES game (game_id) ON DELETE CASCADE ON UPDATE CASCADE,
ADD FOREIGN KEY (publisher_id) REFERENCES publisher (publisher_id) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE game_platform
ADD FOREIGN KEY (game_publisher_id) REFERENCES game_publisher (game_publisher_id) ON DELETE CASCADE ON UPDATE CASCADE,
ADD FOREIGN KEY (platform_id) REFERENCES platform (platform_id) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE region_sales
ADD FOREIGN KEY (region_id) REFERENCES region (region_id) ON DELETE CASCADE ON UPDATE CASCADE,
ADD FOREIGN KEY (game_platform_id) REFERENCES game_platform (game_platform_id) ON DELETE CASCADE ON UPDATE CASCADE;
