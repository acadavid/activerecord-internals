require 'sqlite3'

# Open database
db = SQLite3::Database.new "db/test.db"

# Create a database
rows = db.execute <<-SQL
  create table products (
    name varchar(30),
    id int
  );
SQL

# Execute a few inserts
{
  "laptop" => 1,
  "tv" => 2,
}.each do |pair|
  db.execute "insert into products values ( ?, ? )", pair
end
