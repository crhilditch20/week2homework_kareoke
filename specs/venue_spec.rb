require('minitest/autorun')
require('minitest/rg')
require_relative('../venue.rb')
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../bar.rb')
require_relative('../till.rb')
require_relative('../song.rb')


class TestVenue < Minitest::Test

def setup
  @venue_till = Till.new(200)
 
  @songs = [Song.new("Sledgehammer", "Peter Gabriel", "alternative"), Song.new("Bicycle Race", "Queen", "rock"), Song.new("We Will Rock You", "Queen", "rock"), Song.new("Locomotion", "Kylie Minogue", "pop")]

  @room1 = Room.new("Blue Room", 2, @songs)
  @room2 = Room.new("Red Room", 3, @songs)

  @venue1 = Venue.new("Bareoke", @venue_till, 6)

  @guest1 = Guest.new("Claire", 50)
  @guest2 = Guest.new("Jo", 20)
  @guest3 = Guest.new("Kate", 10)
  
end

def test_venue_name
  assert_equal("Bareoke", @venue1.name)
end

def test_till_starting_amount
  assert_equal(200, @venue1.count_cash)
end

def test_entry_fee_amount
  assert_equal(6, @venue1.entry_fee)
end

def test_can_add_rooms
  result = @venue1.add_room(@room1)
  assert_equal("Blue Room", result)
end

def test_can_accept_guests
  

end


end