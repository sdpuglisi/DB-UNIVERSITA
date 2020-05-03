create database universita;

use universita;

create table studente(
Matricola int not null,
Corso_laurea int not null,
Nome varchar(30),
Cognome varchar(30),
Data_nascita date,
Codice_fiscale char(16),
Foto blob,
Primary Key(Matricola, Corso_laurea),
Foreign Key (Corso_laurea) references corso_laurea(Codice)
);

insert into studente(Matricola, Corso_laurea, Nome, Cognome, Data_nascita, Codice_fiscale)
values('709350','01','Dario','Puglisi','1991/07/11','PGLSVT91L11L042E');

insert into studente(Matricola, Corso_laurea, Nome, Cognome, Data_nascita, Codice_fiscale)
values('709457','01','Francesco','Guarino','1993/06/24','GRNFRC93G24E869D');

insert into studente(Matricola, Corso_laurea, Nome, Cognome, Data_nascita, Codice_fiscale)
values('709320','02','Carmela','Florio','1992/06/20','FLRCRM92G60E869I');

insert into studente(Matricola, Corso_laurea, Nome, Cognome, Data_nascita, Codice_fiscale)
values('709563','03','Selene','Di Bella','1991/01/14','DBLSLN91A54L042B');


create table docente(
Matricola int not null,
Dipartimento int not null,
Nome varchar(30),
Cognome varchar(30),
Data_nascita date,
Codice_fiscale char(16),
Foto blob,
Primary Key(Matricola, Dipartimento),
Foreign Key (Dipartimento) references dipartimento(Codice)
);

insert into docente(Matricola, Dipartimento, Nome, Cognome, Data_nascita, Codice_fiscale)
values('105612','010','Mattia','Valente','1980/04/12','VLNMTT80F12L042T');

insert into docente(Matricola, Dipartimento, Nome, Cognome, Data_nascita, Codice_fiscale)
values('105613','020','Selene','Inno','1985/12/12','NNISLN85R52T876O');

insert into docente(Matricola, Dipartimento, Nome, Cognome, Data_nascita, Codice_fiscale)
values('105614','030','Luca','Perrino','1977/04/13','PRNLCA77D13I645H');


create table modulo(
Codice int auto_increment Primary Key,
Nome varchar(30),
Descrizione varchar(150),
CFU int
);

insert into modulo(Codice, Nome, Descrizione, CFU)
values('01','Matematica discreta','Studio di strutture matematiche applicate all'informatica','6');

insert into modulo(Codice, Nome, Descrizione, CFU)
values('02','Progettazione e Produzione Multimediale','Interazione linguaggi e multimedia','8');

insert into modulo(Codice, Nome, Descrizione, CFU)
values('03','Istologia','Studio delle cellule e dei tessuti','9');


create table esame(
Matricola_studente int not null,
Codice_modulo int not null ,
Matricola_docente int not null,
Data date,
Voto int not null,
Note varchar(100),
Primary Key(Codice_modulo,Matricola_Studente),
Foreign Key (Matricola_studente)references studente(Matricola),
Foreign Key (Codice_modulo) references modulo(Codice),
Foreign Key (Matricola_docente)references docente(Matricola)
);

insert into esame(Matricola_studente, Codice_modulo, Matricola_docente, Data, Voto)
values ('709350', '01', '105612', '2019/06/11', '28');

insert into esame(Matricola_studente, Codice_modulo, Matricola_docente, Data, Voto)
values ('709457', '02', '105613', '2019/07/02', '30');

insert into esame(Matricola_studente, Codice_modulo, Matricola_docente, Data, Voto)
values ('709563', '03', '105614', '2019/07/18', '24');


create table corso_laurea(
  Codice int Primary Key,
  Nome varchar(50),
  Descrizione varchar(150)
); 

insert into corso_laurea(Codice, Nome, Descrizione)
  values('01','INF','Informatica');

insert into corso_laurea(Codice, Nome, Descrizione)
  values('02','ECO','Economia');

insert into corso_laurea(Codice, Nome, Descrizione)
  values('03','MED','Medicina');


create table dipartimento(
  Codice int Primary Key,
  Nome varchar(70)
);

insert into dipartimento(Codice, Nome)
    values('010','Informatica e Comunicazione Digitale');

insert into dipartimento(Codice, Nome)
    values('020','Economia e Commercio');

insert into dipartimento(Codice, Nome)
    values('030','Medicina Interna');

create table sede(
  Codice int Primary Key,
  Indirizzo varchar(100),
  Citta varchar (30)
);

insert into sede(Codice, Indirizzo, Citta)
  values('1234', 'Via Vittorio Veneto, 10','Messina');

insert into sede(Codice, Indirizzo, Citta)
  values('1235', 'Via Giacomo Leopardi, 15','Palermo');

insert into sede(Codice, Indirizzo, Citta)
  values('1236', 'Via Etna, 19','Catania');


create table sede_dipartimento(
  Codice_sede int not null,
  Codice_dipartimento int not null,
  Note varchar(150),
  Primary Key(Codice_dipartimento,Codice_sede),
  Foreign Key (Codice_sede) references sede(Codice)
);

insert into sede_dipartimento(Codice_sede, Codice_dipartimento,Note)
  values('1234','1123','null');

insert into sede_dipartimento(Codice_sede, Codice_dipartimento)
  values('1234','1124');

insert into sede_dipartimento(Codice_sede, Codice_dipartimento)
 values('1235','1125');

insert into sede_dipartimento(Codice_sede, Codice_dipartimento)
  values('1235','1126');

insert into sede_dipartimento(Codice_sede, Codice_dipartimento)
  values('1235','1127');

insert into sede_dipartimento(Codice_sede, Codice_dipartimento)
  values('1236','1128');

insert into sede_dipartimento(Codice_sede, Codice_dipartimento)
  values('1236','1129');
