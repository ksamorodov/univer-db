create sequence if not exists institute_seq start 1;

CREATE TABLE if not exists institute
(
    institute_id bigint unique not null default nextval('institute_seq' :: regclass),
    name varchar(255) not null
    );

alter table institute
    add constraint institute_pk primary key (institute_id);