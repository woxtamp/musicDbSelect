-- название и год выхода альбомов, вышедших в 2018 году:
SELECT name, prod_year FROM Album
    WHERE prod_year = 2018;

/*
получаем следующие результаты:

Проклятье морей 2018
The Wait 2018
Чёрное солнце 2018
*/

-- название и продолжительность самого длительного трека:
SELECT name, duration FROM Song
	WHERE duration = (SELECT MAX(duration) FROM Song);

/*
получаем следующие результаты (в секундах):

Варяг 398
*/

-- название треков, продолжительность которых не менее 3,5 минуты:
SELECT name FROM Song WHERE duration > 210
    ORDER BY name;

/*
получаем следующие результаты (в алфавитном порядке):

The Wait
Варяг
Девочка-пай
Мой друг
Никогда
Тентакли
Философский камень
Эра Люцифера
*/

-- названия сборников, вышедших в период с 2018 по 2020 год включительно:
SELECT name FROM Collection WHERE prod_year BETWEEN 2018 AND 2020
    ORDER BY name;

/*
получаем следующие результаты (в алфавитном порядке):

Классика русского рока
Лучшая музыка в машину
Лучшие песни 2019
Русские песни
Хиты Billie Eilish
Хиты русского рока 2020
*/

-- исполнители, чье имя состоит из 1 слова:
SELECT name FROM Singer WHERE name not LIKE '% %'
    ORDER BY name;

/*
получаем следующие результаты (в алфавитном порядке):

Metallica
OXXXYMIRON
Ария
Би-2
Каста
*/

-- название треков, которые содержат слово "мой"/"my":
SELECT name FROM Song WHERE name ILIKE '%мой%'
    ORDER BY name;