class Customer

attr_accessor :name, :wallet, :goods

def initialize(name, wallet, goods)
  @name = name
  @wallet = wallet
  @goods = goods
end

def get_customer_name
  return @name
end

def get_customer_wallet_amount
  return @wallet
end

def customer_buys(goods_amount)
  @wallet -= goods_amount
end

def customer_gets_refund(refund_amount, goods)
  @wallet += refund_amount
  @goods -= goods
end

end
