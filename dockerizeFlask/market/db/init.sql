PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE user (
	id INTEGER NOT NULL, 
	username VARCHAR(30) NOT NULL, 
	email_address VARCHAR(50) NOT NULL, 
	password_hash VARCHAR(60) NOT NULL, 
	budget INTEGER NOT NULL, 
	PRIMARY KEY (id), 
	UNIQUE (username), 
	UNIQUE (email_address)
);
INSERT INTO user VALUES(4,'jsc4','jsc4@gmail.com','$2b$12$zov8HrFAcSf3leZzMeug9OfB32ML1DRmU5OFwTDarh4rLMQiXUqVm',1000);
INSERT INTO user VALUES(5,'jsc6','jsc6@gmail.com','$2b$12$sPaDw4yoIGR6ew9ff.7G6uhEYPlV5u1ktukEKw4VeLaZjXn88C2IO',200);
INSERT INTO user VALUES(6,'jsc7','jsc7@gmail.com','$2b$12$7pvpGUiBmEvwXFPohgu07uS8Li7hkzuPG2ZKy4egtc0QaSM3NdbhG',1000);
INSERT INTO user VALUES(7,'jsc8','jsc8@gmail.com','$2b$12$k09QPy4EEdjy/jyIvAvLV.ibxtMGFWnRzHgGTlc5TE2gD6u5Z5ssm',0);
INSERT INTO user VALUES(8,'admin','admin@mail.com','$2b$12$Um3PHC5RXxsXHtbQ7GnPIewOv8o51LT7am1LcwPA80R.7eMpQ.yK2',200);
INSERT INTO user VALUES(9,'tester','tester@mail.com','$2b$12$.GGK2fVoseielMdLDiQMyOpkm60Xs8ql4TtxNsPfthoKKXF2T5mHy',101);
CREATE TABLE item (
	id INTEGER NOT NULL, 
	name VARCHAR(30) NOT NULL, 
	price INTEGER NOT NULL, 
	barcode VARCHAR(12) NOT NULL, 
	description VARCHAR(1024) NOT NULL, 
	owner INTEGER, 
	PRIMARY KEY (id), 
	UNIQUE (name), 
	UNIQUE (barcode), 
	UNIQUE (description), 
	FOREIGN KEY(owner) REFERENCES user (id)
);
INSERT INTO item VALUES(1,'Iphone 10',800,'123456789123','description',8);
INSERT INTO item VALUES(2,'Laptop',1000,'654321789123','description2',7);
INSERT INTO item VALUES(3,'IPhone 12',899,'123123123123','Apple iPhone 12 Pro, 128GB, Graphite - Unlocked (Renewed Premium)',NULL);
INSERT INTO item VALUES(4,'Samsung Galaxy S22',1200,'124124124124','SAMSUNG Galaxy S22 Smartphone, Factory Unlocked Android Cell Phone, 256GB, 8K Camera & Video, Brightest Display, Long Battery Life, Fast 4nm Processor, US Version, Green',NULL);
INSERT INTO item VALUES(5,'IPhone 12 Pro',899,'125125125125','Apple iPhone 12 Pro, 256GB, Pacific Blue - Unlocked (Renewed Premium)',9);
INSERT INTO item VALUES(6,'IPhone 11 Pro',799,'126126126126','Apple iPhone 11 Pro, 256GB, Midnight Green - Fully Unlocked (Renewed Premium)',NULL);
COMMIT;
