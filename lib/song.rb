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
    genre_counts = {}
    @@genres.each do |genre|
      if genre_counts.has_key?(genre)
        genre_counts[genre] += 1
      else
        genre_counts[genre] = 1
      end
    end
  genre_counts
end