require 'pry'

class Song 
  
  attr_reader :name, :artist, :genre 
  @@count = 0
  @@artists = []
  @@genres = []
  @@artist_count = {}
  @@genre_count = {}
  
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist
    @genre = genre 
    @@count += 1  
    @@artists << @artist 
    @@genres << genre 
  end 

  def self.count 
    @@count 
  end 
  
  def self.artists
    @@artists.uniq() 
  end 
  
  def self.genres 
    @@genres.uniq()
  end 
  
  def self.genre_count
    self.genres.each do |genre|
      genre_count =  @@genres.count(genre)
      @@genre_count[genre] = genre_count
    end 
    @@genre_count
  end 
  
  def self.artist_count
    self.artists.each do |artist|
      song_count = @@artists.count(artist)
      @@artist_count[artist] = song_count
    end 
    @@artist_count
  end 
  
end 