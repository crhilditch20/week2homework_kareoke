require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')

class TestSong < Minitest::Test

def setup
  @song1 = Song.new("Bohemian Rhapsody", "Queen", "rock")
  @song2 = Song.new("Song 2", "Blur", "alternative")
  @song3 = Song.new("Car Wash", "Rose Royce", "disco")

end

def test_can_get_title
  assert_equal("Song 2", @song2.title)
end

def test_can_get_artist
  assert_equal("Queen", @song1.artist)
end

def test_can_get_genre
  assert_equal("disco", @song3.genre)
end

end