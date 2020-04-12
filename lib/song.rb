require 'pry'

class Song
    attr_accessor :name, :artist, :genre
    @@all = []
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
        @@count += 1
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
        uniq_genres = {}
        @@genres.each do |each_genre|
            if uniq_genres[each_genre]
                uniq_genres[each_genre] += 1
            else
                uniq_genres[each_genre] = 1    
            end    
        end
        uniq_genres
    end


    def self.all
        @@all
    end

    def self.artists
        @@artists.uniq
    end

    def self.artist_count
        uniq_artists = {}
        @@artists.each do |each_genre|
            if uniq_artists[each_genre]
                uniq_artists[each_genre] += 1
            else
                uniq_artists[each_genre] = 1    
            end    
        end
        uniq_artists
    end


end

