create sequence if not exists teacher_seq start 1;

CREATE TABLE if not exists teacher
(
    first_name varchar(100) not null,
    last_name varchar(100) not null,
    patronymic varchar(100) not null,
    teacher_id bigint unique not null default nextval('teacher_seq' :: regclass),
    cathedra_id bigint not null references cathedra(cathedra_id),
    employee_function_id not null references employee_function(employee_function_id)
    );

alter table teacher
    add constraint teacher_pk primary key (teacher_id);