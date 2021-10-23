create sequence if not exists cathedra_seq start 1;

CREATE TABLE if not exists cathedra
(
    cathedra_id bigint unique not null default nextval('cathedra_seq' :: regclass),
    institute_id bigint not null references institute(institute_id),
    name varchar(255) not null
    );

alter table cathedra
    add constraint cathedra_pk primary key (cathedra_id);