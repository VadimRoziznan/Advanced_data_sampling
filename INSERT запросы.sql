-- add genre

insert into
	genre(name)
values
	('Кантри'),
	('Блюз'),
	('Джаз'),
	('Хип-хоп'),
	('Рок')
returning *;

----------------------------------------------------------

-- add artist

insert into
	artist(name)
values
	('Джонни Кэш'),
	('Мерл Хаггард'),
	('Би Би Кинг'),
	('Мадди Уотерс'),
	('Эмине́м'),
	('Баста Раймс'),
	('Агата Кристи'),
	('Би-2'),
	('Limp Bizkit'),
	('Linkin Park'),
	('Рабы Лампы'),
	('Rammstein')
returning *;

----------------------------------------------------------

-- add genreartist

insert into 
	genreartist
values
	(1, 1),
	(1, 2),
	(2, 3),
	(2, 4),
	(3, 2),
	(4, 5),
	(4, 6),
	(5, 8),
	(5, 9),
	(4, 8),
	(4, 9),
	(4, 10),
	(5, 11)
returning *;

----------------------------------------------------------

-- add album

insert into 
	album(name, year)
values
	('At Folsom Prison', 1968),
	('Big City', 1981),
	('Lucille', 1968),
	('Hard Again', 1977),
	('The Eminem Show', 2002),
	('Kamikaze', 2018),
	('Genesis', 2001),
	('Ураган', 1997),
	('Still Sucks', 2021),
	('One More Light', 2017),
	('Это не б…', 2001),
	('Living Things', 2012),
	('Mutter', 2001)
returning *;

----------------------------------------------------------

-- add track

insert into 
	track(name, duration, album_id)
values
	('Orange Blossom Special', 3.5, 1),
	('Orange Blossom Special (Live at Folsom State Prison, Folsom, CA (1st Show)', 3.01, 1),
	('My Favorite Memory', 3.05, 2),
	('Big City', 3.01, 2),
	('Watch Yourself', 5.49, 3),
	('You Move Me So', 2.04, 3),
	('I Can’t Be Satisfied', 3.31, 4),
	('Jealous Hearted Man', 4.25, 4),
	('Say What You Say', 5.10, 5),
	('Business', 4.12, 5),
	('Good Guy', 2.22, 10),
	('Not Alike', 4.48, 10),
	('Betta Stay Up In Your House', 3.18, 6),
	('Pass The Courvoisier', 4.36, 6),
	('Два корабля', 4.30, 7),
	('Легион', 4.35, 7),
	('Empty Hole', 1.53, 8),
	('Snacky Poo', 4.12, 8),
	('Sorry for Now', 3.23, 9),
	('Halfway Right', 3.37, 9),
	('Мой друг', 3.41, 11),
	('Рабы Лампы', 2.30, 11),
	('In My Remainsг', 3.21, 12),
	('Skin to Bone', 2.48, 12),
	('Adios', 3.49, 13)
returning *;

----------------------------------------------------------

-- add artistalbum

insert into 
	artistalbum
values
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 7),
	(8, 8),
	(9, 9),
	(10, 5),
	(11, 10),
	(12, 9),
	(13, 11)
returning *;

----------------------------------------------------------

-- add collection

insert into 
	collection(name, year)
values
	('Мой сборник Джонни Кэш', 2004),
	('Мой сборник Мерл Хаггард', 2008),
	('Мой сборник Би Би Кинг', 2010),
	('Мой сборник Мадди Уотерс', 2012),
	('Мой сборник Эмине́м', 2014),
	('Мой сборник Баста Раймс', 2016),
	('Мой сборник Агата Кристи', 2018),
	('Мой сборник Limp Bizkit', 2020)
returning *;

----------------------------------------------------------

-- add albumtrack

insert into
	albumtrack
values
	(1, 1),
	(1, 3),
	(2, 4),
	(2, 5),
	(3, 6),
	(3, 7),
	(3, 8),
	(3, 9),
	(5, 10),
	(5, 11),
	(5, 21),
	(5, 22),
	(6, 12),
	(6, 13),
	(7, 14),
	(7, 15),
	(8, 17),
	(8, 18)
returning *;