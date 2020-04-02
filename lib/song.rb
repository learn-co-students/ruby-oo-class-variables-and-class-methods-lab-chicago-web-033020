class Song
  attr_accessor :name, :artist, :genre
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
  # def self.genres
  #   @@genres
  # end
  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    hash = {}
    @@genres.each do |g|
      if hash[g] == nil
        hash[g] = 1      
      else
        hash[g] += 1
      end
    end
    hash
  end

  def self.artist_count
    hash = {}
    @@artists.each do |g|
      if hash[g] == nil
        hash[g] = 1      
      else
        hash[g] += 1
      end
    end
    hash
  end
end