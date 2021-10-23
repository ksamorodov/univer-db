create sequence if not exists department_seq start 1;

CREATE TABLE if not exists department
(
    department_id bigint unique not null default nextval('department_seq' :: regclass),
    dean_office_id bigint not null references deans_office(deans_office_id),
    name varchar(255) not null
    );

alter table department
    add constraint department_pk primary key (department_id);