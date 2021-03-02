Just a bunch of standard SQL command. First run `create_database.sql` and
then `populate_database.sql` so you'll have a sample database to run the
rest of the commands on. 

Some commands may alter or delete data or tables, so that others won't
work. If that's the the case just drop the database and recreate it from
the above two scripts.

The SQL is fairl basic and standard, but should get you started. I'll add
views and stored procedures later on. It has been tested on MySql/MariaDB
as they are free and widely used. Also, it is compatible with AWS Aurora,
which would allow you to scale out tremendously.

Enjoy, Maarten
