CREATE TABLE opiekunowie (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    imie VARCHAR(20) NOT NULL,
    nazwisko VARCHAR(20) NOT NULL,
    nr telefonu VARCHAR(20) NOT NULL,
    adres_mailowy VARCHAR(20) NOT NULL
);

CREATE TABLE uczniowie (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    imię VARCHAR(20) NOT NULL,
    nazwisko VARCHAR(20) NOT NULL,
    data_urodzenia DATE NOT NULL,
    miejsce_zamieszkania VARCHAR(20) NOT NULL,
    opiekun_id INTEGER NOT NULL,
    opiekun_id2 INTEGER,
    FOREIGN KEY (opiekun_id) REFERENCES opiekun(id),
    FOREIGN KEY (opiekun_id2) REFERENCES opiekun(id)
);

CREATE TABLE typy_sprawdzianow (
    typ VARCHAR(20) PRIMARY KEY NOT NULL,
    waga INTEGER NOT NULL
);

CREATE TABLE sprawdziany (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    opis VARCHAR(50) NOT NULL,
    poziom VARCHAR(20) NOT NULL,
    sciezka_do_pliku VARCHAR(100) NOT NULL,
    typ VARCHAR(20) NOT NULL,
    FOREIGN KEY (typ) REFERENCES typy_sprawdzianow(typ)
);

CREATE TABLE oceny (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    ocena INTEGER NOT NULL,
    data_otrzymania DATE NOT NULL,
    sprawdzian_id INTEGER NOT NULL,
    uczen_id INTEGER NOT NULL,
    FOREIGN KEY (sprawdzian_id) REFERENCES sprawdziany(id) ON DELETE RESTRICT,
    FOREIGN KEY (uczen_id) REFERENCES uczniowie(id) ON DELETE CASCADE
);