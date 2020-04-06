class Song

  attr_accessor :name, :artist, :genre, :count, :genres, :artist
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre
      @@count += 1
      @@genres << self.genre
      @@artists << self.artist
    end

    def self.count
      @@count
    end

    def self.genres
      @@genres.uniq
    end

    def self.genre_count
      gen_histo = {}
      @@genres.each do |gnr|
        if gen_histo[gnr]
          gen_histo[gnr] += 1
        else
          gen_histo[gnr] = 1
        end
      end
      gen_histo
    end

    def self.artists
      @@artists.uniq
    end

    def self.artist_count
      artist_history = {}
      @@artists.each do |art|
        if artist_history[art]
          artist_history[art] += 1
        else
          artist_history[art] = 1
        end
      end
      artist_history
    end

  end
