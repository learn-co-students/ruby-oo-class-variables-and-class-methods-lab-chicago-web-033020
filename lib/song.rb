class Song
attr_accessor :name, :artist, :genre, :count, :genres, :artists
@@count = 0
@@genres = []
@@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1  #@@ =>class variables
    @@genres << self.genre
    @@artists << self.artist
    # @@genres << genre
    # @@artists << artist
  end
# We need our Song class to be able to keep track of the number of songs that it creates.
# A class method that returns that number of songs created
  def self.count
    @@count
  end

# We need our Song class to be able to show us all of the artists of existing songs.
# A class method that returns a unique array of artists of existing songs
    def self.artists
      @@artists.uniq
    end

# We need our Song class to be able to show us all of the genres of existing songs:
# A class method that returns a unique array of genres of existing songs
  def self.genres
    @@genres.uniq
  end


# We also need our Song class to be able to keep track of the number of songs of each genre it creates.
# A class method that returns a hash of genres and the number of songs that have those genres
# should return this : {"rap" => 5, "rock" => 1, "country" => 3}
  def self.genre_count
    genre_hash = {}
    @@genres.each do |gnr|
      if genre_hash[gnr]
        genre_hash[gnr] += 1
      else
        genre_hash[gnr] = 1
      end
    end
    genre_hash
  end

# Song class to reveal to us the number of songs each artist is responsible for.
# A class method that returns a hash of artists and the number of songs that have those artists
# should return this : {"Beyonce" => 17, "Jay-Z" => 40}
  def self.artist_count
    artist_hash = {}
    @@artists.each do |art|
      if artist_hash[art]
        artist_hash[art] += 1
      else
        artist_hash[art] = 1
      end
    end
    artist_hash
  end

end
