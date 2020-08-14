class Song 
 
  @@count = 0 
  @@artists = []
  @@genres = []
  
  attr_accessor :name, :artist, :genre 
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
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
    new_genre_count ={}
    @@genres.each do |genre|
      if new_genre_count.include?(genre)
        new_genre_count[genre] +=1
      else
        new_genre_count[genre] = 1
      end
    end
    new_genre_count
  end
  
  
  def self.artists 
    @@artists.uniq 
  end
  
  def self.artist_count
    new_artist_count = {}
    @@artists.each do |stuff|
      if new_artist_count.include?(stuff)
        new_artist_count[stuff] += 1 
      else
        new_artist_count[stuff] = 1 
      end
    end
    new_artist_count
    
  end
  
  
  
end
