require_relative 'test_helper'
require 'product'

class ProductTest < MiniTest::Test
  def test_initialize
    product = Product.new("Laptop", 25)

    assert_equal product.id, 25
    assert_equal product.name, "Laptop"
  end
end
