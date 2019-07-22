require 'pry'

class Song
  attr_reader :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
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
    @@genres.each do |genre|
      binding.pry
    end
  end
  
end