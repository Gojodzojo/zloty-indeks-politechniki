INSERT INTO opiekunowie VALUES
	(1, 'Katarzyna', 'Nogły', 666666666, 'dfsl@ss.pl'),
  	(2, 'Marcin', 'Adamczyk', 666666666, 'dfsl@ss.pl'),
  	(3, 'Grzegorz', 'Łopatka', 666666666, 'dfsl@ss.pl');

INSERT INTO uczniowie VALUES
	(1, 'Mateusz', 'Goik', '2003-06-06', 'Wilcza', 1, 2),
	(2, 'Magdalena', 'Hanak', '2003-11-21', 'Rybnik', 2, NULL),
	(3, 'Łukasz', 'Goik', '2014-13-06', 'Rybnik', 2, 3);


INSERT INTO typy_sprawdzianow VALUES
    ('kartkówka', 2),
    ('klasówka', 3),
    ('test', 1);

INSERT INTO sprawdziany VALUES 
    (1, 'Matematyczny', 'I', 'matematyczny.pdf', 'kartkówka'),
    (2, 'Językowy', 'II', 'językowy.pdf', 'klasówka'),
    (3, 'Humor', 'III', 'humor.pdf', 'test');

INSERT INTO oceny VALUES
    (1, 1, '2017-01-01', 1, 1),
    (2, 5, '2018-01-01', 2, 1),
    (3, 6, '2019-01-01', 3, 1),
    (4, 7, '2019-10-09', 1, 2),
    (5, 8, '2003-04-11', 2, 2),
    (6, 9, '2018-3-05', 3, 2),
    (7, 1, '2018-3-05', 2, 3),
    (8, 1, '2018-3-05', 3, 2),
    (9, 1, '2018-3-05', 2, 3),
    (10, 1, '2018-3-05', 2, 3),
    (11, 3, '2020-6-11', 1, 2);