create sequence if not exists condition_seq start 1;

CREATE TABLE if not exists conditions
(
    condition_id bigint unique not null default nextval('condition_seq' :: regclass),
    salary numeric not null,
    busy_time numeric not null ,
    benefits varchar(300)
    );

alter table conditions
    add constraint conditions_pk primary key (condition_id);
