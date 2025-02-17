require 'pry'

class Song
  attr_reader :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  #return a hash with genres as the keys, and # of songs in that genre as the values:
  def self.genre_count
    genre_tallies = {}
    @@genres.each do |genre|
      if genre_tallies.has_key?(genre)
        genre_tallies[genre] += 1
      else
        genre_tallies[genre] = 1
      end
    end
    genre_tallies
  end
  
  #return a hash of artists and the num of songs from those artists:
  def self.artist_count
    artist_tallies = {}
    @@artists.each do |artist|
      if artist_tallies.has_key?(artist)
        artist_tallies[artist] += 1
      else
        artist_tallies[artist] = 1
      end
    end
    artist_tallies
  end
  
end