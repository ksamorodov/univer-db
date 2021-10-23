create sequence if not exists discipline_seq start 1;

CREATE TABLE if not exists discipline
(
    discipline_id bigint unique not null default nextval('discipline_seq' :: regclass),
    number_of_hours numeric not null,
    name varchar(300) not null,
    types_of_lessons varchar(300) not null
);

alter table discipline
    add constraint discipline_pk primary key (discipline_id);