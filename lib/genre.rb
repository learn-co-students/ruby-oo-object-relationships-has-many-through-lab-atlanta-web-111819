#has many songs
#has many artists thru songs

class Genre
    attr_accessor :name 
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all 
        @@all 
    end 
#SINGLE SOURCE OF TRUTH
#REMEMBER ONLY WORK ON GENRE STUFF IN HERE!!!!!!!

    def songs
        Song.all.select do |song|
            song.genre == self 
        end 
    end 

    def artists
        songs.map do |song|
            song.artist
        end 
    end 

end 