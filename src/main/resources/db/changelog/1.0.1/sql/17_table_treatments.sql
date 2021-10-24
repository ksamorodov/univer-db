create sequence if not exists treatments_seq start 1;

CREATE TABLE if not exists treatments
(
    treatments_id bigint unique not null default nextval('treatments_seq' :: regclass),
    teacher_id bigint not null  references teacher(teacher_id),
    department_id bigint not null  references department(department_id),
    student_id bigint not null references student(student_id),
    description varchar(300)
    );

alter table treatments
    add constraint treatments_pk primary key (treatments_id);