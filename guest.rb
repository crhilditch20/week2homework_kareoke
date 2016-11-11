class Guest

attr_reader :name
attr_accessor :cash, :drinks

  def initialize(name, cash_amount)
    @name = name
    @cash = cash_amount
    @drinks = []
  end


end