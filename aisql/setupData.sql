INSERT INTO actor (actor_id, birthDay, first_name, last_name) VALUES
(1, '1947-12-29', 'Ted', 'Danson'),
(2, '1980-07-18', 'Kristen', 'Bell'),
(3, '1971-09-16', 'Amy', 'Poehler'),
(4, '1973-04-03', 'Adam', 'Scott'),
(5, '1978-08-18', 'Andy', 'Samberg'),
(6, '1982-08-19', 'Melissa', 'Fumero'),
(7, '1940-08-03', 'Martin', 'Sheen'),
(8, '1959-11-19', 'Allison', 'Janney'),
(9, '1975-09-18', 'Jason', 'Sudeikis'),
(10, '1976-07-03', 'Hannah', 'Waddingham');

INSERT INTO show (show_id, rating, title, seasons, yearStart, yearEnd, genre) VALUES
(1, 8.2, 'The Good Place', 4, '2016-09-19', '2020-01-30', 'Comedy'),
(2, 8.6, 'Parks and Recreation', 7, '2009-04-09', '2015-02-24', 'Comedy'),
(3, 8.4, 'Brooklyn Nine-Nine', 8, '2013-09-17', '2021-09-16', 'Comedy'),
(4, 8.9, 'The West Wing', 7, '1999-09-22', '2006-05-14', 'Drama'),
(5, 8.8, 'Ted Lasso', 3, '2020-08-14', '2023-03-15', 'Comedy');

INSERT INTO show_actor (actor_id, show_id) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2),
(3, 3),
(5, 3),
(6, 3),
(7, 4),
(8, 4),
(9, 5),
(10, 5);

INSERT INTO actor_emmys (emmy_id, actor_id, type) VALUES
(1, 1, 'Outstanding Lead Actor in a Comedy Series'),
(2, 2, 'Outstanding Special Class Short Format Daytime'),
(3, 3, 'Outstanding Guest Actress In A Comedy Series'),
(4, 5, 'Outstanding Original Music and Lyrics'),
(5, 7, 'Outstanding Guest Actor in a Comedy Series'),
(6, 8, 'Outstanding Lead Actress in a Drama Series'),
(7, 8, 'Outstanding Supporting Actress in a Drama Series'),
(8, 8, 'Outstanding Supporting Actress In A Comedy Series'),
(9, 8, 'Oustanding Guest Actress in a Drama Series'),
(10, 9, 'Outstanding Lead Actor in a Comedy Series'),
(11, 10, 'Outstanding Supporting Actress in a Comedy Series');

INSERT INTO show_emmys (emmy_id, show_id, type) VALUES
(1, 3, 'Oustanding Stund Coordination For A Comedy Series or a Variety Program'),
(2, 4, 'Oustanding Multi-Camera Sound Mixing For A Series Or Special'),
(3, 4, 'Outstanding Drama Series'),
(4, 4, 'Oustanding Single-Camera Picture Editing For A Series'),
(5, 4, 'Oustanding Directing for a Drama Series'),
(6, 4, 'Oustanding Casting For A Drama Series'),
(7, 4, 'Oustanding Single-Camera Sound Mixing for A Series'),
(8, 4, 'Oustanding Cinematography for a single-camera Series'),
(9, 4, 'Oustanding Art Direction for a Single Camera Series'),
(10, 4, 'Outstanding Main Title Theme Music'),
(11, 4, 'Outstanding Writing for a Drama Series'),
(12, 5, 'Oustanding Comedy Series'),
(13, 5, 'Oustanding Sound Mixing for a Comedy or Drama Series (Half-Hour) and Animation'),
(14, 5, 'Oustanding Casting for a Comedy Series'),
(15, 5, 'Oustanding Single Camera Picture Editing for a Comedy Series'),
(16, 5, 'Oustanding Directing for a comedy series'),
(17, 5, 'Oustanding Writing for a Comedy Series'),
(18, 5, 'Oustanding Original Music and Lyrics');

INSERT INTO streaming_service (streaming_id, name, price, show_id) VALUES
(1, 'Netflix', 17.99, 1),
(2, 'Peacock', 13.99, 2),
(3, 'Peacock', 13.99, 3),
(4, 'Max', 16.99, 4),
(5, 'Hulu',18.99, 4),
(6, 'Amazon Prime Video', 8.99, 4),
(7, 'YouTube TV', 82.99, 4),
(8, 'Apple TV+', 9.99, 5);