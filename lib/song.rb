class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
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
    genre_hash = {}
    @@genres.each {|genre| genre_hash[genre] = @@genres.count(genre)}
    return genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each {|artist| artist_hash[artist] = @@artists.count(artist)}
    return artist_hash
  end

end
