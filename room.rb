class Room

  attr_reader :name, :guests, :capacity, :song_list, :available_space

def initialize(name, capacity, song_list)
  @name = name
  @capacity = capacity
  @guests = []
  @song_list = song_list
  @available_space = nil
end

def count_guests()
  @guests.length
end

def available_space
  @available_space = (@capacity - @guests.length)
end

def check_in_guest(guest)
  @guests.push(guest.name)
end

def check_out_guest(guest)
  @guests.delete(guest.name)
end

def select_song_by_title(title)
  chosen_song = nil
  for song in song_list
    if song.title == title
      chosen_song = title
    end
    return chosen_song
  end
end

def find_songs_by_artist(artist)
  possible_songs = []
  for song in song_list
      possible_songs.push(song.title) if song.artist == artist
  end
    return possible_songs
end

  def find_songs_by_genre(genre)
    possible_songs = []
    for song in song_list
        possible_songs.push(song.title) if song.genre == genre
    end
      return possible_songs
  end

end