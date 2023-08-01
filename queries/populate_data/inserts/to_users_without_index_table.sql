INSERT INTO users_without_index (email, first_name, last_name, date_of_birth, country, city, job_title)
SELECT email, first_name, last_name, date_of_birth, country, city, job_title
FROM users_data;
