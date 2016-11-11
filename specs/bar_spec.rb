require('minitest/autorun')
require('minitest/rg')
require_relative('../bar.rb')
require_relative('../drink.rb')
require_relative('../till.rb')
require_relative('../guest.rb')

class TestBar < Minitest::Test

def setup
  @bar_till = Till.new(100)

  @bar = Bar.new(@bar_till)

  @drink1 = Drink.new("ale", 3)
  @drink2 = Drink.new("lager", 3)
  @drink3 = Drink.new("wine", 4)

  @customer = Guest.new("Bob", 40)

end

def test_can_add_drinks
  @bar.add_drink_to_menu(@drink1)
  result = @bar.count_drinks()
  assert_equal(1, result)
end

def test_count_cash
  result = @bar.count_cash
  assert_equal(100, result)
end

def test_can_serve_drinks
  @bar.add_drink_to_menu(@drink3)
  @bar.serve_drink(@customer, "wine")
  assert_equal(104, @bar.count_cash)
  assert_equal(36, @customer.cash)
  assert_equal("wine", @customer.drinks[0])
  # assert_equal("Sorry, we don't have that drink", result)
end
  

end



