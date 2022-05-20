create table users (
  id int not null,
  username varchar(30) not null,
  email_address varchar(50) not null,
  password_hash varchar(60) not null,
  budget int not null,
  primary key (id),
  unique (username),
  unique (email_address)
);
insert into users
values (
  1, 
  'admin', 
  'admin@mail.com', 
  '$2b$12$Um3PHC5RXxsXHtbQ7GnPIewOv8o51LT7am1LcwPA80R.7eMpQ.yK2', 
  200
);
insert into users
values (
  2, 
  'tester', 
  'tester@mail.com', 
  '$2b$12$.GGK2fVoseielMdLDiQMyOpkm60Xs8ql4TtxNsPfthoKKXF2T5mHy', 
  101
);
insert into users
values (
  3, 
  'tester2', 
  'tester2@mail.com', 
  '$2b$12$N2PnTkh/CSOUrEeiyu3oHOwFhPlHzAfbhq6Sx6VsDoLJGmv1yI3um', 
  101
);
create table item (
  id int not null,
  name varchar(30) not null,
  price int not null,
  barcode varchar(12) not null,
  description varchar(1024) not null,
  owner int,
  primary key (id),
  unique (name),
  unique (barcode),
  unique (description),
  foreign key (owner)
  references users (id)
);
insert into item
values (
  1, 
  'Iphone 10', 
  800, 
  '123456789123', 
  'description', 
  1
);
insert into item
values (
  2, 
  'Laptop', 
  1000, 
  '654321789123', 
  'description2', 
  2
);
insert into item
values (
  3, 
  'IPhone 12', 
  899, 
  '123123123123', 
  'Apple iPhone 12 Pro, 128GB, Graphite - Unlocked (Renewed Premium)', 
  3
);
insert into item
values (
  4, 
  'Samsung Galaxy S22', 
  1200, 
  '124124124124', 
  'SAMSUNG Galaxy S22 Smartphone, Factory Unlocked Android Cell Phone, 256GB, 8K Camera & Video, Brightest Display, Long Battery Life, Fast 4nm Processor, US Version, Green', 
  null
);
insert into item
values (
  5, 
  'IPhone 12 Pro', 
  899, 
  '125125125125', 
  'Apple iPhone 12 Pro, 256GB, Pacific Blue - Unlocked (Renewed Premium)', 
  null
);
insert into item
values (
  6, 
  'IPhone 11 Pro', 
  799, 
  '126126126126', 
  'Apple iPhone 11 Pro, 256GB, Midnight Green - Fully Unlocked (Renewed Premium)', 
  null
);