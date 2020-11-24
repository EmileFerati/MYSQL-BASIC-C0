-- Taak01 - haal de tabel movies op:
SELECT * FROM movies
SELECT * FROM `movies` WHERE 1
SELECT * FROM movies

-- taak 02 sql
2 SELECT * FROM jaar2015
3 SELECT score FROM jaar2015
4 SELECT region FROM jaar2015
5 SELECT region, score FROM jaar2015
6 SELECT rank, score FROM jaar2016

--taak 02 select where:
select rank=7 FROM jaar 2015 WHERE country='netherlands';
SELECT score FROM jaar2015 WHERE country="Netherlands"
SELECT score FROM jaar2016 WHERE country="Netherlands"
SELECT country FROM jaar2015 WHERE region="North america"
SELECT * FROM jaar2016 WHERE rank=25
SELECT * FROM jaar2016 WHERE score>7087
SELECT country,region FROM jaar2016 WHERE rank<=5
SELECT score FROM jaar2015 WHERE country="Ireland"
SELECT country FROM jaar2016 WHERE region="Latin America and Caribbean"

--taak 03 - AND-OR
SELECT * FROM players WHERE club = "Chelsea" AND nationality = "Spain"
SELECT * FROM players WHERE nationality = "Spain" AND age=17 AND wage = 15000;
SELECT * FROM players WHERE club = "Liverpool" AND age>20
SELECT * FROM players WHERE club = "Ajax" AND nationality = "Netherlands"
SELECT * FROM players WHERE club = "Ajax" AND nationality != "Netherlands"
SELECT name,age FROM players WHERE club="Az alkmaar"
SELECT name,age,club FROM players WHERE club="Az alkmaar"
SELECT name,wage FROM players WHERE club = "Manchester city" AND nationality = "Brazil" 
SELECT * FROM players WHERE age=30  AND wage < 10000;
SELECT name,age FROM players WHERE nationality="Spain" OR nationality="Portugal"
SELECT name,age,club FROM players WHERE nationality="Portugal"  x
SELECT name,club FROM players WHERE age>40  AND wage > 10000;
SELECT * FROM players WHERE nationality = "Netherlands" AND club = "Ajax" OR club= "FC Utrecht" AND nationality="Netherlands"
SELECT * FROM players WHERE nationality = "England" AND age>20 AND wage>100000
SELECT name,age FROM players WHERE nationality= "Argentina" OR nationality="Brazil" AND age>25;

--taak04-Functions-Alias
SELECT Max(wage) As hoogste_loon_FCutrecht_speler FROM players WHERE club = "FC Utrecht";
SELECT AVG(wage) AS FCutrecht_wage FROM players WHERE club = "FC Utrecht";
SELECT AVG(wage) AS som_wage FROM players WHERE club = "FC Groningen"; 
SELECT Count(*) As Manchesters_spelers_aantal FROM players WHERE club  = "Manchester United" + "Manchester City"
SELECT AVG(wage) AS avg_wage FROM players WHERE nationality="Netherlands"
SELECT AVG(wage) AS avg_wage FROM players WHERE age<20;
SELECT AVG(wage) AS avg_wage FROM players WHERE age>20;
SELECT club, SUM(wage) AS sum_wage FROM players WHERE club = "Chelsea"; (navragen)
SELECT AVG(age) AS avg_age FROM players 
SELECT club, SUM(wage) AS sum_wage, AVG(value) AS avg_value FROM players WHERE club = "Liverpool";

--taak03-delete players
DELETE FROM players WHERE Name='David Silva'
DELETE FROM players WHERE club='Willem II'
DELETE FROM players WHERE club='FC Barcelona' AND nationality="Belgium"
DELETE FROM players WHERE age>37
DELETE FROM players WHERE id="167905" OR id="169595"

--taak04
SELECT * FROM `players` WHERE id= 198329;
DELETE FROM players WHERE id = 198329

--Eindopdracht//
SELECT * FROM `videogamesales`
SELECT name FROM videogamesales WHERE year=1999
SELECT* FROM videogamesales WHERE genre="Sports"
SELECT name,platform FROM videogamesales WHERE year>1990 and year<2005
SELECT Count(*) As videogames_spellen_aantal FROM videogamesales 
SELECT AVG(EU_Sales) AS avg_eusales FROM videogamesales WHERE genre = "Puzzle"
SELECT name,genre,publisher FROM videogamesales WHERE JP_Sales >532
SELECT  publisher, SUM(Global_Sales) AS "werelwijd verkocht" FROM videogamesales
SELECT name, year FROM `videogamesales` WHERE genre= "Racing" AND publisher="Nintendo" OR genre="Racing" AND publisher="Activision"
SELECT AVG(NA_Sales) AS verkoop_aantallen_in_Noord_Amerika, AVG(EU_Sales) AS verkoop_aantallen_in_Europa, AVG(JP_Sales) AS verkoop_aantallen_in_Japan FROM videogamesales 
DELETE FROM videogamesales WHERE name='Halo 2'
DELETE  FROM videogamesales WHERE publisher="Ubisoft" AND year=2012
DELETE  FROM videogamesales WHERE publisher="Nintendo" AND genre= "Adventure"
DELETE  FROM videogamesales WHERE publisher="Nintendo" AND Global_Sales<1000
DELETE  FROM videogamesales WHERE year=1997 AND NA_Sales >2000