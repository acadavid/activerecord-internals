require 'active_record'

class Product < ActiveRecord::Base
  attr_accessor :id, :name

  def initialize(name, id)
    @id = id
    @name = name
  end

end
