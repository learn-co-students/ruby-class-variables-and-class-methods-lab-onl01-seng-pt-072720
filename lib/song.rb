class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        
        @@artists << artist
        @@genres << genre
        
        @@count += 1
    end

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
        @@genres.group_by(&:itself).transform_values(&:count)
    end

    def self.artist_count
        @@artists.group_by(&:itself).transform_values(&:count)
    end
end