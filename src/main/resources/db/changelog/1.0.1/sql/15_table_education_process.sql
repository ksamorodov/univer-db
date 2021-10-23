create sequence if not exists education_process_seq start 1;

CREATE TABLE if not exists education_process
(
    education_process_id bigint unique not null default nextval('education_process_seq' :: regclass),
    teacher_id bigint not null references teacher(teacher_id),
    student_id bigint not null references student(student_id),
    lesson_protocol_id bigint not null references lesson_protocol(lesson_protocol_id)
    );

alter table education_process
    add constraint education_process_pk primary key (education_process_id);