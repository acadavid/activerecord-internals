require 'sqlite3'

class SqliteAdapter
  def initialize
    path = File.dirname(__FILE__) + '/../db/test.db'
    @db = SQLite3::Database.new path
  end

  def execute(query)
    @db.execute(query)
  end
end
