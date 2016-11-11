require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../song.rb')

class TestRoom < Minitest::Test

def setup
  @songs = [Song.new("Sledgehammer", "Peter Gabriel", "alternative"), Song.new("Living on a Prayer", "Bon Jovi", "rock"), Song.new("Heroes", "David Bowie", "rock")]
  @room1 = Room.new("Blue Room", 2, @songs)
  @guest1 = Guest.new("Claire", 50)
  @guest2 = Guest.new("Adam", 20)
  @guest3 = Guest.new("John", 10)
end

def test_room_name
  assert_equal("Blue Room", @room1.name)
end

def test_room_has_song_list
  array = @room1.song_list
  assert_equal(3, array.length)
end

def test_can_count_guests
  assert_equal(0, @room1.count_guests)
end

def test_guest_can_check_in
  @room1.check_in_guest(@guest1)
  assert_equal(1, @room1.count_guests)
end

def test_capacity_is_full
  @room1.check_in_guest(@guest1)
  @room1.check_in_guest(@guest2)
  assert_equal("Sorry, this room is full", @room1.check_in_guest(@guest3))
end

def test_check_out_guest
  @room1.check_in_guest(@guest1)
  @room1.check_out_guest(@guest1)
  assert_equal(0, @room1.count_guests)
end


end