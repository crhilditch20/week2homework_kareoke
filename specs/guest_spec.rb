require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')

class TestGuest < Minitest::Test

def setup
  @guest1 = Guest.new("Claire", 50)
  @guest2 = Guest.new("Jo", 30)
  @guest3 = Guest.new("Andy", 40)
  @guest4 = Guest.new("Kate", 50)
end

def test_guest_has_name
  assert_equal("Claire", @guest1.name)
end

def test_guest_has_cash
  assert_equal(50, @guest1.cash)
end


end