create table receipe(
id integer not null,
name varchar(50),
description varchar(250),
impPath varchar(50),
primary key(id)
);

create table ingredient(
id integer not null,
name varchar(50),
amount varchar(50)
);

insert into receipe(id,name,description,impPath) values (1,'chciken','Made of chicken', 'xyz');
insert into receipe(id,name,description,impPath) values (2,'mutton','Made of mutton', 'wxyz');


insert into ingredient(id,name,amount) values (1,'chicken','150');
insert into ingredient(id,name,amount) values (1,'ginger','15');