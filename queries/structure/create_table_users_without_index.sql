CREATE TABLE users_without_index (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE,
    country VARCHAR(100),
    city VARCHAR(100),
    job_title VARCHAR(100)
);