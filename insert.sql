INSERT INTO genre (genre_name) VALUES
	 ('джаз'),
	 ('рок-н-ролл'),
	 ('хаус'),
	 ('рэп'),
	 ('хип-хоп');
	
INSERT INTO musician (musician_name) VALUES
	 ('Рыночные отношения'),
	 ('Black Eyed Peas'),
	 ('Луи Армстронг'),
	 ('Elvis Presley'),
	 ('Bill Haley'),
	 ('David Guetta'),
	 ('Avicii');	
	 	 
INSERT INTO gen_mus (genre_id,musician_id) VALUES
	 (1,3),
	 (2,4),
	 (2,5),
	 (4,1),
	 (5,2),
	 (3,6),
	 (3,7);
	
INSERT INTO album (album_name,a_release_year) VALUES
	 ('Пара лет тишины',2018),
	 ('The beginning',2010),
	 ('Hello Dolly',1964),
	 ('Always On My Mind',1985),
	 ('Rock-A-Round The Clock King',1964),
	 ('Tim',2019),
	 ('Listen',2014),
	 ('"2020"',2020);
	
INSERT INTO mus_alb (musician_id,album_id) VALUES
	 (1,1),
	 (1,8),
	 (2,2),
	 (3,3),
	 (4,4),
	 (5,5),
	 (6,6),
	 (7,7);
	 
INSERT INTO track (track_name,album_id,duration) VALUES
	 ('Не всё так просто',1,'2:13'),
	 ('Don''t Stop the Party',2,'6:07'),
	 ('Someday', 2, '4:33'),
	 ('It''s Been a Long, Long Time',3,'2:22'),
	 ('Pieces Of My Life',4,'4:00'),
	 ('Burn That Candle',5,'2:46'),
	 ('Peace of Mind',6,'3:00'),
	 ('Dangerous',7,'3:23'),
	 ('Русь-Матушка',8,'3:45');
	
INSERT INTO collection (collection_name,c_release_year) VALUES
	 ('Русский рэп',2020),
	 ('Rock''n''roll',2018),
	 ('Dance music 2015',2015),
	 ('Retro',2020);
	 
INSERT INTO track_col (track_id,collection_id) VALUES
	 (1,1),
	 (8,1),
	 (3,3),
	 (4,2),
	 (5,2),
	 (2,3),
	 (7,3),
	 (2,4),
	 (3,4),
	 (5,4);