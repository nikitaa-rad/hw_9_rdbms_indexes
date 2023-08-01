# RDBMS indexes comparison(MySQL 8)

## Prepare Environment

1. Prepare the database structure by running the following script:

   ```bash
   bash create_structure.sh

2. Generate SQL queries for inserting data with random values. Specify the number of records to be generated:

   ```bash
   bash queries/populate_data/prepare_query.sh 40000
   
3. Insert data into the user_data table. Specify the number of times to use insert queries from the generated files:

   ```bash
   bash app/insert_into_users_data_table.sh 10
   
4. Fill tables for testing indexes by copying data N times from the previously populated users_data table:
   ```bash
   bash app/fill_tables/users_without_index.sh 100
   bash app/fill_tables/users_with_hash_index.sh 100
   bash app/fill_tables/users_with_btree_index.sh 100

## Testing

### Read

- To test selecting by exact value, use queries in queries/testing/read/select_by_exact_date.sql.

- To test selecting by a small date range, use queries in queries/testing/read/select_by_small_date_range.sql.

- To test selecting by a big date range, use queries in queries/testing/read/select_by_big_date_range.sql.

### Read

- To test inserts, see queries in queries/testing/write/insert_records_from_users_data_table.sql.

## Results

Results of the tests can be found in index_comparison.xlsx file.
