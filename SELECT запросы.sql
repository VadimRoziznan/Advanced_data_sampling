-- 1) количество исполнителей в каждом жанре;

select name n, count(genre_id) from genre g
	left join genreartist ga on  g.id = ga.genre_id  
	group by name;

----------------------------------------------------------

-- 2) количество треков, вошедших в альбомы 2019-2020 годов;

select count(t.id) from album a 
	right join track t on a.id = t.album_id  
	where a."year" between 2019 and 2020
	
----------------------------------------------------------

-- 3) средняя продолжительность треков по каждому альбому;
	
select a."name", avg(t.duration) from album a 
	right join track t on a.id = t.album_id
	group by a."name";

----------------------------------------------------------

-- 4) все исполнители, которые не выпустили альбомы в 2020 году;
--select * from artist a
select a."name" from artist a
	full outer join artistalbum aa on a.id = aa.album_id
	full outer join album al on aa.album_id = al.id
	where a."name" not in (select a."name" from artist a where al."year" = 2020);

----------------------------------------------------------

-- 5) названия сборников, в которых присутствует конкретный исполнитель (выберите сами);

select c."name"  from collection c
	right join albumtrack a on c.id = a.collection_id
	right join track t on a.track_id = t.id
	right join artistalbum aa on aa.album_id = t.album_id 
	right join artist ar on aa.artist_id = ar.id
	where ar."name" = 'Агата Кристи' limit 1;

----------------------------------------------------------

-- 6) название альбомов, в которых присутствуют исполнители более 1 жанра;

select a."name" from album a
	join artistalbum aa on a.id = aa.album_id
	join genreartist g on aa.artist_id = g.artist_id
	group by a."name"
	having count(a."name") > 1;

----------------------------------------------------------

-- 7) наименование треков, которые не входят в сборники;

select t."name"  from track t
	left join albumtrack a on t.id = a.track_id
	left join collection c on a.collection_id = c.id
	where a.track_id is null;

----------------------------------------------------------
	
-- 8) исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);

select a."name"  from artist a
	left join artistalbum aa on a.id = aa.artist_id
	left join track t on t.album_id = aa.album_id
	where t.duration = (select min(duration) from track);

----------------------------------------------------------

-- 9) название альбомов, содержащих наименьшее количество треков.

select a."name", count(t."name") 
	from album a
       join track t 
       on a.id = t.album_id 
	group by a."name" 
	having count(t."name")  = (
        select count(t."name") 
        	from track t
		       join album a 
		       on a.id = t.album_id 
			group by a."name" 
			order by count(t."name") limit 1
		);

