require('minitest/autorun')
require('minitest/rg')
require_relative('../till.rb')

class TestTill < Minitest::Test

  def setup
    @till1 = Till.new(100)
    @till2 = Till.new()
  end

def test_till_starts_with_given_cash_amount
  assert_equal(0, @till2.total_cash)
end

def test_till_can_receive_cash
  result = @till1.receive_cash(20)
  assert_equal(120, result)
end

end