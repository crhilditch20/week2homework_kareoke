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
  @guests.push(guest)
end

def check_out_guest(guest)
  @guests.delete(guest)
end

def return_first_song_name()
  first = @song_list.first
  first.title
end

end