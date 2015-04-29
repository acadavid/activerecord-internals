require 'sqlite_adapter'

module ActiveRecord
  class Base
    @@connection = SqliteAdapter.new

    def self.find(id)
      results = @@connection.execute("select * from products where id = #{id}")

      if results.any?
        self.new(*results.first)
      else
        raise "Record Not Found!"
      end
    end
  end
end
