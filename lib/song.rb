require 'pry'
class Song

  attr_reader :name, :artist, :genre

  def initialize(name, artist,genre)
    @name, @artist, @genre = name, artist, genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

    @@count = 0

    @@artists = []

    @@genres = []

    def self.count
      @@count
    end

    def self.artists
      @@artists.uniq
    end 

    def self.genres
      @@genres.uniq
    end 

    def self.genre_count
      genre_hash = {}
        @@genres.each do |g|
        if genre_hash[g]
          genre_hash[g] += 1
        else
          genre_hash[g] = 1
        end
      end
      genre_hash
    end

    def self.artist_count
      genre_hash = {}
        @@artists.each do |g|
        if genre_hash[g]
          genre_hash[g] += 1
        else
          genre_hash[g] = 1
        end
      end
      genre_hash
    end

end
