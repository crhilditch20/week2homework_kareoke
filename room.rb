class Room

  attr_reader :name, :guests, :song_list

def initialize(name, capacity, song_list)
  @name = name
  @capacity = capacity
  @guests = []
  @song_list = song_list
end

def count_guests
  @guests.length
end

def check_in_guest(guest)
  space = count_guests
    if space < @capacity
  @guests.push(guest)
    else
      return "Sorry, this room is full"
    end
  end

def check_out_guest(guest)
  @guests.delete(guest)
end




end