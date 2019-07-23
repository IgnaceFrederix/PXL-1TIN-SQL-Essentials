CREATE TABLE magazijnArtikelen
(magazijnnummer number(7),
artikelnummer varchar2(10),
aantal_items number(7),
CONSTRAINT mA_magazijnrArtikelnr_pk PRIMARY KEY(magazijnnummer, artikelnummer),
CONSTRAINT mA_magazijnnummre_fk FOREIGN KEY (magazijnnummer) REFERENCES Magazijn(magazijnnummer))
/
