create sequence if not exists lesson_protocol_seq start 1;

CREATE TABLE if not exists lesson_protocol
(
    lesson_protocol_id bigint unique not null default nextval('lesson_protocol_seq' :: regclass),
    discipline_id bigint not null references discipline(discipline_id),
    group_id bigint not null references student_group(group_id),
    lesson_time varchar(255) not null
    );

alter table lesson_protocol
    add constraint lesson_protocol_pk primary key (lesson_protocol_id);