create sequence if not exists student_group_seq start 1;

CREATE TABLE if not exists student_group
(
    group_id bigint unique not null default nextval('student_group_seq' :: regclass),
    group_number varchar(20) not null,
    direction_id bigint not null references direction(direction_id),
    formation_year varchar(4) not null,
    profile varchar(200) not null
    );

alter table student_group
    add constraint group_number_pk primary key (group_number);