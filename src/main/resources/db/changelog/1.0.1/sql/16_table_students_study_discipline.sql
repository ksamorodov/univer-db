create sequence if not exists students_study_discipline_eq start 1;

CREATE TABLE if not exists students_study_discipline
(
    teacher_id bigint not null references teacher(teacher_id),
    student_id bigint not null references student(student_id)
    );
