# SQL Homework

Great news G10! The local cinema are having a Marvel Movie Marathon! They have asked you to help maintain their database of movies with times and attendees.

## To access the database:

First, create a database called 'marvel'

```
# terminal
createdb marvel
```

Next, run the provided SQL script to populate your database:

```
# terminal
psql -d marvel -f marvel.sql
```

Use the supplied data as the source of data to answer the questions. Copy the SQL command you have used to get the answer, and paste it below the question, along with the result they gave.

## Questions

1.  Return ALL the data in the 'movies' table. -->

SELECT * FROM movies;

id |                title                | year | show_time
----+-------------------------------------+------+-----------
  1 | Iron Man                            | 2008 | 15:15
  2 | The Incredible Hulk                 | 2008 | 22:05
  3 | Iron Man 2                          | 2010 | 18:05
  4 | Thor                                | 2011 | 13:00
  5 | Captain America: The First Avenger  | 2011 | 22:15
  6 | Avengers Assemble                   | 2012 | 23:25
  7 | Iron Man 3                          | 2013 | 12:05
  8 | Thor: The Dark World                | 2013 | 13:25
  9 | Batman Begins                       | 2005 | 23:55
 10 | Captain America: The Winter Soldier | 2014 | 19:40
 11 | Guardians of the Galaxy             | 2014 | 18:55
 12 | Avengers: Age of Ultron             | 2015 | 21:10
 13 | Ant-Man                             | 2015 | 15:20
 14 | Captain America: Civil War          | 2016 | 22:45
 15 | Doctor Strange                      | 2016 | 22:00
 16 | Guardians of the Galaxy 2           | 2017 | 15:30
(16 rows)

2.  Return ONLY the name column from the 'people' table

SELECT name FROM people;

name        
-------------------
Connel Allison
Robin Bailey
David Calderwood
George Ciurescu
Ally Conway
Christopher Croal
Kevin Frew
Stephen Higgins
CoDeclan Malon
Clare McEwan
Scott Osman
Scott Prentice
Fraser Ross
Minal Sakriya
Mark Sibbald
Louise Stewart
Daniel Tulloch
Iain Wentworth
Melinda Matthews
(19 rows)

3.  Oops! Someone at CodeClan spelled Declan's name wrong! Change it to reflect the proper spelling ('CoDeclan Malon' should be 'Declan Malone').

UPDATE people SET name = 'Declan Malone' WHERE name  = 'CoDeclan Malon';

name        
-------------------
Connel Allison
Robin Bailey
David Calderwood
George Ciurescu
Ally Conway
Christopher Croal
Kevin Frew
Stephen Higgins
Clare McEwan
Scott Osman
Scott Prentice
Fraser Ross
Minal Sakriya
Mark Sibbald
Louise Stewart
Daniel Tulloch
Iain Wentworth
Melinda Matthews
Declan Malone
(19 rows)

4.  Return ONLY your name from the 'people' table.

SELECT name FROM people WHERE name = 'David Calderwood'

name       
------------------
David Calderwood
(1 row)

5.  The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.

DELETE FROM movies WHERE title = 'Batman Begins';

title                
-------------------------------------
Iron Man
The Incredible Hulk
Iron Man 2
Thor
Captain America: The First Avenger
Avengers Assemble
Iron Man 3
Thor: The Dark World
Captain America: The Winter Soldier
Guardians of the Galaxy
Avengers: Age of Ultron
Ant-Man
Captain America: Civil War
Doctor Strange
Guardians of the Galaxy 2
(15 rows)

6.  Create a new entry in the 'people' table with the name of one of the instructors.

INSERT INTO people (name) VALUES ('Debi Skea')

name        
-------------------
Connel Allison
Robin Bailey
David Calderwood
George Ciurescu
Ally Conway
Christopher Croal
Kevin Frew
Stephen Higgins
CoDeclan Malon
Clare McEwan
Scott Osman
Scott Prentice
Fraser Ross
Minal Sakriya
Mark Sibbald
Louise Stewart
Daniel Tulloch
Iain Wentworth
Melinda Matthews
Debi Skea
(20 rows)

7.  Melinda Matthews has decided to hijack our movie evening, Remove her from the table of people.

 DELETE FROM people WHERE name = 'Melinda Matthews' ;

 name        
-------------------
 Connel Allison
 Robin Bailey
 David Calderwood
 George Ciurescu
 Ally Conway
 Christopher Croal
 Kevin Frew
 Stephen Higgins
 CoDeclan Malon
 Clare McEwan
 Scott Osman
 Scott Prentice
 Fraser Ross
 Minal Sakriya
 Mark Sibbald
 Louise Stewart
 Daniel Tulloch
 Iain Wentworth
(18 rows)

8.  The cinema has just heard that they will be holding an exclusive midnight showing of 'Avengers: Infinity War'!! Create a new entry in the
'movies' table to reflect this.

 INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Infinity War', 2018, '00.00');

 id |                title                | year | show_time
----+-------------------------------------+------+-----------
  1 | Iron Man                            | 2008 | 15:15
  2 | The Incredible Hulk                 | 2008 | 22:05
  3 | Iron Man 2                          | 2010 | 18:05
  4 | Thor                                | 2011 | 13:00
  5 | Captain America: The First Avenger  | 2011 | 22:15
  6 | Avengers Assemble                   | 2012 | 23:25
  7 | Iron Man 3                          | 2013 | 12:05
  8 | Thor: The Dark World                | 2013 | 13:25
  9 | Batman Begins                       | 2005 | 23:55
 10 | Captain America: The Winter Soldier | 2014 | 19:40
 11 | Guardians of the Galaxy             | 2014 | 18:55
 12 | Avengers: Age of Ultron             | 2015 | 21:10
 13 | Ant-Man                             | 2015 | 15:20
 14 | Captain America: Civil War          | 2016 | 22:45
 15 | Doctor Strange                      | 2016 | 22:00
 16 | Guardians of the Galaxy 2           | 2017 | 15:30
 17 | Avengers: Infinity War              | 2018 | 00.00
(17 rows)

9.  The cinema would also like to make the Guardians movies a back to back feature. Find out the show time of "Guardians of the Galaxy" and set the show time of "Guardians of the Galaxy 2" to start two hours later.

SELECT show_time FROM movies WHERE title = 'Guardians of the Galaxy 2' ; UPDATE movies SET show_time = '17:30' WHERE title = 'Guardians of the

Galaxy 2' ;
id |           title           | year | show_time
----+---------------------------+------+-----------
 16 | Guardians of the Galaxy 2 | 2017 | 17:30
(1 row)

## Extension

1.  Research how to delete multiple entries from your table in a single command.

DELETE FROM people WHERE name = 'David Calderwood' AND name = 'Mark Sibbald' AND name = 'Stephen Higgins' ;
***NOT WORKING BUT NOT FAR OFF THE EXTENSION****

DELETE FROM people WHERE name LIKE '%Calderwood%' ;
***I DID FIND THIS ONE THAT QUERIES TABLES BEFORE DELETING****
