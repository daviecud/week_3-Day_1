require('minitest/autorun')
require('minitest/rg')
require_relative('../customer.rb')
require_relative('../shop.rb')

class TestCustomer < Minitest::Test

def setup
  @customer = Customer.new("JimBob", 200, 2)
  @shop = Shop.new("DoubleTree", 250, 15, 2, 0)
end

def test_customer_name
  assert_equal("JimBob", @customer.name)
end

def test_customer_wallet_amount
  assert_equal(200, @customer.wallet)
end

def test_customer_buys
  @customer.customer_buys(10)
  assert_equal(190, @customer.wallet())
end

def test_customer_gets_refund
  @customer.customer_gets_refund(10, 1)
  assert_equal(210, @customer.wallet())
  assert_equal(1, @customer.goods())
end

end
