docker exec -i mysql_db mysql -uuser -ppassword -Dapp < queries/structure/create_table_users_data.sql
docker exec -i mysql_db mysql -uuser -ppassword -Dapp < queries/structure/create_table_users_with_btree_index.sql
docker exec -i mysql_db mysql -uuser -ppassword -Dapp < queries/structure/create_table_users_with_hash_index.sql
docker exec -i mysql_db mysql -uuser -ppassword -Dapp < queries/structure/create_table_users_without_index.sql
