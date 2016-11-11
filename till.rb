class Till

attr_accessor :total_cash

def initialize(cash = 0)
  @total_cash = cash
end

def receive_cash(amount)
  @total_cash += amount
  return @total_cash
end

end