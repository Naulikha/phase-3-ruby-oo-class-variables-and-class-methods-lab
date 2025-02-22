require "pry"
class Song 
    @@count = 0
    @@genres = []
    @@artists = []
    attr_accessor :name, :artist, :genre
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end
    
    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq 
    end

    def self.genre_count
        genre_count = Hash.new(0)
        @@genres.each { |genre| genre_count[genre] += 1 }
        genre_count
    end
      
    def self.artist_count
        artist_count = Hash.new(0)
        @@artists.each { |artist| artist_count[artist] += 1 }
        artist_count
    end

    def self.count 
        @@count
    end 

   
end

villuminati = Song.new("Villunati", "J.cole", "HipHop")
puts Song.count
# puts Song.genres
# puts Song.new.name
# binding.pry