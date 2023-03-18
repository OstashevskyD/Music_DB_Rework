-- Количество исполнителей в каждом жанре
SELECT genre_name, COUNT(artist_id) artist_q FROM genre g
JOIN genreartist ga ON g.genre_id = ga.genre_id
GROUP BY g.genre_name
ORDER BY artist_q DESC;

--Количество треков, вошедших в альбомы 2019–2020 годов
SELECT COUNT(song_name) from song s 
join album a on s.album_id = a.album_id
where album_year between 2019 and 2020;

--Средняя продолжительность треков по каждому альбому
SELECT album_name, AVG(song_duration) avg_song FROM song s
join album a on s.album_id = a.album_id
GROUP BY a.album_name
order by avg_song desc;

--Все исполнители, которые не выпустили альбомы в 2020 году
select artist_name from artists a
where artist_name not in (
	select artist_name from artists a
	join artistsalbum aa on a.artist_id = aa.artist_id
	join album al on aa.album_id = al.album_id
	where album_year = 2020
);

-- Названия сборников, в которых присутствует конкретный исполнитель
select distinct compilation_name from compilation c 
join songcompilation sc on c.compilation_id = sc.compilation_id 
join song s on sc.song_id = s.song_id 
join album a on s.album_id = a.album_id 
join artistsalbum aa on a.album_id = aa.album_id 
join artists art on aa.artist_id = art.artist_id 
where artist_name = 'Drake';

-- Названия альбомов, в которых присутствуют исполнители более чем одного жанра
select album_name, COUNT(*) FROM genre g
join genreartist ga on g.genre_id = ga.genre_id 
join artistsalbum aa on ga.artist_id = aa.artist_id 
join album a on aa.album_id = a.album_id 
group by album_name
having COUNT(*) > 1;

-- Названия альбомов, содержащих наименьшее количество треков.
select count(song_name), album_name from song s
join album a on s.album_id = a.album_id
group by album_name
having COUNT(song_name) = (
    select COUNT(song_name) from song s
    join album a on s.album_id = a.album_id
    group by album_name
    order by COUNT(song_name)
    limit 1
);



