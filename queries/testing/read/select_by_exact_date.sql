select * from users_without_index where date_of_birth = '1983-09-11';
select * from users_without_index where date_of_birth = '2000-08-13';
select * from users_without_index where date_of_birth = '1970-02-26';

select * from users_with_hash_index where date_of_birth = '1983-09-11';
select * from users_with_hash_index where date_of_birth = '2000-08-13';
select * from users_with_hash_index where date_of_birth = '1970-02-26';

select * from users_with_btree_index where date_of_birth = '1983-09-11';
select * from users_with_btree_index where date_of_birth = '2000-08-13';
select * from users_with_btree_index where date_of_birth = '1970-02-26';


select id from users_without_index where date_of_birth = '1983-09-11';
select id from users_without_index where date_of_birth = '2000-08-13';
select id from users_without_index where date_of_birth = '1970-02-26';

select id from users_with_hash_index where date_of_birth = '1983-09-11';
select id from users_with_hash_index where date_of_birth = '2000-08-13';
select id from users_with_hash_index where date_of_birth = '1970-02-26';

select id from users_with_btree_index where date_of_birth = '1983-09-11';
select id from users_with_btree_index where date_of_birth = '2000-08-13';
select id from users_with_btree_index where date_of_birth = '1970-02-26';
