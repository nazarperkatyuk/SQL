DROP DATABASE if exists library ;

CREATE DATABASE library;

USE library;

CREATE TABLE books (
id int not null primary key auto_increment,
title varchar (120) not null,
description text,
price real not null,
isbn bigint (30) unique not null,
category_id int not null
);

create table categories (
id int not null primary key auto_increment,
name_of_category varchar (50) not null
);

create table authors (
id int not null primary key auto_increment,
name_of_author varchar (30) not null,
sername_of_author varchar (30) not null,
email_of_author varchar (50) not null unique,
adress varchar (40) not null,
data_of_birthday date not null
);

create table author_book (
book_id int not null,
author_id int not null,
foreign key (book_id) references books(id),
foreign key (author_id) references authors(id));

insert into books (title, description, price, isbn, category_id)
VALUES 
("Хроніки Нарнії. Повна історія чарівного світу",
"Колись добіжить кінця вік чарівної яблуні і з її стовбура виготовлять велику платтяну шафу. Довгі роки вона слугуватиме лише для зберігання пальт і шуб у будинку самотнього професора. Та одного дощового дня Пітер, Сьюзан, Едмунд і Люсі заховаються в ній від суворої домогосподарки. І потраплять у Нарнію — країну, яка відчиняє потаємні двері лише тим, хто щиро вірить у дива. Могутній лев Аслан — цар звірів і володар усього сущого, зла Біла Чаклунка з крижаним серцем, дивовижні казкові істоти та звірі, що вміють розмовляти, четверо дітей, які стануть нарнійськими королями й королевами та раз у раз повертатимуться зі світу людей, щоб урятувати Нарнію від темних сил… На сторінках семи частин фентезійної хроніки герої Льюїса вкотре доведуть, що зло завжди буде переможене добром. Для цього треба лише повірити хоча б у малесеньке диво!",
32.51,
9786171271227,
1
),
("Колдовское Таро. Открой свою судьбу",
"Карты Таро — один из древнейших способов предсказания грядущего. Карты дадут ответы на вопросы о будущем, любви, деньгах, карьере и многом другом. Нужно только знать, как правильно задать вопросы и уметь прочесть ответы. Теперь и у вас будет своя колода карт Таро, чтобы сразу приступить к практике!",
20.19,
9786171268853,
2
),
("Мазепа",
"На сторінках роману читачі зустрінуться з відомими історичними персонажами...",
76.32,
9789664815175,
3
),
("Все,що я хотіла сьогодні",
"Цю книжку я написала спеціально для молодих дівчат,щоб вони не робили дурних помилок і завжди залишалися собою",
65.11,
9789661447119,
4
);

insert into categories (name_of_category)
values ("Эзотерика"), ("Классика"), ("Роман");
insert into authors (name_of_author, sername_of_author, email_of_author, data_of_birthday, adress)
values
("Андрій", "Петренко", "petrenko@mail.com", "1950-03-07", "Росія"),
("Шерлок", "Холмс", "sherlok@mail.com", "1856-01-24", "English");

insert into author_book (book_id, author_id) 
values (1 , 1), (2, 2), (3 , 2), (4, 2);


select * from books as b
left join author_book as ab
on b.id = ab.book_id
join authors as a
on a.id = ab.author_id;

select c.name_of_category, b.title, b.description, isbn  from categories as c
right join books as b
on c.id = b.category_id
where isbn;

select * from authors as a
left join author_book as ab
on a.id = ab.book_id;





