INSERT INTO department (id, name) VALUES (1, 'Sales');
INSERT INTO department (id, name) VALUES (2, 'Marketing');
INSERT INTO department (id, name) VALUES (3, 'Engineering');

INSERT INTO role (id, title, salary, department_id) VALUES (1, 'Sales Manager', 80000, 1);
INSERT INTO role (id, title, salary, department_id) VALUES (2, 'Sales Representative', 50000, 1);
INSERT INTO role (id, title, salary, department_id) VALUES (3, 'Marketing Manager', 75000, 2);
INSERT INTO role (id, title, salary, department_id) VALUES (4, 'Marketing Coordinator', 40000, 2);
INSERT INTO role (id, title, salary, department_id) VALUES (5, 'Software Engineer', 90000, 3);
INSERT INTO role (id, title, salary, department_id) VALUES (6, 'Product Manager', 100000, 3);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id) VALUES (1, 'John', 'Smith', 1, null);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id) VALUES (2, 'Jane', 'Doe', 2, 1);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id) VALUES (3, 'Robert', 'Robertson', 5, null);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id) VALUES (4, 'John', 'Johnson', 3, 1);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id) VALUES (5, 'Kurt', 'Cobain', 6, 3);
