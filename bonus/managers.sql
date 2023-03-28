async function insertData() {
  const departments = [
    { id: 1, name: 'Sales' },
    { id: 2, name: 'Marketing' },
    { id: 3, name: 'Engineering' },
  ];

  const departmentQuery = {
    text: 'INSERT INTO departments (id, name) VALUES ($1, $2)',
  };

  try {
    for (let department of departments) {
      const values = [department.id, department.name];
      departmentQuery.values = values;
      await client.query(departmentQuery);
    }
    console.log('Inserted departments');
  } catch (error) {
    console.error('Error inserting departments', error);
  }

  const roles = [
    { id: 1, title: 'Sales Manager', salary: 80000, department_id: 1 },
    { id: 2, title: 'Sales Representative', salary: 50000, department_id: 1 },
    { id: 3, title: 'Marketing Manager', salary: 75000, department_id: 2 },
    { id: 4, title: 'Marketing Coordinator', salary: 40000, department_id: 2 },
    { id: 5, title: 'Software Engineer', salary: 90000, department_id: 3 },
    { id: 6, title: 'Product Manager', salary: 100000, department_id: 3 },
  ];

  const roleQuery = {
    text: 'INSERT INTO roles (id, title, salary, department_id) VALUES ($1, $2, $3, $4)',
  };

  try {
    for (let role of roles) {
      const values = [role.id, role.title, role.salary, role.department_id];
      roleQuery.values = values;
      await client.query(roleQuery);
    }
    console.log('Inserted roles');
  } catch (error) {
    console.error('Error inserting roles', error);
  }

  const employees = [
    { id: 1, first_name: 'John', last_name: 'Smith', role_id: 1, manager_id: null },
    { id: 2, first_name: 'Jane', last_name: 'Doe', role_id: 2, manager_id: 1 },
    { id: 3, first_name: 'Robert', last_name: 'Robertson', role_id: 5, manager_id: null },
    { id: 4, first_name: 'John', last_name: 'Johnson', role_id: 3, manager_id: 1 },
    { id: 5, first_name: 'Kurt', last_name: 'Cobain', role_id: 6, manager_id: 3 },
  ];

  const employeeQuery = {
    text: 'INSERT INTO employees (id, first_name, last_name, role_id, manager_id) VALUES ($1, $2, $3, $4, $5)',
  };

  try {
    for (let employee of employees) {
      const values = [employee.id, employee.first_name, employee.last_name, employee.role_id, employee.manager_id];
      employeeQuery.values = values;
      await client.query(employeeQuery);
    }
    console.log('Inserted employees');
  } catch (error) {
    console.error('Error inserting employees', error);
  }

  // Update employee managers
  const updateManagerQuery = {
    text: 'UPDATE employees SET manager_id = $1 WHERE id = $2',
  };

  try {
    const newManagerId = 3;
    const employeeId = 
