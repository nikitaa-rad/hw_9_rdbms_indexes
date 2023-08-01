#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <num_records>"
  exit 1
fi

TABLE_NAME="users_data"
FILE_NAME="queries/populate_data/insert_records_in_users_data_table.sql"

generate_random_date() {
  start_date="1970-01-01"
  end_date="2021-09-28"

  # Generate a random timestamp between start_date and end_date
  random_timestamp=$(jot -r 1 $(date -jf "%Y-%m-%d" "$start_date" "+%s") $(date -jf "%Y-%m-%d" "$end_date" "+%s"))

  random_date=$(date -jf "%s" "$random_timestamp" "+%Y-%m-%d")
  echo "$random_date"
}

generate_random_name() {
  cat /dev/urandom | tr -dc 'a-zA-Z' | fold -w "$1" | head -n 1
}

generate_inserts() {
  for ((i = 1; i <= $1; i++)); do
    first_name=$(generate_random_name 5)
    last_name=$(generate_random_name 8)
    random_date=$(generate_random_date)
    echo "INSERT INTO $TABLE_NAME (email, first_name, last_name, date_of_birth, country, city, job_title) VALUES ('user$i@example.com', '$first_name', '$last_name', '$random_date', 'Country', 'City', 'Job Title');"
  done
}

generate_inserts "$1" > $FILE_NAME
