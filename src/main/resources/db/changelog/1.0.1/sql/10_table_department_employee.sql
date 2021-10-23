create sequence if not exists department_employee_seq start 1;

CREATE TABLE if not exists department_employee
(
    department_employee_id bigint unique not null default nextval('department_employee_seq' :: regclass),
    employee_function_id bigint not null references employee_function(employee_function_id),
    department_id bigint not null references department(department_id),
    first_name varchar(100) not null,
    last_name varchar(100) not null,
    patronymic varchar(100) not null
    );

alter table department_employee
    add constraint department_employee_pk primary key (department_employee_id);
