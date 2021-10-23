create sequence if not exists teacher_leading_discipline start 1;

CREATE TABLE if not exists teacher_leading_discipline
(
    discipline_id bigint not null default nextval('discipline_seq' :: regclass),
    teacher_id bigint not null default nextval('teacher_seq' :: regclass)
);


