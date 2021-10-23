create sequence if not exists employee_function_seq start 1;

CREATE TABLE if not exists employee_function
(
    employee_function_id bigint unique not null default nextval('employee_function_seq' :: regclass),
    condition_id bigint not null references conditions(condition_id)
    );

alter table employee_function
    add constraint employee_function_pk primary key (employee_function_id);