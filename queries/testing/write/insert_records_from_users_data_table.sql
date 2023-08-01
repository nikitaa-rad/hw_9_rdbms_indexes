SHOW GLOBAL VARIABLES LIKE 'innodb_flush_log_at_trx_commit';
SHOW VARIABLES LIKE 'innodb_flush_log_at_trx_commit';

SET GLOBAL innodb_flush_log_at_trx_commit=1;
SET GLOBAL innodb_flush_log_at_trx_commit=0;
SET GLOBAL innodb_flush_log_at_trx_commit=2;

DELETE FROM users_without_index
WHERE id > 45815755;
INSERT INTO users_without_index (email, first_name, last_name, date_of_birth, country, city, job_title)
SELECT email, first_name, last_name, date_of_birth, country, city, job_title
FROM users_data;

DELETE FROM users_without_index
WHERE id > 45815755;
INSERT INTO users_without_index (email, first_name, last_name, date_of_birth, country, city, job_title)
SELECT email, first_name, last_name, date_of_birth, country, city, job_title
FROM users_data;

DELETE FROM users_without_index
WHERE id > 45815755;
INSERT INTO users_without_index (email, first_name, last_name, date_of_birth, country, city, job_title)
SELECT email, first_name, last_name, date_of_birth, country, city, job_title
FROM users_data;


DELETE FROM users_with_hash_index
WHERE id > 45815755;
INSERT INTO users_with_hash_index (email, first_name, last_name, date_of_birth, country, city, job_title)
SELECT email, first_name, last_name, date_of_birth, country, city, job_title
FROM users_data;

DELETE FROM users_with_hash_index
WHERE id > 45815755;
INSERT INTO users_with_hash_index (email, first_name, last_name, date_of_birth, country, city, job_title)
SELECT email, first_name, last_name, date_of_birth, country, city, job_title
FROM users_data;

DELETE FROM users_with_hash_index
WHERE id > 45815755;
INSERT INTO users_with_hash_index (email, first_name, last_name, date_of_birth, country, city, job_title)
SELECT email, first_name, last_name, date_of_birth, country, city, job_title
FROM users_data;


DELETE FROM users_with_btree_index
WHERE id > 45815755;
INSERT INTO users_with_btree_index (email, first_name, last_name, date_of_birth, country, city, job_title)
SELECT email, first_name, last_name, date_of_birth, country, city, job_title
FROM users_data;

DELETE FROM users_with_btree_index
WHERE id > 45815755;
INSERT INTO users_with_btree_index (email, first_name, last_name, date_of_birth, country, city, job_title)
SELECT email, first_name, last_name, date_of_birth, country, city, job_title
FROM users_data;

DELETE FROM users_with_btree_index
WHERE id > 45815755;
INSERT INTO users_with_btree_index (email, first_name, last_name, date_of_birth, country, city, job_title)
SELECT email, first_name, last_name, date_of_birth, country, city, job_title
FROM users_data;
