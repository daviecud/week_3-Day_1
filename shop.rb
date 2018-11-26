class Shop

attr_accessor :name, :till, :stock, :sales, :refunds

def initialize(name, till, stock, sales, refunds)
  @name = name
  @till = till
  @stock = stock
  @sales = sales
  @refunds = refunds
end

def get_shop_name
  return @name
end

def get_shop_till_amount
  return @till
end

def get_shop_stock_level
  return @stock
end

def shop_sells_stock(cash, stock, sale)
  @stock -= stock
  @till += cash
  @sales += sale
end

def shop_refunds_to_customer(cash, stock, sales)
  @stock += stock
  @till -= cash
end

# def total_sales_less_refunds(cash, stock, sale, refunds)
#   @sales = cash * sale
#   @refunds = cash * refunds
#   total_sales = @sales - @refunds
#   return total_sales
#   # sales = @shop.shop_sells_stock()
#   # refunds = @shop.shop_refunds_to_customer()
#   # total = sales - refunds
#   # return total
# end

end
