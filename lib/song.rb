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
    # @@genres << self.genre
    # @@artists << self.artist
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_histo = {}
    @@genres.each do |gnr|
      if genre_histo[gnr]
        genre_histo[gnr] += 1
      else
        genre_histo[gnr] = 1
      end
    end
    genre_histo
  end
################
  def self.artists
    @@artists.uniq
  end

  def self.artist_count
    artist_histo = {}
    @@artists.each do |art|
      if artist_histo[art]
        artist_histo[art] += 1
      else
        artist_histo[art] = 1
      end
    end
    artist_histo
  end

end
