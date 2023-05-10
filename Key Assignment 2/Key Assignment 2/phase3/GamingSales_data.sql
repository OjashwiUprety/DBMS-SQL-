USE uprety003_GamingSales;
INSERT INTO game (game_id, genre_id, name, release_year ) VALUES
(5,1,'Spider Man','2020-07-04'),
(3,2,'Bat man','2020-09-23'),
(2,4,'balance','2020-08-06'),
(1,3,'CounterStrike','2020-06-07'),
(4,5,'GTA Vicecity','2020-03-21');

INSERT INTO customer (customer_id, game_id, comment, rating ) VALUES
(4,1, 'FUN', 5),
(2,3, 'Loved it', 8),
(3,2, 'Awsome.', 9),
(5,4, 'Best game ever.',9),
(1,5, 'Addicting', 8);

INSERT INTO genre (genre_id,genre_name) VALUES
(4,'Action Adventure'),
(3,'Shooter'),
(2,'Puzzlers'),
(1,'Board game'),
(5,'Sandbox');

INSERT INTO game_publisher (game_publisher_id,game_id, publisher_id) VALUES
(2,1,3),
(1,2,2),
(3,5,4),
(4,3,1),
(5,4,5);

INSERT INTO platform (platform_id, platform_name) VALUES
(3,'Roblox'),
(4,'X Box'),
(5,'Nintendo'),
(2,'Play Station'),
(1,'Wii U');


INSERT INTO  publisher( publisher_id, publisher_name) VALUES
(5,'Sony'),
(4,'Microsoft'),
(2,'Nintendo'),
(1,'Tencent Game'),
(3,'Miniclip');

INSERT INTO game_platform(game_platform_id,game_publisher_id, platform_id ) VALUES
(4,1, 3),
(5,2, 4),
(1,5 ,2),
(2,4, 1),
(3,3, 5);

INSERT INTO region_sales (region_id,game_plaTform_id,sales ) VALUES
(3,1,200),
(2,5,400),
(4,3,200),
(1,4,2500),
(5,2,800);

INSERT INTO region (region_id,region_name) VALUES
(5,'Florida'),
(2,'Texas'),
(1,'Cleveland'),
(3,'Erie'),
(4,'Ohio');