CREATE TABLE IF NOT EXISTS department (
    id INT AUTO_INCREMENT PRIMARY KEY,
    dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS job (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES department(id)
);

CREATE TABLE IF NOT EXISTS employee (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    job_id INT,
    manager_id INT,
    FOREIGN KEY (job_id) REFERENCES job(id),
    FOREIGN KEY (manager_id) REFERENCES employee(id)
);

INSERT INTO department (dept_name)
VALUES 
('Parks and Recreation'),
('Budget and Finance'),
('City Planning');


INSERT INTO job (title, salary, department_id)
VALUES 
('Senior Director', 75000, 1),
('Regional Manager', 45000, 1),
('Assistant to the Regional Manager', 18000, 1),
('Senior Sales Associate', 100000, 2),
('Human Resources', 80000, 2),
('Finance', 55000, 3),
('Receptionist', 0, 1);

INSERT INTO employee (first_name, last_name, job_id, manager_id)
VALUES 
('Mike', 'Wallace', 1, NULL),
('Michael', 'Scott', 2, 1),
('Dwight', 'Schrute', 3, 2),
('Jim', 'Halpert', 4, NULL),
('Toby', 'Flenderson', 5, 4),
('Creed', 'Bratton', 6, NULL),
('Pam', 'Beesly', 7, NULL);