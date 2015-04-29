require 'sqlite3'

# Open database
db = SQLite3::Database.new "db/test.db"

# Find a few rows
db.execute( "select * from products" ) do |row|
  p row
end
