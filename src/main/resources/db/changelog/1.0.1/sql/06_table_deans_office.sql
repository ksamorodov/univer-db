create sequence if not exists deans_office_seq start 1;

CREATE TABLE if not exists deans_office
(
    deans_office_id bigint unique not null default nextval('deans_office_seq' :: regclass),
    name varchar(255) not null
    );

alter table deans_office
    add constraint deans_office_pk primary key (deans_office_id);