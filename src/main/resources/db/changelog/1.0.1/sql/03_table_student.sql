create sequence if not exists student_seq start 1;

CREATE TABLE if not exists student
(
    student_id  bigint unique not null default nextval('student_seq' :: regclass),
    group_id bigint not null references student_group(group_id),
    fio varchar(300) not null,
    admission_date date not null,
    gradebook varchar(20) not null
    );

alter table student
    add constraint student_pk primary key (student_id);