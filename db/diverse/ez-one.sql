CREATE DATABASE bank;

USE bank;

create table id
(
high_value INTEGER not null,
primary key (high_value)
);

create table bank
(
bank_code INTEGER not null,
name CHAR(50) ,
primary key (bank_code)
);

create table customer
(
cus_nr INTEGER not null,
first_name CHAR(30) ,
last_name CHAR(30) ,
street CHAR(30) ,
zip CHAR(10) ,
city CHAR(30) ,
country CHAR(20) ,
pwd CHAR(10) ,
primary key (cus_nr)
);

create table account
(
acc_nr INTEGER not null,
bank_code INTEGER not null,
balance DOUBLE ,
credit DOUBLE ,
cus_nr INTEGER ,
primary key (acc_nr, bank_code),
foreign key fk_REF_44 (cus_nr)
references customer (cus_nr),
foreign key fk_REF_47 (bank_code)
references bank (bank_code)
);

create table employee
(
emp_nr INTEGER not null,
first_name CHAR(30) ,
last_name CHAR(30) ,
street CHAR(30) ,
zip CHAR(10) ,
city CHAR(30) ,
country CHAR(20) ,
pwd CHAR(10) ,
bank_code INTEGER ,
primary key (emp_nr),
foreign key fk_REF_35 (bank_code)
references bank (bank_code)
);

create table turnover
(
tur_nr INTEGER not null,
bank_code INTEGER ,
acc_nr INTEGER ,
amount DOUBLE ,
receiver_acc INTEGER ,
receiver_bank INTEGER ,
receiver_name CHAR(50) ,
purpose CHAR(50) ,
primary key (tur_nr),
foreign key fk_REF_38 (acc_nr, bank_code)
references account (acc_nr, bank_code)
);

CREATE DATABASE pics;

USE pics;

create table pictures
(
pic_nr INTEGER not null,
name CHAR(30),
pic BLOB,
primary key (pic_nr)
);

create table id
(
high_value INTEGER not null,
primary key (high_value)
);

USE mysql;

UPDATE user Set Password=PASSWORD('root') WHERE User='root';

INSERT INTO user VALUES('localhost','kurs',PASSWORD('kurs'),'Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y');

FLUSH PRIVILEGES;

USE bank;

insert into id values(1001);

insert into bank values(100001, 'First Bank of Java');
insert into bank values(100002, 'Second Bank of Java');
insert into bank values(100003, 'Third Bank of Java');

insert into customer values(100004,"Heinz","Huber","Dorstrasse 4",83024,"Rosenheim","Deutschland","HUBER");
insert into customer values(100005,"Sepp","Schmidt","Dorfplatz 3",83024,"Rosenheim","Deutschland","SCHMIDT");
insert into customer values(100006,"Gustl","Meier","Stadtstrasse 2",83024,"Rosenheim","Deutschland","MEIER");

insert into employee values(100007,"Xaver","Mueller","Hausstrasse 1",83024,"Rosenheim","Deutschland","MUELLER",100001);
insert into employee values(100008,"Gustav","Gerstner","Siemensstrasse 5",83024,"Rosenheim","Deutschland","GERSTNER",100001);
insert into employee values(100009,"Thomas","Daffner","Burgstrasse 9",83024,"Rosenheim","Deutschland","DAFFNER",100001);

insert into account values(100010,100001,123456.12,50000.00,100004);
insert into account values(100011,100001,-5013.56,10000.00,100004);
insert into account values(100012,100001, 4567.89, 10000.00,100005);
insert into account values(100013,100001,26786.32,20000.00,100005);
insert into account values(100014,100001,130.56,1000.00,100005);
insert into account values(100015,100001,-1023.16,10000.00,100006);

insert into turnover values(100016,100001,100010, -1400.00, 678567, 50050012, "Huk Coburg", "Autoversicherung Jahresbeitrag 2001");
insert into turnover values(100017,100001,100010, -2000.00, 323456, 20020011, "Hans Huntz", "Kauf Waschmaschine");
insert into turnover values(100018,100001,100011, -200, 345345, 30020012, "Verlag Heinz Heise", "Jahresabbo c´t");
insert into turnover values(100019,100001,100011, -200, 345345, 30020012, "Verlag Heinz Heise", "Jahresabbo iX");
insert into turnover values(100020,100001,100012, -1000, 209987, 56789012, "Karl Klug","Kauf Video");
insert into turnover values(100021,100001,100012, -2000, 343267, 45678912, "Elektro Werner", "Kauf Stereoanlage");
insert into turnover values(100022,100001,100013, +423.34, 209987, 14567810, "Mediamarkt Rosenheim","Gutschrift für defekten Drucker");
insert into turnover values(100023,100001,100013, -95.95, 234534, 91245598, "BP - Tankstelle Rosenheim","Lastschrifteinzug");
insert into turnover values(100024,100001,100013, +4000, 123222, 445445, "Firma Meier","Lohn für Feb 2001");
insert into turnover values(100025,100001,100014, -50.23, 209987, 567890, "Otto Versand","Rechnung Nr. 234562");
insert into turnover values(100026,100001,100015, 200.45, 209987, 567890, "Harald Herter","Kauf Regal");
insert into turnover values(100027,100001,100015, -1400., 209987, 567890, "Huk","Autoversicherung");

USE pics;

insert into id values(1000);
