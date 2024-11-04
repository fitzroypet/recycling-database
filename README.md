# Recycling Services Database

A SQL database implementation for a recycling services platform.

## Structure 

sql
sql/
├── schema/
│ └── create_schema.sql
├── tables/
│ ├── create_businesses_table.sql
│ ├── create_business_hours_table.sql
│ ├── create_users_table.sql
│ └── ...
├── views/
│ └── business_search_view.sql
├── procedures/
│ └── usp_upsert_business.sql
└── tests/
├── 1_test_users.sql
├── 2_test_business.sql
└── ...


## Setup

1. Create a new database in SQL Server
2. Run the scripts in the following order:
   - schema/create_schema.sql
   - tables/*.sql
   - views/*.sql
   - procedures/*.sql

## Testing

Run the test scripts in numerical order:

bash
sql/tests/1_test_users.sql
sql/tests/2_test_business.sql
...


## Features

- Business profile management
- User management
- Material recycling transactions
- Collection bookings
- Subscription system

