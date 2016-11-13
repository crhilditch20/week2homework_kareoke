class Venue

attr_reader :name, :guest_list, :entry_fee

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

def join_guest_list(guest)
  if @guest_list.include?(guest.name)
    return "Already in venue"
  else
  @guest_list.push(guest.name)
  guest.cash -= entry_fee
  @till.total_cash += entry_fee
  end
end


def check_guest_into_room(guest, room)
  if room.available_space > 0
  room.check_in_guest(guest)
  @guest_list.delete(guest.name)
  room.count_guests
    else
    return "No availability"
  end
end

end
