require('minitest/autorun')
require('minitest/rg')
require_relative('../customer.rb')
require_relative('../shop.rb')

class TestShop < Minitest::Test

def setup
  @shop = Shop.new("DoubleTree", 250, 15, 2, 0)
  @customer = Customer.new("Jimbob", 200, 2)
end

def test_shop_name
  assert_equal("DoubleTree", @shop.name)
end

def test_shop_till_amount
  assert_equal(250, @shop.till)
end

def test_stock_levels
  assert_equal(15, @shop.stock)
end

def test_shop_sells_stock
  @shop.shop_sells_stock(10, 1, 1)
  assert_equal(14, @shop.stock())
  assert_equal(260, @shop.till())
  assert_equal(3, @shop.sales())
end

def test_refund_to_customer
  @shop.shop_refunds_to_customer(10, 1, 1)
  assert_equal(16, @shop.stock())
  assert_equal(240, @shop.till())
  assert_equal(2, @shop.sales())
end

# def test_sales_less_refunds
#   @shop.total_sales_less_refunds(10, 4, 4, 2)
#   #assert_equal(270, @shop.till())
#   # assert_equal(11, @shop.stock())
#   assert_equal(40, @shop.sales())
#   assert_equal(2, @shop.refunds())
# end

end
