Create table Customer(
cid int primary key,
cname varchar(50),
caddress varchar(200),
cphone varchar(15)
created_on timestamp not null
);


Create table Salesperson(
spid int primary key,
spname varchar(50),
spaddress varchar(200),
spphone varchar(15)
created_on timestamp not null
);


Create table Product(
Prodid int primary key,
prodmodel varchar(50),
prodmanuf varchar(200),
prodslnum serial,
prodwt varchar(50),
prodcost int,
created_on timestamp not null
);

Create table dealer(
spid int,
prodid int,
cid int,
cname varchar(50),
cphone varchar(15),
prodmodel varchar(50),
prodmanuf varchar(200),
prodslnum serial,
prodwt varchar(50),
prodcost int,
sale_date timestamp not null
);