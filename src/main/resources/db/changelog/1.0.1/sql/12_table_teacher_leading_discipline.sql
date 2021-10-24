create sequence if not exists teacher_leading_discipline start 1;

CREATE TABLE if not exists teacher_leading_discipline
(
    discipline_id bigint not null references discipline(discipline_id),
    teacher_id bigint not null references teacher(teacher_id)
);


