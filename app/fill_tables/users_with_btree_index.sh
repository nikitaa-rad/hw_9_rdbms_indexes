#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <num_records>"
  exit 1
fi

insert_records() {
  docker exec -i mysql_db mysql -uuser -ppassword -Dapp < queries/populate_data/inserts/to_users_with_btree_index_table.sql
}

for ((i = 1; i <= $1; i++)); do
  echo "$i"
  insert_records
done
