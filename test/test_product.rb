require_relative 'test_helper'
require 'product'

class ProductTest < MiniTest::Test
  def test_initialize
    product = Product.new("Laptop", 25)

    assert_equal product.id, 25
    assert_equal product.name, "Laptop"
  end

  def test_find_method
    product = Product.find(2)

    assert_equal product.name, "tv"
  end

  def test_find_not_found
    err = assert_raises RuntimeError do
      Product.find(999)
    end

    assert_equal err.message, "Record Not Found!"
  end
end
