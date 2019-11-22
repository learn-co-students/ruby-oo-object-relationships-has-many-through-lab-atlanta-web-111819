class Artist
    @@all = []

    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(song_name, genre)
        song = Song.new(song_name, self, genre)
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def genres
        songs = self.songs
        songs.map {|song| song.genre}
    end
end