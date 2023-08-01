SELECT * FROM users_without_index WHERE date_of_birth BETWEEN '1994-01-01' AND '2003-01-01';
SELECT * FROM users_without_index WHERE date_of_birth BETWEEN '1979-01-01' AND '1995-01-01';
SELECT * FROM users_without_index WHERE date_of_birth BETWEEN '1973-01-01' AND '1985-01-01';

SELECT * FROM users_with_hash_index WHERE date_of_birth BETWEEN '1994-01-01' AND '2003-01-01';
SELECT * FROM users_with_hash_index WHERE date_of_birth BETWEEN '1979-01-01' AND '1995-01-01';
SELECT * FROM users_with_hash_index WHERE date_of_birth BETWEEN '1973-01-01' AND '1985-01-01';

SELECT * FROM users_with_btree_index WHERE date_of_birth BETWEEN '1994-01-01' AND '2003-01-01';
SELECT * FROM users_with_btree_index WHERE date_of_birth BETWEEN '1979-01-01' AND '1995-01-01';
SELECT * FROM users_with_btree_index WHERE date_of_birth BETWEEN '1973-01-01' AND '1985-01-01';


SELECT id FROM users_without_index WHERE date_of_birth BETWEEN '1994-01-01' AND '2003-01-01';
SELECT id FROM users_without_index WHERE date_of_birth BETWEEN '1979-01-01' AND '1995-01-01';
SELECT id FROM users_without_index WHERE date_of_birth BETWEEN '1973-01-01' AND '1985-01-01';

SELECT id FROM users_with_hash_index WHERE date_of_birth BETWEEN '1994-01-01' AND '2003-01-01';
SELECT id FROM users_with_hash_index WHERE date_of_birth BETWEEN '1979-01-01' AND '1995-01-01';
SELECT id FROM users_with_hash_index WHERE date_of_birth BETWEEN '1973-01-01' AND '1985-01-01';

SELECT id FROM users_with_btree_index WHERE date_of_birth BETWEEN '1994-01-01' AND '2003-01-01';
SELECT id FROM users_with_btree_index WHERE date_of_birth BETWEEN '1979-01-01' AND '1995-01-01';
SELECT id FROM users_with_btree_index WHERE date_of_birth BETWEEN '1973-01-01' AND '1985-01-01';
