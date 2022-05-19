BEGIN TRANSACTION;
CREATE TABLE users (
	id SERIAL, 
	username VARCHAR(30) NOT NULL, 
	email_address VARCHAR(50) NOT NULL, 
	password_hash VARCHAR(60) NOT NULL, 
	budget INTEGER NOT NULL, 
	PRIMARY KEY (id), 
	UNIQUE (username), 
	UNIQUE (email_address)
);
INSERT INTO users(username, email_address, password_hash, budget) VALUES('admin','admin@mail.com','$2b$12$Um3PHC5RXxsXHtbQ7GnPIewOv8o51LT7am1LcwPA80R.7eMpQ.yK2',200);
INSERT INTO users(username, email_address, password_hash, budget) VALUES('tester','tester@mail.com','$2b$12$.GGK2fVoseielMdLDiQMyOpkm60Xs8ql4TtxNsPfthoKKXF2T5mHy',101);
CREATE TABLE item (
	id SERIAL, 
	name VARCHAR(30) NOT NULL, 
	price INTEGER NOT NULL, 
	barcode VARCHAR(12) NOT NULL, 
	description VARCHAR(1024) NOT NULL, 
	owner INTEGER, 
	PRIMARY KEY (id), 
	UNIQUE (name), 
	UNIQUE (barcode), 
	UNIQUE (description), 
	FOREIGN KEY(owner) REFERENCES users (id)
);
INSERT INTO item(name, price, barcode, description, owner) VALUES('Iphone 10',800,'123456789123','description',1);
INSERT INTO item(name, price, barcode, description, owner) VALUES('Laptop',1000,'654321789123','description2',2);
INSERT INTO item(name, price, barcode, description, owner) VALUES('IPhone 12',899,'123123123123','Apple iPhone 12 Pro, 128GB, Graphite - Unlocked (Renewed Premium)',NULL);
INSERT INTO item(name, price, barcode, description, owner) VALUES('Samsung Galaxy S22',1200,'124124124124','SAMSUNG Galaxy S22 Smartphone, Factory Unlocked Android Cell Phone, 256GB, 8K Camera & Video, Brightest Display, Long Battery Life, Fast 4nm Processor, US Version, Green',NULL);
INSERT INTO item(name, price, barcode, description, owner) VALUES('IPhone 12 Pro',899,'125125125125','Apple iPhone 12 Pro, 256GB, Pacific Blue - Unlocked (Renewed Premium)',NULL);
INSERT INTO item(name, price, barcode, description, owner) VALUES('IPhone 11 Pro',799,'126126126126','Apple iPhone 11 Pro, 256GB, Midnight Green - Fully Unlocked (Renewed Premium)',NULL);
COMMIT;
