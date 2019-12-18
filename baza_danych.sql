DROP TABLE Wykaz_sluzb CASCADE;
DROP TABLE Wykaz_linii CASCADE;
DROP TABLE Kierowcy CASCADE;
DROP TABLE Place CASCADE;
DROP TABLE Pojazdy CASCADE;

CREATE TABLE Wykaz_sluzb(
	Brygada INTEGER NOT NULL,
	ID_kierowcy INTEGER NOT NULL,
	Nr_pojazdu INTEGER NOT NULL,
	Data_sluzby DATE NOT NULL,
	PRIMARY KEY (ID_kierowcy, Data_sluzby)
);
CREATE TABLE Wykaz_linii(
	Brygada INTEGER NOT NULL CHECK (BETWEEN 10000 AND 99999),
	Czas_pracy TIME NOT NULL CHECK (BETWEEN 00:00:00 AND 10:00:00),
	PRIMARY KEY (Brygada)
);
CREATE TABLE Kierowcy(
	ID SERIAL NOT NULL,
	Imie VARCHAR(15) NOT NULL,
	Nazwisko VARCHAR(15) NOT NULL,
	Data_przyjecia DATE NOT NULL CHECK(>'1980-01-01') DEFAULT current_date,
	PRIMARY KEY (ID)
);
CREATE TABLE Pojazdy(
	Nr_pojazdu INTEGER NOT NULL CHECK (BETWEEN 1000 AND 9999),
	Marka VARCHAR(15) NOT NULL,
	PRIMARY KEY (NR_pojazdu)
);
CREATE TABLE Place(
	Pr_dolny_zatrudnienia INTEGER,
	Pr_gorny_zatrudnienia INTEGER,
	Stawka_podstawowa INTEGER NOT NULL,
	Stawka_za_nadgodziny INTEGER NOT NULL
);
