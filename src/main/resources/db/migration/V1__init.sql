create table strs(
    id serial primary key,
    str varchar(30) not null
);

insert into strs values
    (1, 'str1'),
    (2, 'str2'),
    (3, 'str3');