create sequence if not exists direction_seq start 1;

CREATE TABLE if not exists direction
(
    direction_id bigint unique not null default nextval('direction_seq' :: regclass),
    direction_code varchar(50) not null,
    profession_code varchar(50) not null,
    advanced_group_code varchar(50),
    graduation_code varchar(50) not null
    );

alter table direction
    add constraint direction_pk primary key (direction_id);