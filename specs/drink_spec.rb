require('minitest/autorun')
require('minitest/rg')
require_relative('../drink.rb')

class TestDrink < Minitest::Test

def test_drink_type
  drink1 = Drink.new("Ale", 3.50)
  assert_equal("Ale", drink1.type)
end

end