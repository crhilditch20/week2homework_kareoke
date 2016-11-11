require('minitest/autorun')
require('minitest/rg')
require_relative('../drink.rb')

class TestDrink < Minitest::Test

def test_drink_type
  drink1 = Drink.new("Ale", 4)
  assert_equal("Ale", drink1.type)
end

def test_drink_price
  drink1 = Drink.new("Ale", 4)
  assert_equal(4, drink1.price)
end

end