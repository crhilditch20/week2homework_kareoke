require('minitest/autorun')
require('minitest/rg')
require_relative('../bar.rb')
require_relative('../drink.rb')

class TestBar < Minitest::Test

def setup
  @bar = Bar.new()

  @drink1 = Drink.new("ale", 3)
  @drink2 = Drink.new("lager", 3)
  @drink3 = Drink.new("wine", 4)

end

def test_can_add_drinks
  @bar.add_drink_to_menu(@drink1)
  result = @bar.count_drinks()
  assert_equal(1, result)
end

def test_can_serve_drinks
  @bar.add_drink_to_menu(@drink3)
  result = @bar.serve_drink("wine")
  assert_equal("£4 please", result)
end
  

end