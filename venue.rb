class Venue

attr_reader :name,:entry_fee

def initialize(name, till, entry_fee)
  @name = name
  @rooms = []
  @guest_list = []
  @till = till
  @entry_fee = entry_fee
end

def count_cash()
  @till.total_cash()
end

def add_room(room)
  @rooms.push(room)
  return @rooms[0].name
end

end