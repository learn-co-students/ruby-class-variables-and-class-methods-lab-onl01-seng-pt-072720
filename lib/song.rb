class Song 
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count ={}
  
  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist 
    @@count += 1 
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    genres_list = {}
    
    @@genres.each do |genre|
      genres_list[genre] = @@genres.count(genre)
    end
    genres_list
  end
  
  def self.artist_count
    artist_list = {}
    @@artists.each do |artist|
      artist_list[artist] = @@artists.count(artist)
    end
    artist_list
  end
  
end

