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
  @venue1.join_guest_list(@guest1)
  @venue1.join_guest_list(@guest2)
  assert_equal(["Claire", "Jo"], @venue1.guest_list)
  assert_equal(212, @venue1.count_cash)
end

def test_guest_already_in_venue
  @venue1.join_guest_list(@guest1)
  result = @venue1.join_guest_list(@guest1)
  assert_equal("Already in venue", result)
end

def test_can_check_guests_into_rooms
  @venue1.add_room(@room1)
  @venue1.join_guest_list(@guest3)
  result = @venue1.check_guest_into_room(@guest3, @room1)
  assert_equal(1, result)
  assert_equal([], @venue1.guest_list)
end


end