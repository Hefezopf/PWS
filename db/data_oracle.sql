DROP TABLE Invoices;

CREATE TABLE Invoices (
  invoice_id NUMBER(11) NOT NULL,
  partner_id NUMBER(11) default NULL,
  create_date TIMESTAMP default NULL,
  send_date TIMESTAMP default NULL,
--  create_date varchar(27) default NULL,
--  send_date varchar(27) default NULL,
  order_total BINARY_FLOAT default NULL,
  order_amount NUMBER(11) default NULL,
  invoice_total BINARY_FLOAT default NULL,
  PRIMARY KEY (invoice_id)
);

--
-- Daten für Tabelle Invoices
--
--INSERT INTO Invoices VALUES (2, 1, to_date('01.01.2014 16:10:45', 'DD.MM.YYYY HH24:MI:SS'), to_date('01.01.2014 16:10:45', 'DD.MM.YYYY HH24:MI:SS'), 19.8, 1, 0.1);

INSERT INTO Invoices VALUES (1, 1, timestamp'2006-3-15 17:44:15', timestamp'2006-3-15 17:44:15', 19.6, 1, 0.1);
INSERT INTO Invoices VALUES (2, 1, timestamp'2006-4-7 12:45:37', timestamp'2006-4-7 12:45:37', 19.8, 1, 0.1);
INSERT INTO Invoices VALUES (3, 2, timestamp'2006-4-7 12:45:37', timestamp'2006-4-7 12:45:37', 25.18, 1, 0.1);
INSERT INTO Invoices VALUES (9, 2, timestamp'2006-4-9 8:50:49', timestamp'2006-4-9 8:50:49', 25.18, 1, 0.1);
INSERT INTO Invoices VALUES (8, 1, timestamp'2006-4-9 8:50:49', timestamp'2006-4-9 8:50:49', 39.4, 2, 0.2);
INSERT INTO Invoices VALUES (6, 1, timestamp'2006-4-7 14:1:40', timestamp'2006-4-7 14:1:40', 19.6, 1, 0.1);
INSERT INTO Invoices VALUES (7, 2, timestamp'2006-4-7 14:1:40', timestamp'2006-4-7 14:1:40', 25.18, 1, 0.1);
INSERT INTO Invoices VALUES (10, 1, timestamp'2006-4-9 11:13:29', timestamp'2006-4-9 11:13:29', 19.6, 1, 0.1);
INSERT INTO Invoices VALUES (11, 100, timestamp'2006-4-9 11:13:29', timestamp'2006-4-9 11:13:29', 4500, 2, 0.2);
INSERT INTO Invoices VALUES (12, 1, timestamp'2006-4-9 11:52:17', timestamp'2006-4-9 11:52:17', 39.2, 2, 0.2);
INSERT INTO Invoices VALUES (13, 1, timestamp'2006-5-9 5:54:54', timestamp'2006-5-9 5:54:54', 78.4, 4, 0.4);
INSERT INTO Invoices VALUES (14, 2, timestamp'2006-5-9 5:54:54', timestamp'2006-5-9 5:54:54', 50.36, 2, 0.2);
INSERT INTO Invoices VALUES (15, 1, timestamp'2006-7-9 7:52:38', timestamp'2006-7-9 7:52:38', 29.6, 1, 0.1);
INSERT INTO Invoices VALUES (16, 2, timestamp'2006-8-9 6:30:58', timestamp'2006-8-9 6:30:58', 25.18, 1, 0.1);
INSERT INTO Invoices VALUES (17, 117, timestamp'2006-8-9 6:30:59', timestamp'2006-8-9 6:30:59', 1700, 1, 0);
INSERT INTO Invoices VALUES (18, 1, timestamp'2006-11-1 7:19:42', timestamp'2006-11-1 7:19:42', 108.4, 4, 0.4);
INSERT INTO Invoices VALUES (19, 2, timestamp'2006-11-1 7:19:42', timestamp'2006-11-1 7:19:42', 42.57, 1, 0.1);
INSERT INTO Invoices VALUES (20, 1, timestamp'2006-12-1 21:26:37', timestamp'2006-12-1 21:26:37', 29.7, 1, 0.1);
INSERT INTO Invoices VALUES (21, 121, timestamp'2006-12-1 21:26:37', timestamp'2006-12-1 21:26:37', 333, 1, 0.1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle Partners
--

DROP TABLE Partners;

CREATE TABLE Partners (
  partner_id NUMBER(11) default '0' NOT NULL,
  username varchar(30) default '' NOT NULL,
  passwort varchar(20) default '' NOT NULL,
  loggedin varchar(10) default '' NOT NULL,
  email varchar(30) NOT NULL,
  partner_language varchar(5) default 'en' NOT NULL,
  telefon varchar(20) default '' NOT NULL,
  partnername varchar(30) default '' NOT NULL,
  str varchar(40) default '' NOT NULL,
  plz varchar(10) default '' NOT NULL,
  ort varchar(40) default '' NOT NULL,
  urlhomepage varchar(40) default '' NOT NULL,
  ktoinhaber varchar(50) default '' NOT NULL,
  bankname varchar(50) default '' NOT NULL,
  blz varchar(10) default '' NOT NULL,
  ktonr varchar(10) default '' NOT NULL,
  iban varchar(20) default '' NOT NULL ,
  bic varchar(12) default '' NOT NULL,
  "date" TIMESTAMP NOT NULL,
--  "date" TIMESTAMP default '0000-00-00 00:00:00' NOT NULL,
  PRIMARY KEY (partner_id)
) ;

-- --------------------------------------------------------

--
-- Daten für Tabelle Partners
--

INSERT INTO Partners VALUES (1, '1', 'markus', '0', 'test@publicwebshop.com', 'de', '004989/65999940', 'Demo Pizza', 'Pizzastr.1', '81925', 'München-Johannesk.', 'http://www.demopizza.de', 'Demo Pizzamann', 'Demo Pizza Bank', '70030020', '11111100', 'DE0023235432343324', '235432343989', timestamp'2000-10-10 10:10:10');
INSERT INTO Partners VALUES (2, '2', 'markus', '0', 'test@publicwebshop.com', 'en', '001/7598841', 'Demo DVD', 'DVDstreet.19', '91927', 'Bosten', 'http://www.demodvd.net', 'Demo Dvdman', 'Demo DVD Bank', '9990099', '9922992299', 'US00888999999', '890890890', timestamp'2000-10-10 10:10:10');
INSERT INTO Partners VALUES (3, '3', 'markus', '1', 'test@publicwebshop.com', 'de', '089/95927841', 'Demo Training', 'Trainingstr. 17', '81927', 'München', 'http://www.demotraining.de', 'Demo Trainer', 'Demo Training Bank', '38070724', '325338200', 'DE00121212122', '890890890', timestamp'2000-10-10 10:10:10');
INSERT INTO Partners VALUES (100, 'Hopf', 'markus', '1', 'info@hopf-it.de', 'de', '089/95927841', 'Systemberatung', 'Taimerhofstr.17', '81927', 'München', 'http://www.hopf-it.de', 'Markus Hopf', 'Citibank', '1302681511', '30020900', 'DE783002090013026815', 'CIPRDEDD', timestamp'2006-01-28 17:18:00');
INSERT INTO Partners VALUES (101, 'Markus', 'markus', '0', 'lisa@hopf-it.de', 'en', '89089', 'System', 'uu', '8908', 'Münjhjk', 'http://www.domain.com', ' ', ' ', ' ', ' ', ' ', ' ', timestamp'2006-01-29 11:21:24');
INSERT INTO Partners VALUES (102, 'test', 'test', '1', 'info@hopf-it.de', 'en', 't', 't', 't', 't', 't', 't', ' ', ' ', ' ', ' ', ' ', ' ', timestamp'2006-01-29 20:51:36');
INSERT INTO Partners VALUES (103, '7', '7', '1', 'info@hopf-it.de', 'en', '898', '9898', '89', '98', '9', '8', ' ', ' ', ' ', ' ', ' ', ' ', timestamp'2006-01-30 13:08:34');
INSERT INTO Partners VALUES (104, '44', '44', '1', 'info@hopf-it.de', 'en', '89098', '908908', '098908', '90', '890', 'http://www.test.de', '7987', ' ', ' ', ' ', ' ', ' ', timestamp'2006-02-06 14:33:13');
INSERT INTO Partners VALUES (105, 'w', 'w', '0', 'info@hopf-it.de', 'en', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', timestamp'2006-02-10 10:26:22');
INSERT INTO Partners VALUES (106, 'max', 'max', '0', 'markushopf@arcor.de', 'en', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', timestamp'2006-02-13 21:32:57');
INSERT INTO Partners VALUES (107, 'Jutta Hopf', 'schmauselchen', '1', 'info@hopf-it.de', 'en', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', timestamp'2006-02-14 11:33:18');
INSERT INTO Partners VALUES (108, 'neu', 'neu', '0', 'jutta@hopf-it.de', 'en', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', timestamp'2006-02-21 14:59:34');
INSERT INTO Partners VALUES (109, 'jutta', 'lorenz', '1', 'info@hopf-it.de', 'en', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', timestamp'2006-03-12 17:18:35');
INSERT INTO Partners VALUES (110, 'arabi', 'arabi', '1', 'info@hopf-it.de', 'en', '7897897', ' ', ' ', ' ', ' ', ' ', ' ', '', '', '', '', '', timestamp'2006-03-18 15:56:47');
INSERT INTO Partners VALUES (111, 't', 't', '0', 'info@hopf-it.de', 'en', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', timestamp'2006-04-07 14:15:49');
INSERT INTO Partners VALUES (112, 'z', 'z', '1', 'info@hopf-it.de', 'en', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', timestamp'2006-04-08 08:54:28');
INSERT INTO Partners VALUES (113, 'k', 'k', '0', 'info@hopf-it.de', 'en', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', timestamp'2006-04-08 08:56:45');
INSERT INTO Partners VALUES (114, 'h', 'h', '1', 'info@hopf-it.de', 'en', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', timestamp'2006-04-09 12:36:27');
INSERT INTO Partners VALUES (115, 'tester', 'tester', '1', 'test@test.de', 'en', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', timestamp'2006-04-25 12:31:06');
INSERT INTO Partners VALUES (116, 'u', 'u', '0', 'info@hopf-it.de', 'en', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', timestamp'2006-05-15 19:40:06');
INSERT INTO Partners VALUES (117, 'ebionline', 'ibanez', '1', 'ebionline@gmx.de', 'de', ' ', 'tennishouse', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', timestamp'2006-07-14 23:57:50');
INSERT INTO Partners VALUES (118, 'Hestawi', 'aa66ik0304', '1', 'hestawi@aol.com', 'en', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', timestamp'2006-10-31 15:53:00');
INSERT INTO Partners VALUES (119, 'Rotis-Garage', 'strike', '1', 'roti@rotis-garage.de', 'en', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', timestamp'2006-11-09 17:05:31');
INSERT INTO Partners VALUES (120, 'EDVBonn', 'Angela1403', '0', 'frank.langer@edv-beratung-lang', 'de', '0228/1803114', 'EDV Beratung Frank Langer', 'Kaiserstr. 181', '53113', 'Bonn', 'http://www.edv-beratung-langer.de', 'Frank Langer', 'Volksbank Bonn Rheihn-Sieg eG', ' ', ' ', ' ', ' ', timestamp'2006-11-26 22:00:49');
INSERT INTO Partners VALUES (121, 'lorenz', 'lorenz', '1', 'lorenz@hopf-it.de', 'de', '98', 'lorenz', 'str.9', '54545', 'Mün', 'http://www.hopf-it.de', 'Lorenz Hopf', ' ', ' ', ' ', ' ', ' ', timestamp'2006-11-27 20:26:26');
INSERT INTO Partners VALUES (122, 'maexle', 'maexle', '1', 'markus@hopf-it.de', 'de', '67', '786', '876', '786', '6786', ' ', '87687', ' ', ' ', ' ', ' ', ' ', timestamp'2006-11-28 07:19:15');
INSERT INTO Partners VALUES (123, 'jut', 'jut', '1', 'info@hopf-it.de', 'en', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', timestamp'2006-11-28 07:22:49');
INSERT INTO Partners VALUES (124, '0', '0', '1', 'info@hopf-it.de', 'en', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', timestamp'2006-11-28 07:26:42');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle Items
--

DROP TABLE Items;

CREATE TABLE Items (
  item_id NUMBER(11) default '0' NOT NULL,
  partner_id NUMBER(11)  default '0' NOT NULL,
  title varchar(40) default NULL,
  price BINARY_FLOAT default NULL,
  description varchar(100) default NULL,
  item_no varchar(10) default NULL,
  pic blob,
  detaildescription varchar(255) default NULL,
  "date" TIMESTAMP NOT NULL,
--  "date" TIMESTAMP default '0000-00-00 00:00:00' NOT NULL,
  visible char(3) default 'on',
  PRIMARY KEY  (item_id),
  foreign key (partner_id) references Partners
);

--
-- Daten für Tabelle Items
--

INSERT INTO Items VALUES (1, 1, 'Pizza', 9.9, 'Eine normale Margarita', '166', NULL, 'Das ist eine leckere Pizza', timestamp'2006-04-04 08:33:14', 'on');
INSERT INTO Items VALUES (2, 1, 'Spaghetti', 9.8, 'Bolognese', '676', NULL, 'Das sind leckere Spaghetti', timestamp'2006-02-05 08:23:32', 'on');
--INSERT INTO Items VALUES (1, 1, 'Pizza', 9.9, 'Eine normale Margarita', '166', 0x47494638396141004100f70000f6cab2f6b18ef0f3eda36b5cf18e6e4a993baca19e6a64628fc085ed745d978079fad6c31a1616c68e7bd5dcd2542c26daa38cf9bd9bdebaabf9e8deb9d7b3624942f6a07ee9624d855548a32727e7412f373838bbbbba1c7f09ffffff0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002c00000000410041000008ff003d081c48b0a0c18308132a5cc8b0a1c38710234a9c48b1a2c58b18336adcc8b1a3c78f20438a1c49b2a4c9932853aa5cc9b2a5cb97301b2e00307002800502104e985033e7c9090122085c10a06804004817f09c4034c0cd08417d865c407501d4081c1c000860014250a8010810b040d6e951a23701f0e4284000d0a270151cd8300083dd0a180610185021c30502011a3418d0400161b8383d4c905a716b84b2502128c03b806f05050d303c90cb008285ba182ae00d3dc08251a8342d4e806a214102a70b20d425d040b65dc2a119309030b83669c115068035ba76e2d6a209345c3060e0e6670c0a3043c81c7aee0109090817165c19038709072a78ff0d00418244a6460324c73057c14c09031e3c10bd417e83b35e35e3955b81c103090e1cc0400560592001630b3515816d776dc0c000122c20816c0ee6a557570018000154f1c9375f69e44da600041b46d080790e4d60c105d9e5755b5dc1490040617341004004b42de08003118427d6057f5940805a554560e44e1124e0408a046890c100d39186db030d48a8806e1c58650152e671305705612917567912c80880044709b0c0051038f41801d9f17500890d54b0810213f0d8c001060c45407901e858a155b40d661774920567da630db8195486e16d20da030c2820d05ba97920c101188c37c164002e40dda187cef500605c59dad071112c2020030718ff761f000e4800d75a06cc751f6c48d58a416d7c5536986e1b3865810607a408570457aa4a149d36e2d800730a38f81d894765351989981566976e1818994006aa322400008b72b5a58466e67a4065753d70a80206a0090007e409b8816603702a5fbd50257041054b3a24800463056c1a55bc5df9a060d411c6d74d4bcee86070a151e6d48daddd1991030d2460daa2004000a480f2d6366294151c70e652015470aa9134df28d6821b24fb504e0218601854630520015983c9365f70fe32b06b62386aa00101340bc92201571ec0b343140cc4815ca5c19930cd26de25daafc31df5986b5cb996c05875568a60443d4f46189c7fc1698191427e6d6458628d782596c04366d85f051c6824c0d607c45a1b012ca60de4d464090ca46ba695e9e5c51cbc8d91038827de32bc8409ac766dd3511be90677162c92009ccbf525eaa8ebc600ecb0b74caf039a93c43ae71cf4ce1c73bd67857b4cc4176ffcf1c827affcf2cc37effcf3d0472ffdf4d4576ffdf5d867afbd400101003b, 'Das ist eine leckere Pizza', timestamp'2006-04-04 08:33:14', 'on');
--INSERT INTO Items VALUES (2, 1, 'Spaghetti', 9.8, 'Bolognese', '676', 0x47494638396141004100f70000a7503aa9a69c39312cfaf9f64b9a3ce1a384f2d5aa8fc086eeebb27b7969d57d61f8e4c1d5d3d1fbf8e8f9f4dad2d689bcccb6eceae7c2cb71f9efd5e7f2e5d3e4cbf7ddb6e5e1def6edc9e3e2a2a2aa62e9bfa2f3f3f0ffffff1c7f090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002c00000000410041000008ff003b081c48b0a0c18308132a5cc8b0a1c38710234a9c48b1a2c58b18336adcc8b1a3c78f20438a1c49b2a4c993283b34e8306065ca89191c34c0f032e2000719104cc8207040cd8532313cc840f441d00925074c58aa7026829c43333c9060f429c9060bb2669d108183579f0231101d8be029d5a93c430ee0b000c3d2096eb976e500b641590c081c60d09b418206aa60390e58cb6129860516f6babdc0386b84c71162cab42ba1f283cb31696abcb9d4815e0ba0376c58e0d9c1040b0b06de4430d8c1e5b2b0a5a6cda8d72d0603891d2c28a060835e07060a6c08dc616f07a27a619b7d6071ed050e1d26b4bd2d1cb5850d050a5830b0410180de041b88ffcfa03879d907102e501c1c00427bd2330b705720dc0077f90500e8578081b803047b39b05a5952259000710d7d1540811074e0c0754be9f7dd84a249584056040d10a0781c22309504011cf8d0008f71c040024f69301d56a379a78077fa6d6021629e4de013022a35c0dd061834d09704192410c04390711041027f25608169c0bda89f70f959289a7ddb85261c04bcbd580080523d2600740d5d50e2040108204002592566819312b609c068dbe1765f96f4bdf8a20610005901074252106689ee216060061ae0265d56d9b909807672dac79b004ff2c61b00026890c05417302000820831160103013c2028921a6c809a5ba2c9b81f7df6b50a1a8cbd65ff979d020250456a051108e010631c04a0415f096c60a9a9d24d00e37ef661001a6e567e172b9400fcea57651568cae9419e06e09781a871674103133810e59355ca79d87dfb096720a54369c040047b86e82743113c17a290ca8a771b68bbd9a940a3ad66e5a88bbd25e09700440510014bb942504143038899a97ad109b400c0ca56e72ab30b88d7ddaaf4956926033d19089189730da6dabee5beb8c104064cd000684809a4aabfb4566aa97a090840f143ee31405841589db6db9318aa94155803780729a5661a8c8006210ad0e04360422024c581813bd002a976fcf5b703f5aadf990170008106a2f67cf5447c0a4932420df884a08d078165e400651a7508c1b5109de837e0149d1835981981dab3dc190e46985746a64c90e2660630774726561db5901040f0ee638c89c940e7f79a79667a846b6424e5a6b7ee7aeb0632f0dc4fabb7d7f9edee41d055ea3f39aef24fc0072f3c476f0f6ffcf1c827affcf2cc37effcf3d0472ffdf4d4576ffdf5d87b1410003b, 'Das sind leckere Spaghetti', timestamp'2006-02-05 08:23:32', 'on');
INSERT INTO Items VALUES (3, 3, 'Java', 2000, '5 Tage - Java Grundlagen Schulung Version 5', '665', NULL, 'Java Grundlagen Schulung auf hohem Niveau', timestamp'2000-10-10 10:10:10', 'on');
INSERT INTO Items VALUES (4, 3, 'Swing', 1600, '4 Tage - Gui Entwicklung mit Java SWING API', '266', NULL, 'SWING Schulung auf hohem Niveau', timestamp'2000-10-10 10:10:10', 'on');
INSERT INTO Items VALUES (5, 3, 'EJB', 2000, '5 Tage - Entwicklung mit Enterprise Java Beans 2.1', '636', NULL, 'EJB Schulung auf sehr hohem Niveau', timestamp'2000-10-10 10:10:10', 'on');
INSERT INTO Items VALUES (6, 2, 'Titanic', 14.99, 'An exiting love movie', '626', NULL, 'The ship is never sinking...', timestamp'2000-10-10 10:10:10', 'on');
INSERT INTO Items VALUES (7, 2, 'Top Gun', 12.59, 'An exiting action movie', '627', NULL, 'Airforce movie', timestamp'2000-10-10 10:10:10', 'on');
INSERT INTO Items VALUES (503, 100, 'EJB', 2000, 'KW 20/2006 - 5 Tage EJB', '2', NULL, 'Session, Entity und MessageDriven Beans', timestamp'2006-04-07 12:56:39', 'on');
INSERT INTO Items VALUES (501, 101, '897', 987, '89', '7', NULL, '7', timestamp'2006-01-29 11:23:46', 'on');
INSERT INTO Items VALUES (502, 100, 'Java Grundlagen', 1500, 'KW 21/2006 - 5 Tage Grundlagenschulung', '1', NULL, 'Ausgesuchte Themen aus der J2SE', timestamp'2006-04-07 12:56:54', 'on');
INSERT INTO Items VALUES (504, 1, 'Pizza', 9, 'mit Tunfisch', '7', NULL, 'Käse, Tomaten und Tunfisch', timestamp'2006-02-06 08:31:26', NULL);
INSERT INTO Items VALUES (505, 2, 'Superbowl', 4, 'Superbowl 2006', '8', NULL, 'A live movie from the 2006 Superbowl', timestamp'2006-02-06 08:35:17', NULL);
INSERT INTO Items VALUES (506, 104, '90', 8, '90', '8908', NULL, '89', timestamp'2006-02-06 14:33:37', 'on');
INSERT INTO Items VALUES (507, 105, '897', 89, '7', '7', NULL, '89', timestamp'2006-02-10 10:32:13', NULL);
INSERT INTO Items VALUES (508, 105, '8', 90, '89', '809', NULL, '0', timestamp'2006-02-10 10:34:51', 'on');
INSERT INTO Items VALUES (509, 106, '08', 909, '809', '', NULL, '8890890', timestamp'2006-02-13 21:36:12', 'on');
INSERT INTO Items VALUES (510, 106, '675', 67, '56', '5', NULL, '75', timestamp'2006-02-13 21:36:34', 'on');
INSERT INTO Items VALUES (511, 107, 'Schuhe', 2.99, 'jkdfkdfj', '1', NULL, 'jkdjfkf', timestamp'2006-02-14 11:43:51', 'on');
INSERT INTO Items VALUES (512, 108, '0ß9', 99, '9', '9', NULL, '0ß', timestamp'2006-02-21 15:00:40', 'on');
INSERT INTO Items VALUES (513, 109, 'blume', 1.95, 'blau', '9888', NULL, 'mit rosa punkten', timestamp'2006-03-12 17:20:46', 'on');
--INSERT INTO Items VALUES (514, 110, '78', 678, '6', '6', NULL, '78', timestamp'2006-03-18 15:58:48', 'on');
INSERT INTO Items VALUES (516, 115, '90', 8, '908', '89', NULL, '90', timestamp'2006-04-25 12:31:34', 'on');
INSERT INTO Items VALUES (519, 121, 'aa', 333, 'bb', '23', utl_raw.cast_to_raw('C:\max\pws\src\main\webapp\training_files\cobra_logo.jpe'), 'dd', timestamp'2006-11-27 21:28:51', 'on');
INSERT INTO Items VALUES (520, 122, 'bbb', 66, 'gj', '5', NULL, 'hjhgk', timestamp'2006-11-28 07:20:22', 'on');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle ObjectIDs
--

DROP TABLE ObjectIDs;
CREATE TABLE ObjectIDs (
  table_name VARCHAR(30) default '' NOT NULL,
  id NUMBER(11) default '0' NOT NULL,
  PRIMARY KEY (table_name)
);

--
-- Daten für Tabelle ObjectIDs
--

INSERT INTO ObjectIDs VALUES ('Prefs', 125);
INSERT INTO ObjectIDs VALUES ('Orders', 1071);
INSERT INTO ObjectIDs VALUES ('Partners', 125);
INSERT INTO ObjectIDs VALUES ('Items', 521);
INSERT INTO ObjectIDs VALUES ('Tarife', 36);
INSERT INTO ObjectIDs VALUES ('Invoices', 1029);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle Orders
--

DROP TABLE Orders;
CREATE TABLE Orders (
  order_id NUMBER(11) NOT NULL,
  customername varchar(50) default NULL,
  partner_id NUMBER(11) default NULL,
  "date" TIMESTAMP default NULL,
  amount BINARY_FLOAT default NULL,
  str varchar(40) default NULL,
  plz varchar(10) default NULL,
  ort varchar(40) default NULL,
  email varchar(30) default NULL,
  tel varchar(30) default NULL,
  bemerkung varchar(255) default NULL,
  art varchar(30) default NULL,
  payed_date TIMESTAMP default NULL,
  confirmed_date TIMESTAMP default NULL,
  PRIMARY KEY (order_id)
) ;

--
-- Daten für Tabelle Orders
--

INSERT INTO Orders VALUES (1045, '90', 1, timestamp'2006-3-15 17:44:9', 19.6, '9', '0ß', '9', 'info@hopf-it.de', '0ß', '9', 'Lieferung', timestamp'2006-3-15 17:44:15', timestamp'2006-3-15 17:44:9');
INSERT INTO Orders VALUES (1046, '09', 2, timestamp'2006-3-16 21:21:37', 25.18, '8', '098', '09', 'info@hopf-it.de', '09', '8', 'Delivery', timestamp'2006-4-7 13:42:41', timestamp'2006-3-16 21:21:38');
INSERT INTO Orders VALUES (1047, '890', 1, timestamp'2006-4-5 8:31:5', 19.8, '8', '90', '890', 'info@hopf-it.de', '90', '8', 'Lieferung', timestamp'2006-4-9 8:50:49', timestamp'2006-4-5 8:31:5');
INSERT INTO Orders VALUES (1048, '890', 2, timestamp'2006-4-7 13:33:48', 25.18, '8', '90', '8', 'info@hopf-it.de', '908', '90', 'Delivery', timestamp'2006-4-9 8:50:49', timestamp'2006-4-7 13:33:48');
INSERT INTO Orders VALUES (1049, '9', 1, timestamp'2006-4-7 13:35:14', 19.6, '0ß9', '0', 'ß9', 'info@hopf-it.de', '0ß9', '', 'Lieferung', timestamp'2006-4-9 8:50:49', timestamp'2006-4-7 13:35:14');
INSERT INTO Orders VALUES (1050, '908', 1, timestamp'2006-4-9 10:24:36', 19.6, '90', '8', '90', 'info@hopf-it.de', '908', '90', 'Lieferung', timestamp'2006-4-9 11:13:29', timestamp'2006-4-9 10:24:36');
INSERT INTO Orders VALUES (1051, '9890', 100, timestamp'2006-4-9 10:36:36', 1500, '89', '98', '90', 'info@hopf-it.de', '90', '8', 'Not applicable', timestamp'2006-4-9 11:13:29', timestamp'2006-4-9 10:36:36');
INSERT INTO Orders VALUES (1052, '89', 100, timestamp'2006-4-9 10:48:55', 3000, '90', '8', '908', 'info@hopf-it.de', '8', '08', 'Nicht Zutreffend', timestamp'2006-4-9 11:13:29', timestamp'2006-4-9 10:48:55');
INSERT INTO Orders VALUES (1053, 'jmeter', 1, timestamp'2006-4-9 11:40:3', 19.6, 'jmeterstr', '99999', 'jmeterhausen', 'info@hopf-it.de', '8989', 'jmetertestbem', 'hause', timestamp'2006-4-9 11:52:17', timestamp'2006-4-9 11:40:4');
INSERT INTO Orders VALUES (1054, 'jmeter', 1, timestamp'2006-4-9 11:49:27', 19.6, 'jmeterstr', '99999', 'jmeterhausen', 'info@hopf-it.de', '8989', 'jmetertestbem', 'hause', timestamp'2006-4-9 11:52:17', timestamp'2006-4-9 11:49:27');
INSERT INTO Orders VALUES (1055, 'jmeter', 1, timestamp'2006-4-9 11:54:3', 19.6, 'jmeterstr', '99999', 'jmeterhausen', 'info@hopf-it.de', '8989', 'jmetertestbem', 'hause', timestamp'2006-5-9 5:54:54', timestamp'2006-4-9 11:54:3');
INSERT INTO Orders VALUES (1056, 'jmeter', 1, timestamp'2006-4-9 11:58:3', 19.6, 'jmeterstr', '99999', 'jmeterhausen', 'info@hopf-it.de', '8989', 'jmetertestbem', 'hause', timestamp'2006-5-9 5:54:54', timestamp'2006-4-9 11:58:3');
INSERT INTO Orders VALUES (1057, 'jmeter', 1, timestamp'2006-4-9 12:33:51', 19.6, 'jmeterstr', '99999', 'jmeterhausen', 'info@hopf-it.de', '8989', 'jmetertestbem', 'hause', timestamp'2006-5-9 5:54:54', timestamp'2006-4-9 12:33:51');
INSERT INTO Orders VALUES (1058, 'mMmM', 2, timestamp'2006-4-10 8:1:12', 25.18, 'i', 'opi', 'op', 'info@hopf-it.de', 'iop', 'opi', 'Delivery', timestamp'2006-5-9 5:54:54', timestamp'2006-4-10 8:1:12');
INSERT INTO Orders VALUES (1059, 'test', 1, timestamp'2006-4-19 16:48:0', 19.6, 'i', 'iio', 'i', 'info@hopf-it.de', 'o', 'iiio', 'Selbstabholung', timestamp'2006-5-9 5:54:54', timestamp'2006-4-19 16:48:0');
INSERT INTO Orders VALUES (1060, 'i', 2, timestamp'2006-4-24 9:50:51', 25.18, 'uio', 'u', 'iou', 'markus.hopf@arcor.de', 'uio', 'u', 'Delivery', timestamp'2006-5-9 5:54:54', timestamp'2006-4-24 9:50:51');
INSERT INTO Orders VALUES (1061, 'er', 1, timestamp'2006-5-14 6:54:12', 29.6, 'u', 'oiu', 'iou', 'info@hopf-it.de', 'uio', 'ui', 'Lieferung', timestamp'2006-7-9 7:52:38', timestamp'2006-5-14 6:54:12');
INSERT INTO Orders VALUES (1062, 'z', 2, timestamp'2006-7-11 9:52:6', 25.18, 'ui', 'z', 'ui', 'markus.hopf@arcor.de', 'z', 'ui', 'Pick it up', timestamp'2006-8-9 6:30:58', timestamp'2006-7-11 9:52:6');
INSERT INTO Orders VALUES (1063, 'Markus Hopf', 117, timestamp'2006-7-15 6:45:6', 1700, '-', '-', '-', 'test@publicwebshop.com', '-', '-', 'Pick it up', timestamp'2006-8-9 6:30:59', timestamp'2006-7-15 6:45:6');
INSERT INTO Orders VALUES (1064, 'klök', 1, timestamp'2006-9-5 20:31:26', 19.6, 'köl', 'lkölk', 'ölköl', 'info@hopf-it.de', 'lököl', 'kölk', 'Lieferung', timestamp'2006-11-1 7:19:42', timestamp'2006-9-5 20:31:26');
INSERT INTO Orders VALUES (1065, 'm', 1, timestamp'2006-9-26 7:41:40', 19.8, 'm', 'm', 'm', 'markus.hopf@vsa.de', 'm', 'm', 'Lieferung', timestamp'2006-11-1 7:19:42', timestamp'2006-9-26 7:41:40');
INSERT INTO Orders VALUES (1066, 'jklj', 2, timestamp'2006-10-17 9:46:32', 42.57, 'jkl', 'jkl', 'jkjlk', 'jutta@hopf-it.de', 'klj', 'kljkl', 'Pick up', timestamp'2006-11-1 7:19:42', timestamp'2006-10-17 9:46:36');
INSERT INTO Orders VALUES (1067, 'test', 1, timestamp'2006-10-26 14:38:3', 39.3, 'test', 'test', 'test', 'markushopf@arcor.de', 'test', 'test', 'Lieferung', timestamp'2006-11-1 7:19:42', timestamp'2006-10-26 14:38:3');
INSERT INTO Orders VALUES (1068, 'noche', 1, timestamp'2006-10-26 14:40:13', 29.7, 'noche', 'noche', 'noche', 'info@hopf-it.de', 'noche', 'noche', 'Selbstabholung', timestamp'2006-11-1 7:19:42', timestamp'2006-10-26 14:40:13');
INSERT INTO Orders VALUES (1069, 'k', 1, timestamp'2006-11-13 20:13:13', 29.7, 'lö', 'k', 'lö', 'info@hopf-it.de', 'lö', 'k', 'Lieferung', timestamp'2006-12-1 21:26:37', timestamp'2006-11-13 20:13:14');
INSERT INTO Orders VALUES (1070, 'lök', 121, timestamp'2006-11-27 21:32:40', 333, 'kl', 'ölk', 'öl', 'lorenz@hopf-it.de', 'lök', 'lö', 'Lieferung', timestamp'2006-12-1 21:26:37', timestamp'2006-11-27 21:32:49');

-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle Prefs
--

DROP TABLE Prefs;
CREATE TABLE Prefs (
  pref_id NUMBER(11) default '0' NOT NULL,
  partner_id NUMBER(11) default '0' NOT NULL,
  bgcolor varchar(6) default NULL,
  infotext varchar(150) default NULL,
  bestelltext varchar(160) default NULL,
  summerytext varchar(160) default NULL,
  agb varchar(270) default NULL,
  shop_open varchar(6) default NULL,
  pic blob,
  currency char(3) default NULL,
  "date" TIMESTAMP NOT NULL,
--  "date" TIMESTAMP default '0000-00-00 00:00:00' NOT NULL,
  minorderamount BINARY_FLOAT default '0' NOT NULL,
  deliverfee BINARY_FLOAT default '0' NOT NULL,
  show_deliverfee char(3) default 'on',
  show_minorderamount char(3) default 'on',
  show_delivery char(3) default 'on',
  show_pickup char(3) default 'on',
  show_deliverkind_not_applicable char(3) default 'on',
  show_transfer char(3) default 'on',
  show_cash char(3) default 'on',
  PRIMARY KEY  (pref_id),
-- KEY fk_REF_1 (partner_id)
  foreign key (partner_id) references Partners
);

--
-- Daten für Tabelle Prefs
--

INSERT INTO Prefs VALUES (1, 1, 'BAFF75', 'DEMO Bestellung!!<br/>Lieferzeit nicht länger als eine halbe Stunde. Alle Preise inkl. gesetzl. MwSt.', 'DEMO Bestellung!!<br/>Unsere Pizzeria legt Wert auf ehrliche Kunden und vertraut den korrekten Angaben', 'DEMO Bestellung!!<br/>Bitte empfehem Sie uns weiter, sollten Ihnen unsere Gericht schmecken', 'Es gelten die AGB von DEMO Pizza', 'on', utl_raw.cast_to_raw('C:\max\pws\src\main\webapp\training_files\cobra_logo.jpe'), '€', timestamp'2006-02-06 08:32:18', 10, 0, 'on', 'on', 'on', 'on', NULL, NULL, 'on');
INSERT INTO Prefs VALUES (2, 2, 'FFFF00', 'DEMO Order!<br/>Delivery about 7 days. All prices incl. tax', 'DEMO Order!<br/>Please enter correct values for correct delivery', 'DEMO Order!<br/>This month we offer you 10%!', 'DEMO rules!\\nWe have the following business rules of DEMO DVD:\\nHere goes the text...', 'on', utl_raw.cast_to_raw('C:\max\pws\src\main\webapp\training_files\cobra_logo.jpe'), '$', timestamp'2006-04-07 13:32:48', 20, 3.95, 'on', 'on', 'on', 'on', NULL, 'on', 'on');
INSERT INTO Prefs VALUES (3, 3, 'A7C6E9', 'DEMO Bestellung!<br/>Kurse werden garantiert durchgeführt. Alle Preise inkl. gesetzl. MwSt.', 'DEMO Bestellung!<br/>Alle Trainings finden garantiert statt!', 'DEMO Bestellung!<br/>Im diesem Monat bekommen Sie 10% Rabatt', 'Es gelten die AGB von DEMO Training', NULL, utl_raw.cast_to_raw('C:\max\pws\src\main\webapp\training_files\cobra_logo.jpe'), '€', timestamp'2006-02-06 08:55:50', 0, 0, NULL, NULL, NULL, NULL, 'on', 'on', NULL);
INSERT INTO Prefs VALUES (100, 100, '174777', 'Weitere Schulungen und Dienstleistungen auf Anfrage.', 'Bitte machen Sie korrekte Angaben.', 'Wir helfen Ihnen gerne bei Ihrer Reiseplanung.', 'Beachten Sie das Sie innerhalb von 2 Wochen vor Beginn der Schulung nicht mehr absagen können. Schulungen finden ab einer Anzahl von 2 Teilnehmern statt.', 'on', utl_raw.cast_to_raw('C:\max\pws\src\main\webapp\training_files\cobra_logo.jpe'), '€', timestamp'2006-02-10 15:09:27', 0, 0, NULL, NULL, NULL, NULL, 'on', 'on', NULL);
INSERT INTO Prefs VALUES (101, 101, 'FFFFFF', '', '', '', '', NULL, NULL, '', timestamp'2006-01-29 11:21:24', 0, 0, 'on', 'on', 'on', 'on', 'on', 'on', 'on');
INSERT INTO Prefs VALUES (102, 102, 'FFFFFF', '', '', '', '', NULL, NULL, '', timestamp'2006-01-29 20:51:36', 0, 0, 'on', 'on', 'on', 'on', 'on', 'on', 'on');
INSERT INTO Prefs VALUES (103, 103, 'FFFFFF', '', '', '', '', NULL, NULL, '€', timestamp'2006-01-30 13:09:30', 0, 0, 'on', 'on', 'on', 'on', 'on', 'on', 'on');
INSERT INTO Prefs VALUES (104, 104, 'FFFF00', '', '', '', '', NULL, NULL, '€', timestamp'2006-02-06 14:48:29', 0, 0, NULL, NULL, 'on', NULL, NULL, 'on', NULL);
INSERT INTO Prefs VALUES (105, 105, 'FFFFFF', '', 'zui', '', '', NULL, utl_raw.cast_to_raw('C:\max\pws\src\main\webapp\training_files\cobra_logo.jpe'), '€', timestamp'2006-02-10 10:36:08', 0, 0, NULL, NULL, 'on', NULL, NULL, 'on', NULL);
INSERT INTO Prefs VALUES (106, 106, 'FFFFFF', '', '', '', '', NULL, NULL, '$', timestamp'2006-02-13 21:39:35', 0, 0, 'on', NULL, 'on', 'on', 'on', 'on', 'on');
INSERT INTO Prefs VALUES (107, 107, 'FFFFFF', '', '', '', '', NULL, NULL, '', timestamp'2006-02-14 11:33:18', 0, 0, 'on', 'on', 'on', 'on', 'on', 'on', 'on');
INSERT INTO Prefs VALUES (108, 108, 'FFFFFF', '', '', '', '', NULL, NULL, '€', timestamp'2006-02-21 15:00:24', 10, 1, 'on', 'on', 'on', 'on', 'on', 'on', 'on');
INSERT INTO Prefs VALUES (109, 109, 'FFFFFF', '', '', '', '', NULL, NULL, '', timestamp'2006-03-12 17:18:35', 0, 0, 'on', 'on', 'on', 'on', 'on', 'on', 'on');
--INSERT INTO Prefs VALUES (110, 110, 'FFFFFF', '', '', '', '', 'on', NULL, '€', timestamp'2006-03-19 15:30:49', 0, 0, NULL, NULL, 'on', 'on', 'on', 'on', 'on');
INSERT INTO Prefs VALUES (111, 111, 'FFFFFF', '', '', '', '', NULL, NULL, '', timestamp'2006-04-07 14:15:49', 0, 0, 'on', 'on', 'on', 'on', 'on', 'on', 'on');
INSERT INTO Prefs VALUES (112, 112, 'FFFFFF', '', '', '', '', NULL, NULL, '$', timestamp'2006-04-09 06:55:50', 0, 0, 'on', 'on', 'on', 'on', 'on', 'on', 'on');
INSERT INTO Prefs VALUES (113, 113, 'FFFFFF', '', '', '', '', NULL, NULL, '', timestamp'2006-04-08 08:56:45', 0, 0, 'on', 'on', 'on', 'on', 'on', 'on', 'on');
INSERT INTO Prefs VALUES (114, 114, 'FFFFFF', '', '', '', '', NULL, NULL, '', timestamp'2006-04-09 12:36:27', 0, 0, 'on', 'on', 'on', 'on', 'on', 'on', 'on');
INSERT INTO Prefs VALUES (115, 115, 'FFFFFF', '', '', '', '', NULL, NULL, '', timestamp'2006-04-25 12:31:06', 0, 0, 'on', 'on', 'on', 'on', 'on', 'on', 'on');
INSERT INTO Prefs VALUES (116, 116, 'FFFFFF', '', '', '', '', NULL, NULL, '', timestamp'2006-05-15 19:40:06', 0, 0, 'on', 'on', 'on', 'on', 'on', 'on', 'on');
INSERT INTO Prefs VALUES (117, 117, 'FFFFFF', '', '', '', '', 'on', NULL, '€', timestamp'2006-07-15 00:01:02', 50, 0, NULL, 'on', 'on', 'on', 'on', 'on', 'on');
INSERT INTO Prefs VALUES (118, 118, 'FFFFFF', '', '', '', '', NULL, utl_raw.cast_to_raw('C:\max\pws\src\main\webapp\training_files\cobra_logo.jpe'), '€', timestamp'2006-10-31 15:58:45', 0, 0, 'on', 'on', 'on', 'on', 'on', 'on', 'on');
INSERT INTO Prefs VALUES (119, 119, 'FFFFFF', '', '', '', '', NULL, NULL, '', timestamp'2006-11-09 17:05:31', 0, 0, 'on', 'on', 'on', 'on', 'on', 'on', 'on');
INSERT INTO Prefs VALUES (120, 120, 'FFFFFF', 'Alle Preise incl. der gesetzlichen Mehrwertsteuer plus 6,00 Euro Versand', 'Vielen Dank für Ihre Bestellung. Wir werden diese umgehend bearbeiten.\r\nHINWEIS WIDERRUFSRECHT BEI FERNABSATZVERTRÄGEN \r\n\r\n1) Verbraucher im Versandha', '', ') Wir verkaufen, liefern und arbeiten ausschließlich zu unseren Allgemeinen Geschäftsbedingungen, soweit diese ausdrücklich oder stillschweigend in das Vertragsverhältnis einbezogen wurden. Wir bitten, von Änderungswünschen abzusehen. \r\n\r\n2) Wünscht der K', 'on', utl_raw.cast_to_raw('C:\max\pws\src\main\webapp\training_files\cobra_logo.jpe'), '€', timestamp'2006-11-26 22:08:36', 50, 6, 'on', 'on', 'on', 'on', 'on', 'on', 'on');
INSERT INTO Prefs VALUES (121, 121, 'FFFFFF', 'iii', 'bbb', 'aa', 'a', 'on', utl_raw.cast_to_raw('C:\max\pws\src\main\webapp\training_files\cobra_logo.jpe'), '€', timestamp'2006-11-27 21:28:18', 10, 6, 'on', 'on', 'on', 'on', 'on', 'on', 'on');
INSERT INTO Prefs VALUES (122, 122, 'FFFFFF', 'i', 'b', 'a', 'aaa', 'on', NULL, '€', timestamp'2006-11-28 07:19:51', 10, 10, 'on', 'on', 'on', 'on', 'on', 'on', 'on');
INSERT INTO Prefs VALUES (123, 123, 'FFFFFF', '', '', '', '', NULL, NULL, '', timestamp'2006-11-28 07:22:49', 0, 0, 'on', 'on', 'on', 'on', 'on', 'on', 'on');
INSERT INTO Prefs VALUES (124, 124, 'FFFFFF', '', '', '', '', NULL, NULL, '', timestamp'2006-11-28 07:26:42', 0, 0, 'on', 'on', 'on', 'on', 'on', 'on', 'on');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle Tarife
--

DROP TABLE Tarife;
CREATE TABLE Tarife (
  tarif_id NUMBER(11) default '0' NOT NULL,
  partner_id NUMBER(11) default '0' NOT NULL,
  description char(20) default NULL,
  create_date TIMESTAMP NOT NULL,
  expire_date TIMESTAMP NOT NULL,
  baseprice BINARY_FLOAT default '0' NOT NULL,
  tx_rate BINARY_FLOAT default '0' NOT NULL,
  min_tx_price BINARY_FLOAT default '0' NOT NULL,
  PRIMARY KEY (tarif_id),
  foreign key (partner_id) references Partners
);

--
-- Daten für Tabelle Tarife
--

INSERT INTO Tarife VALUES (1, 1, 'Free', timestamp'2006-01-10 10:10:10', timestamp'2006-02-10 10:10:10', 0, 0, 0);
INSERT INTO Tarife VALUES (2, 2, 'Basic', timestamp'2005-10-10 10:10:10', timestamp'2006-10-10 10:10:10', 20, 0, 0.1);
INSERT INTO Tarife VALUES (3, 3, 'Pro', timestamp'2005-10-10 10:10:10', timestamp'2006-10-10 10:10:10', 30, 0, 0.2);
INSERT INTO Tarife VALUES (4, 1, 'Basic', timestamp'2006-01-28 07:29:19', timestamp'2007-01-28 07:29:19', 0, 1, 0.1);
INSERT INTO Tarife VALUES (5, 100, 'Free', timestamp'2006-01-28 17:18:00', timestamp'2006-02-28 17:18:00', 0, 0, 0);
INSERT INTO Tarife VALUES (6, 101, 'Free', timestamp'2006-01-29 11:21:24', timestamp'2006-11-28 11:21:24', 0, 0, 0);
INSERT INTO Tarife VALUES (7, 102, 'Free', timestamp'2006-01-29 20:51:36', timestamp'2006-11-30 20:51:36', 0, 0, 0);
INSERT INTO Tarife VALUES (8, 103, 'Free', timestamp'2006-01-30 13:08:36', timestamp'2006-02-28 13:08:36', 0, 0, 0);
INSERT INTO Tarife VALUES (9, 103, 'Basic', timestamp'2006-01-30 16:38:50', timestamp'2007-01-30 16:38:50', 0, 1, 0.1);
INSERT INTO Tarife VALUES (10, 100, 'Basic', timestamp'2006-02-01 22:40:14', timestamp'2007-02-01 22:40:14', 0, 1, 0.1);
INSERT INTO Tarife VALUES (11, 104, 'Free', timestamp'2006-02-06 14:33:13', timestamp'2006-03-06 14:33:13', 0, 0, 0);
INSERT INTO Tarife VALUES (12, 105, 'Free', timestamp'2006-02-10 10:26:27', timestamp'2006-03-10 10:26:27', 0, 0, 0);
INSERT INTO Tarife VALUES (13, 106, 'Free', timestamp'2006-02-13 21:32:57', timestamp'2006-03-13 21:32:57', 0, 0, 0);
INSERT INTO Tarife VALUES (14, 107, 'Free', timestamp'2006-02-14 11:33:18', timestamp'2006-03-14 11:33:18', 0, 0, 0);
INSERT INTO Tarife VALUES (15, 108, 'Free', timestamp'2006-02-21 14:59:34', timestamp'2006-03-21 14:59:34', 0, 0, 0);
INSERT INTO Tarife VALUES (16, 109, 'Free', timestamp'2006-03-12 17:18:35', timestamp'2006-04-12 17:18:35', 0, 0, 0);
INSERT INTO Tarife VALUES (17, 110, 'Free', timestamp'2006-03-18 15:56:47', timestamp'2006-04-18 15:56:47', 0, 0, 0);
INSERT INTO Tarife VALUES (18, 111, 'Free', timestamp'2006-04-07 14:15:49', timestamp'2006-05-07 14:15:49', 0, 0, 0);
INSERT INTO Tarife VALUES (19, 112, 'Basic', timestamp'2006-04-08 08:54:28', timestamp'2007-04-08 08:54:28', 0, 1, 0.1);
INSERT INTO Tarife VALUES (20, 113, 'Free', timestamp'2006-04-08 08:56:45', timestamp'2006-05-08 08:56:45', 0, 0, 0);
INSERT INTO Tarife VALUES (21, 114, 'Free', timestamp'2006-04-09 12:36:27', timestamp'2006-05-09 12:36:27', 0, 0, 0);
INSERT INTO Tarife VALUES (22, 110, 'Basic', timestamp'2006-04-10 07:58:38', timestamp'2007-04-10 07:58:38', 0, 1, 0.1);
INSERT INTO Tarife VALUES (23, 115, 'Free', timestamp'2006-04-25 12:31:06', timestamp'2006-05-25 12:31:06', 0, 0, 0);
INSERT INTO Tarife VALUES (24, 116, 'Free', timestamp'2006-05-15 19:40:06', timestamp'2006-06-15 19:40:06', 0, 0, 0);
INSERT INTO Tarife VALUES (25, 117, 'Free', timestamp'2006-07-14 23:57:50', timestamp'2006-08-14 23:57:50', 0, 0, 0);
INSERT INTO Tarife VALUES (26, 2, 'Basic', timestamp'2006-10-16 08:19:16', timestamp'2007-10-16 08:19:16', 0, 1, 0.1);
INSERT INTO Tarife VALUES (27, 1, 'Basic', timestamp'2006-10-17 15:16:53', timestamp'2007-10-17 15:16:53', 0, 1, 0.1);
INSERT INTO Tarife VALUES (28, 118, 'Free', timestamp'2006-10-31 15:53:00', timestamp'2006-11-28 15:53:00', 0, 0, 0);
INSERT INTO Tarife VALUES (29, 119, 'Free', timestamp'2006-11-09 17:05:31', timestamp'2006-12-09 17:05:31', 0, 0, 0);
INSERT INTO Tarife VALUES (30, 120, 'Basic', timestamp'2006-11-26 22:00:49', timestamp'2007-11-26 22:00:49', 0, 1, 0.1);
INSERT INTO Tarife VALUES (31, 121, 'Basic', timestamp'2006-11-27 20:26:26', timestamp'2007-11-27 20:26:26', 0, 1, 0.1);
INSERT INTO Tarife VALUES (32, 122, 'Free', timestamp'2006-11-28 07:19:15', timestamp'2006-12-28 07:19:15', 0, 0, 0);
INSERT INTO Tarife VALUES (33, 123, 'Free', timestamp'2006-11-28 07:22:49', timestamp'2006-12-28 07:22:49', 0, 0, 0);
INSERT INTO Tarife VALUES (34, 124, 'Free', timestamp'2006-11-28 07:26:42', timestamp'2006-12-28 07:26:42', 0, 0, 0);
INSERT INTO Tarife VALUES (35, 2, 'Basic', timestamp'2006-11-29 22:33:34', timestamp'2007-11-29 22:33:34', 0, 1, 0.1);
