require 'sqlite_adapter'

module ActiveRecord
  class Base
    @@connection = SqliteAdapter.new

    def self.find(id)
      results = @@connection.execute("select * from #{table_name} where id = #{id}")

      if results.any?
        self.new(*results.first)
      else
        raise "Record Not Found!"
      end
    end

    def self.table_name
      self.name + "s"
    end
  end
end
