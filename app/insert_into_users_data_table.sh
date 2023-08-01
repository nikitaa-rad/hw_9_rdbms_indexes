#!/bin/bash

insert_records() {
  for ((i = 1; i <= $1; i++)); do
    echo "$i"
    docker exec -i mysql_db mysql -uuser -ppassword -Dapp < queries/populate_data/insert_records_in_users_data_table.sql
  done
}

if [ -z "$1" ]; then
  echo "Usage: $0 <num_records>"
  exit 1
fi

insert_records "$1"
