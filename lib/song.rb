require "pry"
require "yaml"

class Song

  attr_accessor :name, :artist, :genre
  attr_reader :count, :artists, :genres

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists.push(artist)
    @@genres.push(genre)
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genres
    @@genres.uniq!
  end

  def self.genre_count
    # empty hash to store genres
    genre_count = {}
    # for each genre, take in genre argument/parameter
    @@genres.each do |genre|
      # if genre_count[genre] value exists
      if genre_count[genre]
        # genre_count[genre] value is incremented
        genre_count[genre] += 1
      else
        # else, genre_count[genre] is assigned to 1
        genre_count[genre] = 1
      end
    end
    # call genre_count
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      #start conditional
      if artist_count[artist]
        artist_count[artist] += 1
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end

end

# binding.pry
