drop database if exists car;
create database car;
use car;


CREATE TABLE owners(
id int not null primary key auto_increment,
name_of_owners varchar(30) not null,
surname_of_owners varchar(30) not null,
telephone integer not null,
email varchar(30),
town_id int not null
);

insert into owners (name_of_owners, surname_of_owners, telephone, email,town_id) values
('Микола', 'Петренко', 968235091, 'email@mail.com',1),
('Omar', 'Nymiz', 487552901, 'ny@gmail.com',3),
('Richard', 'Grei', 318375420,  'grei@gmail.com',2);

CREATE TABLE employees(
id int not null primary key auto_increment,
name_of_employees varchar(15) not null,
surname_of_employees varchar(15) not null,
telephone bigint not null,
email varchar(30),
salary decimal(8,2) not null
);

insert into employees (name_of_employees, surname_of_employees, telephone, email, salary) values
('Vasyl', 'Vorobiy', 0987448111, null, 12000),
('Nazar', 'Yasval', 09876521224, 'yasvsal@gmail.com', 10000),
('Petro', 'Alex', 0945732190, 'alex@ukr.net', 10000 ),
('Nastya', 'Markevich', 0683754343, null, 14000 ),
('Valya', 'Mykal', 0958301001, 'vasya@gmail.com', 12500);


create table categories(
id int primary key auto_increment,
name varchar(50) not null,
owner_id int not null,
employee_id int not null,
brand_of_car_id int not null,
type_of_car_id int not null,
license_plate_type_id int not null
);

insert into categories(name, owner_id, employee_id, brand_of_car_id, type_of_car_id, license_plate_type_id)
values
("Поставлення на облік",1,2,1,1,1),
("Зняття з обліку",1,2,1,2,2);

create table towns(
id int primary key auto_increment,
name varchar(80) not null
);

insert into towns(name)
values
("Львів"),
("Київ"),
("Івано-Франківськ"),
("Чернівці"),
("Мюнхен"),
("Мілан");

create table countries(
id int primary key auto_increment,
name varchar(70) not null
);

insert into countries(name)
values
("Німеччина"),
("Україна"),
("Італія");

create table brand_of_cars(
id int primary key auto_increment,
brand varchar(50)
);

insert into brand_of_cars(brand)
values
("BMW"),
("MERSEDES_BENS"),
("RENAULD"),
("OPEL"),
("VAZ"),
("WOLKSWADEN"),
("MAZDA");

create table type_of_cars(
id int primary key auto_increment,
type varchar(70)
);

insert into type_of_cars(type)
values
("легкові"),
("грузові");

create table license_plate_types(
id int primary key auto_increment,
type varchar(70)
);

insert into license_plate_types(type)
values
("постійні"),
("транзитні");

alter table categories add foreign key(owner_id) references owners(id);
alter table categories add foreign key(employee_id) references employees(id);
alter table owners add foreign key(town_id) references towns(id);
alter table categories add foreign key(brand_of_car_id) references brand_of_cars(id);
alter table categories add foreign key(type_of_car_id) references type_of_cars(id);
alter table categories add foreign key(license_plate_type_id) references license_plate_types(id);

select o.name_of_owners, o.email,e.salary from owners as o
left join employees  as e
on o.id=e.id;

select * from owners as o
join categories  as c
on o.id=c.employee_id












