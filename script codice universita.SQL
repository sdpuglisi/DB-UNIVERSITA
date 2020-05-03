use universita;


insert into studente(Matricola, Corso_laurea, Nome, Cognome, Data_nascita, Codice_fiscale, Foto)
	values ('111111','99','Giancarlo','Tommasino','1993/11/13','TMMGNC93E11E675T',null);


insert into docente(Matricola, Dipartimento, Nome, Cognome, Data_nascita, Codice_fiscale)
	values('222222','111','Camillo','Sassi','12/03/1988','SSICML88F12R789U');

insert into esame(Matricola_studente, Codice_modulo, Matricola_docente, Data, Voto)
	values ('121212','99','555555','12/05/2019','30');

