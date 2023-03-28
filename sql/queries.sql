CREATE TABLE IF NOT EXISTS department (
  id SERIAL PRIMARY KEY,
  name VARCHAR(30) NOT NULL
);

INSERT INTO department (id, name)
VALUES (1, 'Sales'), (2, 'Marketing'), (3, 'Engineering');

CREATE TABLE IF NOT EXISTS role (
  id SERIAL PRIMARY KEY,
  title VARCHAR(30) NOT NULL,
  salary INT NOT NULL,
  department_id INT NOT NULL REFERENCES department(id)
);

INSERT INTO role (id, title, salary, department_id)
VALUES (1, 'Sales Manager', 80000, 1), (2, 'Sales Representative', 50000, 1), (3, 'Marketing Manager', 75000, 2), (4, 'Marketing Coordinator', 40000, 2), (5, 'Software Engineer', 90000, 3), (6, 'Product Manager', 100000, 3);

CREATE TABLE IF NOT EXISTS employee (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT NOT NULL REFERENCES role(id),
  manager_id INT REFERENCES employee(id)
);
